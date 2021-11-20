if o_player.coins > 50 {
	o_player.coins = 0;
	
	switch room {
		case Room1:
			room_goto(Room2);
			break;
		case Room2:
			room_goto(Room1);
			break;
	}
}