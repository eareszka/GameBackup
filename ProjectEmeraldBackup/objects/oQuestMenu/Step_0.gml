right_key = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
left_key = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

select_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);
go_back = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace);

//main section not selected
if section = 0
{
	if instance_exists(oSelectedOutline)
	instance_destroy(oSelectedOutline)
	subimg = -1
	pos1 +=  right_key - left_key;
	if pos1 >= 3 {pos1 = 0};
	if pos1 < 0 {pos1 = 2};
	if pos1 = 0
	{
		cutscene_setSprite(oQuestMenu,spr_questMenu,0,2)
		if select_key {section = 1 subimg = 0 if !instance_exists(oSelectedOutline){instance_create_depth(110,101,-10000,oSelectedOutline)}}
	}
	else if pos1 = 1
	{
		cutscene_setSprite(oQuestMenu,spr_questMenu,2,4)
		if select_key {section = 2 subimg = 2}
	}
	else if pos1 = 2
	{
		cutscene_setSprite(oQuestMenu,spr_questMenu,4,6)
		if select_key {section = 3 subimg = 4 if !instance_exists(oSelectedOutline){instance_create_depth(110,101,-10000,oSelectedOutline)}}
	}
}

//section 1
if section = 1
{
	row +=  right_key - left_key;
	if row >= 3 {row = 0};
	if row < 0 {row = 2};
	
	column +=  down_key - up_key;
	if column >= 3 {column = 0};
	if column < 0 {column = 2};
	
	//menu
	switch (row)
	{
		case 0:
			switch (column)
			{
				case 0:
				//top left
				break;
				case 1:
				//middle left
				break;
				case 2:
				//bottom left
				break;
			}
		break;
		case 1:
			switch (column)
			{
				case 0:
				//top middle
				break;
				case 1:
				//middle middle
				break;
				case 2:
				//bottom middle
				break;
			}
		break;
		case 2:
			switch (column)
			{
				case 0:
				//top right
				break;
				case 1:
				//middle right
				break;
				case 2:
				//bottom right
				break;
			}
		break
	}
}
else if section = 2
{
	if !instance_exists(obj_textBox)
	{
		create_textbox("SacredAnimalsMenu")
	}
}
else if section = 3
{
	row +=  right_key - left_key;
	if row >= 3 {row = 0};
	if row < 0 {row = 2};
	
	column +=  down_key - up_key;
	if column >= 3 {column = 0};
	if column < 0 {column = 2};
	
	//3rd row on section 3 only has 2 columns
	if row = 2 && column = 2 {column = 0};
}




//esc
if go_back
{
	if section = 0
	{
		instance_destroy(self)
	}
	else
	{
		section = 0
		row = 0
		column = 0
	}
}

//audio
if up_key || down_key || right_key || left_key
{
	audio_play_sound(moveArrow2,1,false)	
}

if select_key || go_back
{
	audio_play_sound(select2,1,false)	
}
