if (key_up && place_meeting(x, y+1, p_static)) {
    speed_y = -jumpspeed;
    jumpsquat = true;
    repeat(choose(5,15)) instance_create(x,bbox_bottom,o_dust);
}