up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
accept_key = keyboard_check_pressed(vk_space)

//puts array in step event so that it updates constantly
	option[0, 0] = "EmeraldRPG";
	option[0, 1] = "New Game";
	option[0, 2] = "Load Game";
	option[0, 3] = "Quit";

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
				//title
				case 0: 
				break;
				//newgame
				case 1:
					if !instance_exists(obj_speakBlock3)
					{
						instance_create_depth(0,0,-9999,obj_speakBlock3)
					}
				break;
				//load game
				case 2:
					loadGame()
				break;
				//quit game	
				case 3: 
					game_end(); 
				break;
			}
		break;
		
}
	
	//set position back after menu_level != 0
	if _sml != menu_level {pos = 0}
	
	//correct option length
	op_length = array_length(option[menu_level]);
}



//plays sound

if up_key || down_key
{
	audio_play_sound(moveArrow1,1,false)	
}