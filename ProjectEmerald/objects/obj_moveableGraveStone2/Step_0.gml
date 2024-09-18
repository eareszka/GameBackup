image_speed = 1
if place_meeting(x,y,obj_playerEmory)&&global.flag[8]=0
{
	if keyboard_check_pressed(vk_space) && !instance_exists(obj_textBox) && !instance_exists(oMainMenu)
	{
		faceActor(obj_playerEmory,self)
		if !audio_is_playing(textBoxOpen)
		{
			audio_play_sound(textBoxOpen,1,false)
		}
		create_textbox(text_id)			
	}
}

if global.flag[8]!=2
{
	if global.flag[8]=1 && !instance_exists(obj_textBox)
	{
		if image_index < 16
		{
			cutscene_setSprite(obj_moveableGraveStone2,spr_moveGraveStone,1,17)
		}
		else
		{
			inst_158C55D.x = 1896
			inst_158C55D.y = 1295
			global.flag[8]=2
		}
	}
	else
	{
		image_index = 1	
	}
}
else
{
	image_index=image_number-1
}

if place_meeting(x,y,obj_playerEmory) && global.flag[8]=2
{
	global.escapeImmunity = 0
	global.prevRoom = room
	instance_create_depth(0,0,-9999,oFadeIn)
	if alarm[0] == -1 
	{
		alarm[0] = room_speed*.2
	}		
}


ObjDepth(self,obj_playerEmory,-5,10)


if global.timeOfDay<8
{
	visible=false	
}
else
{
	visible=true		
}