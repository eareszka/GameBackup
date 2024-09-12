if setupTimer<0
{
	accept_key = keyboard_check_pressed(vk_space);
	esc_key = keyboard_check_pressed(vk_escape)	
}
else
{
	setupTimer--	
}

if instance_exists(oMainMenu){oMainMenu.active=false}