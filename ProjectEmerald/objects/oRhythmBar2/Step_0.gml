space_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)

if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 + -15,0,camera_get_view_width(view_camera[0]) / 2 + 25,384,oRhythmSpace,true,true) && (space_key))
{
	audio_play_sound(hit1,1,false)
	rhythmScore1=true	
	oRhythmSpace.subimg = 1
}
if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 + -15,0,camera_get_view_width(view_camera[0]) / 2 + 25,384,oRhythmSpace2,true,true) && (space_key))
{
	audio_play_sound(hit1,1,false)
	rhythmScore2=true		
	oRhythmSpace2.subimg = 1
}
if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 + -15,0,camera_get_view_width(view_camera[0]) / 2 + 25,384,oRhythmSpace3,true,true) && (space_key))
{
	audio_play_sound(hit1,1,false)
	rhythmScore3=true	
	oRhythmSpace3.subimg = 1
}
if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 + -15,0,camera_get_view_width(view_camera[0]) / 2 + 25,384,oRhythmSpace4,true,true) && (space_key))
{
	audio_play_sound(hit1,1,false)
	rhythmScore4=true	
	oRhythmSpace4.subimg = 1
}
if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 + -15,0,camera_get_view_width(view_camera[0]) / 2 + 25,384,oRhythmSpace5,true,true) && (space_key))
{
	audio_play_sound(hit1,1,false)
	rhythmScore5=true	
	oRhythmSpace5.subimg = 1
}
if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 + -23,0,camera_get_view_width(view_camera[0]) / 2 + 25,384,oRhythmSpace6,true,true) && (space_key))
{
	audio_play_sound(hit1,1,false)
	rhythmScore6=true	
	oRhythmSpace6.subimg = 1
}
if (collision_rectangle(camera_get_view_width(view_camera[0]) / 2 + -23,0,camera_get_view_width(view_camera[0]) / 2 + 25,384,oRhythmSpace7,true,true) && (space_key))
{
	audio_play_sound(hit1,1,false)
	rhythmScore7=true	
	oRhythmSpace7.subimg = 1
}

if rhythmScore1 && rhythmScore2 && rhythmScore3 && rhythmScore4 && rhythmScore5 && rhythmScore6 && rhythmScore7
{
	if !audio_is_playing(hit2)
	{
		audio_play_sound(hit2,1,false)
	}
	global.success = true
}
else
{
	global.success = false
}

timer1 -=1
timer2 -=1

if timer2>0
{
	sprite = sRhythmBarSpawn2
	subimg = -1
}
else
{
	sprite = sRhythmBar2
	if setOnce = false
	{
		subimg = 0
		setOnce = true
	}
}

if timer1<0
{
	sprite = sRhythmBarSpawn2
	image_speed = -1
	if subimg<=0
	{
		instance_destroy(self)	
	}
}