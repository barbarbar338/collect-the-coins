/// @description Initialize coin
anchorY = y
frequency = 0.1;
amplitude = 10;
timer = 0;

x_coords = array_create(9);
y_coords = array_create(9);

if room = Room1 {
	x_coords[0] = 352;
	x_coords[1] = 544;
	x_coords[2] = 736;
	x_coords[3] = 928;
	x_coords[4] = 1184;
	x_coords[5] = 928;
	x_coords[6] = 640;
	x_coords[7] = 512;
	x_coords[8] = 128;


	y_coords[0] = 448;
	y_coords[1] = 448;
	y_coords[2] = 384;
	y_coords[3] = 384;
	y_coords[4] = 224;
	y_coords[5] = 128;
	y_coords[6] = 128;
	y_coords[7] = 128;
	y_coords[8] = 96;
} else {
	x_coords[0] = 224;
	x_coords[1] = 352;
	x_coords[2] = 672;
	x_coords[3] = 928;
	x_coords[4] = 1184;
	x_coords[5] = 352;
	x_coords[6] = 672;
	x_coords[7] = 928;
	x_coords[8] = 1184;
	
	y_coords[0] = 224;
	y_coords[1] = 224;
	y_coords[2] = 448;
	y_coords[3] = 288;
	y_coords[4] = 96;
	y_coords[5] = 224;
	y_coords[6] = 448;
	y_coords[7] = 288;
	y_coords[8] = 96;
}

