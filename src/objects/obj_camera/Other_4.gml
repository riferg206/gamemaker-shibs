global.cameraX = 0;
global.cameraY = 0;
target = obj_player;

global.cameraWidth = 500;
global.cameraHeight = 500;

view_enabled[0] = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.cameraWidth, global.cameraHeight);

displayScale = 2;
displayWidth = global.cameraWidth * displayScale;
displayHeight = global.cameraHeight * displayScale;

window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);

display_set_gui_size(global.cameraWidth, global.cameraHeight)

if (room == rm_game) {
	global.cameraX = room_width/2 - global.cameraWidth/2;
	global.cameraY = room_height/2 - global.cameraHeight/2;
	camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);
}

alarm[0] = 1