with(obj_player){
	if(place_meeting(x, y+1, other)){
		other.image_speed = 1;
		other.stepped = true;
	}
}

if(stepped && alarm[0] < 0){
	alarm[0] = 60*4;
}

if(image_index < 1 && !stepped){
	image_speed = 0;
	image_index = 0;
}