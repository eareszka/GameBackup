if encounter
{
	if xscale>1.25{xscale-=.1}
	if yscale>1.25{yscale-=.1}
	
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
		    _encounterInstance.absorbed = true;
		}
		
		if _encounterInstance.absorbed = true
		{
			if !_encounterInstance.hitSet&&_encounterInstance.hit&&global.comboAmmount<3
			{
				global.comboAmmount++
				obj_encounterMaster.xscale=1.75
				obj_encounterMaster.yscale=1.75
				_encounterInstance.hitSet=true
			}
		}
	}
	
	encounterStart=checkReady()
	
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_text_transformed(x,y,string(global.comboAmmount)+"x",xscale,yscale,0)

	if xscale>1.25{xscale-=.1}
	if yscale>1.25{yscale-=.1}
	
	ShakeObject(self,.40,.01)
}



if encounterStart&&opponent!=noone
{
	switch opponent.opponent.unitID
	{
		case 6:
			NewEncounter(
			choose
			(
			[global.enemies.frog],
			[global.enemies.frog],
			[global.enemies.frog,global.enemies.frog],
			[global.enemies.frog,global.enemies.frog],
			), 
			spr_battleBackground2,
			battle1,
			true,
			,
			opponent
			);
		break
	
		case 7:
			NewEncounter(
			choose
			(
			[global.enemies.frog],
			[global.enemies.frog],
			[global.enemies.frog,global.enemies.frog],
			[global.enemies.frog,global.enemies.frog],
			), 
			spr_battleBackground2,
			battle1,
			true,
			,
			opponent
			);
		break
	
		case 8:
			NewEncounter(
			choose
			(
			[global.enemies.frog],
			[global.enemies.frog],
			[global.enemies.frog,global.enemies.frog],
			[global.enemies.frog,global.enemies.frog],
			), 
			spr_battleBackground2,
			battle1,
			true,
			,
			opponent
			);
		break
	}
	opponent=noone
}