if instance_exists(obj_playerEmory)
{
	switch player
	{
		case 0:
			obj_playerEmory.emoryDead=false
		break;
		case 1:
			obj_playerEmory.finDead=false
		break;
		case 2:
			obj_playerEmory.brokeDead=false
		break;
		case 3:
			obj_playerEmory.jenDead=false
		break;
	}
}