event_inherited();


if y>ystart+5&&!finishExpand
{
	if image_xscale<.6{image_xscale+=.0150}
	if image_yscale<.6{image_yscale+=.0150}
}

if image_xscale>=.6
{
	finishExpand=true
}

if finishExpand{mirrorTimer-=1}

if mirrorTimer<0{image_xscale*=-1 mirrorTimer=50/spd}