if room = RM_TITLE
{
	if !audio_is_playing(title1)
	{
	    audio_play_sound(title1,1,true)
	}	
}
else
{
	audio_stop_sound(title1)
	with obj_playerEmory
	{
		if place_meeting(x,y,obj_overworldMusic)
		{
		    if !audio_is_playing(overWorld1)
		    {
		        audio_play_sound(overWorld1,1,true)
		    }
		}
		else if place_meeting(x,y,obj_shopMusic)
		{
		
		    if !audio_is_playing(shop1)
		    {
		        audio_play_sound(shop1,1,true)
		    }
		}
		else if place_meeting(x,y,obj_homeMusic)
		{
		
		    if !audio_is_playing(home1)
		    {
		        audio_play_sound(home1,1,true)
		    }
		}
	}
}

with obj_playerEmory
{
	if place_meeting(x,y,obj_warpBlock) || place_meeting(x,y,obj_warpBlockFlashlight) || place_meeting(x,y,obj_warpBlockNoFlashlight)
	{
		if !audio_is_playing(warp1)
		{
			audio_play_sound(warp1,1,false)
		}
	}
	
	if place_meeting(x,y,obj_warpBlockDoor)
	{
		if keyboard_check_pressed(vk_space)
		{	
			if !audio_is_playing(warp1) && !instance_exists(obj_textBox)
			{
				audio_play_sound(warp1,1,false)
			}
		}
	}

	
	if place_meeting(x,y,obj_brownstownCaveBoss) || place_meeting(x,y,obj_finFarmBoss) || place_meeting(x,y,obj_catacombsBoss)
	{
		if !audio_is_playing(bossEncounter1)
		{
			if keyboard_check_pressed(vk_space)
			{ 
				audio_play_sound(bossEncounter1,1,true)	
			}
		}
	}
}


if room = RM_EMORYcave && !instance_exists(obj_textBox)
{
	if !audio_is_playing(cave1) && !instance_exists(obj_textBox)
	{
	    audio_play_sound(cave1,1,true)
	}	
}
else
{
	audio_stop_sound(cave1)	
}

if (room = RM_BROWNSTOWNcave)
{
	if !audio_is_playing(bossEncounter1)
	{
	    if !audio_is_playing(cave2)
		{
			audio_play_sound(cave2,1,true)
		}
	}
	else
	{
		audio_stop_sound(cave2)	
	} 
}
else
{
	audio_stop_sound(cave2)	
}

if (room = RM_ANAHhouse1 || room = RM_ANAHhouse2 || room = RM_ANAHhouse3 || room = RM_ANAHhouse4 || room = RM_COPLANDhouse1 || room = RM_COPLANDhouse2 || room = RM_FINhouse1)
{
	if !audio_is_playing(sacredAnimalSong)
	{
	    if !audio_is_playing(home1)
		{
			audio_play_sound(home1,1,true)
		}
	}
	else
	{
		audio_stop_sound(home1)	
	} 
}
else
{
	audio_stop_sound(home1)	
} 


if (room = RM_PLAINVILL) || (room = RM_OSPRING)
{
	if !audio_is_playing(sacredAnimalSong)
	{
	    if !audio_is_playing(overWorld3)
		{
			audio_play_sound(overWorld3,1,true)
		}
	}
	else
	{
		audio_stop_sound(overWorld3)	
	}
}
else
{
	audio_stop_sound(overWorld3)	
}

if (room = RM_SHOP || room = RM_DRUG || room = RM_HOTEL || room = RM_HOSPITALbrownsTown)
{
	if !audio_is_playing(shop1)
	{
		audio_play_sound(shop1,1,true)	
	}
}
else
{
	audio_stop_sound(shop1)	
}

if (room = RM_FINfarm || room = RM_CATACOMBS || room = RM_CATACOMBS2)
{
	if !audio_is_playing(sacredAnimalSong)
	{
		if !audio_is_playing(bossEncounter1)
		{
		    if !audio_is_playing(overWorld2)
			{
				audio_play_sound(overWorld2,1,true)
			}
		}
		else
		{
			audio_stop_sound(overWorld2)	
		}
	}
	else
	{
		audio_stop_sound(overWorld2)	
	}
}
else
{
		audio_stop_sound(overWorld2)	
}

if (room = RM_MOUNTAINS)
{
	if !audio_is_playing(sacredAnimalSong)
	{
	    if !audio_is_playing(mountain1)
		{
			audio_play_sound(mountain1,1,true)
		}
	}
	else
	{
		audio_stop_sound(mountain1)	
	}
}
else
{
	audio_stop_sound(mountain1)	
}