if (hp <= 0) 
{
	if (enemy) 
	{
		//makes sure only 1 summoned ene can exsist at given time
		if (!audio_is_playing(enemyDie1) && (playOnce = false))
		{
			audio_play_sound(enemyDie1,1,false)
			playOnce = true;
		}
		image_blend = c_red;
		image_alpha -= 0.01
	}
	else
	{
		if (!audio_is_playing(playerDie1) && (playOnce = false))
		{
			audio_play_sound(playerDie1,1,false)
			playOnce = true;
		}
	}
}

if (defending) sprite_index = sprites.defend;

//if (strBoost) sprite_index = sprites.special;

//if moving!=-1
//{
//	if moving=0{path_start(infinityLoop,1,1,false)}
//}

if (flee) 
{
	//no value if fleeing
	moneyValue = 0
	experinceValue = 0
	image_alpha -= 0.05
	if image_alpha < 0
	{
		hp = 0 oBattle.RefreshRenderOrder()
	}
}

if summoned
{
	if !flag1
	{
		sprite_index = sprites.intro
	}
	if image_index >= 35
	{
		flag1 = true
		sprite_index = sprites.idle	
	}
}