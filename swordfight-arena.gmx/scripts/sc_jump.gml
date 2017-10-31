if keyboard_check_pressed(ord('W')){
    st_player = ps.jump;
    physics_apply_impulse(x,y,0,jump_impulse);
    alarm[0] = 5;
}
