with(obj_player){
	if(place_meeting(x, y, other)){
		if(other.place){
			x = xstart;
			y = ystart;
		}
	}
}
image_index = place;