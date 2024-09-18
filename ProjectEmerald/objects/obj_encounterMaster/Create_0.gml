encounter=false

encounterStart=false

opponent=noone

doOnce=false

xscale=1.25
yscale=1.25

function checkReady()
{
	var cam = view_camera[0];
	var x1 = camera_get_view_x(cam);
	var y1 = camera_get_view_y(cam);
	var x2 = x1 + camera_get_view_width(cam);
	var y2 = y1 + camera_get_view_height(cam);


	var _encounterCount = instance_number(obj_encounterParent);
	
	for (var i = 0; i < _encounterCount; i++) 
	{
		var _encounterInstance = instance_find(obj_encounterParent, i);
		if (point_in_rectangle(_encounterInstance.x, _encounterInstance.y, x1, y1, x2, y2)) 
		{
		    if _encounterInstance.hit=false return false
		}
	}
	return true
}