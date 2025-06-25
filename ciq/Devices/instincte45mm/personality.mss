/*
 * Instinct® E 45mm Personality
 * Begin Common
 */

/* System Definitions */

device_info {
    hasTouchScreen: false;
    hasNightMode: false;
    hasEnhancedReadabilityMode: false;
    hasGpu: false;
    screenWidth: 176;
    screenHeight: 176;
    screenShape: Toybox.System.SCREEN_SHAPE_SEMI_OCTAGON;
}

system_size__screen {
    width: 176;
    height: 176;
}

system_size__launch_icon {
    scaleX: 62;
    scaleY: 62;
    scaleRelativeTo: "screen";
}

system_color_light__background {
    color: #FFFFFF;
    background: #FFFFFF;
}

system_color_dark__background {
    color: #000000;
    background: #000000;
}

system_color_light__text {
    color: #000000;
    background: Graphics.COLOR_TRANSPARENT;
}

system_color_dark__text {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

/* Subwindow Definitions */

system_loc__subwindow {
    x: 114;
    y: 0;
}

system_size__subwindow {
    width: 62;
    height: 62;
}

/* Menu Definitions */

system_size__menu_header {
    width: 175;
    height: 62;
}

system_size__menu_item {
    width: 175;
    height: 58;
}

system_size__menu_icon {
    scaleX: 38;
    scaleY: 38;
    scaleRelativeTo: "screen";
}

/* Activity Definitions */

activity_color_light__background {
    color: #FFFFFF;
    background: #FFFFFF;
}

activity_color_dark__background {
    color: #FFFFFF;
    background: #FFFFFF;
}

activity_color_light__text {
    color: #000000;
    background: Graphics.COLOR_TRANSPARENT;
}

activity_color_dark__text {
    color: #000000;
    background: Graphics.COLOR_TRANSPARENT;
}

/* Prompt Definitions */

prompt_color_light__background {
    background: #FFFFFF;
}

prompt_color_dark__background {
    background: #000000;
}

prompt_color_light__title {
    color: #000000;
    background: Graphics.COLOR_TRANSPARENT;
}

prompt_color_dark__title {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

prompt_color_light__body {
    color: #000000;
    background: Graphics.COLOR_TRANSPARENT;
}

prompt_color_dark__body {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

prompt_font__title {
    font: Graphics.FONT_TINY;
    justification: Graphics.TEXT_JUSTIFY_RIGHT | Graphics.TEXT_JUSTIFY_VCENTER;
}

prompt_font_enhanced_readability__title {
    exclude: true;
}

prompt_font__body_no_title {
    font: Graphics.FONT_TINY;
    justification: Graphics.TEXT_JUSTIFY_CENTER;
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
    x: 145;
    y: 31;
    horizontalJustification: "center";
    verticalJustification: "center";
}

prompt_loc__title {
    x: 25;
    y: 9;
}

prompt_loc__body_with_title {
    x: 5;
    y: 77;
}

prompt_loc__body_no_title {
    x: 5;
    y: 77;
}

prompt_size__title {
    width: 67;
    height: 60;
}

prompt_size__body_no_title {
    width: 166;
    height: 99;
}

prompt_size__body_with_title {
    width: 166;
    height: 99;
}

prompt_size__title_icon {
    scaleX: 38;
    scaleY: 38;
    scaleRelativeTo: "screen";
}

/* Action Menus */

system_icon_light__hint_action_menu {
    filename: "system_icon_light__hint_button_right_top.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_dark__hint_action_menu {
    filename: "system_icon_dark__hint_button_right_top.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_positive__hint_action_menu {
    filename: "system_icon_positive__hint_button_right_top.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_destructive__hint_action_menu {
    filename: "system_icon_destructive__hint_button_right_top.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_loc__hint_action_menu {
    x: 166;
    y: 31;
    horizontalJustification: "center";
    verticalJustification: "center";
}

system_input__action_menu {
    button: WatchUi.KEY_ENTER;
}

/* Confirmations */

confirmation_color_light__body {
    color: #000000;
    background: Graphics.COLOR_TRANSPARENT;
}

confirmation_color_dark__body {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

confirmation_icon__hint_confirm {
    filename: "confirmation_icon__hint_completion.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

confirmation_icon__hint_reject {
    filename: "confirmation_icon__hint_reject.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

confirmation_icon__hint_delete {
    filename: "confirmation_icon__hint_delete.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

confirmation_icon__hint_keep {
    filename: "confirmation_icon__hint_keep.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

confirmation_icon_light__hint_confirm {
    filename: "confirmation_icon__hint_completion.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

confirmation_icon_light__hint_reject {
    filename: "confirmation_icon__hint_reject.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

confirmation_icon_light__hint_delete {
    filename: "confirmation_icon__hint_delete.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

confirmation_icon_light__hint_keep {
    filename: "confirmation_icon__hint_keep.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

confirmation_icon_dark__hint_confirm {
    filename: "confirmation_icon__hint_completion.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

confirmation_icon_dark__hint_reject {
    filename: "confirmation_icon__hint_reject.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

confirmation_icon_dark__hint_delete {
    filename: "confirmation_icon__hint_delete.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

confirmation_icon_dark__hint_keep {
    filename: "confirmation_icon__hint_keep.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

confirmation_font__body {
    font: Graphics.FONT_XTINY;
    justification: Graphics.TEXT_JUSTIFY_CENTER;
}

confirmation_font_enhanced_readability__body {
    exclude: true;
}

confirmation_loc__hint_confirm {
    x: 113;
    y: 1;
}

confirmation_loc__hint_reject {
    x: 0;
    y: 138;
}

confirmation_loc__hint_delete {
    x: 146;
    y: 15;
    horizontalJustification: center;
    verticallJustification: center;
}

confirmation_loc__hint_keep {
    x: 0;
    y: 138;
}

confirmation_loc__body {
    x: 2;
    y: 81;
}

confirmation_size__body {
    width: 173;
    height: 63;
}

confirmation_input__confirm {
    button: WatchUi.KEY_ENTER;
}

confirmation_input__reject {
    button: WatchUi.KEY_DOWN;
}

confirmation_input__delete {
    button: WatchUi.KEY_ENTER;
}

confirmation_input__keep {
    button: WatchUi.KEY_DOWN;
}

/* Toasts */

system_size__toast_icon {
    width: 44;
    scaleRelativeTo: "screen";
}

/* System Assets */

system_icon_light__about {
    filename: "system_icon_light__about.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_light__cancel {
    filename: "system_icon_light__cancel.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_light__check {
    filename: "system_icon_light__check.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_light__discard {
    filename: "system_icon_light__discard.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_light__question {
    filename: "system_icon_light__question.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_light__revert {
    filename: "system_icon_light__revert.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_light__save {
    filename: "system_icon_light__save.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_light__search {
    filename: "system_icon_light__search.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_light__warning {
    filename: "system_icon_light__warning.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_dark__about {
    filename: "system_icon_dark__about.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_dark__cancel {
    filename: "system_icon_dark__cancel.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_dark__check {
    filename: "system_icon_dark__check.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_dark__discard {
    filename: "system_icon_dark__discard.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_dark__question {
    filename: "system_icon_dark__question.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_dark__revert {
    filename: "system_icon_dark__revert.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_dark__save {
    filename: "system_icon_dark__save.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_dark__search {
    filename: "system_icon_dark__search.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_dark__warning {
    filename: "system_icon_dark__warning.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_positive__check {
    filename: "system_icon_dark__check.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_destructive__cancel {
    filename: "system_icon_dark__cancel.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_destructive__discard {
    filename: "system_icon_dark__discard.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_destructive__warning {
    filename: "system_icon_dark__warning.svg";
    dithering: "none";
    automaticPalette: true;
    disableTransparency: true;
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
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_light__hint_button_right_middle {
    exclude: true;
}

system_icon_light__hint_button_right_bottom {
    exclude: true;
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
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_dark__hint_button_right_middle {
    exclude: true;
}

system_icon_dark__hint_button_right_bottom {
    exclude: true;
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
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_positive__hint_button_right_middle {
    exclude: true;
}

system_icon_positive__hint_button_right_bottom {
    exclude: true;
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
    automaticPalette: true;
    disableTransparency: true;
}

system_icon_destructive__hint_button_right_middle {
    exclude: true;
}

system_icon_destructive__hint_button_right_bottom {
    exclude: true;
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
    x: 166;
    y: 31;
    horizontalJustification: "center";
    verticalJustification: "center";
}

system_loc__hint_button_right_middle {
    exclude: true;
}

system_loc__hint_button_right_bottom {
    exclude: true;
}
