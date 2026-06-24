vel = 2.8;
velh = 0; 
velv = 0;
grav = 0.24;
jump_height = 4;
climbing = false;
coyote_time_max = 10;
coyote_time = 0;

life = 3;

moving = function(){
	var _right	= keyboard_check(ord("D"));
	var _left	= keyboard_check(ord("A"));
	var _jump	= keyboard_check_pressed(vk_space);
	var _jump_down	= keyboard_check(vk_space);
	var _ground = place_meeting(x, y+1, obj_collision);
	
	velh = (_right - _left) * vel;
	velv += grav;
	velv = clamp(velv, -12, 12);
	
	if(!_jump_down && velv < 0){
		velv = max(velv, -jump_height / 2.2);
	}
	
	if(_ground){
		coyote_time = coyote_time_max;
	} else{
		coyote_time--;	
	}
	if(_jump && coyote_time > 0){
		coyote_time = 0;
		velv = -jump_height;
	}
}

damage = function(){
	if(life > 1){
		x = xstart;
		y = ystart;
		life--;
	} else{
		game_end();
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

steps = function(){
	var _ladder = instance_place(x, y, obj_steps);
	
	var _up = keyboard_check(ord("W"));
	var _down = keyboard_check(ord("S"));
	var _jump = keyboard_check_pressed(vk_space);
	
	if(_ladder){
		if(_up || _down) climbing = true;
		if(climbing){
			velv = 0;
			if(_up) velv -= vel;
			if(_down) velv += vel;
			
			if(_jump){
				climbing = false;
				velv -= jump_height;
			}
		}
	} else {
		climbing = true;
	}
}