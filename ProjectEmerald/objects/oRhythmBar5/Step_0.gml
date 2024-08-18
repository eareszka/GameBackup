space_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)

if (place_meeting(x,y,oRhythmUnitBoyToy))
{
	if space_key
	{
		oRhythmUnitBoyToy.hit = true
		global.success=1
	}
}
if (place_meeting(x,y,oRhythmUnitBoyToy2))
{
	if space_key
	{
		oRhythmUnitBoyToy2.hit = true
		global.success=1
	}
}


if space_key
{	
	spaceKeyTimer=5
}

if spaceKeyTimer<0{image_index=0}
else{image_index=1}



x+=3
spaceKeyTimer--

if x > (camera_get_view_x(view_camera[0])+350)||success=true
{
	oRhythmVisual5.fade=true
	if instance_exists(obj_comboNumber){obj_comboNumber.fade=true}
	image_alpha-=.1
	if image_alpha<0
	{instance_destroy()}
}


if instance_exists(oRhythmUnitBoyToy)&&instance_exists(oRhythmUnitBoyToy2)
{
	if oRhythmUnitBoyToy.hit=true&&oRhythmUnitBoyToy2.hit=true{success=true}
	
	if x>oRhythmUnitBoyToy.x+80&&x>oRhythmUnitBoyToy2.x+80{success=true miss=true}
}
if instance_exists(oRhythmUnitBoyToy)&&!instance_exists(oRhythmUnitBoyToy2)
{
	if oRhythmUnitBoyToy.hit=true{success=true}
	
	if x>oRhythmUnitBoyToy.x+80{success=true miss=true}
}
if !instance_exists(oRhythmUnitBoyToy)&&instance_exists(oRhythmUnitBoyToy2)
{
	if oRhythmUnitBoyToy2.hit=true{success=true}
	
	if x>oRhythmUnitBoyToy2.x+80{success=true miss=true}
}