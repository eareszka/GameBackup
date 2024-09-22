if place_meeting(x,y,obj_playerEmory)
{
	global.flag[0]=1
	global.flag[61]=1
	global.abilities.wrath1 = true
	global.abilities.scatterRage = true
	global.hpAdd = 10;
	global.EcurrentMP=global.hpAdd
	global.BcurrentHP=global.hpAdd
	global.EcurrentHP=global.hpAdd
	global.mpAdd = global.mpAdd+20;
	global.strengthAdd = 5;
	global.levels.level60 = true;
	global.my_Money = 100000
	global.battleExperince =0
	global.abilities.canSprint = true
	global.sacredAnimals.dog = false
	global.quest.helicopter.available=true
	global.quest.annasFlashLight.available=true
	global.quest.crown.available=true
	global.quest.hotelKey.available=true
	global.quest.boatKey.available=true
	global.timeOfDay=9
}
