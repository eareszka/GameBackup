if global.flag[23]=1&&!instance_exists(obj_textBox)&&!success
{
	if global.bombTimer<=0
	{
		instance_destroy(self)
	}
	else
	{
		global.bombTimer-=.016	
	}
}

if success
{
	if !instance_exists(obj_bomb){instance_destroy()}	
}


if explode
{
	instance_destroy(obj_bomb)
	instance_destroy(obj_bombFlame)
	if !instance_exists(obj_bombExplosionFail){instance_create_depth(obj_playerEmory.x-40,obj_playerEmory.y-65,-16000,obj_bombExplosionFail)}
	success=true
}