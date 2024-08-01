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