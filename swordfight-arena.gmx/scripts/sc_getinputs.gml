player = argument0;

if(player == 0){
    key_left = keyboard_check(ord('A')) || gamepad_axis_value(player, gp_axislh);
    key_right = keyboard_check(ord('D'));
    key_up = keyboard_check_pressed(ord('W'));
    key_down = keyboard_check(ord('S'));
    key_dash = keyboard_check_pressed(ord('V'));
    key_dash_held = keyboard_check(ord('V'));
}
else if(player == 1) {
    key_left = keyboard_check(ord('J'));
    key_right = keyboard_check(ord('L'));
    key_up = keyboard_check_pressed(ord('I'));
    key_down = keyboard_check(ord('K'));
    key_dash = keyboard_check_pressed(191); //',' key
    key_dash_held = keyboard_check(191);
    
    //Keyboard
    xaxis = (key_right - key_left)
    yaxis = (key_down - key_up)
}
//Controllers
if (gamepad_is_connected(player)) {
    show_debug_message(gamepad_get_device_count());
    var gp_num = gamepad_get_device_count();
    for (var i = 0; i < gp_num; i++;)
     {
         if gamepad_is_connected(i) show_debug_message("YES " + string(i)) else show_debug_message("NO " + string(i));
     }

    gamepad_set_axis_deadzone(player, .35);
    xaxis = gamepad_axis_value(player, gp_axislh);
    yaxis = gamepad_axis_value(player, gp_axislv);   
    key_dash = gamepad_button_check_pressed(player, gp_face1);
}
