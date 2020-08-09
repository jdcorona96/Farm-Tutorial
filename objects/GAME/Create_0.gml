randomize();
room_goto_next();

debug = false;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

black_alpha = 0;
spawn_room = -1;
spawn_x = 0;
spawn_y = 0;
spawn_playerDir = -1
do_transition = false;

enum dir {
	
	RIGHT = 0,
	UP	  = 270,
	LEFT  = 180,
	DOWN  = 90,
}
