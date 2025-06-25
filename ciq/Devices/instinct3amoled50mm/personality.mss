/*
 * Instinct® 3 AMOLED 50mm Personality
 * Begin Common
 */

/* System Definitions */

device_info {
    hasTouchScreen: false;
    hasNightMode: false;
    hasEnhancedReadabilityMode: false;
    hasGpu: true;
    screenWidth: 416;
    screenHeight: 416;
    screenShape: Toybox.System.SCREEN_SHAPE_ROUND;
}

system_size__screen {
    width: 416;
    height: 416;
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
    width: 416;
    height: 154;
}

system_size__menu_item {
    width: 416;
    height: 108;
}

system_size__menu_icon {
    scaleX: 60;
    scaleY: 60;
    scaleRelativeTo: "screen";
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
    x: 208;
    y: 63;
    horizontalJustification: center;
    verticalJustification: center;
}

prompt_loc__title {
    x: 42;
    y: 31;
}

prompt_loc__body_with_title {
    x: 42;
    y: 125;
}

prompt_loc__body_no_title {
    x: 42;
    y: 42;
}

prompt_size__title {
    width: 333;
    height: 63;
}

prompt_size__body_no_title {
    width: 333;
    height: 333;
}

prompt_size__body_with_title {
    width: 333;
    height: 250;
}

prompt_size__title_icon {
    scaleX: 15%;
    scaleRelativeTo: "screen";
}

/* Action Menus */

system_icon_light__hint_action_menu {
    filename: "system_icon__hint_button_right_top.svg";
    dithering: "none";
    automaticPalette: true;
}

system_icon_dark__hint_action_menu {
    filename: "system_icon__hint_button_right_top.svg";
    dithering: "none";
    automaticPalette: true;
}

system_icon_positive__hint_action_menu {
    filename: "system_icon_positive__hint_button_right_top.svg";
    dithering: "none";
    automaticPalette: true;
}

system_icon_destructive__hint_action_menu {
    filename: "system_icon_destructive__hint_button_right_top.svg";
    dithering: "none";
    automaticPalette: true;
}

system_loc__hint_action_menu {
    x: 354;
    y: 73;
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
    x: 306;
    y: 0;
}

confirmation_loc__hint_reject {
    x: 0;
    y: 256;
    horizontalJustification: left;
}

confirmation_loc__hint_delete {
    x: 306;
    y: 0;
}

confirmation_loc__hint_keep {
    x: 0;
    y: 256;
    horizontalJustification: left;
}

confirmation_loc__body {
    x: 83;
    y: 83;
}

confirmation_size__body {
    width: 250;
    height: 250;
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
    scaleX: 40;
    scaleY: 40;
    scaleRelativeTo: "screen";
}

/* System Assets */

system_icon_light__about {
    filename: "system_icon__about.svg";
    dithering: "none";
}

system_icon_light__cancel {
    filename: "system_icon__cancel.svg";
    dithering: "none";
}

system_icon_light__check {
    filename: "system_icon__check.svg";
    dithering: "none";
}

system_icon_light__discard {
    filename: "system_icon__discard.svg";
    dithering: "none";
}

system_icon_light__question {
    filename: "system_icon__question.svg";
    dithering: "none";
}

system_icon_light__revert {
    filename: "system_icon__revert.svg";
    dithering: "none";
}

system_icon_light__save {
    filename: "system_icon__save.svg";
    dithering: "none";
}

system_icon_light__search {
    filename: "system_icon__search.svg";
    dithering: "none";
}

system_icon_light__warning {
    filename: "system_icon__warning.svg";
    dithering: "none";
}

system_icon_dark__about {
    filename: "system_icon__about.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__cancel {
    filename: "system_icon__cancel.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__check {
    filename: "system_icon__check.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__discard {
    filename: "system_icon__discard.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__question {
    filename: "system_icon__question.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__revert {
    filename: "system_icon__revert.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__save {
    filename: "system_icon__save.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__search {
    filename: "system_icon__search.svg";
    dithering: "none";
    compress: "true";
    automaticPalette: "true";
}

system_icon_dark__warning {
    filename: "system_icon__warning.svg";
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
    filename: "system_icon__hint_button_left_top.svg";
    dithering: "none";
}

system_icon_light__hint_button_left_middle {
    filename: "system_icon__hint_button_left_middle.svg";
    dithering: "none";
}

system_icon_light__hint_button_left_bottom {
    filename: "system_icon__hint_button_left_bottom.svg";
    dithering: "none";
}

system_icon_light__hint_button_right_top {
    filename: "system_icon__hint_button_right_top.svg";
    dithering: "none";
}

system_icon_light__hint_button_right_middle {
    exclude: true;
}

system_icon_light__hint_button_right_bottom {
    filename: "system_icon__hint_button_right_bottom.svg";
    dithering: "none";
}

system_icon_dark__hint_button_left_top {
    filename: "system_icon__hint_button_left_top.svg";
    dithering: "none";
}

system_icon_dark__hint_button_left_middle {
    filename: "system_icon__hint_button_left_middle.svg";
    dithering: "none";
}

system_icon_dark__hint_button_left_bottom {
    filename: "system_icon__hint_button_left_bottom.svg";
    dithering: "none";
}

system_icon_dark__hint_button_right_top {
    filename: "system_icon__hint_button_right_top.svg";
    dithering: "none";
}

system_icon_dark__hint_button_right_middle {
    exclude: true;
}

system_icon_dark__hint_button_right_bottom {
    filename: "system_icon__hint_button_right_bottom.svg";
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
    x: 0;
    y: 73;
}

system_loc__hint_button_left_middle {
    x: 0;
    y: 169;
}

system_loc__hint_button_left_bottom {
    x: 0;
    y: 270;
}

system_loc__hint_button_right_top {
    x: 354;
    y: 73;
}

system_loc__hint_button_right_middle {
    exclude: true;
}

system_loc__hint_button_right_bottom {
    x: 354;
    y: 270;
}
