/*
 * Forerunner® 55 Personality
 * Begin Common
 */

/* System Definitions */

device_info {
    hasTouchScreen: true;
    hasNightMode: false;
    hasEnhancedReadabilityMode: false;
    hasGpu: false;
    screenWidth: 208;
    screenHeight: 208;
    screenShape: Toybox.System.SCREEN_SHAPE_ROUND;
}

system_size__screen {
    width: 208;
    height: 208;
}

system_size__launch_icon {
    scaleX: 35;
    scaleY: 35;
    scaleRelativeTo: screen;
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
    exclude: true;
}

system_size__subwindow {
    exclude: true;
}

/* Menu Definitions */

system_size__menu_header {
    width: 208;
    height: 65;
}

system_size__menu_item {
    width: 208;
    height: 54;
}

system_size__menu_icon {
    scaleX: 35;
    scaleY: 35;
    scaleRelativeTo: screen;
}

/* Activity Definitions */

activity_color_light__background {
    color: #FFFFFF;
    background: #FFFFFF;
}

activity_color_dark__background {
    color: #000000;
    background: #000000;
}

activity_color_light__text {
    color: #000000;
    background: Graphics.COLOR_TRANSPARENT;
}

activity_color_dark__text {
    color: #FFFFFF;
    background: Graphics.COLOR_TRANSPARENT;
}

/* Prompt Definitions */

prompt_color_light__background {
    background: #FFFFFF;
    color: #FFFFFF;
}

prompt_color_dark__background {
    background: #000000;
    color: #000000;
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
    x: 104;
    y: 31;
    horizontalJustification: center;
    verticalJustification: center;
}

prompt_loc__title {
    x: 21;
    y: 15;
}

prompt_loc__body_with_title {
    x: 21;
    y: 63;
}

prompt_loc__body_no_title {
    x: 21;
    y: 21;
}

prompt_size__title {
    width: 166;
    height: 38;
}

prompt_size__body_no_title {
    width: 166;
    height: 166;
}

prompt_size__body_with_title {
    width: 166;
    height: 125;
}

prompt_size__title_icon {
    scaleX: 15.39%;
    scaleRelativeTo: "screen";
}

/* Action Menus */

system_icon_light__hint_action_menu {
    filename: "system_icon_light__hint_button_right_top.svg";
    dithering: "none";
}

system_icon_dark__hint_action_menu {
    filename: "system_icon_dark__hint_button_right_top.svg";
    dithering: "none";
}

system_icon_positive__hint_action_menu {
    filename: "system_icon_positive__hint_button_right_top.svg";
    dithering: "none";
}

system_icon_destructive__hint_action_menu {
    filename: "system_icon_destructive__hint_button_right_top.svg";
    dithering: "none";
}

system_loc__hint_action_menu {
    x: 175;
    y: 33;
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
}

confirmation_icon__hint_reject {
    filename: "confirmation_icon__hint_reject.svg";
    dithering: "none";
}

confirmation_icon__hint_delete {
    filename: "confirmation_icon__hint_delete.svg";
    dithering: "none";
}

confirmation_icon__hint_keep {
    filename: "confirmation_icon__hint_keep.svg";
    dithering: "none";
}

confirmation_icon_light__hint_confirm {
    filename: "confirmation_icon__hint_completion.svg";
    dithering: "none";
}

confirmation_icon_light__hint_reject {
    filename: "confirmation_icon__hint_reject.svg";
    dithering: "none";
}

confirmation_icon_light__hint_delete {
    filename: "confirmation_icon__hint_delete.svg";
    dithering: "none";
}

confirmation_icon_light__hint_keep {
    filename: "confirmation_icon__hint_keep.svg";
    dithering: "none";
}

confirmation_icon_dark__hint_confirm {
    filename: "confirmation_icon__hint_completion.svg";
    dithering: "none";
}

confirmation_icon_dark__hint_reject {
    filename: "confirmation_icon__hint_reject.svg";
    dithering: "none";
}

confirmation_icon_dark__hint_delete {
    filename: "confirmation_icon__hint_delete.svg";
    dithering: "none";
}

confirmation_icon_dark__hint_keep {
    filename: "confirmation_icon__hint_keep.svg";
    dithering: "none";
}

confirmation_font__body {
    font: Graphics.FONT_TINY;
    justification: Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER;
}

confirmation_font_enhanced_readability__body {
    exclude: true;
}

confirmation_loc__hint_confirm {
    x: 169;
    y: 42;
}

confirmation_loc__hint_reject {
    x: 10;
    y: 139;
    horizontalJustification: left;
}

confirmation_loc__hint_delete {
    x: 169;
    y: 42;
}

confirmation_loc__hint_keep {
    x: 10;
    y: 139;
    horizontalJustification: left;
}

confirmation_loc__body {
    x: 42;
    y: 42;
}

confirmation_size__body {
    width: 125;
    height: 125;
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
    scaleX: 21;
    scaleY: 21;
    scaleRelativeTo: "screen";
}

/* System Assets */

system_icon_light__about {
    filename: "system_icon_light__about.svg";
    dithering: "none";
}

system_icon_light__cancel {
    filename: "system_icon_light__cancel.svg";
    dithering: "none";
}

system_icon_light__check {
    filename: "system_icon_light__check.svg";
    dithering: "none";
}

system_icon_light__discard {
    filename: "system_icon_light__discard.svg";
    dithering: "none";
}

system_icon_light__question {
    filename: "system_icon_light__question.svg";
    dithering: "none";
}

system_icon_light__revert {
    filename: "system_icon_light__revert.svg";
    dithering: "none";
}

system_icon_light__save {
    filename: "system_icon_light__save.svg";
    dithering: "none";
}

system_icon_light__search {
    filename: "system_icon_light__search.svg";
    dithering: "none";
}

system_icon_light__warning {
    filename: "system_icon_light__warning.svg";
    dithering: "none";
}

system_icon_dark__about {
    filename: "system_icon_dark__about.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__cancel {
    filename: "system_icon_dark__cancel.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__check {
    filename: "system_icon_dark__check.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__discard {
    filename: "system_icon_dark__discard.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__question {
    filename: "system_icon_dark__question.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__revert {
    filename: "system_icon_dark__revert.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__save {
    filename: "system_icon_dark__save.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__search {
    filename: "system_icon_dark__search.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__warning {
    filename: "system_icon_dark__warning.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_positive__check {
    filename: "system_icon_positive__check.svg";
    dithering: "none";
}

system_icon_destructive__cancel {
    filename: "system_icon_destructive__cancel.svg";
    dithering: "none";
}

system_icon_destructive__discard {
    filename: "system_icon_destructive__discard.svg";
    dithering: "none";
}

system_icon_destructive__warning {
    filename: "system_icon_destructive__warning.svg";
    dithering: "none";
}

/* Button Hints */

system_icon_light__hint_button_left_top {
    filename: "system_icon_light__hint_button_left_top.svg";
    dithering: "none";
}

system_icon_light__hint_button_left_middle {
    filename: "system_icon_light__hint_button_left_middle.svg";
    dithering: "none";
}

system_icon_light__hint_button_left_bottom {
    filename: "system_icon_light__hint_button_left_bottom.svg";
    dithering: "none";
}

system_icon_light__hint_button_right_top {
    filename: "system_icon_light__hint_button_right_top.svg";
    dithering: "none";
}

system_icon_light__hint_button_right_middle {
    exclude: true;
}

system_icon_light__hint_button_right_bottom {
    filename: "system_icon_light__hint_button_right_bottom.svg";
    dithering: "none";
}

system_icon_dark__hint_button_left_top {
    filename: "system_icon_dark__hint_button_left_top.svg";
    dithering: "none";
}

system_icon_dark__hint_button_left_middle {
    filename: "system_icon_dark__hint_button_left_middle.svg";
    dithering: "none";
}

system_icon_dark__hint_button_left_bottom {
    filename: "system_icon_dark__hint_button_left_bottom.svg";
    dithering: "none";
}

system_icon_dark__hint_button_right_top {
    filename: "system_icon_dark__hint_button_right_top.svg";
    dithering: "none";
}

system_icon_dark__hint_button_right_middle {
    exclude: true;
}

system_icon_dark__hint_button_right_bottom {
    filename: "system_icon_dark__hint_button_right_bottom.svg";
    dithering: "none";
}

system_icon_positive__hint_button_left_top {
    filename: "system_icon_positive__hint_button_left_top.svg";
    dithering: "none";
}

system_icon_positive__hint_button_left_middle {
    filename: "system_icon_positive__hint_button_left_middle.svg";
    dithering: "none";
}

system_icon_positive__hint_button_left_bottom {
    filename: "system_icon_positive__hint_button_left_bottom.svg";
    dithering: "none";
}

system_icon_positive__hint_button_right_top {
    filename: "system_icon_positive__hint_button_right_top.svg";
    dithering: "none";
}

system_icon_positive__hint_button_right_middle {
    exclude: true;
}

system_icon_positive__hint_button_right_bottom {
    filename: "system_icon_positive__hint_button_right_bottom.svg";
    dithering: "none";
}

system_icon_destructive__hint_button_left_top {
    filename: "system_icon_destructive__hint_button_left_top.svg";
    dithering: "none";
}

system_icon_destructive__hint_button_left_middle {
    filename: "system_icon_destructive__hint_button_left_middle.svg";
    dithering: "none";
}

system_icon_destructive__hint_button_left_bottom {
    filename: "system_icon_destructive__hint_button_left_bottom.svg";
    dithering: "none";
}

system_icon_destructive__hint_button_right_top {
    filename: "system_icon_destructive__hint_button_right_top.svg";
    dithering: "none";
}

system_icon_destructive__hint_button_right_middle {
    exclude: true;
}

system_icon_destructive__hint_button_right_bottom {
    filename: "system_icon_destructive__hint_button_right_bottom.svg";
    dithering: "none";
}

system_loc__hint_button_left_top {
    exclude: true;
}

system_loc__hint_button_left_middle {
    x: 4;
    y: 88;
}

system_loc__hint_button_left_bottom {
    x: 11;
    y: 138;
}

system_loc__hint_button_right_top {
    x: 175;
    y: 33;
}

system_loc__hint_button_right_middle {
    exclude: true;
}

system_loc__hint_button_right_bottom {
    x: 178;
    y: 137;
}
