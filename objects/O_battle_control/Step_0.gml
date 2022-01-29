Control();
if (dir_left) {
	if (button_pointer.left_neighbour != noone) {
		button_pointer = button_pointer.left_neighbour;
	}
} if (dir_right) {
	if (button_pointer.right_neighbour != noone) {
		button_pointer = button_pointer.right_neighbour;
	}
} if (click_enter) {
	if (now_layer <= max_layer) {
		if (now_layer == 1) {
			which_character = button_pointer;
			button_pointer = first_action;
			now_layer += 1;
		} else if (now_layer == 2 and button_pointer.purpose == "attack") {
			attack_mode(button_pointer);
			which_action = button_pointer;
			button_pointer = first_enemy;
			now_layer += 1;
		} else if (now_layer == 3) {
			attack_by_player(button_pointer);
		}
	}
} if (click_backspace) {
	if (now_layer > min_layer) {
		if (now_layer == 2) {
			button_pointer = which_character;
			which_character = noone;
		}
		if (now_layer == 3) {
			button_pointer = which_action;
			which_action = noone;
		}
		now_layer -= 1;
	}
} 
