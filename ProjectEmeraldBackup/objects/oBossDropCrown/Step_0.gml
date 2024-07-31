if (y > ystart) {vspeed = 0 speed = 0 gravity =0 direction = 0}

if global.quest.crown.available=false
{
	if place_meeting(x,y,obj_playerEmory)
	{
		if !instance_exists(obj_textBox)
		{
			create_textbox("CrownCollect")
		}
		instance_destroy(self)
		global.quest.crown.available=true
	}
}
image_index = 2