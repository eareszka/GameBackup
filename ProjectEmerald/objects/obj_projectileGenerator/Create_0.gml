steps=0
sec=0

switch enemy.name
{
	case "Typha":
		waveID=0
	break
	
	case "Annoyed Ant":
		waveID=irandom_range(0,1)
	break
	
	case "Nightcrawler":
		waveID=irandom_range(0,2)
	break
	
	case "Bull Frog":
		waveID=irandom_range(0,2)
	break
	
	case "Mutant Worm":
		if global.defendDodgeWave=0
		{
			waveID=irandom_range(0,1)
		}
		if global.defendDodgeWave=1
		{
			waveID=2
		}
	break
}

flag1=false
flag2=false
flag3=false
flag4=false
flag5=false
flag6=false
flag7=false
flag8=false
flag9=false
flag10=false




//starting points
row0=oBattle.x+156
row1=oBattle.x+180
row2=oBattle.x+192
row3=oBattle.x+204
row4=oBattle.x+228

yStart=oBattle.y+75

