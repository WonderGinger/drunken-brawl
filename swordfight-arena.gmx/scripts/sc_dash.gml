var spd_wanted = 4 * movespeed * xaxis;

speed_x += (spd_wanted - speed_x) * 0.1; // Smoothly accelerate / decelerate

if(speed_y < 0) speed_y = abs(speed_x)/2;
else if (speed_y != 0) speed_y -= 0.2

if (key_up && place_meeting(x, y+1, p_static)) {
    speed_y = -jumpspeed
}

sc_collideandmove();
