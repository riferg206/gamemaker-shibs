audio_play_sound(snd_die, 1, false);
effect_create_above(ef_explosion, x, y, 1, c_orange);

switch object_index {
	
	case obj_raider:
		score += 15;
		global.cameraShake = 2
		break;
		
	case obj_hunter:
		score += 25;
		global.cameraShake = 3
		break;
		
	case obj_brute:
		score += 50;
		global.cameraShake = 5
		break;
}

if irandom_range(0, 2) == 0 {
	instance_create_layer(x, y, "Instances", obj_powerup)
}
