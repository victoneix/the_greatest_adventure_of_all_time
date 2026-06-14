with(obj_player){
	if(place_meeting(x, y+6, other)){
		if(other.place){
			x = xstart;
			y = ystart;
		}
	}
}
image_index = place;