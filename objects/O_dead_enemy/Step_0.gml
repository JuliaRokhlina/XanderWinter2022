if (button_layer == O_battle_control.now_layer) {
	if (O_battle_control.button_pointer == id || O_battle_control.which_character == id || O_battle_control.which_action == id) {
		O_battle_control.button_pointer = O_battle_control.button_pointer.right_neighbour;
	}
}