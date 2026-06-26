with(obj_player){
	if(place_meeting(x, y+1, other)){
		other.stepped = true;
	}
}

if(stepped){
	image_speed = 1;
	if(alarm[0] < 0) alarm[0] = 60*3;
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