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


row0=oBattle.x+172
row1=oBattle.x+182
row2=oBattle.x+192
row3=oBattle.x+202
row4=oBattle.x+212

yStart=oBattle.y+75

