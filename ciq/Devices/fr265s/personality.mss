/*
 * Forerunner® 265s Personality
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
    scaleX: 60;
    scaleY: 60;
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
    height: 137;
}

system_size__menu_item {
    width: 360;
    height: 86;
}

system_size__menu_icon {
    scaleX: 42;
    scaleY: 42;
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
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

prompt_color_dark__title {
    color: #FFFFFF;
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
    font: Graphics.FONT_TINY;
    justification: Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER;
}

prompt_font_enhanced_readability__title {
    exclude: true;
}

prompt_font__body_no_title {
    font: Graphics.FONT_XTINY;
    justification: Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER;
}

prompt_font_enhanced_readability__body_no_title {
    exclude: true;
}

prompt_font__body_with_title {
    font: Graphics.FONT_XTINY;
    justification: Graphics.TEXT_JUSTIFY_CENTER;
}

prompt_font_enhanced_readability__body_with_title {
    exclude: true;
}

prompt_loc__title_icon {
    x: 180;
    y: 54;
    horizontalJustification: center;
    verticalJustification: center;
}

prompt_loc__title {
    x: 65;
    y: 27;
}

prompt_loc__body_with_title {
    x: 47;
    y: 108;
}

prompt_loc__body_no_title {
    x: 61;
    y: 79;
}

prompt_size__title {
    width: 227;
    height: 79;
}

prompt_size__body_no_title {
    width: 239;
    height: 247;
}

prompt_size__body_with_title {
    width: 266;
    height: 202;
}

prompt_size__title_icon {
    scaleX: 14%;
    scaleRelativeTo: screen;
}

/* Action Menus */

system_icon_light__hint_action_menu {
    filename: "system_icon_light__hint_button_right_top.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_dark__hint_action_menu {
    filename: "system_icon_dark__hint_button_right_top.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_positive__hint_action_menu {
    filename: "system_icon_positive__hint_button_right_top.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_destructive__hint_action_menu {
    filename: "system_icon_destructive__hint_button_right_top.svg";
    dithering: "none";
    packingFormat: png;
}

system_loc__hint_action_menu {
    x: 297;
    y: 69;
}

system_input__action_menu {
    button: WatchUi.KEY_ENTER;
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
    x: 297;
    y: 69;
}

confirmation_loc__hint_reject {
    x: 11;
    y: 227;
}

confirmation_loc__hint_delete {
    x: 11;
    y: 227;
}

confirmation_loc__hint_keep {
    x: 291;
    y: 230;
}

confirmation_loc__body {
    x: 68;
    y: 61;
}

confirmation_size__body {
    width: 223;
    height: 252;
}

confirmation_input__confirm {
    button: WatchUi.KEY_ENTER;
}

confirmation_input__reject {
    button: WatchUi.KEY_DOWN;
}

confirmation_input__delete {
    button: WatchUi.KEY_DOWN;
}

confirmation_input__keep {
    button: WatchUi.KEY_ESC;
}

/* Toasts */

system_size__toast_icon {
    scaleX: 35;
    scaleY: 35;
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
    filename: "system_icon_light__hint_button_left_top.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_light__hint_button_left_middle {
    filename: "system_icon_light__hint_button_left_middle.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_light__hint_button_left_bottom {
    filename: "system_icon_light__hint_button_left_bottom.svg";
    dithering: "none";
    packingFormat: png;
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
    filename: "system_icon_dark__hint_button_left_top.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_dark__hint_button_left_middle {
    filename: "system_icon_dark__hint_button_left_middle.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_dark__hint_button_left_bottom {
    filename: "system_icon_dark__hint_button_left_bottom.svg";
    dithering: "none";
    packingFormat: png;
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
    filename: "system_icon_positive__hint_button_left_top.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_positive__hint_button_left_middle {
    filename: "system_icon_positive__hint_button_left_middle.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_positive__hint_button_left_bottom {
    filename: "system_icon_positive_hint_button_left_bottom.svg";
    dithering: "none";
    packingFormat: png;
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
    filename: "system_icon_destructive__hint_button_left_top.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_destructive__hint_button_left_middle {
    filename: "system_icon_destructive__hint_button_left_middle.svg";
    dithering: "none";
    packingFormat: png;
}

system_icon_destructive__hint_button_left_bottom {
    filename: "system_icon_destructive__hint_button_left_bottom.svg";
    dithering: "none";
    packingFormat: png;
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
    x: 3;
    y: 149;
}

system_loc__hint_button_left_bottom {
    x: 11;
    y: 227;
}

system_loc__hint_button_right_top {
    x: 297;
    y: 69;
}

system_loc__hint_button_right_middle {
    exclude: true;
}

system_loc__hint_button_right_bottom {
    x: 294;
    y: 227;
}
