window_set_fullscreen(false)
display_set_gui_size(384,216)
game_set_speed(60, fps)
randomize()
//PARTY MEMBERS
global.fin = 0;
global.broke = 0;
global.jen = 0;
global.success = 0
global.continuous = 0
global.perfect=0
global.boyToys = 0
global.comboAmmount=1
global.timeOfDay = 4
global.overworldDamage=-1
global.bombTimer=180
global.my_Money = 0;
global.battleExperince = 0;
global.escapeImmunity = 0
global.prevRoom = 0
global.font_main = fnM5x7
global.battleBox=sBox

//0 closed/1 opened
global.chestOpened = 
[
	0,//0
	0,//1
	0,//2
	0,//3
	0,//4
	0,//5
	0,//6
	0,//7
	0,//8
	0,//9
	0,//10
	0,//11
	0,//12
	0,//13
	0,//14
	0,//15	
	0,//16
	0,//17
	0,//18
	0,//19
]

//FLAGS FOR IN GAME SEQUENCES
global.flag =
[
	//wakeUp 0
	0,
	//babyWormBattle 1
	0,
	//coachBattle 2
	0,
	//fixBridge 3
	0,
	//brownstownHotelFloor 4
	0,
	//brownstownFixed 5
	0,
	//finGive1 6
	0,
	//destroyGrave1 7
	0,
	//destroyGrave2 8
	0,
	//pushTree 9
	0,
	//moveSewerDrain 10
	0,
	//holdArrowFirst 11
	0,
	//hornedBeetleBattle 12
	0,
	//ancientKingIntro 13
	0,
	//helicopterCutscene 14
	0,
	
	/*************************
	for sorting room locations
	*************************/
	
	//StoreLocation 15
	0,
	//DrugLocation 16
	0,
	//HospitalLocation 17
	0,
	//TentLocation 18
	0,
	//IglooLocation 19
	0,
	//BasicHouseLocation 20
	0,
	//TreeHouseLocation 21
	0,
	//RuinedHouseLocation 22
	0,
	
	/*************************
	*************************/
	//Bomb run start 23
	0,
	//Bomb run cutscene 24
	0,
	//Bomb throw cutscene 25
	0,
	//Cant Warp 26
	0,
	//falling rocks1 27
	0,
	//falling rocks2 28
	0,
	//Carrying Obj 29
	0,
	//PressurePlate1 30
	0,
	//PressurePlate2 31
	0,
	//MoveTorch1 32
	0,
	//MoveTorch2 33
	0,
	//CrawlspaceDoor1 34
	0,
	//CrawlspaceDoor2 35
	0,
	//CrawlspaceDoor2 36
	0,
	//crate1 37
	0,
	//crate2 38
	0,
	//dancePad1 39
	0,
	//moveBookShelf 40
	0,
	//sleepfirstTime 41
	0,
	//computerTalk1 42
	0,
	//rebeccaGiveShoes 43
	0,
	//PressurePlate3 44
	0,
	//PressurePlate4 45
	0,
	//MagicianDefeated 46
	0,
	//MoveTorch3 47
	0,
	//MoveTorch4 48
	0,
	//KilledAbone 49
	0,
	//Should go to bed 50
	0,
	//sunrising brownstown 51
	0,
	//moveBookshelfComplete 52
	0,
	//spinningBackroomsRoom 53
	0,
	//catacombsStatueSwitch 54
	0,
	//catacombsLadder1 55
	0,
	//MoveTorch5 56
	0,
]
	
	

//tracks how many of each ene is killed in each area
global.enemyKills =
[
	//brownstown: 0,
	0,
	//brownstownCave: 1,
	0,
	//hotelVent: 2,
	0,
	//finFarm: 3,
	0,
	//catacombs: 4,
	0,
	//plainville: 5,
	0,
	//mountains: 6,
	0,
	//dodo: 7,
	0,
	//thorns: 8,
	0,
	//bones: 9,
	0,
	//bat: 10,
	0,
	//deer: 11,
	0,
	//thunderbird: 12,
	0,
]


//objectsddd
global.quest = 
{
	annasFlashLight: 
	{
		name : "Flashlight",
		subMenu : -1,
		info : "Flashlight that allows you to see in the dark.",
		available : false,
		menuFunc :
		{
					
		}
	}
	,
	dogTreat: 
	{
		name : "Dog Treat",
		subMenu : -1,
		info : "Dog Toy used to make any mans best friend happy. You should buy it for your dog 'loki'!",
		available : false,
		menuFunc :
		{
					
		}
	}
	,
	hotelKey: 
	{
		name : "Hotel Key",
		subMenu : -1,
		info : "Key used to access hotel room in BrownsTown's grand hotel.",
		available : false,
		menuFunc :
		{
					
		}
	}
	,
	farmKey: 
	{
		name : "Farm Key",
		subMenu : -1,
		info : "Key used to unlock farm gate.",
		available : false,
		menuFunc :
		{
					
		}
	}
	,
	bridge: 
	{
		name : "Lumber",
		subMenu : -1,
		available : false,
		menuFunc :
		{
					
		}
	}
	,
	crown: 
	{
		name : "Priceless Crown",
		subMenu : -1,
		info : "Crown that belonged to an Ancient King. Some people would give anything to have this.",
		available : false,
		menuFunc :
		{
					
		}
	}
	,
	helicopter: 
	{
		name : "Heli Key",
		subMenu : -1,
		info : "Key used to operate helicopter at Plainville's airport.",
		available : false,
		menuFunc :
		{
					
		}
	}
	,
	boatKey: 
	{
		name : "Boat Key",
		subMenu : -1,
		info : "Key used to operate Boat at Saratoga's docks.",
		available : false,
		menuFunc :
		{
					
		}
	}
	,
	swimmimgFins: 
	{
		name : "Swimmimg Fins",
		subMenu : -1,
		info : "Swimming fins that can be used to swim in swamp and shallow water.",
		available : false,
		menuFunc :
		{
					
		}
	}
	,
	blueRing: 
	{
		name : "Blue Ring",
		subMenu : -1,
		available : false,
		menuFunc :
		{
					
		}
	}
	,
	blackRing: 
	{
		name : "Black Ring",
		subMenu : -1,
		available : false,
		menuFunc :
		{
					
		}
	}
	,
	Emerald: 
	{
		name : "Emerald",
		subMenu : -1,
		info : "A gemstone that fell from the sky. Has twelve distinct scratch markings on it.",
		available : false,
		menuFunc :
		{
					
		}
	}
}

//abilities
global.abilities = 
{
	wrath1: false,
	wrath2: false,
	scatterRage: false,
	growMushrooms: false,
	mpSucker: false,
	opshroom: false, //recorvers all mp
	boyToy1: false,
	boyToy2: false,
	caduceus: false,
	revive: false,
	dimensionHop: false, //used all mp of character
	canSprint: false,
	noClip: false,
	godMode: false,
}

//6 sacred animal souls
global.sacredAnimals =
{
	dog: false,
	rabbit: false,
	rooster: false,
	ox: false,
	goat: false,
	cat: false,
	snake: false,
	rat: false,
	tiger: false,
	monkey: false,
	horse: false,
	dragon: false,
}

/***********
battle stats
***********/
global.battlesWon = 0;

global.EcurrentHP = 20;
global.FcurrentHP = 50;
global.BcurrentHP = 10;
global.JcurrentHP = 100;

global.EcurrentMP = 20;
global.BcurrentMP = 50;
global.JcurrentMP = 50;

global.hpAdd = 0;
global.mpAdd = 0;
global.strengthAdd = 0;

global.levels = {
    level1: false,
    level2: false,
    level3: false,
    level4: false,
    level5: false,
    level6: false,
    level7: false,
    level8: false,
    level9: false,
    level10: false,
    level11: false,
    level12: false,
    level13: false,
    level14: false,
    level15: false,
    level16: false,
    level17: false,
    level18: false,
    level19: false,
    level20: false,
    level21: false,
    level22: false,
    level23: false,
    level24: false,
    level25: false,
    level26: false,
    level27: false,
    level28: false,
    level29: false,
    level30: false,
    level31: false,
    level32: false,
    level33: false,
    level34: false,
    level35: false,
    level36: false,
    level37: false,
    level38: false,
    level39: false,
    level40: false,
    level41: false,
    level42: false,
    level43: false,
    level44: false,
    level45: false,
    level46: false,
    level47: false,
    level48: false,
    level49: false,
    level50: false,
    level51: false,
    level52: false,
    level53: false,
    level54: false,
    level55: false,
    level56: false,
    level57: false,
    level58: false,
    level59: false,
    level60: false,
    level61: false,
    level62: false,
    level63: false,
    level64: false,
    level65: false,
    level66: false,
    level67: false,
    level68: false,
    level69: false,
    level70: false,
    level71: false,
    level72: false,
    level73: false,
    level74: false,
    level75: false,
    level76: false,
    level77: false,
    level78: false,
    level79: false,
    level80: false,
    level81: false,
    level82: false,
    level83: false,
    level84: false,
    level85: false,
    level86: false,
    level87: false,
    level88: false,
    level89: false,
    level90: false,
    level91: false,
    level92: false,
    level93: false,
    level94: false,
    level95: false,
    level96: false,
    level97: false,
    level98: false,
    level99: false
};

global.arrowPath1=-1

global.arrowVar = 
[
	{
	subimg: 0,
	}
	,
	{
	subimg: 1,
	}
	,
	{
	subimg: 2,
	}
	,
	{
	subimg: 3,
	}
]


/***********
shop system
***********/
global.ShopSystem = 
{
	goBack:
	{
		name: "Return",
		subMenu: -1,
		price : -1,
		menuFunc : function()
		{
			instance_destroy(oShopMenu)
		}	
	}
	,
	bottledWater :
	{
		name : "Bottled Water",
		subMenu : -1,
		price : 15,
		menuFunc : function()
		{
			if !instance_exists(oShopMenuCount)
			{
				with instance_create_depth(0,0,-9999,oShopMenuCount) {count = true item = global.itemLibrary.bottledWater itemIndex = 0}
			}
		}	
	}
	,
	notDeerMeat :
	{
		name : "Deer Meat?",
		subMenu : -1,
		price : 75,
		menuFunc : function()
		{
			if !instance_exists(oShopMenuCount)
			{
				with instance_create_depth(0,0,-9999,oShopMenuCount) {count = true item = global.itemLibrary.notDeerMeat itemIndex = 9}
			}
		}	
	}
	,
	icicle : 
	{
		name : "Icicle",
		subMenu : -1,
		price : 15,
		menuFunc : function()
		{
			if !instance_exists(oShopMenuCount)
			{
				with instance_create_depth(0,0,-9999,oShopMenuCount) {count = true item = global.itemLibrary.icicle itemIndex = 8}
			}
		}	
	}
	,
	crackers :
	{
		name : "Crackers",
		price : 30,
		subMenu : -1,
		menuFunc : function()
		{
			if !instance_exists(oShopMenuCount)
			{
				with instance_create_depth(0,0,-9999,oShopMenuCount) {count = true item = global.itemLibrary.crackers itemIndex = 1}
			}
		}	
	}
	,
	flashlight :
	{
		name : "Flashlight",
		info : "Lights up dark areas. The price seems a little high though, surely theres a more affordable way to get a flashlight.",
		price : 999,
		subMenu : -1,
		menuFunc : function()
		{
			if !instance_exists(oShopMenuCount)
			{
				with instance_create_depth(0,0,-9999,oShopMenuCount) {confirm = true item = global.ShopSystem.flashlight questItem = global.quest.annasFlashLight}
			}
		}	
	}	
	,
	dogTreat :
	{
		name : "Dog Treat",
		info : "Sure to make any mans best friend happy. You should buy it for your dog 'loki'!",
		price : 50,
		subMenu : -1,
		menuFunc : function()
		{
			if !instance_exists(oShopMenuCount)
			{
				with instance_create_depth(0,0,-9999,oShopMenuCount) {confirm = true item = global.ShopSystem.dogTreat questItem = global.quest.dogTreat}
			}
		}	
	}		
	,
	edibles :
	{
		name : "Edibles",
		price : 30,
		subMenu : -1,
		menuFunc : function()
		{
			if !instance_exists(oShopMenuCount)
			{
				with instance_create_depth(0,0,-9999,oShopMenuCount) {count = true item = global.itemLibrary.edibles itemIndex = 2}
			}
		}	
	}
	,
	insecticide :
	{
		name : "Insecticide",
		price : 70,
		subMenu : -1,
		menuFunc : function()
		{
			if !instance_exists(oShopMenuCount)
			{
				with instance_create_depth(0,0,-9999,oShopMenuCount) {count = true item = global.itemLibrary.insecticide itemIndex = 5}
			}
		}	
	}	
	,
	fireStarter :
	{
		name : "Fire Starter",
		price : 100,
		subMenu : -1,
		menuFunc : function()
		{
			if !instance_exists(oShopMenuCount)
			{
				with instance_create_depth(0,0,-9999,oShopMenuCount) {count = true item = global.itemLibrary.fireStarter itemIndex = 6}
			}
		}	
	}
	,
	butteredNoodles :
	{
		name : "Butter Noodles",
		price : 70,
		subMenu : -1,
		menuFunc : function()
		{
			if !instance_exists(oShopMenuCount)
			{
				with instance_create_depth(0,0,-9999,oShopMenuCount) {count = true item = global.itemLibrary.butteredNoodles itemIndex = 7}
			}
		}	
	}
}	


//Action library
global.actionLibrary = 
{
	attackRhythm : 
	{
		name : "Attack",
		description : "Select Target To Attack",
		info : "Use arrow keys to attack foe. Press correct key while it's over middle bar.",
		sound: select1,
		subMenu : -1,
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		targetGroup: true,
		userAnimation : "attack",
		effectOnTarget: true,
		rhythm: "attack",
		func : function(_user, _targets)
		{
			//no scatterage
			if targetAll=0
			{
				instance_create_depth(_targets[0].x,_targets[0].y,_targets[0].depth-1,oBattleEffect,{sprite_index : sAttackBonk});	
				var _damage = RanDamage((_user.strength),0)
			
				var _crit = irandom_range(0,10)
			
				if _crit=10
				{
					if (_targets[0].defending) _damage = ceil(_damage * 0.70);
					_damage=ceil(_damage*2)
					BattleChangeHP(_targets[0], -_damage,,true);
				}
				else
				{
					if (_targets[0].defending) _damage = ceil(_damage * 0.70);
					BattleChangeHP(_targets[0], -_damage);
				}
			
				oBattle.damageDone+=_damage
				oBattle.battleEndMessages[0] = string(oBattle.damageDone)+" Damage To "+string(_targets[0].name)+"!";
			}
			else
			{
				for (var i = 0; i < array_length(_targets); i++)
				{
					var _damage = RanDamage((_user.strength),0)
					if (array_length(_targets) > 1) _damage = ceil(_damage*0.75);
					MoveH(_targets[i],6,1,true,true,true)
					BattleChangeHP(_targets[i], -_damage,,,false);
					instance_create_depth(_targets[i].x,_targets[i].y,_targets[i].depth-1,oBattleEffect,{sprite_index : sAttackBonk});	
				}
				oBattle.battleEndMessages[0] = string(oBattle.damageDone)+" Damage Scattered!";
			}
		}	
		,
		funcFailed : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = "missed.";
		}	
		,
		funcPerfectFail : function(_user, _targets)
		{
			var _hp = oBattle.damageDone
			BattleChangeHP(_targets[0], +_hp);
			oBattle.battleEndMessages[0] = string(_targets[0].name+" recovered lost HP!")
		}
		,
		funcBoyToy : function(_user, _targets)
		{
			instance_create_depth(_targets[0].x,_targets[0].y,_targets[0].depth-1,oBattleEffect,{sprite_index : sAttackBonk});	
			var _damage = _user.strength
			oBattle.damageDone+=_damage
			BattleChangeHP(_targets[0], -_damage);
			oBattle.damageDone+=_damage
			oBattle.battleEndMessages[0] = string(oBattle.damageDone)+" Damage To "+string(_targets[0].name)+"!";
		}
	}
	,
	defend : 
	{
		name : "Defend",
		description : "",
		subMenu : -1,
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		action: 3, //1: attack, 2: taunt, 3: talk/heal
		targetRequired: false,
		func : function(_user, _target)
		{
			oBattle.battleEndMessages[0] = string(_user.name)+" Is Defending.";
			_user.defending = true;
		}				
	}
	,
	escape : 
	{
		name : "Escape",
		description : "",
		subMenu : -1,
		targetRequired: false,
		userAnimation : "escape",
		func : function(_user, _target)
		{
			if (random(1) < .3) && oBattle.bossBattle = false
			{
				oBattle.escaped = true
				oBattle.conclusionType = 2
				oBattle.battleState = 2;
				oBattle.battleEndMessages[0] = "Escaped!"
				oBattle.battleEndMessages[1] = "No money gained."
			}
			else //fail
			{
				oBattle.battleEndMessages[0] = "Failed To Escaped!"
			}
		}		
	}
}
	
global.specialLibrary =
{
	fire : 
	{
		name : "Fire",
		description : "{0} Casts Fire!",
		subMenu : "Special",
		mpCost : 10,
		targetDefault: 1, //0: party/self, 1: enemy
		targetRequired: true,
		targetAll: 2,
		userAnimation : "cast",
		effectSprite: sAttackFire,
		effectOnTarget: true,
		func : function(_user, _targets)
		{
			for (var i = 0; i < array_length(_targets); i++)
			{
				var _damage = irandom_range(15,20);
				if (array_length(_targets) > 1) _damage = ceil(_damage*0.75);
				BattleChangeHP(_targets[i], -_damage);
			}
			BattleChangeMP(_user, -mpCost)
		}		
	}
	,
	ice : 
	{
		name : "Ice",
		description : "",
		subMenu : "Special",
		mpCost : 4,
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		userAnimation : "cast",
		effectSprite: sAttackIce,
		effectOnTarget: true,
		func : function(_user, _targets)
		{
			var _damage = irandom_range(10,15);
			BattleChangeHP(_targets[0], -_damage);
			BattleChangeMP(_user, -mpCost)
		}		
	}
	,
	//brokes special
	summonBoyToys : 
	{
		name : "Boy Toys I",
		description : "",
		subMenu : "Special",
		mpCost : 0,
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		targetSelf: true,
		targetGroup: true,
		userAnimation: "cast",
		rhythm: "summonBoyToys",
		func : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = string(_user.name)+ " Summons Boy Toys!"
			
			if instance_exists(oRhythmUnitBoyToy){instance_create_depth(oBattle.partyUnits[2].x+8,oBattle.partyUnits[2].y-24,oBattle.unitDepth,oBattleUnitBoyToy,{sprite_index: oRhythmUnitBoyToy.sprite_index});}
			if instance_exists(oRhythmUnitBoyToy2){instance_create_depth(oBattle.partyUnits[2].x-38,oBattle.partyUnits[2].y-24,oBattle.unitDepth,oBattleUnitBoyToy2,{sprite_index: oRhythmUnitBoyToy2.sprite_index});}
			
			var _strAdd = (round(_user.strength)*50)-1
			BattleChangeMP(_user, -mpCost)
			BattleChangeSTR(_user, _strAdd)
		}	
		,
		funcFailed : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = "missed.";
		}
	}
	,
	//brokes special
	summonBoyToys2 : 
	{
		name : "Boy Toys II",
		description : "",
		subMenu : "Special",
		mpCost : 0,
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		targetSelf: true,
		targetGroup: true,
		userAnimation: "cast",
		rhythm: "summonBoyToys2",
		func : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = string(_user.name)+ " Summons Boy Toys!"
			if oRhythmUnitBoyToy.hit=true{instance_create_depth(oBattle.partyUnits[2].x+8,oBattle.partyUnits[2].y-24,oBattle.unitDepth,oBattleUnitBoyToy,{sprite_index: oRhythmUnitBoyToy.sprite_index});}
			if oRhythmUnitBoyToy2.hit=true{instance_create_depth(oBattle.partyUnits[2].x-38,oBattle.partyUnits[2].y-24,oBattle.unitDepth,oBattleUnitBoyToy2,{sprite_index: oRhythmUnitBoyToy2.sprite_index});}
			var _strAdd = (round(_user.strength)*50)-1
			BattleChangeMP(_user, -mpCost)
			BattleChangeSTR(_user, _strAdd)
		}	
		,
		funcFailed : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = "missed.";
		}
	}
	,
	//emorys special
	wrath1 : 
	{
		//doubles attack damage for random ammount of rounds
		name : "Wrath I",
		description : "Multiples attack damage for next turn! May last several turns.",
		subMenu : "Special",
		mpCost : 25,
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		targetSelf: true,
		targetGroup: true,
		userAnimation : "cast",
		effectSprite: sWrath1,
		effectOnTarget: false,
		strBoost: true,
		rhythm: "wrath",
		func : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = string(_user.name)+ " Charged Up His Anger!";
			oBattle.chargeTurn = oBattle.roundCount
			_user.strBoost = true;
			var _strAdd = (round(_user.strength))*(global.comboAmmount-1)
			BattleChangeMP(_user, -mpCost, false)
			BattleChangeSTR(_user, _strAdd,true)
		}
		,
		funcFailed : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = "missed.";
		}
	}
	,
	wrath2 : 
	{
		//doubles attack damage for random ammount of rounds
		name : "Wrath II",
		description : "Multiples attack damage for selected user! May last several turns.",
		subMenu : "Special",
		mpCost : 75,
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		targetGroup: true,
		userAnimation : "cast",
		effectSprite: sWrath1,
		effectOnTarget: false,
		strBoost: true,
		rhythm: "wrath",
		func : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = string(_user.name)+ " Charged Up His Anger!";
			oBattle.chargeTurn = oBattle.roundCount
			_user.strBoost = true;
			var _strAdd = (round(_user.strength))*(global.comboAmmount-1)
			BattleChangeMP(_user, -mpCost, false)
			BattleChangeSTR(_user, _strAdd,true)
		}
		,
		funcFailed : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = "missed.";
		}
	}
	,
	scatterRage : 
	{
		//doubles attack damage for random ammount of rounds
		name : "Scatter Rage",
		description : "Attacks All Enemies With Half The Strength Of A Regular Attack For Next Turn!",
		subMenu : "Special",
		mpCost : 50,
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 1,
		targetRequired: true,
		targetGroup: true,
		userAnimation : "cast",
		effectSprite: sWrath1,
		effectOnTarget: false,
		strBoost: true,
		rhythm: "scatterRage",
		func : function(_user, _targets)
		{
			
			oBattle.battleEndMessages[0] = string(_user.name)+"'s Rage Can Now Be Dispursed!";
		}
		,
		funcFailed : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = "missed.";
		}
	}
	,
	//fin special
	GrowHemp: 
	{
		name : "Edibles",
		description : "Catch All Ingredients, The More Ingredients Collected The More Edibles Are Created!",
		subMenu : "Create",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		targetSelf: true,
		targetGroup: true,
		rhythm: "finCreate",
		func : function(_user, _target)
		{
			var _random = irandom_range(1,3)
			if _random = 1
			{
				global.inventory[2][1] += 1
			}
			if _random = 2
			{
				global.inventory[2][1] += 2
			}
			if _random = 3
			{
				global.inventory[2][1] += 3
			}
			oBattle.battleEndMessages[0] = string(_user.name)+" Created "+string(_random)+" Edibles!";
		}
		,
		funcFailed : function(_user, _target)
		{
			oBattle.battleEndMessages[0] = "missed.";
		}
	}
	,
	GrowMushrooms: 
	{
		name : "Mushrooms",
		description : "Catch All Ingredients, The More Ingredients Collected The More Edibles Are Created!",
		subMenu : "Create",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		targetSelf: true,
		targetGroup: true,
		rhythm: 3,
		func : function(_user, _target)
		{
			var _random = irandom_range(1,3)
			if _random = 1
			{
				global.inventory[2][1] += 1
			}
			if _random = 2
			{
				global.inventory[2][1] += 2
			}
			if _random = 3
			{
				global.inventory[2][1] += 3
			}
			oBattle.battleEndMessages[0] = string(_user.name)+" Created "+string(_random)+" Funny Fungi!";
		}
		,
		funcFailed : function(_user, _target)
		{
			oBattle.battleEndMessages[0] = "missed.";
		}
	}
	,	
	Noodles: 
	{
		name : "Noodles",
		description : "Catch All Ingredients, The More Ingredients Collected The More Edibles Are Created!",
		subMenu : "Create",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		targetSelf: true,
		targetGroup: true,
		rhythm: 3,
		func : function(_user, _target)
		{
			var _random = irandom_range(1,3)
			if _random = 1
			{
				global.inventory[2][1] += 1
			}
			if _random = 2
			{
				global.inventory[2][1] += 2
			}
			if _random = 3
			{
				global.inventory[2][1] += 3
			}
			with oBattle
			{
				oBattle.battleText = "Noodles Created!";
			}
		}
		,
		funcFailed : function(_user, _target)
		{
			with oBattle
			{
				oBattle.battleText = "Failed!";
			}
		}
	}
	,	
	butteredNoodles: 
	{
		name : "Buttered Noodles",
		description: "",
		subMenu : "Create",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		targetSelf: true,
		targetGroup: true,
		rhythm: 3,
		func : function(_user, _target)
		{
			var _random = irandom_range(1,3)
			if _random = 1
			{
				global.inventory[2][1] += 1
			}
			if _random = 2
			{
				global.inventory[2][1] += 2
			}
			if _random = 3
			{
				global.inventory[2][1] += 3
			}
			with oBattle
			{
				oBattle.battleText = "Buttered Noodles Created!";
			}
		}
		,
		funcFailed : function(_user, _target)
		{
			with oBattle
			{
				oBattle.battleText = "Failed!";
			}
		}
	}
	,	
	//jens special
	caduceus : 
	{
		name : "Caduceus I",
		description: "Heals All Party Memebers",
		subMenu : "Special",
		mpCost : 20,
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 1,
		targetRequired: true,
		targetGroup: true,
		effectSprite: sAttackHeal,
		effectOnTarget: true,
		userAnimation : "cast",
		func : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = string(_user.name)+" Healed All Party Memebers!";
			for (var i = 0; i < array_length(_targets); i++)
			{
				var _heal = irandom_range(30,50);
				BattleChangeHP(_targets[i], _heal);
			}
			BattleChangeMP(_user, -mpCost)
		}		
	}
}
	
global.enemyLibrary =
{
	perfectStrikeCurse: 
	{
		name : "Cursum Praecisum",
		//textBeforeAct: true,
		description : "",
		subMenu : "Special",
		sound: takeDamage1,
		action: 3, //1: attack, 2: taunt, 3: talk/heal
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: false,
		effectOnTarget: false,
		userAnimation : "special",
		func : function(_user, _targets)
		{	
			oBattle.battleEndMessages[0] = string(_user.name)+ " Casted Cursum Praecisum" 
			_user.perfect=true
		}	
	}
	,
	//ene attack
	attack : 
	{
		name : "Attack",
		textBeforeAct: true,
		sound: takeDamage1,
		targetDefault: 1, //0: party/self, 1: enemy
		action: 1, //1: attack, 2: taunt, 3: talk/heal
		targetAll: 0,
		targetRequired: true,
		effectOnTarget: true,
		rhythmDefend: true,
		func : function(_user, _targets)
		{		
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25));
			if (global.quest.blueRing.available = true && global.quest.blackRing.available = false) _damage = ceil(_damage * 0.5);
			if (global.quest.blackRing.available = true) _damage = ceil(_damage * 0.1);
			if (_targets[0].defending) _damage = ceil(_damage * 0.75);
			BattleChangeHP(_targets[0], -_damage);
		}	
	}
	,
	//full party attack
	attackAll : 
	{
		name : "attackAll",
		description : "",
		textBeforeAct: true,
		action: 1, //1: attack, 2: taunt, 3: talk/heal
		mpCost : 5,
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 2,
		targetRequired: true,
		userAnimation : "special",
		effectSprite: sAttackSlash,
		effectOnTarget: true,
		func : function(_user, _targets)
		{
			for (var i = 0; i < array_length(_targets); i++)
			{
				var _damage = irandom_range(15,20);
				if (array_length(_targets) > 1) _damage = ceil(_damage*0.75);
				BattleChangeHP(_targets[i], -_damage,,,false);
			}
			BattleChangeMP(_user, -mpCost)
			MoveH(oBattleStats,6,1.5)
			MoveV(oBattleStats,3,1)
		}		
	}
	,
	betrayal : 
	{
		name : "betrayal",
		textBeforeAct: true,
		sound: takeDamage1,
		action: 1, //1: attack, 2: taunt, 3: talk/heal
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		func : function(_user, _targets)
		{
			instance_create_depth(_targets[0].x,_targets[0].y,_targets[0].depth-1,oBattleEffect,{sprite_index : sAttackSlash})
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25));
			BattleChangeHP(_targets[0], -_damage);
		}	
	}
	,
	poison : 
	{
		name : "poison",
		textBeforeAct: true,
		sound: takeDamage1,
		action: 1, //1: attack, 2: taunt, 3: talk/heal
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		effectSprite: sAttackSlash,
		effectOnTarget: true,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25));

			oBattle.battleEndMessages[1] = string(_targets[0].name)+ " Has Been Poisoned!";
			oBattle.poisoned = true
			oBattle.poisonedTargets = _targets[0]
			oBattle.poisonedDamage = round(_damage/5)
			oBattle.poisonedFreq = _user.spd
			ObjFlash(_targets[0],2.5,.1,128,0,128)
			BattleChangeHP(_targets[0], -_damage);
		}		
	}
	,
	stealItem : 
	{
		name : "stealItem",
		sound: takeDamage1,
		action: 3, //1: attack, 2: taunt, 3: talk/heal
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		userAnimation : "idle",
		func : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = string(_user.name)+ " Tried To Steal An Item!";
			var _item = irandom_range(0,array_length(global.inventory)-1)
			if global.inventory[_item][1] > 0
			{
				global.inventory[_item][1] -= 1 
				oBattle.battleEndMessages[1] = string(_user.name)+" Stole Your "+ string(global.inventory[_item][0].name)+"!"
			}
			else
			{
				oBattle.battleEndMessages[1] = "but failed.";
			}
		}		
	}
	,
	//ene special
	//continous attack 
	continuousAttack : 
	{
		name : "Continuous Attack",
		textBeforeAct: true,
		subMenu : "Special",
		sound: takeDamage1,
		action: 1, //1: attack, 2: taunt, 3: talk/heal
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		effectSprite: sAttackSlash,
		effectOnTarget: true,
		func : function(_user, _targets)
		{
			oBattle.battleWaitTimeRemaining = 10
			
			var _ammount = ContinuousAmmount(_targets)
			oBattle.continousAttack = _ammount
			global.continuous = _ammount
			
			var _damage = ceil((_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25))/2);
			BattleChangeHP(_targets[0], -_damage);
			//switch _user.name
			//{
			//	case "Horned Beetle":
			//		oBattle.battleText = string(_user.name)+" kept stabbing with its horn!"
			//	break;
			//}
		}		
	}
	,
	//continous attack 
	continuous : 
	{
		name : "Continuous",
		subMenu : "Special",
		sound: takeDamage1,
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		effectSprite: sAttackSlash,
		effectOnTarget: true,
		func : function(_user, _targets)
		{
			oBattle.battleWaitTimeRemaining = 10
			
			var _damage = ContinuousDamage(_user.strength)
			
			var _time = irandom_range(0,2)
			if _time=0{oBattle.battleWaitTimeRemaining = 10}
			if _time=1{oBattle.battleWaitTimeRemaining = 20}
			if _time=2{oBattle.battleWaitTimeRemaining = 30}
			
			var _crit = irandom_range(0,10)
			if _crit=1{BattleChangeHP(_targets[0], (-_damage*2),,true);}
			else{BattleChangeHP(_targets[0], -_damage);}
		}		
	}
	,
	toss : 
	{
		name : "toss",
		textBeforeAct: true,
		subMenu : "Special",
		sound: takeDamage1,
		action: 1, //1: attack, 2: taunt, 3: talk/heal
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		effectSprite: sAttackSlash,
		effectOnTarget: true,
		func : function(_user, _targets)
		{
			switch _user.name
			{
				case "Amalbonemation":
					var _damage = _user.hpMax*.25
					BattleChangeHP(_user, -_damage,,,false);
				break;
			}
			
			var _damage = round(_targets[0].hp/2)
			BattleChangeHP(_targets[0], -_damage);
		}		
	}
	,
	summonEne : 
	{
		name : "summonEne",
		description : "",
		subMenu : "Special",
		sound: takeDamage1,
		action: 3, //1: attack, 2: taunt, 3: talk/heal
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: false,
		effectOnTarget: false,
		func : function(_user, _targets)
		{
			switch _user.name
			{
				case "Horned Beetle":
					var _ran = irandom_range(0,1)
					oBattle.battleEndMessages[0] = string(_user.name)+" called for help!"
					if _ran = 1
					{
						switch _user.summonAmt
						{
							case 1:
								_user.summonAmt-=1
								var _firstEne = array_first(oBattle.enemyUnits)
								var _enemyUnit = instance_create_depth(_firstEne.x-80,_firstEne.y, oBattle.unitDepth-100, oBattleUnitEnemy, global.enemies.beetle);
								array_push(oBattle.enemyUnits,_enemyUnit)
								array_push(oBattle.units,_enemyUnit)
								_enemyUnit.summoned = true
								oBattle.RefreshRenderOrder();
								oBattle.battleEndMessages[1] = string(_enemyUnit.name)+" joined in!"
							break
							
							case 2:
								_user.summonAmt-=1
								var _lastEne = array_last(oBattle.enemyUnits)
								var _enemyUnit = instance_create_depth(_lastEne.x+80,_lastEne.y, oBattle.unitDepth-100, oBattleUnitEnemy, global.enemies.beetle);
								array_push(oBattle.enemyUnits,_enemyUnit)
								array_push(oBattle.units,_enemyUnit)
								_enemyUnit.summoned = true
								oBattle.RefreshRenderOrder();
								oBattle.battleEndMessages[1] = string(_enemyUnit.name)+" joined in!"
							break;
						}
					}
					else
					{
						oBattle.battleEndMessages[1] = "but nobody came."
					}
				break;
				
				case "Crude Spider":
					var _ran = irandom_range(0,1)
					oBattle.battleText = string(_user.name)+" called for help!"
					if _ran = 1
					{
						switch _user.summonAmt
						{
							case 1:
								_user.summonAmt-=1
								oBattle.battleText = string(_user.name)+" called for help!"
								var _firstEne = array_first(oBattle.enemyUnits)
								var _enemyUnit = instance_create_depth(_firstEne.x-60,_firstEne.y, oBattle.unitDepth-100, oBattleUnitEnemy, global.enemies.ant);
								array_push(oBattle.enemyUnits,_enemyUnit)
								array_push(oBattle.units,_enemyUnit)
								_enemyUnit.summoned = true
								oBattle.RefreshRenderOrder();
							break
						}
					}
					else
					{
						oBattle.battleText = "but nobody came."
					}
				break;
			}
		}		
	}
	,
	//full party attack for king
	windGust : 
	{
		name : "Wind Gust",
		description : "",
		action: 1, //1: attack, 2: taunt, 3: talk/heal
		mpCost : 5,
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 2,
		targetRequired: true,
		userAnimation : "special",
		effectSprite: sAttackSlash,
		effectOnTarget: true,
		func : function(_user, _targets)
		{
			for (var i = 0; i < array_length(_targets); i++)
			{
				var _damage = irandom_range(15,20);
				if (array_length(_targets) > 1) _damage = ceil(_damage*0.75);
				BattleChangeHP(_targets[i], -_damage,,,false);
			}
			BattleChangeMP(_user, -mpCost)
			MoveH(oBattleStats,6,1.5)
			MoveV(oBattleStats,3,1)
			
			switch _user.name
			{
				case "Ancient King":
					oBattle.battleEndMessages[0] = string(_user.name)+ " Created A Wind Gust With Their Cape!" 
				break
			}
		}		
	}
	,
	flee : 
	{
		name : "flee",
		description : "",
		subMenu : "Special",
		action: 3, //1: attack, 2: taunt, 3: talk/heal
		targetDefault: 0, //0: party/self, 1: enemy
		targetRequired: false,
		targetAll: 1,
		effectOnTarget: false,
		func : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = string(_user.name)+" fleed."
			_user.flee = true
		}		
	}
	,
	//ene heal
	healSelf : 
	{
		name : "healSelf",
		description : "{0} healed self!",
		action: 3, //1: attack, 2: taunt, 3: talk/heal
		mpCost : 10,
		targetDefault: 1, //0: party/self, 1: enemy
		targetRequired: false,
		targetAll: 0,
		effectSprite: sAttackHeal,
		effectOnTarget: false,
		func : function(_user, _targets)
		{
			var _heal = round(_user.hpMax/10)
			if _user.name = "Momma Worm"
			{
				oBattle.battleEndMessages[0] = string(_user.name)+" absorbed nearby water!"		
				BattleChangeHP(_user, _heal);
				BattleChangeMP(_user, -mpCost);
			}
		}		
	}
	,
	maxHeal : 
	{
		name : "maxHeal",
		description : "",
		action: 3, //1: attack, 2: taunt, 3: talk/heal
		mpCost : 0,
		targetDefault: 1, //0: party/self, 1: enemy
		targetRequired: false,
		targetAll: 0,
		effectSprite: sAttackHeal,
		effectOnTarget: false,
		func : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = string(_user.name)+" HP's are maxed out!"	
			var _heal = _user.hpMax
			BattleChangeHP(_user, _heal);
		}		
	}
	,
	intimidate : 
	{
		name : "intimidate",
		description : "",
		textBeforeAct: true,
		action: 2, //1: attack, 2: taunt, 3: talk/heal
		mpCost : 0,
		targetDefault: 1, //0: party/self, 1: enemy
		targetRequired: false,
		targetAll: 0,
		effectOnTarget: false,
		func : function(_user, _targets)
		{
			var _ammount = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25))
			if _targets[0].strength > _ammount
			{
				oBattle.battleEndMessages[1] = string(_targets[0].name)+" Was Intimidated!"
				BattleChangeSTR(_targets[0], _ammount, true);
			}
		}		
	}
	,
	taunt : 
	{
		name : "taunt",
		description : "",
		action: 2, //1: attack, 2: taunt, 3: talk/heal
		mpCost : 0,
		targetDefault: 1, //0: party/self, 1: enemy
		targetRequired: false,
		targetAll: 0,
		effectOnTarget: false,
		func : function(_user, _targets)
		{
			ObjFlash(_user,.75,.01,255,255,255)
			switch _user.name
			{
				case "Mutant Worm":
					var _ran = irandom_range(0,1)
					if _ran = 0
					{
						oBattle.battleEndMessages[0] = string(_user.name)+" is questioning your rhythm abilities."
					}
					if _ran = 1
					{
						oBattle.battleEndMessages[0] = string(_user.name)+" is cooking up an attack!"
					}
				break;
				
				case "Typha":
					oBattle.battleEndMessages[0] = string(_user.name)+" swayed in the wind."
				break;
				
				case "Grinning Rock":
					oBattle.battleEndMessages[0] = string(_user.name)+" smiles menacingly."
				break;
				
				case "Horned Beetle":
					oBattle.battleEndMessages[0] = string(_user.name)+" showed off it's shiny horn."
				break;
				
				case "Mogging Mole":
					oBattle.battleEndMessages[0] = string(_user.name)+" started mewing."
				break;
				
				case "Amalbonemation":
					var _ran = irandom_range(0,1)
					if _ran = 0
					{
						oBattle.battleEndMessages[0] = string(_user.name)+" is attempting to synchronize its movement."
					}
					if _ran = 1
					{
						oBattle.battleEndMessages[0] = string(_user.name)+" tripped and fell over."
					}
				break;
			}
		}		
	}	
}

global.itemLibrary =
{
	bottledWater : 
	{
		name : "Bottled Water",
		description : "Drinking this will recover 15 HP",
		info : "Common artifical water. If you drink this, you recover 15 HP",
		price : 15,
		sound: heal1,
		subMenu : "Inventory",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		heal: 15,
		func : function(_user, _targets)
		{
			var _heal = 15;
			BattleChangeHP(_targets[0], heal);	
			oBattle.battleEndMessages[0] = string(_targets[0].name)+" Drinked Bottled Water";
		}
	}
	,
	crackers : 
	{
		name : "Crackers",
		description : "Eating this will gain 30 HP",
		info : "Salted cracker. Eating this will gain 50 HP",
		price : 30,
		sound: heal1,
		subMenu : "Inventory",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		heal: 30,
		func : function(_user, _targets)
		{
			BattleChangeHP(_targets[0], heal);
			oBattle.battleEndMessages[0] = string(_targets[0].name)+" Ate A Cracker";
		}		
	}
	,
	edibles : 
	{
		name : "Edibles",
		description : "Eating this will gain 15 MP",
		info : "Gummy covered in mysterious liquid. Eating this will gain 50 MP",
		price : 30,
		sound: heal1,
		subMenu : "Inventory",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		gainMp: 15,
		func : function(_user, _targets)
		{
			BattleChangeMP(_targets[0], gainMp, true);
			oBattle.battleEndMessages[0] = string(_targets[0].name)+" Ate An Edible";
		}		
	}
	,
	funnyFungi : 
	{
		name : "Funny Fungi",
		description : "Eating this will gain 50 MP",
		info : "Eating this will make you gain 50 MP as well as have constant laughter",
		price : 75,
		sound: heal1,
		subMenu : "Inventory",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		gainMp: 50,
		func : function(_user, _targets)
		{
			BattleChangeMP(_targets[0], gainMp, true);
			oBattle.battleEndMessages[0] = string(_targets[0].name)+" Ate An Edible";
		}		
	}
	,
	aed : 
	{
		name : "AED Kit",
		description : "Used to bring a party memeber back to life!",
		info: "Used to bring a party memeber back to life! Only trained medicial personal can use this item correctly.",
		subMenu : "Inventory",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		rhythm: false,
		func : function(_user, _targets)
		{
			var _heal = 100;
			BattleChangeHP(_targets[0], _heal);
		}
	}
	,
	butteredNoodles : 
	{
		name : "Butter Noodles",
		description : "Eating this will gain 70 HP",
		info : "Why have regular dry noodles when you can have buttered noodles. Eating this will gain 70 HP", 
		price : 60,
		subMenu : "Inventory",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		heal: 70,
		func : function(_user, _targets)
		{
			BattleChangeHP(_targets[0], heal);
		}		
	}
	,
	notDeerMeat:
	{
		name : "Deer Meat?",
		description : "Eating this will gain 85 HP",
		info : "Very rare meat. But did it truly come from a deer or something else.. Consuming this will grant you 85 HP.", 
		price : 75,
		subMenu : "Inventory",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		heal: 85,
		func : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = string(_targets[0].name)+" Ate Deer Meat";
			BattleChangeHP(_targets[0], heal);
		}		
	}
	,
	almondWater : 
	{
		name : "ALM Water",
		description : "Drinking this will gain 100 HP",
		info : "Water found in a liminal place. Drinking this will gain 60 HP", 
		price : 60,
		subMenu : "Inventory",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		heal: 100,
		func : function(_user, _targets)
		{
			BattleChangeHP(_targets[0], heal);
		}		
	}
	,
	//used to get rid of any bug like ene
	insecticide : 
	{
		name : "Insecticide",
		description : "Used to exterminate insects",
		info : "Used to exterminate insects of all kinds.", 
		price : 70,
		subMenu : "Inventory",
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		func : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = string(_user.name)+" Sprayed Insecticide.";
			if _targets[0].name = "Horned Beetle" || _targets[0].name = "Armored Beetle" || _targets[0].name = "Itty-Bitty Ant" || _targets[0].name = "Crude Spider"
			{
				var _damage = 100;
				BattleChangeHP(_targets[0], -_damage);
			}
			else
			{
				var _damage = 0;
				BattleChangeHP(_targets[0], -_damage);
			}
		}		
	}
	,
	//used to get rid of any plant like ene
	fireStarter : 
	{
		name : "Fire Starter",
		description : "FIRE! FIRE! FIRE!",
		info : "FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE! FIRE!",
		subMenu : "Inventory",
		price : 100,
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 1,
		targetRequired: true,
		func : function(_user, _targets)
		{
			var _start = irandom_range(0,1)
			if _start = 1
			{
				for (var i = 0; i < array_length(_targets); i++)
				{
					//super effective
					if _targets[i].name = "Poison Thornster" || _targets[0].name = "Typha"
					{
						var _damage = 100;
						BattleChangeHP(_targets[i], -_damage,,,false);
					}
					else if _targets[i].name = "Grinning Rock"
					{
						var _damage = 0;
						BattleChangeHP(_targets[i], -_damage,,,false);
					}
					else
					{
						var _damage = 25
						BattleChangeHP(_targets[i], -_damage);
					}
				}
				oBattle.battleEndMessages[0] = string(_user.name)+" used fire starter"			
			}
			else
			{
				oBattle.battleEndMessages[0] = "Failed to light"	
			}
		}		
	}
	,
	//used to get rid of any bug like ene
	icicle : 
	{
		name : "Icicle",
		description : "Eat it for 15 hp or throw it for possibly much more.",
		info : "Eat it for 15 hp or throw it for possibly much more.", 
		price : 15,
		heal : 15,
		subMenu : "Inventory",
		targetDefault: 0, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		func : function(_user, _targets)
		{
			oBattle.battleEndMessages[0] = string(_user.name)+" Used An Icicle";
			if _targets[0].enemy=true
			{
				if _targets[0].name = "Thunder Bird"
				{
					var _damage = 100;
					BattleChangeHP(_targets[0], -_damage);
				}
				else
				{
					var _damage = 0;
					BattleChangeHP(_targets[0], -_damage);
				}
			}
			else
			{
				BattleChangeHP(_targets[0], heal);
			}
		}		
	}
}
	
global.dialogueLibrary =
{
	beforeEneAttack : 
	{
		name : "dialogueLibrary",
		action: 3, //1: attack, 2: taunt, 3: talk/heal
		sound: textBoxOpen,
		subMenu : -1,
		targetDefault: 1, //0: party/self, 1: enemy
		targetAll: 0,
		targetRequired: true,
		userAnimation : "attack",
		effectOnTarget: false,
		func : function(_user, _targets)
		{
			//ene that is talking
			switch _user.name
			{
				case "Ancient King":
					switch _targets[0]
					{
						case 0:
							var _target = chooseTarget(global.enemyLibrary.windGust)
							create_textboxBattle("AncientKingText2",true,_user,global.enemyLibrary.windGust,_target)
						break;
					}
				break;
			}
		}		
	}		
}

//Enemy Data
global.enemies = 
{
	catTails: 
	{
		name: "Typha",
		hp: 15,
		hpMax: 15,
		mp: 0,
		mpMax: 0,
		strength: 1,
		arrows: 1,
		frequency: 1,
		spd: 3,
		sprites: { intro: spr_catTailsIdle, idle: spr_catTailsIdle, attack: spr_catTailsAttack, defend: spr_catTailsIdle},
		actions: [global.enemyLibrary.attack,global.enemyLibrary.taunt],
		moneyValue : 5,
		experinceValue : 2,
		AIscript : function ()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	ant: 
	{
		name: "Itty-Bitty Ant",
		hp: 14,
		hpMax: 14,
		mp: 0,
		mpMax: 0,
		strength: 1,
		arrows: 1,
		frequency: 1,
		spd: 3,
		sprites: { intro: spr_antIntro, idle: spr_antIdle, attack: spr_antAttack, defend: spr_antIdle},
		actions: [global.enemyLibrary.attack],
		moneyValue : 5,
		experinceValue : 1,
		AIscript : function ()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	frog: 
	{
		name: "Bull Frog",
		hp: 20,
		hpMax: 20,
		mp: 0,
		mpMax: 0,
		strength: 2,
		arrows: 2,
		frequency: 1,
		spd: 3,
		sprites: { intro: spr_frogIdle, idle: spr_frogIdle, attack: spr_frogIdle, defend: spr_frogIdle},
		actions: [global.enemyLibrary.attack],
		moneyValue : 10,
		experinceValue : irandom_range(3,5),
		AIscript : function ()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
  	spider:
	{
		name: "Crude Spider",
		hp: 17,
		hpMax: 17,
		mp: 0,
		mpMax: 0,
		strength: 3,
		arrows: 2,
		frequency: 1,
		spd: 3,
		sprites: { intro: spr_caveSpiderIntro, idle: spr_caveSpiderIdle, attack: spr_caveSpiderAttack},
		actions: [global.enemyLibrary.attack,global.enemyLibrary.attack,global.enemyLibrary.betrayal,global.enemyLibrary.betrayal,global.enemyLibrary.stealItem],
		moneyValue : 12,
		experinceValue : irandom_range(3,6),
		summonAmt: 1,
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	rock: 
	{
		name: "Grinning Rock",
		hp: 35,
		hpMax: 35,
		mp: 0,
		mpMax: 0,
		strength: 1,
		arrows: 2,
		frequency: 2,
		spd: 3,
		sprites: { intro: spr_grinningRockIntro, idle: spr_grinningRockIdle, attack: spr_grinningRockIdle,},
		actions: [global.enemyLibrary.attack,global.enemyLibrary.attack,global.enemyLibrary.taunt],
		moneyValue : 15,
		experinceValue : irandom_range(5,7),
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	//defensive 
	beetle: 
	{
		name: "Armored Beetle",
		hp: 50,
		hpMax: 50,
		mp: 0,
		mpMax: 0,
		strength: 5,
		arrows: 2,
		frequency: 3,
		spd: 3,
		sprites: { intro: sBeetleIntro, idle: sBeetleIdle, attack: sBeetleIdle, defend: sBeetleIdle},
		actions: [global.enemyLibrary.attack,global.actionLibrary.defend],
		moneyValue : 20,
		experinceValue : irandom_range(10,20),
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	//dense small arrow ammt
	mogMole: 
	{
		name: "Mogging Mole",
		hp: 35,
		hpMax: 35,
		mp: 0,
		mpMax: 0,
		strength: 10,
		arrows: 2,
		frequency: 4,
		spd: 3,
		sprites: { intro: spr_mogMole, idle: spr_mogMole, attack: spr_mogMole},
		actions: [global.enemyLibrary.attack,global.enemyLibrary.attack,global.enemyLibrary.intimidate,global.enemyLibrary.intimidate,global.enemyLibrary.taunt],
		moneyValue : 20,
		experinceValue : irandom_range(20,40),
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	//super rare encounter
	nineTailedFox: 
	{
		name: "Nine Tailed Fox",
		hp: 300,
		hpMax: 300,
		mp: 0,
		mpMax: 0,
		strength: 0,
		arrows: 9,
		frequency: 2,
		spd: 3,
		sprites: { intro: spr_catTailsIntro, idle: spr_catTailsIdle, attack: spr_catTailsAttack},
		actions: [global.enemyLibrary.flee],
		//give a lot of money & xp
		moneyValue : 100,
		experinceValue : irandom_range(300,500),
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	//middle of road poisons party
	poisonthorns: 
	{
		name: "Poison Thornster",
		hp: 35,
		hpMax: 35,
		mp: 0,
		mpMax: 0,
		strength: 5,
		arrows: 3,
		frequency: 2,
		spd: 3,
		sprites: { intro: spr_poisonThornsIdle, idle: spr_poisonThornsIdle, attack: spr_poisonThornsIdle, defend: spr_poisonThornsIdle},
		actions: [global.enemyLibrary.attack,global.enemyLibrary.poison,global.actionLibrary.defend],
		moneyValue : 25,
		experinceValue : irandom_range(20,40),
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	//middle of road poisons party
	bat: 
	{
		name: "Bane Bat",
		hp: 50,
		hpMax: 50,
		mp: 0,
		mpMax: 0,
		strength: 12,
		arrows: 2,
		frequency: 1,
		spd: 3,
		hold: 1,
		sprites: { intro: sBaneBatIntro, idle: sBaneBatIdle, attack: sBaneBatIdle},
		actions: [global.enemyLibrary.attack,global.enemyLibrary.poison],
		moneyValue : 25,
		experinceValue : irandom_range(20,40),
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	//glass cannon
	amalbonemation: 
	{
		name: "Amalbonemation",
		hp: 100,
		hpMax: 100,
		mp: 0,
		mpMax: 0,
		strength: 12,
		arrows: 3,
		frequency: 3,
		spd: 3,
		sprites: choose(({ intro: spr_AmalbonemationIdle1, idle: spr_AmalbonemationIdle1, attack: spr_AmalbonemationIdle1}),({ intro: spr_AmalbonemationIdle2, idle: spr_AmalbonemationIdle2, attack: spr_AmalbonemationIdle2}),({ intro: spr_AmalbonemationIdle3, idle: spr_AmalbonemationIdle3, attack: spr_AmalbonemationIdle3})),
		actions: [global.enemyLibrary.attack,global.enemyLibrary.taunt,global.enemyLibrary.toss,global.enemyLibrary.toss],
		moneyValue : 35,
		experinceValue : irandom_range(50,70),
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	//deals fuck ton of damage then flees
	notDeer: 
	{
		name: "Not Deer",
		hp: 100,
		hpMax: 100,
		mp: 0,
		mpMax: 0,
		strength: 50,
		arrows: 2,
		frequency: 2,
		spd: 4,
		sprites: { intro: spr_NotDeerIdle, idle: spr_NotDeerIdle, attack: spr_NotDeerIdle},
		scripted : true,
		actions: [global.enemyLibrary.continuousAttack,global.enemyLibrary.flee],
		moneyValue : 40,
		experinceValue : irandom_range(50,70),
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	thunderBird: 
	{
		name: "Thunder Bird",
		hp: 250,
		hpMax: 250,
		mp: 0,
		mpMax: 0,
		strength: 12,
		arrows: 4,
		frequency: 5,
		spd: 3,
		hold: 1,
		sprites: { intro: spr_thunderBirdIdle, idle: spr_thunderBirdIdle, attack: spr_thunderBirdIdle, defend : spr_thunderBirdIdle, special : spr_thunderBirdIdle},
		actions: [global.enemyLibrary.attackAll,global.enemyLibrary.attackAll,global.enemyLibrary.attackAll,global.actionLibrary.defend],
		moneyValue : 50,
		experinceValue : irandom_range(50,70),
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	theOther: 
	{
		name: "The Other",
		hp: 500,
		hpMax: 500,
		mp: 0,
		mpMax: 0,
		strength: 1,
		arrows: 13,
		frequency: 2,
		spd: 3,
		hold: false,
		sprites: { intro: spr_TheOtherIdle, idle: spr_TheOtherIdle, attack: spr_TheOtherIdle, defend : spr_TheOtherIdle, special : spr_TheOtherIdle},
		actions: [global.enemyLibrary.continuousAttack],
		moneyValue : 50,
		experinceValue : irandom_range(50,70),
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	nightcrawler: 
	{
		name: "Nightcrawler",
		hp: 50,
		hpMax: 50,
		mp: 0,
		mpMax: 0,
		strength: 5,
		arrows: 5,
		frequency: 1,
		spd: 3,
		sprites: { intro: spr_nightcrawlersIdle, idle: spr_nightcrawlersIdle, attack: spr_nightcrawlersIdle, defend: spr_nightcrawlersIdle},
		actions: [global.enemyLibrary.attack],
		moneyValue : 30,
		experinceValue : irandom_range(10,15),
		AIscript : function()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
}
global.bosses =
{
	//easiest
	babyWorm: 
	{
		name: "Mutant Worm",
		hp: 35,
		hpMax: 35,
		mp: 0,
		mpMax: 0,
		strength: 1,
		arrows: 1,
		frequency: 1,
		spd: 3,
		sprites: { intro: spr_babyWormIntro, idle: spr_babyWorm, attack: spr_babyWormAttack, defend: spr_babyWorm},
		scripted: true, 
		actions: [global.enemyLibrary.attack,global.enemyLibrary.attack,global.enemyLibrary.taunt],
		moneyValue : 5,
		experinceValue : 11,
		AIscript : function ()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	//moderate
	magician : 
	{
		name: "The Magician",
		hp: 150,
		hpMax: 150,
		mp: 0,
		mpMax: 0,
		strength: 5,
		arrows: 3,
		disappear: false,
		frequency: 1,
		spd: 3,
		sprites: { intro: spr_magicianBattleIdle, idle: spr_magicianBattleIdle, attack: spr_magicianBattleIdle, defend: spr_magicianBattleIdle},
		scripted: true, 
		actions: [global.enemyLibrary.attack,global.enemyLibrary.stealItem],
		moneyValue : 50,
		experinceValue : 30,
		AIscript : function ()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	//easy
	brownstownCaveBoss: 
	{
		name: "Momma Worm",
		hp: 150,
		hpMax: 100,
		mp: 10,
		mpMax: 10,
		strength: 5,
		arrows: 3,
		frequency: 2,
		spd: 3,
		sprites: { intro: spr_mommaWormIntro, idle: spr_mommaWorm, attack: spr_mommaWorm, defend: spr_mommaWorm},
		actions: [global.enemyLibrary.attack,global.enemyLibrary.attack,global.enemyLibrary.stealItem,global.enemyLibrary.healSelf],
		moneyValue : 60,
		experinceValue : 50,
		AIscript : function ()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	//hard
	finFarmBoss: 
	{
		name: "Horned Beetle",
		hp: 300,
		hpMax: 300,
		mp: 100,
		mpMax: 100,
		strength: 10,
		arrows: 3,
		frequency: 3,
		spd: 3,
		hold: false,
		sprites: { intro: sHornedBeetleIntro, idle: sHornedBeetleIdle, attack: sHornedBeetleIdle},
		scripted: true, 
		actions: [global.enemyLibrary.attack,global.enemyLibrary.summonEne,global.enemyLibrary.summonEne,global.enemyLibrary.continuousAttack,global.enemyLibrary.taunt],
		moneyValue : 100,
		experinceValue : 100,
		summonAmt: 2,
		AIscript : function ()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	//medium
	ancientKing: 
	{
		name: "Ancient King",
		hp: 900,
		hpMax: 900,
		mp: 150,
		mpMax: 150,
		strength: 25,
		arrows: 5,
		frequency: 2,
		spd: 3,
		reverse: false,
		perfect: false,
		sprites: {  intro: sAncientKingIdle, idle: sAncientKingIdle, attack: sAncientKingIdle, special: sAncientKingSpecial, defend: sAncientKingDefend},
		scripted: true,
		actionsScripted: [global.dialogueLibrary.beforeEneAttack,global.enemyLibrary.perfectStrikeCurse],
		actions: [global.enemyLibrary.attack,global.enemyLibrary.attack,global.actionLibrary.defend,global.enemyLibrary.windGust],
		moneyValue : 300,
		experinceValue : 300,
		AIscript : function ()
		{	
		}
	}
	,
	daddyWorm: 
	{
		name: "Daddy Worm",
		hp: 500,
		hpMax: 500,
		mp: 0,
		mpMax: 0,
		strength: 30,
		arrows: 3,
		arrowPath: arrowPath1,
		frequency: 2,
		spd: 3,
		sprites: { intro: spr_mommaWormIntro, idle: spr_mommaWorm, attack: spr_mommaWorm, defend: spr_mommaWorm},
		actions: [global.enemyLibrary.attack,global.enemyLibrary.attack,global.enemyLibrary.stealItem,global.enemyLibrary.healSelf],
		moneyValue : 700,
		experinceValue : 500,
		AIscript : function ()
		{
			//attack random party member
			var _action = actions[0];
			var _possibleTargets = array_filter(oBattle.partyUnits, function(_unit, _index)
			{
				return (_unit.hp > 0);
			});
			var _target = _possibleTargets[irandom(array_length(_possibleTargets)-1)];
			return [_action, _target];
		}
	}
	,
	//hard
	theCoach: 
	{
		name: "The Coach",
		hp: 755,
		hpMax: 755,
		mp: 0,
		mpMax: 0,
		strength: 30,
		arrows: 4,
		frequency: 2,
		spd: 3,
		reverse: false,
		mirror: false,
		sprites: {  intro: sTheCoachIdle_1, idle: sTheCoachIdle_1, attack: sTheCoachIdle_1, throwing: sTheCoachThrowing},
		scripted: true,
		actionsScripted: [global.dialogueLibrary.beforeEneAttack,global.enemyLibrary.windGust],
		actions: [global.enemyLibrary.attack],
		moneyValue : 1000,
		experinceValue : 1000,
		AIscript : function ()
		{	
		}
	}
	,
	//easier
	sickSnake: 
	{
		name: "Sacred Snake",
		hp: 800,
		hpMax: 800,
		mp: 0,
		mpMax: 0,
		strength: 0,
		arrows: 3,
		frequency: 3,
		spd: 3,
		sprites: {	intro: spr_catTailsIdle, idle: spr_catTailsIdle, attack: spr_catTailsIdle},
		//scripted: true,
		actionsScripted: [global.dialogueLibrary.beforeEneAttack,global.enemyLibrary.windGust],
		actions: [global.enemyLibrary.maxHeal],
		moneyValue : 0,
		experinceValue : 0,
		AIscript : function ()
		{	
		}
	}
	,
	//n/a (based on how much damage party can dish out)
	jennaBoss: 
	{
		name: "Jenna",
		hp: 1000,
		hpMax: 1000,
		mp: 0,
		mpMax: 0,
		strength: 0,
		arrows: 4,
		frequency: 1,
		spd: 3,
		reverse: 0,
		sprites: {  intro: sJennaBattleIdle, idle: sJennaBattleIdle, attack: sJennaBattleIdle},
		//scripted: true,
		actionsScripted: [global.dialogueLibrary.beforeEneAttack,global.enemyLibrary.windGust],
		actions: [global.enemyLibrary.maxHeal],
		moneyValue : 0,
		experinceValue : 0,
		AIscript : function ()
		{	
		}
	}
}
	

//Inventory
global.inventory =
[
	//heal
	[global.itemLibrary.bottledWater,0],
	[global.itemLibrary.crackers,0],
	[global.itemLibrary.edibles,0],
	[global.itemLibrary.aed,0],
	[global.itemLibrary.almondWater,0],
	//attack
	[global.itemLibrary.insecticide,0],
	[global.itemLibrary.fireStarter,0],
	[global.itemLibrary.butteredNoodles,0],
	
	//can mealt
	[global.itemLibrary.icicle,0],//massive damage to flying ene/mostly for thunderbird //can mealt
	[global.itemLibrary.notDeerMeat,0],//hp gain
	[global.itemLibrary.funnyFungi,0],//mp gain
]

function RemoveItemFromInventory(_item, _amount)
{
	
	for (var i = 0; i < array_length(global.inventory); i++)
	{
		if (global.inventory[i][0] == _item)
		{
			global.inventory[i][1] -= _amount;
			break;
		}
	}
}




 



