FROM ubuntu:jammy AS downloader

# install required dependencies
# curl, jq, wget, unzip are required to download the SDK
RUN apt-get update && apt-get -y install \
	curl \
	jq \
	wget \
	unzip \
	&& apt-get clean

# prepare ConnectIQ home folder
ENV CONNECT_IQ_HOME=/connectiq
RUN mkdir -p ${CONNECT_IQ_HOME}

# hardcoding the version for now
ENV CONNECT_IQ_VERSION=8.1.1

# download the SDK
COPY downloader.sh /root/downloader.sh
RUN /root/downloader.sh $CONNECT_IQ_HOME $CONNECT_IQ_VERSION

# manage device files
# TODO find a way to download device bits from Garmin website
COPY ciq.zip /tmp/ciq.zip
RUN unzip /tmp/ciq.zip -d /connectiq

FROM ubuntu:jammy AS tester

# install required dependencies
# libwebkit2gtk-4.0-37, libusb-1.0-0, libsm6 and xvfb are required by the simulator
# openssl is required to create a fake certificate
# openjdk-17-jre (full JRE) is required instead of headless for AWT X11 support
RUN apt-get update && apt-get -y install \
	openjdk-17-jre \
	libwebkit2gtk-4.0-37 \
	libusb-1.0-0 \
	libsm6 \
	xvfb \
	libxml2-utils \
	openssl \
	&& apt-get clean

# For screenshot capabilities
RUN apt-get update && apt-get install -y \
    imagemagick \
    x11-apps \
    x11-utils \
    scrot \
	xdotool \
    && rm -rf /var/lib/apt/lists/*

# prepare ConnectIQ home folder
ENV CONNECT_IQ_HOME=/connectiq
RUN mkdir -p ${CONNECT_IQ_HOME}

# retrieve downloaded SDK from the downloader image
COPY --from=downloader /connectiq /connectiq

# add ConnectIQ bin folder to the path
ENV PATH=${PATH}:${CONNECT_IQ_HOME}/bin

# manage device files
# devices bits must be put in /root/.Garmin/ConnectIQ/Devices/ because this path is hard-coded in the compiler and in the simulator!
# there is an undocumented option named "--override-devices-json" in the compiler class "com.garmin.monkeybrains.Monkeybrains.class"
# this option allows to specify the paths where the devices bits are stored
# unfortunately there is no such option for the simulator
RUN mkdir -p /root/.Garmin/ConnectIQ
# retrieve devices files from the downloader image
COPY --from=downloader /connectiq /root/.Garmin/ConnectIQ

# copy custom tester script
COPY run-tests.sh "${CONNECT_IQ_HOME}/bin/run-tests.sh"

# do not use ${CONNECT_IQ_HOME} here because variable substitution won't work
ENTRYPOINT [ "/bin/bash", "/connectiq/bin/run-tests.sh" ]
