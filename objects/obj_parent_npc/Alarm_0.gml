
moveX = 0;
moveY = 0;

var move = choose(0,1);

if (move) {
	
	var dir = choose(MOVE.LEFT,MOVE.UP,MOVE.RIGHT,MOVE.BOTTOM);
	switch (dir) {
		
		case MOVE.LEFT:		moveX = -spd; break;
		case MOVE.UP:		moveY = -spd; break;
		case MOVE.RIGHT:	moveX =  spd; break;
		case MOVE.BOTTOM:	moveY =  spd; break;
	}
		
}

alarm[0] = random_range(2.5,4)*room_speed;