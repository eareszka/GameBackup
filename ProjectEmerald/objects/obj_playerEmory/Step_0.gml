/*********************
cant move in cutscene
**********************/
if instance_exists (obj_textBox)
{
	speedWalk = 0;
}
if instance_exists (obj_emoryIntro)
{
	speedWalk = 0;
}
if instance_exists (oCutscene)
{
	speedWalk = 0;
}
if instance_exists (oExclamationMark)
{
	speedWalk = 0;
}
if instance_exists (oFadeIn)
{
	speedWalk = 0;
}
if instance_exists (oFadeOut)
{
	speedWalk = 0;
}
if instance_exists (oBattleIntro)
{
	speedWalk = 0;
}
if instance_exists (oBattleIntroBoss)
{
	speedWalk = 0;
}
if instance_exists (oShopMenu)
{
	speedWalk = 0;
}
if instance_exists (obj_bombExplosionFail)
{
	speedWalk = 0;
}
if instance_exists (oGameOverText)
{	
	visible = false
	speedWalk = 0;
}
else
{
	visible = true	
}
if instance_exists(oSacredAnimalBackground)	
{
	speedWalk = 0;		
}
if instance_exists(obj_elevatorOptions)
{
	speedWalk = 0;		
}
if instance_exists(oShakeCamera)
{
	speedWalk = 0;		
}
if instance_exists(obj_RhythmArrowAttackBar)
{
	speedWalk = 0;		
}
/*************
movement input
**************/
if !instance_exists(obj_carryingObj){if keyboard_check(vk_lshift){sprintSpeed=1.5}else{sprintSpeed=1}}else{sprintSpeed=1}

if (!instance_exists(oMainMenu) && !instance_exists(obj_textBox))
{
	right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
	left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
	up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
	down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));
}

if !place_meeting(x,y,obj_staircaseClimb1)&&!place_meeting(x,y,obj_staircaseClimb2)
{
	hSpeed = ((right_key - left_key) * (speedWalk*.80)*sprintSpeed)
	vSpeed = ((down_key - up_key) * (speedWalk*.80)*sprintSpeed)
}
//for staircase
if !place_meeting(x,y,obj_staircaseClimb1)&&place_meeting(x,y,obj_staircaseClimb2)
{
	if (up_key&&left_key)||(down_key&&right_key)
	{
		hSpeed = (right_key - left_key) * speedWalk*.60;
		vSpeed = (down_key - up_key) * speedWalk*.60;
	}
	else
	{
		//right to left
		if !up_key&&!down_key
		{
			hSpeed = (right_key - left_key) * speedWalk*.60;
			vSpeed = (right_key - left_key) * speedWalk*.60;
		}
		if !left_key&&!right_key
		{
			hSpeed = (down_key - up_key) * speedWalk*.60;
			vSpeed = (down_key - up_key) * speedWalk*.60;
		}
	}
}
if place_meeting(x,y,obj_staircaseClimb1)&&!place_meeting(x,y,obj_staircaseClimb2)
{
	if (up_key&&right_key)||(down_key&&left_key)
	{
		hSpeed = (right_key - left_key) * speedWalk*.60;
		vSpeed = (down_key - up_key) * speedWalk*.60;
	}
	else
	{
		//left to right
		if !up_key&&!down_key
		{
			hSpeed = ((right_key - left_key) * speedWalk*.60)
			vSpeed = ((left_key - right_key) * speedWalk*.60)
		}
		if !left_key&&!right_key
		{
			hSpeed = (up_key - down_key) * speedWalk*.60;
			vSpeed = (down_key - up_key) * speedWalk*.60;
		}
	}
}

/********
collision objects
*********/
if place_meeting(x + hSpeed, y, obj_coll) || place_meeting (x + hSpeed, y, obj_coll2) || place_meeting (x + hSpeed, y, obj_coll3) || place_meeting (x + hSpeed, y, obj_coll4) || place_meeting (x + hSpeed, y, obj_collBuilding) || place_meeting (x + hSpeed, y, obj_collHouse) || place_meeting (x + hSpeed, y,obj_coll5) || place_meeting (x + hSpeed, y,obj_coll6) || place_meeting (x + hSpeed, y,oNPCfinCOLL) == true
{
	hSpeed = 0
}
if place_meeting(x, y + vSpeed, obj_coll) || place_meeting (x, y + vSpeed, obj_coll2) || place_meeting (x, y + vSpeed, obj_coll3)  || place_meeting (x, y + vSpeed, obj_coll4) || place_meeting (x, y + vSpeed, obj_collBuilding) || place_meeting (x, y + vSpeed, obj_collHouse) || place_meeting (x, y + vSpeed,obj_coll5) || place_meeting (x, y + vSpeed,obj_coll6) || place_meeting (x, y + vSpeed,oNPCfinCOLL) == true
{
	vSpeed = 0
}
if layer_exists("tcCOLL")&&!blown
{
	if tile_meeting(x + hSpeed, y, "tcCOLL", obj_precise_tile_checker) == true
	{
		hSpeed = 0		
	}
	if tile_meeting(x, y + vSpeed, "tcCOLL", obj_precise_tile_checker) == true
	{
		vSpeed = 0		
	}
}

if right_key&&up_key||right_key&&down_key||left_key&&up_key||left_key||down_key{hSpeed*=.85 vSpeed*=.85}

x+= hSpeed;
y+= vSpeed; 


/***************************
SET SPRITE BASED ON MOVEMENT
****************************/
if !instance_exists (oCutscene)
{
	if vSpeed == 0
	{
		if hSpeed > 0 {face = RIGHT};
		if hSpeed < 0 {face = LEFT};
	}
	if hSpeed > 0 && face = LEFT {face = RIGHT};
	if hSpeed < 0 && face = RIGHT {face = LEFT};

	if hSpeed == 0
	{
		if vSpeed > 0 {face = DOWN};
		if vSpeed < 0 {face = UP};
	}
	if vSpeed > 0 && face == UP {face = DOWN};
	if vSpeed < 0 && face == DOWN {face = UP};
	sprite_index = sprite[face];
	/********************
	animate walking cycle
	*********************/
	if vSpeed == 0 && hSpeed == 0 && face == UP
	{
		sprite_index = sprite[UPi]
	}
	if vSpeed == 0 && hSpeed == 0 && face == DOWN
	{
		sprite_index = sprite[DOWNi]
	}

	if vSpeed == 0 && hSpeed == 0 && face == RIGHT
	{
		sprite_index = sprite[RIGHTi]
	}
	if vSpeed == 0 && hSpeed == 0 && face == LEFT
	{
		sprite_index = sprite[LEFTi]
	}
	
	if vSpeed > 0
	{
		if hSpeed > 0 {face = DOWN};
		if hSpeed < 0 {face = DOWN};
	}
	if vSpeed < 0
	{
		if hSpeed < 0 {face = UP};
		if hSpeed > 0 {face = UP};
	}
}

/*********************
unit following tracker
*********************/
if (x != xprevious or y != yprevious)
{
	
	if array_size<94{array_size++}
	
	for(var i = array_size-1; i > 0; i--)
	{
		pos_x[i] = pos_x[i-1];
		pos_y[i] = pos_y[i-1];
	
		toRecordSprite[i] = toRecordSprite[i-1];
		toRecord_Xscale[i] = toRecord_Xscale[i-1];
	}
	
	pos_x[0] = x;
	pos_y[0] = y;
	toRecordSprite[0] = sprite_index;
	toRecord_Xscale[0] = image_xscale;
}
/*********************************
player stationary when menu opened
**********************************/

if instance_exists(oMainMenu)
{
	speedWalk = 0;
	instance_deactivate_object(obj_warpBlockDoor)
} 
else
{
	instance_activate_object(obj_warpBlockDoor)
	speedWalk = 2;
	if keyboard_check_pressed(vk_escape)
	{
		instance_activate_object(oMainMenu)	
		instance_deactivate_object(obj_warpBlockDoor)
	}
}

if keyboard_check_pressed(vk_escape)&&room!=RM_hotelELEVATOR&&room!=RM_MOUNTAINtent&&room!=RM_MOUNTAINtentBomber&&room!=RM_MOUNTAINigloo&&room!=RM_MOUNTAINiglooshop
{
	if !instance_exists(oMainMenu) && !instance_exists(oShopMenu) && !instance_exists(obj_textBox) && !instance_exists(oCutscene)
	{
		if instance_exists(obj_partyStatMenu)
		{
			instance_destroy(obj_partyStatMenu)	
		}
		audio_play_sound(select2,1,false)
		CreateMainMenu([global.MainMenu.goBack,global.MainMenu.quest,global.MainMenu.quit],true)
	}
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

if global.EcurrentHP <= 0&&!instance_exists(oCutscene)
{
	if !instance_exists(obj_playerEssenceRotate1)
	{
		instance_create_depth(obj_playerEmory.x,obj_playerEmory.y,-16000,obj_playerEssenceRotate1)
	}
	sprite_index = s_playerEssence1	
	image_alpha = .6
}
else
{
	image_alpha=1	
}

if vSpeed !=0 || hSpeed !=0
{
	if (global.escapeImmunity) > 0
	{
		global.escapeImmunity-=10
	}
}	
show_debug_message(global.escapeImmunity)

if !swimming
{
	if global.quest.blueRing.available = true
	{
		sprite[RIGHT] = emory_r_walkingBLUE
		sprite[UP] = emory_b_walkingBLUE
		sprite[LEFT] = emory_l_walkingBLUE
		sprite[DOWN] = emory_f_idleBLUE
		sprite[UPr] = emory_b_walkingBLUE
		sprite[DOWNr] = emory_f_idleBLUE
		sprite[UPl] = emory_b_walkingBLUE
		sprite[DOWNl] = emory_f_idleBLUE
		sprite[DOWNi] = emory_f_idleBLUE
		sprite[RIGHTi] = emory_r_idleBLUE
		sprite[LEFTi] = emory_l_idleBLUE
		sprite[UPi] = emory_b_idleBLUE
	}
	if global.quest.blackRing.available = true
	{
		sprite[RIGHT] = emory_r_walkingBLACK
		sprite[UP] = emory_b_walkingBLACK
		sprite[LEFT] = emory_l_walkingBLACK
		sprite[DOWN] = emory_f_idleBLACK
		sprite[UPr] = emory_b_walkingBLACK
		sprite[DOWNr] = emory_f_idleBLACK
		sprite[UPl] = emory_b_walkingBLACK
		sprite[DOWNl] = emory_f_idleBLACK
		sprite[DOWNi] = emory_f_idleBLACK
		sprite[RIGHTi] = emory_r_idleBLACK
		sprite[LEFTi] = emory_l_idleBLACK
		sprite[UPi] = emory_b_idleBLACK
	}
	if global.quest.blackRing.available = false && global.quest.blueRing.available = false
	{
		if keyboard_check(vk_lshift)&&!instance_exists(obj_carryingObj){sprite[RIGHT] = emory_r_running}else{sprite[RIGHT] = emory_r_walking}
		if keyboard_check(vk_lshift)&&!instance_exists(obj_carryingObj){sprite[UP] = emory_b_running}else{sprite[UP] = emory_b_walking}
		if keyboard_check(vk_lshift)&&!instance_exists(obj_carryingObj){sprite[LEFT] = emory_l_running}else{sprite[LEFT] = emory_l_walking}
		if keyboard_check(vk_lshift)&&!instance_exists(obj_carryingObj){sprite[DOWN] = emory_f_running}else{sprite[DOWN] = emory_f_walking}
		sprite[UPr] = emory_b_walking
		sprite[DOWNr] = emory_f_idle
		sprite[UPl] = emory_b_walking
		sprite[DOWNl] = emory_f_idle
		sprite[DOWNi] = emory_f_idle
		sprite[RIGHTi] = emory_r_idle
		sprite[LEFTi] = emory_l_idle
		sprite[UPi] = emory_b_idle
	}
}


/*
SWIMMING
*/
if layer_exists("tcSWIM")
{
	if tile_meeting(x, y, "tcSWIM", obj_precise_tile_checker_Swim) == true
	{
		swimming = true	
	}
	else
	{
		swimming = false	
	}
}

if place_meeting(x,y,obj_wind)
{
	blown=true
}
if blown
{
	speedWalk = 0;
	blownTimer--
	blownSprite--
	obj_playerEmory.y+=1.5
	
	if blownSprite>=40{sprite_index=emory_b_idle}
	else if blownSprite>=30{sprite_index=emory_l_idle}
	else if blownSprite>=20{sprite_index=emory_f_idle}
	else if blownSprite>=10{sprite_index=emory_r_idle}
	else if blownSprite>=0{blownSprite=50}
		
	if blownTimer<0{blownSprite=50 blown=false}
}
	


if swimming
{
	speedWalk = .9
	sprite[RIGHT] = emory_r_walking_swim
	sprite[UP] = emory_b_walking_swim
	sprite[LEFT] = emory_l_walking_swim
	sprite[DOWN] = emory_f_idle_swim
	sprite[UPr] = emory_b_walking_swim
	sprite[DOWNr] = emory_f_idle_swim
	sprite[UPl] = emory_b_walking_swim
	sprite[DOWNl] = emory_f_idle_swim
	sprite[DOWNi] = emory_f_idle_swim
	sprite[RIGHTi] = emory_r_idle_swim
	sprite[LEFTi] = emory_l_idle_swim
	sprite[UPi] = emory_b_idle_swim
}


//dead party member overworld
if global.EcurrentHP<=0&&!emoryDead{with instance_create_layer(x,y+25,"Player",obj_deadParty){player=0}}
if global.FcurrentHP<=0&&!finDead{with instance_create_layer(obj_playerFinn.x,obj_playerFinn.y+25,"Player",obj_deadParty){player=1}}
if global.BcurrentHP<=0&&!brokeDead{with instance_create_layer(obj_playerzBroke.x,obj_playerzBroke.y+25,"Player",obj_deadParty){player=2}}
if global.JcurrentHP<=0&&!jenDead{with instance_create_layer(obj_playerJen.x,obj_playerJen.y+25,"Player",obj_deadParty){player=3}}

//checks overworld dead
if global.fin=0&&global.broke=0&&global.jen=0
{
	if emoryDead
	{
		if !allDead{GameOverOverworld() allDead=true}
	}
}
if global.fin=1&&global.broke=0&&global.jen=0
{
	if emoryDead&&finDead
	{
		if !allDead{GameOverOverworld() allDead=true}
	}
}

//checks carrying/only carry in that room
if room=RM_BROWNSTOWNcave||room=RM_CRAWLSPACE2||room=RM_HOTELvent2
{
	if global.flag[29]>0{carryingObj()}
}


//encounter
if battleStart
{
	visible=false
	if instance_exists(oExclamationMark){instance_destroy(oExclamationMark)}
	if !instance_exists(obj_emoryFall)&&!emoryDead{instance_create_depth(x+10,y+10,-16000,obj_emoryFall)}
	if !instance_exists(obj_finnFall)&&!finDead&&global.fin=1{instance_create_depth(obj_playerFinn.x+10,obj_playerFinn.y+10,-16000,obj_finnFall)}
	if !instance_exists(obj_brokeFall)&&!brokeDead&&global.broke=1{instance_create_depth(obj_playerzBroke.x+10,obj_playerzBroke.y+10,-16000,obj_brokeFall)}
	if !instance_exists(obj_jenFall)&&!jenDead&&global.jen=1{instance_create_depth(obj_playerJen.x+10,obj_playerJen.y+10,-16000,obj_jenFall)}
}

//for blinking when idle
//if hSpeed=0&&vSpeed=0
//{
//	var _ran=irandom_range(0,1000)
//	if blinkTimer<0
//	{
//		if _ran=0{image_index=1 blinkTimer=25}
//		else{image_index=0}
//	}
//	blinkTimer--
//}

//show_debug_message(x)
//show_debug_message(y)



//day and night cycle
if !instance_exists(obj_dayNight){instance_create_depth(0,0,depth+10,obj_dayNight)}
if global.timeOfDay<8
{
	if room=RM_EMORY||room=RM_BROWNSTOWN
	{
		if global.flag[60]=1
		{
			image_blend=merge_color(c_white,obj_dayNight.lightColor,.6)
		}
		else
		{
			var _c = merge_color(c_navy,c_white,.5)
			image_blend=_c
		}
		
		obj_dayNight.drawDaylight=true
	}
	else
	{
		obj_dayNight.drawDaylight=false
	}
}
else
{
	obj_dayNight.drawDaylight=false	
}
