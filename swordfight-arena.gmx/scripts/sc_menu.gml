switch(mpos){
    case 0: room_goto(r_arena); break;
    case 1: room_goto(r_tutorial); break;
    case 2: game_end(); break;
    default: break;
}