image_speed = 1
if place_meeting(x,y,obj_playerEmory) && global.flag[9]<1
{
	if keyboard_check_pressed(vk_space) && !instance_exists(obj_textBox) && !instance_exists(oMainMenu)
	{
		faceActor(obj_playerEmory,self)
		if !audio_is_playing(textBoxOpen)
		{
			audio_play_sound(textBoxOpen,1,false)
		}
		switch talkAmmount
		{
			case 0:
				create_textbox("FallenTree1")	
			break;	
			
			case 1:
				create_textbox("FallenTree2")	
			break;
			
			case 2:
				create_textbox("FallenTree3")	
			break;
			
			case 3:
				create_textbox("FallenTree4")	
			break;
		}
	}
}

if global.flag[9]>=1
{
	if image_index < 25
	{
		obj_playerEmory.speedWalk = 0
		cutscene_setSprite(obj_fallenTree,S_fallenTree,0,25)
	}
	else
	{
		image_index = 25
		//destroys coll
		instance_destroy(inst_253977C8)
		instance_destroy(inst_44806BC2)
		instance_destroy(inst_45DD176F)
		instance_destroy(inst_332154DC)
		instance_destroy(inst_3FCB34F5)
	}
}
else
{
	ObjDepth(self,obj_playerEmory,-52,10)
	image_index = 1	
}
