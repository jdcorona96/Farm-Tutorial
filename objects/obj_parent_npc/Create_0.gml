//walking directions
enum MOVE {
	
	LEFT,
	UP,
	RIGHT,
	BOTTOM
}

// speed parameters
spd = 1;
n_spd = spd;
r_spd = 1.5;
w_spd = 0.5;

// pixels object will move in next step
moveX = 0;
moveY = 0;

// sprite parameters
x_frame = 1;
y_frame = 8;

x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

shadow =-1;
base =-1;
torso=-1;
head=-1;
legs=-1;
feet=-1;

alarm[0] = 1;


