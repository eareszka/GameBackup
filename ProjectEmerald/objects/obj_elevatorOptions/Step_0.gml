if global.flag[0]<1
{
	instance_destroy(self)
}

up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
left_key = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
right_key = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
accept_key = keyboard_check_pressed(vk_space)

if global.quest.hotelKey.available=true
{
	if global.flag[46]=0
	{
		option[0, 0] = "Return";
		option[0, 1] = "Lobby";
		option[0, 2] = "Emory's Room";
	}
	else
	{
		option[0, 0] = "Return";
		option[0, 1] = "Lobby";
		option[0, 2] = "Emory's Room";
		option[0, 3] = "Magician's Room";
	}
}
else
{
	option[0, 0] = "Return";
	option[0, 1] = "Lobby";	
}


//changes floor
if global.flag[4]=0
{
	with inst_6BA42727
	{
		target_x = 356
		target_y = 147
		target_rm = RM_HOTEL
	}
}
if global.flag[4]=1
{
	with inst_6BA42727
	{
		target_x = 150
		target_y = 115
		target_rm = RM_HOTELemory	
	}
}
if global.flag[4]=2
{
	with inst_6BA42727
	{
		target_x = 120
		target_y = 150
		target_rm = RM_HOTELtop	
	}
}
	
	
//store # of options in current menu
op_length = array_length(option[menu_level]);

//moves through menu
pos +=  down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

if accept_key
{
	var _sml = menu_level;
	
	//selects the options
	switch(menu_level) 
	{
		//pause menu
		case 0:		
		switch(pos)
			{
				//return
				case 0: 
					instance_destroy(self)
				break;
				
				//floor 1
				case 1:
					if global.flag[4]!=0{instance_create_depth(0,0,-9999,oShakeCamera)}
					global.flag[4] = 0
					instance_destroy(self)
				break;

				//floor 2
				case 2:
					if global.flag[4]!=1{instance_create_depth(0,0,-9999,oShakeCamera)}
					global.flag[4] = 1
					instance_destroy(self)
				break;
				
				//floor 3
				case 3:
					if global.flag[4]!=2{instance_create_depth(0,0,-9999,oShakeCamera)}
					global.flag[4] = 2
					instance_destroy(self)
				break;
			}
		break;
	}
	//set position back after menu_level != 0
	if _sml != menu_level {pos = 0}
	//correct option length
	op_length = array_length(option[menu_level]);
}


//sfx
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("S")) || keyboard_check_pressed(ord("W")))
{
	audio_play_sound(moveArrow2,1,false)
}
if (keyboard_check_pressed(vk_space))
{
	audio_play_sound(select2,1,false)	
}