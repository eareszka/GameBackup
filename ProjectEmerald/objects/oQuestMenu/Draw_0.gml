draw_sprite_ext(spr_questMenu,subimg,camera_get_view_x(view_camera[0])+108,camera_get_view_y(view_camera[0])+60,1,1,0,c_white,1)
draw_text(camera_get_view_x(view_camera[0])+120,camera_get_view_y(view_camera[0])+70,"$"+string(global.my_Money))
draw_text(camera_get_view_x(view_camera[0])+120,camera_get_view_y(view_camera[0])+80,"XP:"+string(global.battleExperince))
draw_set_halign(fa_right)
draw_text(camera_get_view_x(view_camera[0])+375,camera_get_view_y(view_camera[0])+80,"Return (esc)")
draw_text(camera_get_view_x(view_camera[0])+375,camera_get_view_y(view_camera[0])+70,"Accept (spacebar)")








//draws items
if global.quest.annasFlashLight.available=true
{
	draw_sprite_stretched(spr_questItem,0,camera_get_view_x(view_camera[0])+130,camera_get_view_y(view_camera[0])+110,16,16)	
}
if global.quest.dogTreat.available=true
{
	draw_sprite_stretched(spr_questItem,1,camera_get_view_x(view_camera[0])+130,camera_get_view_y(view_camera[0])+145,16,16)	
}
if global.quest.crown.available=true
{
	draw_sprite_stretched(spr_questItem,2,camera_get_view_x(view_camera[0])+130,camera_get_view_y(view_camera[0])+145,16,16)	
}
if global.quest.hotelKey.available=true
{
	draw_sprite_stretched(spr_questItem,3,camera_get_view_x(view_camera[0])+296,camera_get_view_y(view_camera[0])+110,14,14)	
}
if global.quest.farmKey.available=true
{
	draw_sprite_stretched(spr_questItem,4,camera_get_view_x(view_camera[0])+314,camera_get_view_y(view_camera[0])+110,14,14)	
}
if global.quest.helicopter.available=true
{
	draw_sprite_stretched(spr_questItem,5,camera_get_view_x(view_camera[0])+296,camera_get_view_y(view_camera[0])+128,14,14)		
}
if global.quest.boatKey.available=true
{
	draw_sprite_stretched(spr_questItem,6,camera_get_view_x(view_camera[0])+314,camera_get_view_y(view_camera[0])+128,14,14)		
}