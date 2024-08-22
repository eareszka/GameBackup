if (active)
{
	right_key = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	left_key = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	if!set{hover=0set=true}
	
	visible = true
	oBattle.textBoxHeight = 25
	
	//Control menu with keyboard
	if subMenuLevel = 0
	{		
		/***********************
		up down left right arrow
		***********************/
		if array_length(options)>=4
		{
			//all available
			if(string(options[1][0]) == "Special"||string(options[1][0]) == "Create")&&(string(options[2][0]) == "Inventory")
			{
				if !instance_exists(obj_battleMenu){instance_create_depth(user.x-23,user.nonDefenseY-57,-16000,obj_battleMenu,{user:user})}
				specialAvailable=true
				itemAvailable=true
			
				if right_key{hover=1}//special
				if left_key{hover=2}//item
				if up_key{hover=0}//attack
				if down_key{hover=3}//escape
			}			
		}
		if array_length(options)>2&&array_length(options)<4
		{
			//inv not aval
			if(string(options[2][0] != "Inventory"))
			{
				if !instance_exists(obj_battleMenu){instance_create_depth(user.x-23,user.nonDefenseY-57,-16000,obj_battleMenu,{user:user})}
				specialAvailable=true
				itemAvailable=false
			
				if down_key{hover=2}//escape
				if right_key{hover=1}//special
				if up_key{hover=0}//attack
			}
			
			//special not aval
			if(string(options[1][0]) != "Special"&&string(options[1][0]) != "Create")
			{
				if !instance_exists(obj_battleMenu){instance_create_depth(user.x-23,user.nonDefenseY-57,-16000,obj_battleMenu,{user:user})}
				specialAvailable=false
				itemAvailable=true
			
				if down_key{hover=2}//escape
				if left_key{hover=1}//inv
				if up_key{hover=0}//attack
			}
		}
		if array_length(options)<=2
		{
			if !instance_exists(obj_battleMenu){instance_create_depth(user.x-23,user.nonDefenseY-57,-16000,obj_battleMenu,{user:user})}
			specialAvailable=false
			itemAvailable=false
			
			if down_key{hover=1}//escape
			if up_key{hover=0}//attack	
			
		}
		
		if keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("D")) || keyboard_check_pressed(ord("A"))
		{
			audio_play_sound(moveArrow2,1,false)
		}
	}
	if subMenuLevel = 1
	{
		hover += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
		hover += keyboard_check_pressed(ord("S")) -  keyboard_check_pressed(ord("W"))
		
		if keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("S")) || keyboard_check_pressed(ord("W"))
		{
			audio_play_sound(moveArrow2,1,false)
		}
	}
	
	if (hover > array_length(options)-1) hover = 0;
	if (hover < 0) hover = array_length(options)-1;

	//Execute selected option
	if(keyboard_check_pressed(vk_space)) 
	{
		oBattle.battleText = ""
		
		if (subMenuLevel = 0)&&instance_exists(obj_battleMenu){obj_battleMenu.active=false}
		audio_play_sound(select2,1,false)
		if (array_length(options[hover]) > 1) && (options[hover][3] == true)
		{
			if (options[hover][1] != -1)
			{
				var _func = options[hover][1];
				if (options[hover][2] != -1) script_execute_ext(_func,options[hover][2]); 
				else _func();
			}
		}
	}
	
	if (keyboard_check_pressed(vk_escape))
	{
		oBattle.battleFlavorText(oBattle.enemyUnits,oBattle.flavorText)
		audio_play_sound(moveArrow2,1,false)
		if (subMenuLevel > 0) 
		{
			MenuGoBack();
		}
	}
}

if oBattle.endTimer != 80
{
	instance_destroy(self)
}
