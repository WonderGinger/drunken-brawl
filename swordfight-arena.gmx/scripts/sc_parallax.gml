var _xpos = view_xview/(room_width-view_wview);
var _ypos = view_yview/(room_height-view_hview);

//sky
background_x[0]=lerp(0,room_width-background_width[0],_xpos);
background_y[0]=lerp(0,room_height-background_height[0],_ypos);
//buildings2
background_x[1]=lerp(-20,room_width-background_width[1]+20,_xpos);
background_y[1]=lerp(0,room_height-background_height[1]+100,_ypos);
//buildings1
background_x[2]=lerp(0,room_width-background_width[2],_xpos);
background_y[2]=lerp(40,room_height-background_height[2]+40,_ypos);
