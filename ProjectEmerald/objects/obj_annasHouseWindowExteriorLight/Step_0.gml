if global.flag[60]=1||global.timeOfDay>=8
{
	instance_destroy(self)
}

var _c = merge_color(c_navy,c_white,.5)
image_blend=_c