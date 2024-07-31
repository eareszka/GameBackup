if place_meeting(x,y,obj_playerEmory) && !instance_exists(oMainMenu) && !instance_exists(obj_textBox)
{
	if !instance_exists(obj_partyStatMenu)
	{
		with instance_create_depth(0,0,-9999,obj_partyStatMenu) {hpOnly = true}
	}
	else
	{
		obj_partyStatMenu.fade = false
	}
}
else
{
	if instance_exists(obj_partyStatMenu)
	{
		obj_partyStatMenu.fade = true
	}	
}