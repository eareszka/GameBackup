hSpeed = 0;
vSpeed = 0;
speedWalk = 1;
currentRoom = room;
hit = false
swimming = false
battleStart=false
fall=false

//unit flasher
flash = 0
red=0
green=0
blue=0
subtract = 0

//deadCheck
emoryDead=-1
finDead=-1
brokeDead=-1
jenDead=-1
allDead=false

right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));

if global.quest.blueRing.available = true
{
	sprite[RIGHT] = emory_r_walkingBLUE
	sprite[UP] = emory_b_walkingBLUE
	sprite[LEFT] = emory_l_walkingBLUE
	sprite[DOWN] = emory_f_walkingBLUE
	sprite[UPr] = emory_b_walkingBLUE
	sprite[DOWNr] = emory_f_walkingBLUE
	sprite[UPl] = emory_b_walkingBLUE
	sprite[DOWNl] = emory_f_walkingBLUE
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
	sprite[DOWN] = emory_f_walkingBLACK
	sprite[UPr] = emory_b_walkingBLACK
	sprite[DOWNr] = emory_f_walkingBLACK
	sprite[UPl] = emory_b_walkingBLACK
	sprite[DOWNl] = emory_f_walkingBLACK
	sprite[DOWNi] = emory_f_idleBLACK
	sprite[RIGHTi] = emory_r_idleBLACK
	sprite[LEFTi] = emory_l_idleBLACK
	sprite[UPi] = emory_b_idleBLACK
}
if global.quest.blackRing.available = false && global.quest.blueRing.available = false
{
	sprite[RIGHT] = emory_r_walking
	sprite[UP] = emory_b_walking
	sprite[LEFT] = emory_l_walking
	sprite[DOWN] = emory_f_walking
	sprite[UPr] = emory_b_walking
	sprite[DOWNr] = emory_f_walking
	sprite[UPl] = emory_b_walking
	sprite[DOWNl] = emory_f_walking
	sprite[DOWNi] = emory_f_idle
	sprite[RIGHTi] = emory_r_idle
	sprite[LEFTi] = emory_l_idle
	sprite[UPi] = emory_b_idle
}
face = DOWN;

//objects
//characters checks if they are part of party or not
//updates position so player can go back after battle
//unit following tracker

array_size = 94;
for(var i = array_size-1; i >= 0; i--)
{
	pos_x[i] = x;
	pos_y[i] = y;
	
	toRecordSprite[i] = emory_f_walking;
	toRecord_Xscale[i] = image_xscale;	
}

if !instance_exists(obj_playerJen)
{
	var follower_1 = instance_create_layer(x,y, "Player", obj_playerJen);
	follower_1.followerDistance = 45;
}

if !instance_exists(obj_playerBroke)
{
	var follower_2 = instance_create_layer(x,y, "Player", obj_playerBroke);
	follower_2.followerDistance = 30;
}

if !instance_exists(obj_playerFinn)
{
	var follower_3 = instance_create_layer(x,y, "Player", obj_playerFinn);
	follower_3.followerDistance = 15;
}

if !instance_exists(obj_beck)
{
	var follower_4 = instance_create_layer(x,y, "Player", obj_beck);
	follower_4.followerDistance = 60;	
}

if !instance_exists(obj_ArgeninaSaurus)
{
	var follower_5 = instance_create_layer(x,y, "ArgeninaSaurus", obj_ArgeninaSaurus);
	follower_5.followerDistance = 70;	
}

//menu system
global.MainMenu = 
{
	quest:
	{
		name: "Quest",
		subMenu: -1,
		menuFunc : function()
		{
			if !instance_exists(oQuestMenu)
			{
				instance_create_depth(0,0,-9999,oQuestMenu)	
			}

		}
	},
	settings:
	{
		name: "Settings",	
		subMenu: -1,
		menuFunc : function()
		{
			
		}
	},
	goBack:
	{
		name: "Return",
		subMenu: -1,
		menuFunc : function()
		{
			instance_destroy(oMainMenu)
		}	
	},
	quit:
	{
		name : "Exit",
		subMenu : -1,
		menuFunc : function()
		{
			room_goto(RM_TITLE)
			instance_destroy(obj_playerEmory)
			instance_destroy(obj_camera)
			instance_destroy(obj_playerFinn)
			instance_destroy(obj_playerBroke)
			instance_destroy(obj_playerJen)
		}	
	},
}