switch(mpos){
    case 0: {
        pause = 0; 
        instance_activate_all();
    } break;
    case 1: {
        if(room_get_name(room) == "r_result")
            room_goto(r_arena);
        else room_restart(); 
    } break;
    case 2: room_goto(r_splash); break;
    case 3: game_end(); break;
    default: break;
}
