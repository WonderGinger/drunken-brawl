sc_getinputs();

var spd_wanted = 0; //The theoretical speed for this step

spd_wanted += movespeed * xaxis;

speed_x += (spd_wanted - speed_x) * 0.1; // Smoothly accelerate / decelerate
speed_y += grav;

if(xaxis != 0) image_xscale = xaxis;  // Flip sprite to direction of travel

// Jump
if (key_up && place_meeting(x, y+1, p_static)) {
    speed_y = -jumpspeed
    repeat(choose(5,15)) instance_create(x,bbox_bottom,o_dust);
}

// Dash
if(key_dash && (key_left || key_right)) { // If dash key pressed, and not going too slow.
    if(speed_y != 0) speed_y = 0;
    st_player = ps.dash;
    alarm[0] = room_speed/7;
    alarm[1] = room_speed/2;
}

sc_collideandmove();
