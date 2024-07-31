if global.flag[0]<1
{
	instance_destroy(self)
}

up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
left_key = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
right_key = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
accept_key = keyboard_check_pressed(vk_space)

if global.quest.hotelKey = true
{
	if global.sacredAnimals.rabbit = false
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
					alarm[0] = room_speed *.1
				break;
				
				case 1:
					if global.flag[4] != 1
					{
						global.flag[4] = 1
						instance_create_depth(0,0,-9999,oShakeCamera)
						with inst_6BA42727
						{
							target_x = 356
							target_y = 147
							target_rm = RM_HOTEL
						}
					}
					else
					{
						alarm[0] = room_speed *.1	
					}
				break;

				case 2:
					if global.flag[4] != 2
					{
						global.flag[4] = 2
						instance_create_depth(0,0,-9999,oShakeCamera)
						with inst_6BA42727
						{
							target_x = 150
							target_y = 115
							target_rm = RM_HOTELemory	
						}
					}
					else
					{
						alarm[0] = room_speed *.1	
					}
				break;
				
				case 3:
					
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