in_left		= keyboard_check(vk_left);
in_right	= keyboard_check(vk_right);
in_up		= keyboard_check(vk_up);
in_down		= keyboard_check(vk_down);
in_walk		= keyboard_check(vk_control);
in_run		= keyboard_check(vk_shift);

var spd = n_spd;

if (in_walk || in_run) {
	spd = abs(in_walk * w_spd - in_run * r_spd);
} else {
	spd = n_spd;
}

moveX = 0;
moveY = 0;

// setting movements
moveX = (in_right - in_left) * spd;
if (moveX == 0) {moveY = (in_down  - in_up ) * spd;}

// getting facing direction
if (moveX != 0) {
	switch (sign(moveX)) {
		case 1: facing = dir.RIGHT break;
		case -1: facing = dir.LEFT  break;
	}
} else if (moveY != 0) {
	switch (sign(moveY)) {
		case 1: facing = dir.DOWN break;
		case -1: facing = dir.UP  break;
	}
} else {
	facing = -1;
}

// checking collisions
check_collision();

// Objects
var inst = instance_place(x,y,obj_transition);
if (inst != noone && facing == inst.player_preDir) {
	with(GAME) {
		if (!do_transition) {
			spawn_room = inst.target_room;
			spawn_x = inst.target_x;
			spawn_y = inst.target_y;
			spawn_playerDir = inst.player_curDir;
			do_transition = true;
		}
	}
}

// Applying movements
x += moveX;
y += moveY;
	
