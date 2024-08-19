event_inherited();

//for intro
if oBattle.battleState=0&&y>camera_get_view_y(view_camera[0])+160
{
	y-=1;
}


if (oBattle.escaped) && (hp > 0)
{
	y +=2;	
}

if (hp <= 0)
{
	y +=2;	
}
else
{
	//if (sprite_index == sprites.down) sprite_index = sprites.idle;	
}


//for player dodging
if instance_exists(obj_projectileGenerator)&&oBattle.defendStart=true
{
	if !reverse{image_speed=1}
	
	if dodgeTimer<0
	{
		if left_hold
		{
			sprite_index = sprites.dodge 		
			dodgeTimer=32
			moving=true
		}
		if right_hold
		{
			image_xscale=-1 
			sprite_index = sprites.dodge
			dodgeTimer=32
			moving=true
		}
	}
	else
	{
		if reverse&&image_index=0
		{
			image_xscale=1
			dodging=false
			sprite_index = sprites.idle
			reverse=false
		}
	}
	
	if moving
	{
		if image_index>25
		{
			reverse=true
			image_speed=-1
		}
		
		if image_index>10
		{
			dodging=true
		}
	}
	
}
else
{
	image_xscale=1
	sprite_index = sprites.idle	
	dodgeTimer=0
	moving=false
	reverse=false
	dodging=false
}

//fixes moving if defend has ended
//if oBattle.defendEnd=true
//{
//	image_xscale=1
//	sprite_index = sprites.idle	
//	dodgeTimer=0
//	moving=false
//	reverse=false
//	dodging=false
//}

dodgeTimer--

//for correct keys 
right_key = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
left_key = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));

//for hold keys
right_hold = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_hold = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_hold = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_hold = keyboard_check(vk_down) || keyboard_check(ord("S"));
	
right_release = keyboard_check_released(vk_right) || keyboard_check_released(ord("D"));
left_release = keyboard_check_released(vk_left) || keyboard_check_released(ord("A"));
up_release = keyboard_check_released(vk_up) || keyboard_check_released(ord("W"));
down_release = keyboard_check_released(vk_down) || keyboard_check_released(ord("S"));