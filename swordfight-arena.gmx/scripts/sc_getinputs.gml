player = argument0;

if(player == 0){
    key_left = keyboard_check(ord('A')) || gamepad_axis_value(player, gp_axislh);
    key_right = keyboard_check(ord('D'));
    key_up = keyboard_check_pressed(ord('W'));
    key_down = keyboard_check(ord('S'));
    key_dash = keyboard_check_pressed(ord('C'));
    key_attack = keyboard_check(ord('V'));
}
else if(player == 1) {
    key_left = keyboard_check(ord('J'));
    key_right = keyboard_check(ord('L'));
    key_up = keyboard_check_pressed(ord('I'));
    key_down = keyboard_check(ord('K'));
    key_dash = keyboard_check_pressed(190); //'.' key
    key_attack = keyboard_check_pressed(191); //'/' key
}
xaxis = (key_right - key_left)
yaxis = (key_down - key_up)
