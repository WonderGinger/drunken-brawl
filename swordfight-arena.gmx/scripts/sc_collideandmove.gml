var xsp = round(speed_x); //Convert theoretical value to an integer
var ysp = round(speed_y); 

//Horizontal collision
var hcollide = instance_place(x + xsp,y,p_static);
if(hcollide != noone){
    if(!hcollide.one_way) {
        while(!place_meeting(x+sign(xsp),y,p_static)) x += sign(xsp);
        speed_x = 0;
        xsp = 0;
    }
}
x += xsp;

//Vertical collision
var vcollide = instance_place(x,y+ysp,p_static);
if (vcollide != noone){
    if(vcollide.one_way && (bbox_bottom <= vcollide.bbox_top)){
        while(!place_meeting(round(x),round(y + sign(ysp)),o_platform)) y += sign(ysp);
        speed_y = 0;
        ysp = 0;
    }
    ysp += key_down;
}

if(place_meeting(x,y+ysp, o_wall)) {
    while(!place_meeting(round(x),round(y + sign(ysp)),o_wall)) y += sign(ysp);
    speed_y = 0;
    ysp = 0;
}
y += ysp;