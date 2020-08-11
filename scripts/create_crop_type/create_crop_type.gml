///@description adds a new type of crop into the grid
///@arg growth_stage_duration
///@arg cost

var argNum = argument_count;
var height;

if (ds_exists(ds_crop_type, ds_type_grid)) {

	ds_crop_type = ds_grid_create(argNum, 1);
	height = 1;

} else {
	
	height = ds_grid_height(ds_crop_type) + 1;
	ds_grid_resize(ds_crop_type, argNum, height);

}

var yy = height-1;
var i = 0;
repeat (argNum) {
	ds_crop_type[# i,yy] = argument[i];
	i++;
}
