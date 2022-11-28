if !instance_exists(obj_player) {
	exit;
}

if point_distance(x, y, obj_player.x, obj_player.y) < 250 {
	var playerAngle = point_direction(x, y, obj_player.x, obj_player.y)
	direction = angle_towards_obj(obj_player, playerAngle, 0.1);
	
	speed += 0.01;
}
else {
	speed = lerp(speed, bruteSpeed, 0.1);
}