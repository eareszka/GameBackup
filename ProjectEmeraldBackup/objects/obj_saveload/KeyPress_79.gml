/// @description Save game

//var _saveData = array_create(0)

////saves data for player
//with(obj_playerEmory)
//{
//	var _saveEntity =
//	{
//		obj: object_get_name(object_index),
//		y: y,
//		x: x,
//		room: room,
//		speedWalk: speedWalk,
//		image_index: image_index,
//		sprite_index: sprite_index,
//		fin: global.fin,
//		broke: global.broke,
//		jen: global.jen,
//		myMoney: global.my_Money,
//		xpAmmount: global.battleExperince
//	}
//	array_push(_saveData, _saveEntity);
//}

////turns data into json string
//var _string = json_stringify(_saveData);
//var _buffer = buffer_create(string_byte_length(_string) +1, buffer_fixed, 1);
//buffer_write(_buffer, buffer_string, _string);
//buffer_save(_buffer, "savegame.save");
//buffer_delete(_buffer);

//show_debug_message("Game Saved! " + _string)
