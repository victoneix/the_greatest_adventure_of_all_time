with(obj_player){
	if(place_meeting(x, y+1, other)){
		if(obj_belt.speed_dir == true){
			velh -= obj_belt.speed_max;
		} else{
			velh += obj_belt.speed_max;
		}
	}
}