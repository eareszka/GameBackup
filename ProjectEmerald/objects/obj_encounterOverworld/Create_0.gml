event_inherited()

startdepth=depth

moveSpeed=0

patrolTimer=0

patrolCooldown=0

current_point = 0;

dead=false

activated=false

absorbed=false

distance=170

dir = 0

hit=false

hitSet=false

stop=false

hSpeed= 0
vSpeed= 0

checkColl1=true

checkColl2=true

timer1=33
timer2=10

sprite_speed=500

animIndex = 0;

sprite_index=opponent.sprites.overworld

moveSpeed=(opponent.spd-1)

unique=false

if variable_struct_exists(opponent,"unique") unique=true

function FourDirectionAnimate() 
{
	if !stop
	{
		//Update Sprite
		var _animLength = sprite_get_number(sprite_index) / 4;
		image_index = animIndex + (((direction div 90) mod 4) * _animLength);
		animIndex += sprite_get_speed(sprite_index) / sprite_speed;

		//If animation would loop on next game step
		if (animIndex >= _animLength)
		{
			animationEnd = true;	
			animIndex -= _animLength;
		}
		else animationEnd = false;
	}
	else
	{
		
		if hit{image_index=7}
		else 
		{
			timer1--
			if timer1<0
			{
				direction=choose(0,90,180,270)
				timer1=33
			}
			var _animLength = sprite_get_number(sprite_index) / 4;
			image_index = animIndex + (((direction div 90) mod 4) * _animLength);
			animIndex += sprite_get_speed(sprite_index) / infinity;

			//If animation would loop on next game step
			if (animIndex >= _animLength)
			{
				animationEnd = true;	
				animIndex -= _animLength;
			}
			else animationEnd = false;
		}
	}
}

function UniqueDirectionAnimate() 
{
	if opponent.name = "Typha" 
	{
		if !stop&&activated
		{
			image_index+=.1
		}
		else image_index=0
	}

	if opponent.name = "Grinning Rock" 
	{
		if !place_meeting(x,y,obj_playerEmory)
		{
			dir = point_direction(x,y,obj_playerEmory.x+10,obj_playerEmory.y+15)

			hSpeed= lengthdir_x(moveSpeed,dir)
			vSpeed= lengthdir_y(moveSpeed,dir)
		}
		
		if !stop&&activated
		{
			image_angle+=ceil((mean(hSpeed,vSpeed))*4)
		}
		else image_angle+=0
	}
}