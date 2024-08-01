if global.flag[23]=1
{
	if !success
	{
		instance_destroy(obj_bomb)
		instance_destroy(obj_bombFlame)
		if !instance_exists(obj_bombExplosionFail){instance_create_depth(obj_playerEmory.x-40,obj_playerEmory.y-65,-16000,obj_bombExplosionFail)}
	}
}