sc_getinputs();

hsp = movespeed * (key_right - key_left)
vsp += grav;
if (place_meeting(x, y+1, o_floor)) {
    if (key_up) vsp = -jumpspeed
}

sc_collideandmove();
