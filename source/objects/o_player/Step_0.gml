/// @description Move Player

// key definitions
key_left = -keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// horizontal movement
dir = key_left + key_right;
h_spd = dir * m_spd;

// vertical movement
if (v_spd < 10) v_spd += grav;
if (place_meeting(x, y + 1, o_solid)) j_limit = initial_j_limit;
if (key_jump and j_limit > 0) {
	audio_play_sound(snd_jump, 1, 0)
	v_spd = key_jump * -j_spd * j_limit;
	j_limit--;
}

// horizontal collisions
if (place_meeting(x + h_spd + (sign(h_spd) * coins), y, o_solid)) {
	while(!place_meeting(x + sign(h_spd + (sign(h_spd) * coins)), y, o_solid)) {
		x += sign(h_spd + (sign(h_spd) * coins));
	}
	h_spd = 0;
}

x += h_spd + (sign(h_spd) * coins);

// vertical collisions
if (place_meeting(x, y + v_spd, o_solid)) {
	while(!place_meeting(x, y + sign(v_spd), o_solid)) {
		y += sign(v_spd);
	}
	v_spd = 0;
}
y += v_spd;
