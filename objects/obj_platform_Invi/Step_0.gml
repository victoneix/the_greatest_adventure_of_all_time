if(stepped){
	image_speed = 1;
} else{
	if(image_index > 1){
		image_speed = -1;
		x = xstart;
		y = ystart;
	} else{
		image_speed = 0;
		image_index = 0;
	}
}