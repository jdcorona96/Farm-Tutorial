var zero_pressed = keyboard_check_pressed(ord("0"));
var r_pressed = keyboard_check_pressed(ord("R"));
var esc_pressed = keyboard_check_pressed(vk_escape);

if (esc_pressed) { game_end(); }
if (r_pressed) { game_restart(); }
if (zero_pressed) { debug = !debug; }