function saveGame()
{
	var _saveData = []
	array_push(_saveData,room)
	array_push(_saveData,obj_playerEmory.x)
	array_push(_saveData,obj_playerEmory.y)
	array_push(_saveData,global.fin)
	array_push(_saveData,global.broke)
	array_push(_saveData,global.jen)
	array_push(_saveData,global.EcurrentHP)
	array_push(_saveData,global.FcurrentHP)
	array_push(_saveData,global.BcurrentHP)
	array_push(_saveData,global.JcurrentHP)
	array_push(_saveData,global.EcurrentMP)
	array_push(_saveData,global.BcurrentMP)
	array_push(_saveData,global.JcurrentMP)
	array_push(_saveData,global.hpAdd)
	array_push(_saveData,global.mpAdd)
	array_push(_saveData,global.strengthAdd)
	array_push(_saveData,global.my_Money)
	array_push(_saveData,global.battleExperince)
	array_push(_saveData,global.timeOfDay)
	array_push(_saveData,global.escapeImmunity)
	array_push(_saveData,global.prevRoom)
	array_push(_saveData,global.battlesWon)
	
	//quest inventory
	array_push(_saveData,global.quest.annasFlashLight)
	array_push(_saveData,global.quest.dogTreat)
	array_push(_saveData,global.quest.hotelKey)
	array_push(_saveData,global.quest.farmKey)
	array_push(_saveData,global.quest.bridge)
	array_push(_saveData,global.quest.crown)
	array_push(_saveData,global.quest.helicopter)
	array_push(_saveData,global.quest.swimmimgFins)
	array_push(_saveData,global.quest.blueRing)
	array_push(_saveData,global.quest.blackRing)
	array_push(_saveData,global.quest.Emerald)
	
	//abilities
	array_push(_saveData,global.abilities.wrath1)
	array_push(_saveData,global.abilities.wrath2)
	array_push(_saveData,global.abilities.scatterRage)
	array_push(_saveData,global.abilities.growMushrooms)
	array_push(_saveData,global.abilities.mpSucker)
	array_push(_saveData,global.abilities.opshroom)
	array_push(_saveData,global.abilities.boyToy1)
	array_push(_saveData,global.abilities.boyToy2)
	array_push(_saveData,global.abilities.caduceus)
	array_push(_saveData,global.abilities.revive)
	array_push(_saveData,global.abilities.dimensionHop)
	
	//sacred animals
	array_push(_saveData,global.sacredAnimals.dog)
	array_push(_saveData,global.sacredAnimals.rabbit)
	array_push(_saveData,global.sacredAnimals.rooster)
	array_push(_saveData,global.sacredAnimals.ox)
	array_push(_saveData,global.sacredAnimals.goat)
	array_push(_saveData,global.sacredAnimals.cat)
	array_push(_saveData,global.sacredAnimals.snake)
	array_push(_saveData,global.sacredAnimals.rat)
	array_push(_saveData,global.sacredAnimals.tiger)
	array_push(_saveData,global.sacredAnimals.monkey)
	array_push(_saveData,global.sacredAnimals.horse)
	array_push(_saveData,global.sacredAnimals.dragon)
	
	//flags
	for (var i=0;i<array_length(global.flag);i++)
	{
		array_push(_saveData,global.flag[i])
	}
	
	//chest
	for (var i=0;i<array_length(global.chestOpened);i++)
	{
		array_push(_saveData,global.chestOpened[i])
	}
	
	//inventory
	for (var i=0;i<array_length(global.inventory);i++)
	{
		array_push(_saveData,global.inventory[i][1])
	}
	
	//enemiesKilled
	for (var i=0;i<array_length(global.enemyKills);i++)
	{
		array_push(_saveData,global.enemyKills[i])
	}
	
	
	
	
	var _filename = "savedata.sav"
	var _json = json_stringify(_saveData)
	var _buffer = buffer_create(string_byte_length(_json)+1, buffer_fixed, 1)
	buffer_write(_buffer, buffer_string, _json)
	
	buffer_save(_buffer, _filename)	
	buffer_delete(_buffer)
}
function loadGame()
{
	if instance_exists(obj_playerEmory)
	{
		instance_destroy(obj_playerEmory)
	}
	var _filename = "savedata.sav"
	if !file_exists(_filename) exit;
	
	var _buffer = buffer_load(_filename)
	var _json = buffer_read(_buffer, buffer_string)
	buffer_delete(_buffer)
	
	var _loadData = json_parse(_json)
		
	//loads player and room
	room_goto(array_get(_loadData,0))
	
	if instance_exists(obj_playerEmory)
	{
		instance_destroy(obj_playerEmory)
	}
	if !instance_exists(obj_playerEmory)
	{
		with instance_create_layer(array_get(_loadData,1),array_get(_loadData,2),"Emory",obj_playerEmory)
		{
		
		}
	}
	
	global.fin = array_get(_loadData,3)
	global.broke = array_get(_loadData,4)
	global.jen = array_get(_loadData,5)
	
	//battle stats
	global.EcurrentHP = array_get(_loadData,6)
	global.FcurrentHP = array_get(_loadData,7)
	global.BcurrentHP = array_get(_loadData,8)
	global.JcurrentHP = array_get(_loadData,9)
	global.EcurrentMP = array_get(_loadData,10)
	global.BcurrentMP = array_get(_loadData,11)
	global.JcurrentMP = array_get(_loadData,12)
	global.hpAdd = array_get(_loadData,13)
	global.mpAdd = array_get(_loadData,14)
	global.strengthAdd = array_get(_loadData,15)
	
	//ect
	global.my_Money = array_get(_loadData,16)
	global.battleExperince = array_get(_loadData,17)
	global.timeOfDay = array_get(_loadData,18)
	global.escapeImmunity = array_get(_loadData,19)
	global.prevRoom = array_get(_loadData,20)
	global.battlesWon = array_get(_loadData,21)
	
	//quest inventory
	global.quest.annasFlashLight = array_get(_loadData,22)
	global.quest.dogTreat = array_get(_loadData,23)
	global.quest.hotelKey = array_get(_loadData,24)
	global.quest.farmKey = array_get(_loadData,25)
	global.quest.bridge = array_get(_loadData,26)
	global.quest.crown = array_get(_loadData,27)
	global.quest.helicopter = array_get(_loadData,28)
	global.quest.swimmimgFins = array_get(_loadData,29)
	global.quest.blueRing = array_get(_loadData,30)
	global.quest.blackRing = array_get(_loadData,31)
	global.quest.Emerald = array_get(_loadData,32)
	
	
	
	//abilities
	global.abilities.wrath1= array_get(_loadData,33)
	global.abilities.wrath2= array_get(_loadData,34)
	global.abilities.scatterRage= array_get(_loadData,35)
	global.abilities.growMushrooms= array_get(_loadData,36)
	global.abilities.mpSucker= array_get(_loadData,37)
	global.abilities.opshroom= array_get(_loadData,38)
	global.abilities.boyToy1= array_get(_loadData,39)
	global.abilities.boyToy2= array_get(_loadData,40)
	global.abilities.caduceus= array_get(_loadData,41)
	global.abilities.revive= array_get(_loadData,42)
	global.abilities.dimensionHop= array_get(_loadData,43)
	
	//sacred animals
	global.sacredAnimals.dog= array_get(_loadData,44)
	global.sacredAnimals.rabbit= array_get(_loadData,45)
	global.sacredAnimals.rooster= array_get(_loadData,46)
	global.sacredAnimals.ox= array_get(_loadData,47)
	global.sacredAnimals.goat= array_get(_loadData,48)
	global.sacredAnimals.cat= array_get(_loadData,49)
	global.sacredAnimals.snake= array_get(_loadData,50)
	global.sacredAnimals.rat= array_get(_loadData,51)
	global.sacredAnimals.tiger= array_get(_loadData,52)
	global.sacredAnimals.monkey= array_get(_loadData,53)
	global.sacredAnimals.horse= array_get(_loadData,54)
	global.sacredAnimals.dragon= array_get(_loadData,55)
	
	//flags
	for (var i=0;i<array_length(global.flag);i++)
	{
		global.flag[i]=array_get(_loadData,56+i)
	}
	
	//chest
	for (var i=0;i<array_length(global.chestOpened);i++)
	{
		global.chestOpened[i]=array_get(_loadData,56+array_length(global.flag)+i)
	}
	
	//inventory
	for (var i=0;i<array_length(global.inventory);i++)
	{
		global.inventory[i][1]=array_get(_loadData,56+array_length(global.flag)+array_length(global.chestOpened)+i)
	}
	
	//enemyKills
	for (var i=0;i<array_length(global.enemyKills);i++)
	{
		global.enemyKills[i]=array_get(_loadData,56+array_length(global.flag)+array_length(global.chestOpened)+array_length(global.inventory)+i)
	}
	
	//resets specific flags
	global.flag[29]=0
}