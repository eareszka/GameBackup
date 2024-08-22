if PSIZE=1
{
	if PC=1
	{
		xPos=x+160
		yPos=y+166
	
		hp=global.EcurrentHP
		hpMax=20+global.hpAdd

		mp=global.EcurrentMP
		mpMax=20+global.mpAdd

		str=10+global.strengthAdd

		name="Emory"
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
	}
}
if PSIZE=3
{
	if PC=1
	{
		xPos=x+96
		yPos=y+166
	
		hp=global.EcurrentHP
		hpMax=20+global.hpAdd

		mp=global.EcurrentMP
		mpMax=20+global.mpAdd

		str=10+global.strengthAdd

		name="Emory"
	}
	if PC=2
	{
		xPos=x+160
		yPos=y+166
	
		hp=global.FcurrentHP
		hpMax=round(50+(global.hpAdd*1.2))

		mp=0
		mpMax=0

		str=round(10+(global.strengthAdd*.8))

		name="Fin"
	}
	if PC=3
	{
		xPos=x+224
		yPos=y+166
	
		hp=global.BcurrentHP
		hpMax=round(10+(global.hpAdd*.5))

		mp=global.BcurrentMP
		mpMax=round(50+(global.mpAdd*2))

		str=1

		name="Broke"
	}
}
if PSIZE=4
{
	if PC=1
	{
		xPos=x+64
		yPos=y+166
	
		hp=global.EcurrentHP
		hpMax=20+global.hpAdd

		mp=global.EcurrentMP
		mpMax=20+global.mpAdd

		str=10+global.strengthAdd

		name="Emory"
	}
	if PC=2
	{
		xPos=x+128
		yPos=y+166
	
		hp=global.FcurrentHP
		hpMax=round(50+(global.hpAdd*1.2))

		mp=0
		mpMax=0

		str=round(10+(global.strengthAdd*.8))

		name="Fin"
	}
	if PC=3
	{
		xPos=x+192
		yPos=y+166
	
		hp=global.BcurrentHP
		hpMax=round(10+(global.hpAdd*.5))

		mp=global.BcurrentMP
		mpMax=round(50+(global.mpAdd*2))

		str=1

		name="Broke"
	}
	if PC=4
	{
		xPos=x+256
		yPos=y+166
	
		hp=global.JcurrentHP
		hpMax=round(100+(global.hpAdd*1.5))

		mp=global.JcurrentMP
		mpMax=round(50+(global.mpAdd*1.8))

		str=round(10+(global.strengthAdd*.5))

		name="Jen"
	}
}

targeted=false
defendSet=false

healthBarWidth=29
healthBarHeight=6

alpha=1