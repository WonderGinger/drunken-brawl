var xsp = round(speed_x); //Convert theoretical value to an integer
var ysp = round(speed_y); 

//Horizontal collision
if (place_meeting(x + xsp,y,o_floor)) {
    while(!place_meeting(x+sign(xsp),y,o_floor)) x += sign(xsp);
    speed_x = 0;
    xsp = 0;
}
x += xsp;

//Vertical collision
if (place_meeting(x,y + ysp,o_floor)) {
    while(!place_meeting(round(x),round(y + sign(ysp)),o_floor)) y += sign(ysp);
    speed_y = 0;
    ysp = 0;
}
y += ysp;
