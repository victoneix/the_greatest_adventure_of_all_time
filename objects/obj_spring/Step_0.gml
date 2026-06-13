with(obj_player){
	if(place_meeting(x, y+1, obj_spring)){
		velv = 0;
		velv -= obj_spring.impul;
	}
}