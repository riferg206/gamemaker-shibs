if room == rm_game {
	spawn_off_camera(obj_rock, 40);
	
	spawn_off_camera(obj_raider, random_range(5, 10));
	spawn_off_camera(obj_brute, random_range(2, 5));
	spawn_off_camera(obj_hunter, random_range(4, 7));
	
	
	if audio_is_playing(msc_song) {
		alarm[0] = 60;
		exit;
	}
	
	audio_play_sound(msc_song, 2, true);
}

else if room != rm_game {
	audio_stop_sound(msc_song);
}
