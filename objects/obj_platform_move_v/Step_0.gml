velv = move_dir * move_spd;

if(place_meeting(x, y+sign(velv), obj_collision)){
	move_dir*=-1;
}

var _coll = place_meeting(x, y+1, obj_player) || place_meeting(x, y-1, obj_player);

if(_coll){
	with(obj_player){
		y+=other.velv
	}
}

y+=velv;