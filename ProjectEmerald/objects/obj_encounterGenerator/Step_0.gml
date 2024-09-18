var cam = view_camera[0];
var x1 = camera_get_view_x(cam)-sprite_get_width(spr_encounterGenerator)*self.image_xscale
var y1 = camera_get_view_y(cam)-sprite_get_height(spr_encounterGenerator)*self.image_yscale
var x2 = x1 + camera_get_view_width(cam)+sprite_get_width(spr_encounterGenerator)*self.image_xscale
var y2 = y1 + camera_get_view_height(cam)+sprite_get_height(spr_encounterGenerator)*self.image_yscale


if(!point_in_rectangle( x, y, x1, y1, x2, y2))&&doOnce=false
{ 		
	doOnce=true
	
	var _mean = round((image_xscale+image_yscale)/2)
	var _ran=irandom_range(0,2)
		
	for (var i=0; i<_mean+_ran;i++)
	{
		var _yy=irandom_range(0,sprite_get_height(spr_encounterGenerator)*self.image_yscale)
		var _xx=irandom_range(0,sprite_get_width(spr_encounterGenerator)*self.image_xscale)
			
		instance_create_layer(x+_xx,y+_yy,"Emory",obj_encounter1)
	}
}