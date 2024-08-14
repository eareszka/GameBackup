if(global.jen = 1)
{
	if obj_playerEmory.battleStart||obj_playerEmory.array_size<25{visible=false}else{visible=true}
	
	if (obj_playerEmory.hSpeed != 0 || obj_playerEmory.vSpeed != 0)&&(followerDistance=45){
	switch(obj_playerEmory.toRecordSprite[followerDistance])
	{
	
		case emory_f_idle: sprite_index = jen_f_walking; image_xscale = obj_playerEmory.toRecord_Xscale[followerDistance]; break;
		case emory_b_walking: sprite_index = jen_b_walking; image_xscale = 1; break;	
		case emory_l_walking: sprite_index = jen_l_walking; image_xscale = 1; break;	
		case emory_r_walking: sprite_index = jen_r_walking; image_xscale = 1; break;
	}
	} else
	switch(obj_playerEmory.toRecordSprite[followerDistance])
	{
		case emory_f_idle: sprite_index = jen_f_idle; image_xscale = obj_playerEmory.toRecord_Xscale[followerDistance]; break;
		case emory_b_walking: sprite_index = jen_b_idle; image_xscale = 1; break;	
		case emory_l_walking: sprite_index = jen_l_idle; image_xscale = 1; break;	
		case emory_r_walking: sprite_index = jen_r_idle; image_xscale = 1; break;
	}

	x = obj_playerEmory.pos_x[followerDistance];
	y = obj_playerEmory.pos_y[followerDistance];
	
	if followerDistance != 45&&obj_playerEmory.array_size>=25
	{
		if obj_playerEmory.x != obj_playerEmory.xprevious
		{
			followerDistance+=1
		}
	}
	if followerDistance != 45&&obj_playerEmory.array_size>=25
	{
		if obj_playerEmory.y != obj_playerEmory.yprevious
		{
			followerDistance+=1
		}	
	}
	
	if y < obj_playerzBroke.y+5
	{
		depth = obj_playerzBroke.depth+1
	}
	else
	{
		depth = obj_playerzBroke.depth-1
	}
	
	//overworld damage
	if hit
	{
		global.overworldDamage-=1	
		if global.overworldDamage<0
		{
			hit = false	
		}
	}
	if global.overworldDamage>0 && hit
	{
		image_blend = c_red;
	}
	else
	{
		image_blend = -1	
	}
	
	if global.JcurrentHP <= 0
	{
		if !instance_exists(obj_playerEssenceRotate4_1) && !instance_exists(obj_playerEssenceRotate4_2) && !instance_exists(obj_playerEssenceRotate4_3) && !instance_exists(obj_playerEssenceRotate4_4)
		{
			instance_create_depth(obj_playerJen.x,obj_playerJen.y,-16000,obj_playerEssenceRotate4_1)
			instance_create_depth(obj_playerJen.x,obj_playerJen.y,-16000,obj_playerEssenceRotate4_2)
			instance_create_depth(obj_playerJen.x,obj_playerJen.y,-16000,obj_playerEssenceRotate4_3)
			instance_create_depth(obj_playerJen.x,obj_playerJen.y,-16000,obj_playerEssenceRotate4_4)
		}
		sprite_index = s_playerEssence4	
		image_alpha = .6
	}
}