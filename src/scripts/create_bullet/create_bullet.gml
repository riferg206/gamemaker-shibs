///@description create_bullet
///@arg direction
///@arg speed
///@arg faction
///@arg creator_id
///@arg gun_type*

function create_bullet(dir, spd, factn, creator_id, guntype = -1){
	
	if guntype != -1 {
		
	}
	
	switch guntype {
		
		case powerups.three_bullets:
			var inst = instance_create_layer(x, y, "Instances", obj_bullet);
			initialize_bullet(dir, spd, factn, creator_id, inst);
		
		case powerups.two_bullets:
			audio_play_sound(snd_zap, 1, false);
			var _sep = 12;
		
			var inst = instance_create_layer(x+lengthdir_x(_sep, dir+90),
												y+lengthdir_y(_sep, dir+90),
												"Instances", obj_bullet);
			initialize_bullet(dir, spd, factn, creator_id, inst);
		
			var inst = instance_create_layer(x+lengthdir_x(_sep, dir-90),
												y+lengthdir_y(_sep, dir+90),
												"Instances", obj_bullet);
			initialize_bullet(dir, spd, factn, creator_id, inst);
			
			break;

		case powerups.four_bullets:
			audio_play_sound(snd_zap, 1, false);
			var _sep = 8, bullet_angle;
			
			for (var i = 0; i < 5; i++) {
				bullet_angle = dir + (i * 90);
				var inst = instance_create_layer(x+lengthdir_x(_sep, bullet_angle),
													y+lengthdir_y(_sep, bullet_angle),
													"Instances", obj_bullet);
				initialize_bullet(bullet_angle, spd, factn, creator_id, inst);
			}
			break;

		case powerups.star_bullets:
		audio_play_sound(snd_zap, 1, false);
			var _sep = 8, bullet_angle;
		
			for (var i = 0; i < 9; i++) {
			bullet_angle = dir + (i * 45);
				var inst = instance_create_layer(x+lengthdir_x(_sep, bullet_angle),
													y+lengthdir_y(_sep, bullet_angle),
												"Instances", obj_bullet);
				initialize_bullet(bullet_angle, spd, factn, creator_id, inst);
			}
			break;

		case powerups.laser_bullets:
			audio_play_sound(snd_laser, 1, false);
			var inst = instance_create_layer(x, y, "Instances", obj_laser);
			initialize_bullet(dir, spd, factn, creator_id, inst);
			break;
			
		default:
			audio_play_sound(snd_zap, 1, false);
			var inst = instance_create_layer(x, y, "Instances", obj_bullet);
			initialize_bullet(dir, spd, factn, creator_id, inst);
			break;
	}
}