space_key = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)

if set1
{
	if space_key
	{
		instance_create_depth(x,y+25,depth-1, oFloatingText, {font: fnM5x7, col: c_white, text: "+1", subtraction: 0.1})
		obj_comboNumber.xscale=1.75
		obj_comboNumber.yscale=1.75
		
		subimgTimer=6
		rhythmScore1+=1
	}
}

//visual
if !set2
{
	if !set1
	{
		if image_xscale<18
		{
			image_xscale+=1
			obj_Rhythm4Space.image_xscale+=.05
		}
		else
		{
			image_xscale=18
			set1=true
		}
	}

	if set1//shrinking
	{
		image_xscale-=.05*2
		if image_xscale<7
		{
			if instance_exists(obj_Rhythm4Space){obj_Rhythm4Space.image_xscale-=.007*2}
		}
	
		if image_xscale<=.1{set2=true fade=true}
	}
}


//done/checks win condition
if fade
{
	instance_destroy(obj_Rhythm4Space)
	if rhythmScore1 >= 10
	{
		global.success = 1
		obj_comboNumber.moveTo=true
		if image_alpha>0{image_alpha-=.12}
		else{instance_destroy()}
	}
	else
	{
		global.success = 0
		obj_comboNumber.fade=true
		if image_alpha>0{image_alpha-=.24}
		else{instance_destroy()}
	}
}
else
{
	if subimgTimer>0{image_index=1}
	else{image_index=0}
}

subimgTimer--

if rhythmScore1<50{global.comboAmmount=5}
if rhythmScore1<40{global.comboAmmount=4}
if rhythmScore1<30{global.comboAmmount=3}
if rhythmScore1<20{global.comboAmmount=2}
if rhythmScore1<10{global.comboAmmount=1}