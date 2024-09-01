event_inherited();

if type=0
{
	if y>ystart+5
	{
		if image_xscale<.3{image_xscale+=.0150}
		if image_yscale<.3{image_yscale+=.0150}
	}
}
if type=1
{
	if y>ystart+5
	{
		if image_xscale<.8{image_xscale+=.0150}
		if image_yscale<.8{image_yscale+=.0150}
	}
}