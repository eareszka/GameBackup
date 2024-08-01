up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

timer1 -=1
timer2 -=1

//spawns bar
if timer2>0
{
	sprite = sRhythmBarSpawn3
	subimg = -1
}
else
{
	sprite = sRhythmBar3
	
	if setOnce = false
	{
		subimg = 0
		setOnce = true
	}
}

if timer1<0
{
	instance_destroy(self)	
}

if sprite = sRhythmBar3
{
	if up_key
	pos +=1
	if down_key
	pos -=1

	if pos >= 2{pos = -1};
	if pos <= -2 {pos = 1};

	if pos = 0
	{
		yPlace=21	//middle row
	}
	if pos = 1
	{
		yPlace=5	//top row
	}
	if pos = -1
	{
		yPlace=37	//bottom row
	}
}

//determines if item is collected
if oRhythmItems1.x <200 && oRhythmItems1.x >165
{
	if oRhythmItems1.yPlace=5 && pos = 1
	{
		oRhythmItems1.alpha-=.1
		rhythmScore1 = true
	}
	if oRhythmItems1.yPlace=21 && pos = 0
	{
		oRhythmItems1.alpha-=.1
		rhythmScore1 = true
	}
	if oRhythmItems1.yPlace>30 && pos = 1
	{
		oRhythmItems1.alpha-=.1
		rhythmScore1 = true
	}
}
if oRhythmItems2.x <200 && oRhythmItems2.x >165
{
	if oRhythmItems2.yPlace=5 && pos = 1
	{
		oRhythmItems2.alpha-=.1
		rhythmScore2 = true
	}
	if oRhythmItems2.yPlace=21 && pos = 0
	{
		oRhythmItems2.alpha-=.1
		rhythmScore2 = true
	}
	if oRhythmItems2.yPlace>30 && pos = 1
	{
		oRhythmItems2.alpha-=.1
		rhythmScore2 = true
	}
}
if oRhythmItems3.x <200 && oRhythmItems3.x >165
{
	if oRhythmItems3.yPlace=5 && pos = 1
	{
		oRhythmItems3.alpha-=.1
		rhythmScore3 = true
	}
	if oRhythmItems3.yPlace=21 && pos = 0
	{
		oRhythmItems3.alpha-=.1
		rhythmScore3 = true
	}
	if oRhythmItems3.yPlace>30 && pos = -1
	{
		oRhythmItems3.alpha-=.1
		rhythmScore3 = true
	}
}
if oRhythmItems4.x <200 && oRhythmItems4.x >165
{
	if oRhythmItems4.yPlace=5 && pos = 1
	{
		oRhythmItems4.alpha-=.1
		rhythmScore4 = true
	}
	if oRhythmItems4.yPlace=21 && pos = 0
	{
		oRhythmItems4.alpha-=.1
		rhythmScore4 = true
	}
	if oRhythmItems4.yPlace>30 && pos = -1
	{
		oRhythmItems4.alpha-=.1
		rhythmScore4 = true
	}
}

//checks win condition
if !rhythmScore1 || !rhythmScore2 || !rhythmScore3 || !rhythmScore4
{
	global.success = 0
}
else
{
	if !audio_is_playing(hit2)
	{
		audio_play_sound(hit2,1,false)
	}
	global.success = 1
}

