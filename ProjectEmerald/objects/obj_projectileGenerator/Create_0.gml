tutorial=false
steps=0
sec=0

switch enemy.name
{
	case "The Magician":
		waveID=0
	break
	
	case  "Scaly Feline":
		waveID=irandom_range(0,1)
	break
	
	case  "Wapaloosie":
		waveID=0
	break
	
	case "Crude Spider":
		if oBattle.attackSubtype=0{waveID=irandom_range(0,1)}
		if oBattle.attackSubtype=1{waveID=irandom_range(2,4)}
	break
	
	case "Grinning Rock":
		waveID=irandom_range(0,1)
	break
	
	case "Typha":
		waveID=irandom_range(0,2)
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
		if oBattle.attackSubtype=0{waveID=irandom_range(0,1)}
		if oBattle.attackSubtype=1{waveID=2}
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

wapaloosieMouth=enemy.x+15

yStart=oBattle.y+75

