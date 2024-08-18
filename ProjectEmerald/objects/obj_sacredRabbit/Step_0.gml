if !instance_exists(oCutscene)
{
	if place_meeting(x,y,obj_playerEmory)
	{
		if keyboard_check_pressed(vk_space) && !instance_exists(obj_textBox) && !instance_exists(oMainMenu)
		{
			if global.flag[46]=0
			{
				create_cutscene("magician")		
			}
			else
			{
				if !instance_exists(obj_textBox){create_textbox("SacredBunny")}			
				if !instance_exists(oSacredAnimalBackground){instance_create_layer(obj_playerEmory.x,obj_playerEmory.y,"Player",oSacredAnimalBackground)}
				alphaMinus = true
			}
		}
	}

	if alphaMinus = true
	{
		depth=-16000
		image_alpha -=.01
		if image_alpha < 0
		{
			global.sacredAnimals.rabbit = true
			instance_destroy()	
		}
	}

	if global.sacredAnimals.rabbit=true{instance_destroy()}
}