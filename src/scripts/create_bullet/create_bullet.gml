///@description create_bullet
///@arg direction
///@arg speed
///@arg faction
///@arg creator

function create_bullet(dir, spd, factn, creator_id){
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	audio_play_sound(snd_zap, 1, false);
	
	with inst {
		direction = dir;
		speed = spd;
		faction = factn;
		creator = creator_id
		
		if faction == factions.ally {
			image_blend = c_aqua;
		}
		else if faction == factions.enemy {
			image_blend = c_red;
		}
	}
}