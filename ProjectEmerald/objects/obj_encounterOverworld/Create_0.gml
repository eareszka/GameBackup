event_inherited()

startdepth=depth

moveSpeed=0

stationery=false

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

if opponent.name = "Typha" stationery=true

moveSpeed=(opponent.spd-1)

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