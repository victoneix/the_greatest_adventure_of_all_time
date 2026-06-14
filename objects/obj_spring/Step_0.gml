with(obj_player){
	if(place_meeting(x, y+1, other)){
		velv = 0;
		velv -= other.impulse;
	}
}