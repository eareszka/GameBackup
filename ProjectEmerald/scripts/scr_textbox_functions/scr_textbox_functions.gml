// @param text
function scr_name(_name)
{
	name = _name		
}
function scr_text(_text)
{
	text[page_number] = _text;	
	page_number++	
}
function end_text(_self)
{	
	if instance_exists(oCutscene)
	{
		if instance_exists(obj_textBox)
		{
			if obj_textBox.multipleText=-1{oCutscene.scene+=1}	
		}
	}
	//for quest menu
	if instance_exists(oQuestMenu)
	{
		if oQuestMenu.section = 2
		{
			oQuestMenu.section = 0
		}
	}
	instance_destroy(_self)	
}

// @param text_id
// textbox where the player cant move
function  create_textbox(_text_id)
{
	with (instance_create_depth(0,0,-9999, obj_textBox))
	{
		scr_game_text(_text_id)
	}	
}

// textbox where the player can move around
function  create_textbox2(_text_id)
{
	with (instance_create_depth(0,0,-9999, obj_textBox2))
	{
		scr_game_text(_text_id)
	}	
}

// textbox for intro
function  create_textbox3(_text_id)
{
	with (instance_create_depth(0,0,-9999, obj_textBox3))
	{
		scr_game_text(_text_id)
	}	
}

function  create_textboxBattle(_text_id,_enemy,_user,_action=undefined,_target=undefined)
{
	with (instance_create_depth(0,0,-10003, obj_textBoxBattle))
	{
		user = _user
		enemy = _enemy
		textbox_x = 225;
		textbox_y = 50;
		scr_game_text(_text_id)
	}	
}

// @param option
// @param link id
function scr_option(_option, _link_id)
{
	option[option_number] = _option
	option_link_id[option_number] = _link_id
	
	option_number++;
}

function new_textbox(_link_id)
{
	obj_textBox.multipleText=true
	option_link_id = _link_id
}