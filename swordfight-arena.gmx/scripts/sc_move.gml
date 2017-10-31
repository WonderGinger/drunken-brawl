sc_getinputs();
var spd_wanted = 0; //The theoretical speed for this step

spd_wanted += movespeed * xaxis;

speed_x += (spd_wanted - speed_x) * 0.1; // Smoothly accelerate / decelerate
speed_y += grav;

if (key_up && place_meeting(x, y+1, p_static)) {
    speed_y = -jumpspeed
}

if(key_dash) {
    st_player = ps.dash;
    alarm[0] = room_speed/8;
}

sc_collideandmove();
