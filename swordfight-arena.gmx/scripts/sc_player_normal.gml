sc_getinputs();
var spd_wanted = 0; //The theoretical speed for this step
//speed_x = movespeed * (key_right - key_left)
spd_wanted += movespeed * (key_right - key_left)

speed_x += (spd_wanted - speed_x) * 0.1; // Smoothly accelerate / decelerate
speed_y += grav;

if (key_up && place_meeting(x, y+1, o_floor)) {
    speed_y = -jumpspeed
}

sc_collideandmove();
