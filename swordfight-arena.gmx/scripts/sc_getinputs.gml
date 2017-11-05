player = argument0;

if(player == 0){
    key_left = keyboard_check(ord('A'))
    key_right = keyboard_check(ord('D'))
    key_up = keyboard_check_pressed(ord('W'));
    key_down = keyboard_check(ord('S'));
    key_dash = keyboard_check_pressed(ord('C'));
    
    //Keyboard
    xaxis = (key_right - key_left)
    yaxis = (key_down - key_up)
}
else if(player == 1) {
    key_left = keyboard_check(ord('J'))
    key_right = keyboard_check(ord('L'))
    key_up = keyboard_check_pressed(ord('I'));
    key_down = keyboard_check(ord('K'));
    key_dash = keyboard_check_pressed(190); //'.' key
    
    //Keyboard
    xaxis = (key_right - key_left)
    yaxis = (key_down - key_up)
}
//Controllers
if (gamepad_is_connected(player)) {
    gamepad_set_axis_deadzone(player, .35);
    xaxis = gamepad_axis_value(player, gp_axislh);
    yaxis = gamepad_axis_value(player, gp_axislv);   
    dash_key = gamepad_button_check_pressed(player, gp_face1);
}
