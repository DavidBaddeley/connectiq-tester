/*
 * Venu® 2S Personality
 * Begin Common
 */

/* System Definitions */

device_info {
    hasTouchScreen: true;
    hasNightMode: false;
    hasEnhancedReadabilityMode: false;
    hasGpu: true;
    screenWidth: 360;
    screenHeight: 360;
    screenShape: Toybox.System.SCREEN_SHAPE_ROUND;
}

system_size__screen {
    width: 360;
    height: 360;
}

system_size__launch_icon {
    scaleX: 61;
    scaleY: 61;
    scaleRelativeTo: screen;
}

system_color_light__background {
    color: #000000;
    background: #000000;
}

system_color_dark__background {
    color: #000000;
    background: #000000;
}

system_color_light__text {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

system_color_dark__text {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

/* Subwindow Definitions */

system_loc__subwindow {
    exclude: true;
}

system_size__subwindow {
    exclude: true;
}

/* Menu Definitions */

system_size__menu_header {
    width: 360;
    height: 82;
}

system_size__menu_item {
    width: 360;
    height: 90;
}

system_size__menu_icon {
    scaleX: 40;
    scaleY: 40;
    scaleRelativeTo: screen;
}

/* Activity Definitions */

activity_color_light__background {
    color: #000000;
    background: #000000;
}

activity_color_dark__background {
    color: #000000;
    background: #000000;
}

activity_color_light__text {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

activity_color_dark__text {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

/* Prompt Definitions */

prompt_color_light__background {
    background: #000000;
    color: #000000;
}

prompt_color_dark__background {
    background: #000000;
    color: #000000;
}

prompt_color_light__title {
    color: #B3B3B3;
    background: Graphics.COLOR_TRANSPARENT;
}

prompt_color_dark__title {
    color: #B3B3B3;
    background: Graphics.COLOR_TRANSPARENT;
}

prompt_color_light__body {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

prompt_color_dark__body {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

prompt_font__title {
    font: Graphics.FONT_XTINY;
    justification: Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER;
}

prompt_font_enhanced_readability__title {
    exclude: true;
}

prompt_font__body_no_title {
    font: Graphics.FONT_TINY;
    justification: Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER;
}

prompt_font_enhanced_readability__body_no_title {
    exclude: true;
}

prompt_font__body_with_title {
    font: Graphics.FONT_TINY;
    justification: Graphics.TEXT_JUSTIFY_CENTER;
}

prompt_font_enhanced_readability__body_with_title {
    exclude: true;
}

prompt_loc__title_icon {
    x: 180;
    y: 43;
    horizontalJustification: center;
    verticalJustification: center;
}

prompt_loc__title {
    x: 104;
    y: 17;
}

prompt_loc__body_with_title {
    x: 36;
    y: 90;
}

prompt_loc__body_no_title {
    x: 36;
    y: 61;
}

prompt_size__title {
    width: 152;
    height: 65;
}

prompt_size__body_no_title {
    width: 288;
    height: 231;
}

prompt_size__body_with_title {
    width: 288;
    height: 205;
}

prompt_size__title_icon {
    scaleX: 12%;
    scaleRelativeTo: screen;
}

/* Action Menus */

system_icon_light__hint_action_menu {
    filename: "system_icon_light__hint_action_menu.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_dark__hint_action_menu {
    filename: "system_icon_dark__hint_action_menu.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_positive__hint_action_menu {
    filename: "system_icon_positive__hint_action_menu.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_destructive__hint_action_menu {
    filename: "system_icon_destructive__hint_action_menu.svg";
    dithering: "none";
    packingFormat: png;
}

system_loc__hint_action_menu {
    horizontalJustification: center;
    x: 180;
    y: 290;
}

system_input__action_menu {
    x1: 0;
    y1: 300;
    x2: 360;
    y2: 360;
}

/* Confirmations */

confirmation_color_light__body {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

confirmation_color_dark__body {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

confirmation_icon__hint_confirm {
    filename: "confirmation_icon__hint_completion.svg";
    dithering: "none";
    packingFormat: png;
}

confirmation_icon__hint_reject {
    filename: "confirmation_icon__hint_reject.svg";
    dithering: "none";
    packingFormat: png;
}

confirmation_icon__hint_delete {
    filename: "confirmation_icon__hint_delete.svg";
    dithering: "none";
    packingFormat: png;
}

confirmation_icon__hint_keep {
    filename: "confirmation_icon__hint_keep.svg";
    dithering: "none";
    packingFormat: png;
}

confirmation_icon_light__hint_confirm {
    filename: "confirmation_icon__hint_completion.svg";
    dithering: "none";
    packingFormat: png;
}

confirmation_icon_light__hint_reject {
    filename: "confirmation_icon__hint_reject.svg";
    dithering: "none";
    packingFormat: png;
}

confirmation_icon_light__hint_delete {
    filename: "confirmation_icon__hint_delete.svg";
    dithering: "none";
    packingFormat: png;
}

confirmation_icon_light__hint_keep {
    filename: "confirmation_icon__hint_keep.svg";
    dithering: "none";
    packingFormat: png;
}

confirmation_icon_dark__hint_confirm {
    filename: "confirmation_icon__hint_completion.svg";
    dithering: "none";
    packingFormat: png;
}

confirmation_icon_dark__hint_reject {
    filename: "confirmation_icon__hint_reject.svg";
    dithering: "none";
    packingFormat: png;
}

confirmation_icon_dark__hint_delete {
    filename: "confirmation_icon__hint_delete.svg";
    dithering: "none";
    packingFormat: png;
}

confirmation_icon_dark__hint_keep {
    filename: "confirmation_icon__hint_keep.svg";
    dithering: "none";
    packingFormat: png;
}

confirmation_font__body {
    font: Graphics.FONT_TINY;
    justification: Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER;
}

confirmation_font_enhanced_readability__body {
    exclude: true;
}

confirmation_loc__hint_confirm {
    horizontalJustification: center;
    x: 180;
    y: 258;
}

confirmation_loc__hint_reject {
    horizontalJustification: center;
    x: 180;
    y: 0;
}

confirmation_loc__hint_delete {
    x: 284;
    y: 18;
}

confirmation_loc__hint_keep {
    x: 271;
    y: 206;
}

confirmation_loc__body {
    x: 70;
    y: 68;
}

confirmation_size__body {
    width: 220;
    height: 200;
}

confirmation_input__confirm {
    x1: 77;
    y1: 265;
    x2: 285;
    y2: 360;
}

confirmation_input__reject {
    x1: 90;
    y1: 0;
    x2: 270;
    y2: 65;
}

confirmation_input__delete {
    button: WatchUi.KEY_ENTER;
}

confirmation_input__keep {
    button: WatchUi.KEY_ESC;
}

/* Toasts */

system_size__toast_icon {
    scaleX: 49;
    scaleY: 49;
    scaleRelativeTo: screen;
}

/* System Assets */

system_icon_light__about {
    filename: "system_icon_light__about.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_light__cancel {
    filename: "system_icon_light__cancel.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_light__check {
    filename: "system_icon_light__check.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_light__discard {
    filename: "system_icon_light__discard.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_light__question {
    filename: "system_icon_light__question.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_light__revert {
    filename: "system_icon_light__revert.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_light__save {
    filename: "system_icon_light__save.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_light__search {
    filename: "system_icon_light__search.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_light__warning {
    filename: "system_icon_light__warning.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__about {
    filename: "system_icon_dark__about.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__cancel {
    filename: "system_icon_dark__cancel.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__check {
    filename: "system_icon_dark__check.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__discard {
    filename: "system_icon_dark__discard.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__question {
    filename: "system_icon_dark__question.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__revert {
    filename: "system_icon_dark__revert.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__save {
    filename: "system_icon_dark__save.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__search {
    filename: "system_icon_dark__search.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__warning {
    filename: "system_icon_dark__warning.svg";
    dithering: "none";
    packingFormat: png;
    compress: "true";
    automaticPalette: "true";
}

system_icon_positive__check {
    filename: "system_icon_positive__check.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_destructive__cancel {
    filename: "system_icon_destructive__cancel.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_destructive__discard {
    filename: "system_icon_destructive__discard.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_destructive__warning {
    filename: "system_icon_destructive__warning.svg";
    dithering: "none";
    packingFormat: png;
}

/* Button Hints */

system_icon_light__hint_button_left_top {
    exclude: true;
}

system_icon_light__hint_button_left_middle {
    exclude: true;
}

system_icon_light__hint_button_left_bottom {
    exclude: true;
}

system_icon_light__hint_button_right_top {
    filename: "system_icon_light__hint_button_right_top.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_light__hint_button_right_middle {
    exclude: true;
}

system_icon_light__hint_button_right_bottom {
    filename: "system_icon_light__hint_button_right_bottom.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_dark__hint_button_left_top {
    exclude: true;
}

system_icon_dark__hint_button_left_middle {
    exclude: true;
}

system_icon_dark__hint_button_left_bottom {
    exclude: true;
}

system_icon_dark__hint_button_right_top {
    filename: "system_icon_dark__hint_button_right_top.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_dark__hint_button_right_middle {
    exclude: true;
}

system_icon_dark__hint_button_right_bottom {
    filename: "system_icon_dark__hint_button_right_bottom.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_positive__hint_button_left_top {
    exclude: true;
}

system_icon_positive__hint_button_left_middle {
    exclude: true;
}

system_icon_positive__hint_button_left_bottom {
    exclude: true;
}

system_icon_positive__hint_button_right_top {
    filename: "system_icon_positive__hint_button_right_top.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_positive__hint_button_right_middle {
    exclude: true;
}

system_icon_positive__hint_button_right_bottom {
    filename: "system_icon_positive__hint_button_right_bottom.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_destructive__hint_button_left_top {
    exclude: true;
}

system_icon_destructive__hint_button_left_middle {
    exclude: true;
}

system_icon_destructive__hint_button_left_bottom {
    exclude: true;
}

system_icon_destructive__hint_button_right_top {
    filename: "system_icon_destructive__hint_button_right_top.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_destructive__hint_button_right_middle {
    exclude: true;
}

system_icon_destructive__hint_button_right_bottom {
    filename: "system_icon_destructive__hint_button_right_bottom.svg";
    dithering: "none";
    packingFormat: png;
}

system_loc__hint_button_left_top {
    exclude: true;
}

system_loc__hint_button_left_middle {
    exclude: true;
}

system_loc__hint_button_left_bottom {
    exclude: true;
}

system_loc__hint_button_right_top {
    x: 300;
    y: 59;
}

system_loc__hint_button_right_middle {
    exclude: true;
}

system_loc__hint_button_right_bottom {
    x: 287;
    y: 223;
}
