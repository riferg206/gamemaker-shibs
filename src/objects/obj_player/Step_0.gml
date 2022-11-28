if keyboard_check(vk_up)
{
	motion_add(image_angle, 0.05);
}
if keyboard_check(vk_left)
{
	image_angle += 4;
}
if keyboard_check(vk_right)
{
	image_angle -= 4;
}

move_wrap(true, true, sprite_width/2)

if mouse_check_button_pressed(mb_left)
{
	create_bullet(image_angle, bulletSpd+other.speed, faction, id, guns);
}