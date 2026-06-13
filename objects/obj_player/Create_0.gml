vel = 3;
velh = 0; 
velv = 0;
grav = 0.3;

moving = function(){
	var _right	= keyboard_check(ord("D"));
	var _left	= keyboard_check(ord("A"));
	var _jump	= keyboard_check_pressed(vk_space);
	var _jump_height = 6;
	
	velh = (_right - _left) * vel;
	velv += grav;
	
	if(_jump && place_meeting(x, y+1, obj_collision)){
		velv -= _jump_height;
	}
}

collision = function(){
	
	repeat(abs(velh)){
		if(place_meeting(x+sign(velh), y, obj_collision)){
			velh = 0;
			break;
		} else{
			x+=sign(velh);
		}
	}
	
	repeat(abs(velv)){
		if(place_meeting(x, y+sign(velv), obj_collision)){
			velv = 0;
			break;
		} else{
			y+=sign(velv);
		}
	}	
	
}