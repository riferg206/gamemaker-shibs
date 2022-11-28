if !instance_exists(obj_player) {
	exit;
}

if  point_distance(x, y, obj_player.x, obj_player.y) < 250 {
	var playerAngle = point_direction(x, y, obj_player.x, obj_player.y)
	angle_towards_obj(obj_player, playerAngle, 0.1);
	bulletCounter++;
	if bulletCounter >= 60 {
		create_bullet(image_angle, 4, faction, id);
		bulletCounter = 0;
	}
}
else {
	idle_angle(0.1);
}