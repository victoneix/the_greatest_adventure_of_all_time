//with(obj_player){
//	var _velr = 2;
//	var _keys_h = keyboard_check(ord("W")) || keyboard_check(ord("S"));
//	if(_keys_h) other.rising = true;
//	if(instance_place(x, y, obj_steps) && other.rising){
//		velv = 0;
//		if(keyboard_check(ord("W"))){
//			velv -= _velr;
//		}
//		if(keyboard_check(ord("S"))){
//			velv += _velr;
//		}
		
//		if(keyboard_check_pressed(vk_space)){
//			other.rising = false;
//			velv -= jump_height;
//		} 
//	} else if(!instance_place(x, y, obj_steps)){
//		other.rising = true;
//	}
//}