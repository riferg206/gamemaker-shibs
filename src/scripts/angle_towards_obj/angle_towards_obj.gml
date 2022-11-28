///@description Angle a game object towards another game object by the shortest path
///@arg obj
///@arg dist
///@arg active_radial


function angle_towards_obj(obj, angle, activeRadial){
		new_angle = image_angle - angle_difference(image_angle, angle);
		image_angle = lerp(image_angle, new_angle, activeRadial);
		return image_angle
}

///@description Idle and spin an object
///@arg passive_radial
function idle_angle(passiveRadial) {
	image_angle = lerp(image_angle, direction, passiveRadial);
}