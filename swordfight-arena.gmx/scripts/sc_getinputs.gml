key_left = keyboard_check(ord('A'))
key_right = keyboard_check(ord('D'))
key_up = keyboard_check_pressed(ord('W'));
key_down = keyboard_check_pressed(ord('S'));
key_dash = keyboard_check_pressed(ord('C'));

//Keyboard
xaxis = (key_right - key_left)
yaxis = (key_down - key_up)

//Controllers
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);   
    dash_key = gamepad_button_check_pressed(0, gp_face1);
}
