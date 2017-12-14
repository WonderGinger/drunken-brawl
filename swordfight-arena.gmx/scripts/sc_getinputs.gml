player = argument0;

if(player == 0){
    key_left = keyboard_check(ord('A')) || gamepad_axis_value(player, gp_axislh);
    key_right = keyboard_check(ord('D'));
    key_up = keyboard_check_pressed(ord('W'));
    key_down = keyboard_check(ord('S'));
    key_dash = keyboard_check_pressed(ord('C')) || keyboard_check_pressed(ord('F'))
        || keyboard_check_pressed(ord('H')) || keyboard_check_pressed(ord('B'));
    key_attack = keyboard_check_pressed(ord('G')) || keyboard_check(ord('V'));
}
else if(player == 1) {
    key_left = keyboard_check(vk_left);
    key_right = keyboard_check(vk_right);
    key_up = keyboard_check_pressed(vk_up);
    key_down = keyboard_check(vk_down);
    key_dash = keyboard_check_pressed(190) || keyboard_check_pressed(ord('L')); 
    key_attack = keyboard_check_pressed(191) || keyboard_check_pressed(186) 
        || keyboard_check_pressed(ord('K')) || keyboard_check_pressed(188);
}
if(keyboard_check(ord('1')) && keyboard_check(ord('2'))) game_end();
xaxis = (key_right - key_left)
yaxis = (key_down - key_up)
