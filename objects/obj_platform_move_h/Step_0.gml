velh = move_dir * move_spd;

if(place_meeting(x+sign(velh), y, obj_collision)){
	move_dir*=-1;
}

var _coll = place_meeting(x+sign(velh), y, obj_player) || place_meeting(x, y-1, obj_player);

if(_coll){
	with(obj_player){
		if(!place_meeting(x+other.velh, y, obj_collision)){
			x+=other.velh;
		}
	}
}

x+=velh;