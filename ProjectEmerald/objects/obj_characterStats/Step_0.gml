//keeps updating variables
//hp=
//hpMax=
if PSIZE=1
{
	if PC=1
	{
		if !defendSet
		{
			xPos=x+160
			yPos=y+166
		}
	
		hp=global.EcurrentHP
		hpMax=20+global.hpAdd

		mp=global.EcurrentMP
		mpMax=20+global.mpAdd

		str=10+global.strengthAdd

		name="Emory"
		
		if oBattle.partyUnits[0].targeted=true{targeted=true}
		else{targeted=false}
	}
}
if PSIZE=2
{
	if PC=1
	{
		xPos=x+128
		yPos=y+166
	
		hp=global.EcurrentHP
		hpMax=20+global.hpAdd

		mp=global.EcurrentMP
		mpMax=20+global.mpAdd

		str=10+global.strengthAdd

		name="Emory"
		
		if oBattle.partyUnits[0].targeted=true
		{
			targeted=true	
		}
	}
	if PC=2
	{
		xPos=x+192
		yPos=y+166
	
		hp=global.FcurrentHP
		hpMax=round(50+(global.hpAdd*1.2))

		mp=0
		mpMax=0

		str=round(10+(global.strengthAdd*.8))

		name="Fin"
		
		if oBattle.partyUnits[1].targeted=true
		{
			targeted=true	
		}
	}
}
if PSIZE=3
{
	if PC=1
	{
		if !defendSet
		{
			xPos=x+96
			yPos=y+166
		}
	
		hp=global.EcurrentHP
		hpMax=20+global.hpAdd

		mp=global.EcurrentMP
		mpMax=20+global.mpAdd

		str=10+global.strengthAdd

		name="Emory"
		
		if oBattle.partyUnits[0].targeted=true
		{
			targeted=true	
		}
	}
	if PC=2
	{
		if !defendSet
		{
			xPos=x+160
			yPos=y+166
		}
	
		hp=global.FcurrentHP
		hpMax=round(50+(global.hpAdd*1.2))

		mp=0
		mpMax=0

		str=round(10+(global.strengthAdd*.8))

		name="Fin"
		
		if oBattle.partyUnits[1].targeted=true
		{
			targeted=true	
		}
	}
	if PC=3
	{
		if !defendSet
		{
			xPos=x+224
			yPos=y+166
		}
	
		hp=global.BcurrentHP
		hpMax=round(10+(global.hpAdd*.5))

		mp=global.BcurrentMP
		mpMax=round(50+(global.mpAdd*2))

		str=1

		name="Broke"
		
		if oBattle.partyUnits[2].targeted=true
		{
			targeted=true	
		}
	}
}
if PSIZE=4
{
	if PC=1
	{
		if !defendSet
		{
			xPos=x+64
			yPos=y+166
		}
	
		hp=global.EcurrentHP
		hpMax=20+global.hpAdd

		mp=global.EcurrentMP
		mpMax=20+global.mpAdd

		str=10+global.strengthAdd

		name="Emory"
		
		if oBattle.partyUnits[0].targeted=true
		{
			targeted=true	
		}
	}
	if PC=2
	{
		if !defendSet
		{
			xPos=x+128
			yPos=y+166
		}
	
		hp=global.FcurrentHP
		hpMax=round(50+(global.hpAdd*1.2))

		mp=0
		mpMax=0

		str=round(10+(global.strengthAdd*.8))

		name="Fin"
		
		if oBattle.partyUnits[1].targeted=true
		{
			targeted=true	
		}
	}
	if PC=3
	{
		if !defendSet
		{
			xPos=x+192
			yPos=y+166
		}
	
		hp=global.BcurrentHP
		hpMax=round(10+(global.hpAdd*.5))

		mp=global.BcurrentMP
		mpMax=round(50+(global.mpAdd*2))

		str=1

		name="Broke"
		
		if oBattle.partyUnits[2].targeted=true
		{
			targeted=true	
		}
	}
	if PC=4
	{
		if !defendSet
		{
			xPos=x+256
			yPos=y+166
		}
	
		hp=global.JcurrentHP
		hpMax=round(100+(global.hpAdd*1.5))

		mp=global.JcurrentMP
		mpMax=round(50+(global.mpAdd*1.8))

		str=round(10+(global.strengthAdd*.5))

		name="Jen"
		
		if oBattle.partyUnits[3].targeted=true
		{
			targeted=true	
		}
	}
}


//if defendSet
//{
//	depth=-17000
//	xPos=x+160
//	if yPos>oBattle.y+192	
//	{
//		yPos-=1
//	}
//}
//else
//{
//	depth=-16000
//}


//if enemyUIset&&!defendSet
//{
//	yPos=oBattle.y+27
//}

//if !instance_exists(oMenu)||!(_char.myTurn){draw_text_transformed((x+92)+(i*65),y+166,_char.name,1.50,1.10,0);}
//if !instance_exists(oMenu)&&(_char.myTurn){draw_set_color(c_yellow) draw_text_transformed((x+92)+(i*65),y+166,_char.name,1.50,1.10,0);}
//if (_char.myTurn)&&instance_exists(oMenu){draw_set_color(c_yellow);	draw_text_transformed((x+92)+(i*65),y+166,oMenu.optionName,1.50,1.10,0);}