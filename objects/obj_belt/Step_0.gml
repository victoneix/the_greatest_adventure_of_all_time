with(obj_player){
	if(place_meeting(x, y+1, other)){
		if(obj_belt.push_dir){
			// Esquerda
			velh -= obj_belt.speed_max;
		} else{
			// Direita
			velh += obj_belt.speed_max;
		}
	}
}