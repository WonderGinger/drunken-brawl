var accel_factor = 4;

var spd_wanted = accel_factor * movespeed * xaxis;

// Dust animation
repeat(choose(1,2)) instance_create(x,bbox_bottom,o_dust); 

// Smoothly accelerate / decelerate
speed_x += (spd_wanted - speed_x) * 0.1; 

// Downward dash if down is held.
if(key_down) speed_y += 1;

// Animation logic
image_speed = 0.4;
sprite_index = s_player_dash;

// Jump
sc_jump();

sc_collideandmove();
