// setting sprite

var anim_length = 9;
var frame_size = 64;
var anim_spd = 12;

var xx = x - x_offset;
var yy = y - y_offset;

switch (facing) {
	case dir.RIGHT: y_frame = 11; break;
	case dir.UP:	y_frame = 8 ; break;
	case dir.LEFT:	y_frame = 9 ; break;
	case dir.DOWN:	y_frame = 10; break;
	default:		x_frame = 0 ; break;
}

//shadow
draw_sprite(shadow,0,x,y);
// base
draw_sprite_part(base,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
// torso
draw_sprite_part(torso, 0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
// head
draw_sprite_part(head,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
// legs
draw_sprite_part(legs,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);
// feet
draw_sprite_part(feet,  0, floor(x_frame)*frame_size, y_frame*frame_size, frame_size, frame_size, xx, yy);

// increment x_frame
if (x_frame + (anim_spd/60 )< anim_length) {
	x_frame += anim_spd / 60;
} else {
	x_frame = 1;
}

//draw_text(x,y,string(x_frame))
//draw_rectangle_color(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,true);