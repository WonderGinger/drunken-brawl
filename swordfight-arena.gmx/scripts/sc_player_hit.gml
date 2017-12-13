with(o_player_1){
    invincible = true;
    st_player = ps.frozen;
    img_spd = .03;
    image_speed = 0.01;
    speed_x = 0;
    speed_y = 0;
}
with(o_player_2){
    invincible = true;
    st_player = ps.frozen;
    img_spd = .03;
    image_speed = 0.01;
    speed_x = 0;
    speed_y = 0;
}
instance_create(0,0,o_player_hit); //Zooms camera
