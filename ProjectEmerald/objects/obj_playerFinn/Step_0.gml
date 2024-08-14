if(global.fin = 1)
{
	if obj_playerEmory.battleStart||obj_playerEmory.array_size<15{visible=false}else{visible=true}
	
	if (obj_playerEmory.hSpeed != 0 || obj_playerEmory.vSpeed != 0)&&(followerDistance=15)
	{
		switch(obj_playerEmory.toRecordSprite[followerDistance])
		{
			//walking
			case emory_f_walking: sprite_index = finn_f_walking; image_xscale = 1; break;
			case emory_b_walking: sprite_index = finn_b_walking; image_xscale = 1; break;	
			case emory_l_walking: sprite_index = finn_l_walking; image_xscale = 1; break;	
			case emory_r_walking: sprite_index = finn_r_walking; image_xscale = 1; break;
		
			//running
			case emory_f_running: sprite_index = finn_f_running; image_xscale = 1; break;
			case emory_b_running: sprite_index = finn_b_running; image_xscale = 1; break;
			case emory_l_running: sprite_index = finn_l_running; image_xscale = 1; break;
			case emory_r_running: sprite_index = finn_r_running; image_xscale = 1; break;
		}
	} 
	else
	{
		//idle
		switch(obj_playerEmory.toRecordSprite[followerDistance])
		{

			case emory_f_walking: sprite_index = finn_f_idle; image_xscale = 1; break;
			case emory_b_walking: sprite_index = finn_b_idle; image_xscale = 1; break;	
			case emory_l_walking: sprite_index = finn_l_idle; image_xscale = 1; break;	
			case emory_r_walking: sprite_index = finn_r_idle; image_xscale = 1; break;
			
			case emory_f_running: sprite_index = finn_f_idle; image_xscale = 1; break;
			case emory_b_running: sprite_index = finn_b_idle; image_xscale = 1; break;	
			case emory_l_running: sprite_index = finn_l_idle; image_xscale = 1; break;	
			case emory_r_running: sprite_index = finn_r_idle; image_xscale = 1; break;
		}
	}
	
	x = obj_playerEmory.pos_x[followerDistance];
	y = obj_playerEmory.pos_y[followerDistance];
		
	if followerDistance != 15&&obj_playerEmory.array_size>=15
	{
		if obj_playerEmory.x != obj_playerEmory.xprevious
		{
			followerDistance+=1
		}
	}
	if followerDistance != 15&&obj_playerEmory.array_size>=15
	{
		if obj_playerEmory.y != obj_playerEmory.yprevious
		{
			followerDistance+=1
		}	
	}
	
	if y < obj_playerEmory.y+5
	{
		depth = obj_playerEmory.depth+1
	}
	else
	{
		depth = obj_playerEmory.depth-1
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

	if global.FcurrentHP <= 0
	{
		if !instance_exists(obj_playerEssenceRotate2_1) && !instance_exists(obj_playerEssenceRotate2_2)
		{
			instance_create_depth(obj_playerEmory.x,obj_playerEmory.y,-16000,obj_playerEssenceRotate2_1)
			instance_create_depth(obj_playerEmory.x,obj_playerEmory.y,-16000,obj_playerEssenceRotate2_2)
		}
	sprite_index = s_playerEssence2	
	image_alpha = .6
	}
}