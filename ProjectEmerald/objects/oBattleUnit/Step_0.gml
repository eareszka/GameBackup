if (hp <= 0) 
{
	if (enemy) 
	{
		if !playOnce
		{
			alarm[0]=1
			alarm[2]=room_speed*.4
			playOnce=true
		}
		
	}
	else
	{
		
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
	image_alpha -= 1
	if image_alpha < 0
	{
		hp = 0
	}
	else
	{
		ObjFlash(self,1.5,.01,255,255,255)	
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