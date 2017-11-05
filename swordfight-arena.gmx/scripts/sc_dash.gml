var accel_factor = 4;

var spd_wanted = accel_factor * movespeed * xaxis;

// Dust animation
repeat(choose(1,2)) instance_create(x,bbox_bottom,o_dust); 
// Smoothly accelerate / decelerate
speed_x += (spd_wanted - speed_x) * 0.1; 

// Downward dash if down is held.
if(key_down) speed_y += 1;

// Animation logic
if(abs(spd_wanted) > movespeed - 1) {
    image_speed = 0.4;
    if (sprite_index == s_player_walk) sprite_index = s_player_jump
    else sprite_index = s_player_dash
}
else {
    image_speed = img_spd;
    sprite_index = s_player_walk
}
// Jump
if (key_up && place_meeting(x, y+1, p_static)) {
    speed_y = -jumpspeed
    repeat(choose(5,15)) instance_create(x,bbox_bottom,o_dust);
}

sc_collideandmove();