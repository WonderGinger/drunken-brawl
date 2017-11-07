switch(mpos){
    case 0: {
        pause = 0; 
        instance_activate_all();
        break;
    }
    case 1: room_goto(r_tutorial); break;
    case 2: room_goto(r_splash); break;
    default: break;
}
