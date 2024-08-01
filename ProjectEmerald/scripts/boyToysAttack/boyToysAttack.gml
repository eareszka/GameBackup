function boyToysAttack(_user)
{
	if _user.name = "Broke"
	{
		switch global.boyToys
		{
			case 1:
				oBattle.continousAttack = 1	
			break;
			case 2:
				oBattle.continousAttack = 2
			break;
			case 3:
				oBattle.continousAttack = 3
			break;
		}
	}
}