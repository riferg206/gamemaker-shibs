///@description initialize bullet
///@arg direction
///@arg speed
///@arg faction
///@arg creator
///@arg bullet_instance


function initialize_bullet(dir, spd = 0, factn, creator_id, inst){
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