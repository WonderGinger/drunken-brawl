//Change animation

var spd_wanted = 4 * movespeed * xaxis;

speed_x += (spd_wanted - speed_x) * 0.1; // Smoothly accelerate / decelerate
if(abs(spd_wanted) > movespeed - 1) {
    image_speed = 0.4;
    if (sprite_index == s_player_walk) sprite_index = s_player_jump
    else sprite_index = s_player_dash
}
else {
    image_speed = img_spd;
    sprite_index = s_player_walk
}
if(speed_y < 0) speed_y = abs(speed_x)/2;
else if (speed_y != 0) speed_y -= 0.2

if (key_up && place_meeting(x, y+1, p_static)) {
    speed_y = -jumpspeed
}

sc_collideandmove();
