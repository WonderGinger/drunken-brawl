var spd_wanted = 4 * movespeed * xaxis;

speed_x += (spd_wanted - speed_x) * 0.1; // Smoothly accelerate / decelerate
speed_y = 0;

if (key_up && place_meeting(x, y+1, p_static)) {
    speed_y = -jumpspeed
}

sc_collideandmove();
