//Horizontal collision
if (place_meeting(round(x+hsp),round(y),o_floor)) {
    while(!place_meeting(round(x+sign(hsp)),round(y),o_floor)) x += sign(hsp);
    hsp = 0;
}
x += hsp;

//Vertical collision
if (place_meeting(round(x),round(y+vsp),o_floor)) {
    while(!place_meeting(round(x),round(y + sign(vsp)),o_floor)) y += sign(vsp);
    vsp = 0;
}
y += vsp;
