

if (spawn_room == -1) {exit;}


obj_player.x = spawn_x;
obj_player.y = spawn_y;

obj_player.facing = spawn_playerDir;

with (obj_player) {
	
	switch (facing) {
		case dir.RIGHT: y_frame = 11; break;
		case dir.UP:	y_frame = 8 ; break;
		case dir.LEFT:	y_frame = 9 ; break;
		case dir.DOWN:	y_frame = 10; break;
		default:		x_frame = 10 ; break;
	}
}