/// @description Load game

//erase current game state

//with (obj_playerEmory) instance_destroy()

//if (file_exists("savegame.save"))
//{
//	var _buffer = buffer_load("savegame.save")
//	var _string = buffer_read( _buffer, buffer_string)
//	buffer_delete(_buffer)
	
//	var _loadData = json_parse(_string)
	
//	while (array_length(_loadData) > 0)
//	{
//		var _loadEntity = array_pop(_loadData)
//		with(instance_create_layer(x,y,"Emory", asset_get_index(_loadEntity.obj)))
//		{
//			y = _loadEntity.y
//			x = _loadEntity.x
//			room = _loadEntity.room
//			speedWalk = _loadEntity.speedWalk
//			image_index = _loadEntity.image_index
//			sprite_index = _loadEntity.sprite_index
//			global.fin = _loadEntity.fin
//			global.broke = _loadEntity.broke
//			global.jen = _loadEntity.jen
//			global.my_Money = _loadEntity.myMoney
//			global.battleExperince = _loadEntity.xpAmmount
//		}
//	}
//}