if(invincible) exit;
var spd_wanted = 0; //The theoretical speed for this step
xaxis = (key_right - key_left);

spd_wanted += movespeed * xaxis;

speed_x += (spd_wanted - speed_x) * 0.1; // Smoothly accelerate / decelerate
speed_y += grav;

if(xaxis != 0) image_xscale = xaxis;  // Flip sprite to direction of travel

// Grounded logic
grounded = !(speed_y != 0 && speed_y != grav && speed_y != 2*grav)
//show_debug_message(string(speed_y) + "   |   " + string(grounded));

// Jump
sc_jump();

// Dash
if(key_dash && (key_left || key_right)) { // If dash key pressed, and not going too slow.
    if(speed_y != 0) speed_y = 0;
    st_player = ps.dash;
    alarm[0] = room_speed/7; //Length of dash
}

sc_collideandmove();