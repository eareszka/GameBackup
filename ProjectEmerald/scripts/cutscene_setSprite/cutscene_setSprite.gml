// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cutscene_setSprite(_obj,_sprite,_start,_last)
{
	_obj.sprite_index = _sprite
	if _obj.image_index >= _start && _obj.image_index <= _last
	{
		//flips through sprite
	}
	else
	{
		_obj.image_index = _start
	}

}