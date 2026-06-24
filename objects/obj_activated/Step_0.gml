with(obj_player){
	if(place_meeting(x, y+6, other)){
		if(other.act){
			x = xstart;
			y = ystart;
		}
	}
}
image_index = act;