//RESET PLAYERS
with(o_player_1) {
    x = x_init;
    y = y_init;
    image_index = s_player_idle;
    st_player = ps.frozen;
    img_spd = .12;
}
with(o_player_2) {
    x = x_init;
    y = y_init;
    image_index = s_player2_idle;
    st_player = ps.frozen;
    img_spd = .12;
}