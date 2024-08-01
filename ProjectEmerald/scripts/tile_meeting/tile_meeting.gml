function tile_meeting(_xpos,_ypos,_tc,_preciseObj)
{
	var _layer = _tc,
	    _tm = layer_tilemap_get_id(_layer),
	    _checker = _preciseObj
	if(!instance_exists(_checker)) instance_create_depth(0,0,0,_checker); 


	var _x1 = tilemap_get_cell_x_at_pixel(_tm, bbox_left + (_xpos - x), y),
	    _y1 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_top + (_ypos - y)),
	    _x2 = tilemap_get_cell_x_at_pixel(_tm, bbox_right + (_xpos - x), y),
	    _y2 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_bottom + (_ypos - y));

	for(var _x = _x1; _x <= _x2; _x++){
	 for(var _y = _y1; _y <= _y2; _y++){
	    var _tile = tile_get_index(tilemap_get(_tm, _x, _y));
	    if(_tile){
	     if(_tile == 1) return true;

	     _checker.x = _x * tilemap_get_tile_width(_tm);
	     _checker.y = _y * tilemap_get_tile_height(_tm);
	     _checker.image_index = _tile;

	     if(place_meeting(_xpos,_ypos,_checker)) return true;
	    }
	 }
	}

	return false;
}