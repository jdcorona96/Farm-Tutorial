if (do_transition) {
	
	if (room != spawn_room) {
		black_alpha += 0.1;
		if (black_alpha >= 1) {
			room_goto(spawn_room);
		}
	} else {
		black_alpha -= 0.1;
		if (black_alpha <= 0) {
			do_transition = false;
		}
	}
	
	draw_set_alpha(black_alpha);
	draw_rectangle(0, 0,gui_width, gui_height,false);
	draw_set_alpha(1);	

}

