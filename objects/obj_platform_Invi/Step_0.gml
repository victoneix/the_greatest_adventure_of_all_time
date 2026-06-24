if(stepped && alarm[1] < 0){
	alarm[1] = timer;
}

if((image_index < 1 && !stepped) && alarm[0] < 0){
	image_speed = 0;
	image_index = 0;
	alarm[0] = timer;
}
//show_debug_message(alarm[0]);
//show_debug_message(alarm[1]);