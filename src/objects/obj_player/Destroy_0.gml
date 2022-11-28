lives -= 1;

with(obj_game){
	alarm[1] = room_speed;
}

audio_play_sound(snd_die, 1, false);

effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();
obj_game.alarm[1] = 120;