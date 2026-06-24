steps();
moving();

if(keyboard_check_pressed(vk_up)) jump_height++;
if(keyboard_check_pressed(vk_down)) jump_height--;

//show_debug_message(jump_height);
//show_debug_message(velh);
//show_debug_message(velv);

show_debug_message(life);