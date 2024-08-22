steps=0
sec=0

switch enemy.name
{
	case "Mutant Worm":
		if global.defendDodgeWave=0
		{
			waveID=0
		}
		if global.defendDodgeWave=1
		{
			waveID=irandom_range(1,2)
		}
	break
	
	case "Bull Frog":
		waveID=irandom_range(0,1)
	break
}

flag1=false
flag2=false
flag3=false
