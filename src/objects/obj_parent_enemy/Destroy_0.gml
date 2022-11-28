audio_play_sound(snd_die, 1, false);
effect_create_above(ef_explosion, x, y, 1, c_orange);

switch object_index {
	
	case obj_raider:
		score += 15;
		break;
		
	case obj_hunter:
		score += 25;
		break;
		
	case obj_brute:
		score += 50;
		break;
}