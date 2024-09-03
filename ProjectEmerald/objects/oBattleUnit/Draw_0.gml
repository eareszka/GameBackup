if name="Armored Beetle"
{
	draw_self()
}
if name="Mogging Mole"
{
	subimg+=.005
	
	var _xOff=0
	
	var _yOff=2
	
	var _ran=irandom_range(0,300)
	
	if _ran=50
	{
		if !instance_exists(Object316){instance_create_depth(x+4+_xOff,y+4+yy+_yOff,-16000,Object316)}
	}
	
	draw_sprite_ext(spr_mogMoleBody_1,subimg,x+_xOff,y+_yOff,1,1,0,image_blend,image_alpha)
	
	draw_sprite_ext(spr_mogMoleHead,subimg,x+_xOff,y+yy+_yOff,1,1,0,image_blend,image_alpha)
	
	if subimg<1
	{
		draw_sprite_ext(spr_mogMoleHands,subimg,x+_xOff,y+yy+_yOff,1,1,0,image_blend,image_alpha)
	}
	if subimg>=1&&subimg<2
	{
		draw_sprite_ext(spr_mogMoleHands,subimg,x+_xOff,y+yy+_yOff,1,1,rot,image_blend,image_alpha)
		
		rot=5 + sin(sinTimer / 10) * 10
	}
	if subimg>=2&&subimg<3
	{
		draw_sprite_ext(spr_mogMoleHands,2,x+xx+_xOff,y+yyy+yy+_yOff+5,1,1,0,image_blend,image_alpha)
		xx=-8 + sin(sinTimer / 50) * 5	
		yyy=-1 + sin(sinTimer / 50) * 5	
	}
	if subimg>=3
	{
		sinTimer=0
		subimg=0	
	}
	
	yy=0 + sin(current_time * 0.0040);	
	
	sinTimer++
}
if name="Grinning Rock"
{
	draw_self()
}
if name="Scaly Feline"
{
	subimg+=.2
	
	var _xOff=15
	
	var _yOff=20
	
	draw_sprite_ext(spr_scalyFelineTail,subimg/2,(x-35+_xOff)+xxscale*50,y-30+yy+_yOff,1,1,rot*-1,image_blend,image_alpha)
	
	draw_sprite_ext(spr_scalyFelineBody,subimg,x-11+_xOff,y-20+_yOff,xxscale,1,0,image_blend,image_alpha)	
	
	draw_sprite_ext(spr_scalyFelineLegs1,subimg,x-11+_xOff,y-22+yy+_yOff,xxscale,1,0,image_blend,image_alpha)	
	
	draw_sprite_ext(spr_scalyFelineLegs2,subimg,x-11+_xOff,y-22+yy+_yOff,xxscale,1,0,image_blend,image_alpha)	
	
	draw_sprite_ext(spr_scalyFelineHead,subimg,(x+15+_xOff)-xxscale*25,y-20+yy+_yOff,1,1,0,image_blend,image_alpha)
	
	if (hp <= 0) 
	{
		yy=-1
	}
	if (hp > 0) 
	{
		xxscale=1 + sin(sinTimer / 50) * 0.1
		
		yy=3 + sin(sinTimer / 25) * 1
		
		rot=10 + sin(sinTimer / 50) * -15
	}
	
	if yy>=3{set1=true}
	
	sinTimer++
}
if name="Teakettler"
{
	var _xOff=0
	
	var _yOff=-4
	
	if yyyyscale<1{subimg=1}
	else
	{
		subimg=0
	}
	
	if 	hp>0&&!set1&&yyyscale>=1.19{set1=true instance_create_depth(x+18+_xOff,y-22+_yOff,-16000,obj_teakettlerSteam)}
	else{set1=false}
	
	//draw_sprite_ext(spr_teakettlerBackLegs,subimg,x-2,y,1,1,rot,image_blend,image_alpha)
	draw_sprite_ext(spr_teakettlerTail,subimg,x-15+_xOff,y+3+_yOff,1,1,rot2,image_blend,image_alpha)
	
	draw_sprite_ext(spr_teakettlerBackLegs,subimg,x+2+_xOff,y-40+_yOff,1,1,rot3,image_blend,image_alpha)
	
	draw_sprite_ext(spr_teakettlerBackLegs,subimg,x+2+_xOff,y-40+_yOff,-1,1,rot3*-1,image_blend,image_alpha)
	
	draw_sprite_ext(spr_teakettlerFrontLegs,subimg,x-3+_xOff,y+_yOff,1,1,rot,image_blend,image_alpha)
	draw_sprite_ext(spr_teakettlerFrontLegs,subimg,x+7+_xOff,y+_yOff,-1,1,rot*-1,image_blend,image_alpha)
	
	draw_sprite_ext(spr_teakettlerBody1,subimg,x+27+_xOff,y+22+_yOff,1,yyyyscale,0,image_blend,image_alpha)
	
	draw_sprite_ext(spr_teakettlerBody2,subimg,x+27+_xOff,y+23+_yOff,1,yyscale,0,image_blend,image_alpha)
	
	draw_sprite_ext(spr_teakettlerTrunk,subimg,x+41+_xOff,y+3+_yOff,1,yyyscale,0,image_blend,image_alpha)

	if hp >0
	{
		rot2=-5 + sin(sinTimer / 10) * 10
	
		yyyscale=1 + sin(sinTimer / 10) * 0.2
	
		yyyyscale=1 + sin(sinTimer / 10) * 0.025
	
		rot3=-2 + sin(sinTimer /10) * 3
	
		sinTimer++
	
		if timer1>0{yyscale=1 + sin(sinTimer / 10) * 0.15 rot=-2 + sin(sinTimer /10) * 5}
		else{yyscale=1.000001 rot=-2}
	
		if yyscale>=1{timer1=500 yyscale=1.000001}
	
		timer1--
	}
}

if name="Wapaloosie"
{
	var _xOff=0
	
	var _yOff=-3
	
	subimg+=.025
	
	draw_sprite_ext(spr_wapaloosieTail,subimg,x-8+_xOff,y-20+_yOff,1,1,rot,image_blend,image_alpha)
	
	draw_sprite_ext(spr_wapaloosieBody1,subimg*2,x-11+_xOff,y-20+_yOff,xxscale,1,0,image_blend,image_alpha)
	
	draw_sprite_ext(spr_wapaloosieBody2,subimg*2,x-11+_xOff,y-20+yy+_yOff,xxscale,1,0,image_blend,image_alpha)
	
	draw_sprite_ext(spr_wapaloosieHead,subimg,x-11+_xOff,y-20+yy+_yOff,1,1,0,image_blend,image_alpha)
	
	yy=1 + 2 * sin(current_time * 0.0020);
	
	xxscale=1 - sin(current_time * 0.0020) * .015
	
	rot=0 + sin(current_time * 0.0020) * 3
	
	sinTimer++
}
if name="Crude Spider"
{
	subimg+=.1
	
	if !instance_exists(obj_caveSpiderWeb){instance_create_depth(x,y,oBattle.depth+1,obj_caveSpiderWeb)}
	{
		obj_caveSpiderWeb.image_alpha=image_alpha
		obj_caveSpiderWeb.image_blend=image_blend
	}
	draw_sprite_ext(spr_caveSpiderLegs,subimg,x,y,1,1,rot+rot2,image_blend,image_alpha)	
	draw_sprite_ext(spr_caveSpiderLegs,subimg,x,y,1*-1,1,(rot*-1)+(rot2),image_blend,image_alpha)
	
	draw_sprite_ext(spr_caveSpiderBody,subimg,x-1,y,1,1,rot2,image_blend,image_alpha)	
	draw_sprite_ext(spr_caveSpiderHead,subimg,x-1,y+yy,xxscale,1,rot2,image_blend,image_alpha)	
	
	draw_sprite_ext(spr_caveSpiderEyes,subimg,x-4.75,y+2,.45,.45,rot2,image_blend,image_alpha)	
		
	xxscale=1.1 - sin(sinTimer / 20) * .075
	
	yy=1 - sin(current_time * 0.0020);	
	
	sinTimer++
	
	if myTurn=true
	{
		xxscale=1.1 - sin(sinTimer / 20) * .2
		rot=0
		rot2=0 + sin(sinTimer /20) * 4.5
	}
	else
	{
		rot=0 + sin(sinTimer /20) * 4.5	
		rot2=0
	}
	
}
if name="Mutant Worm"
{
	var _xOff=0
	
	var _yOff=-3
	
	subimg+=.2
	
	draw_sprite_ext(spr_babyWormBody,subimg/2,x+_xOff,y+_yOff,1,1,0,image_blend,image_alpha)	
	
	draw_sprite_ext(spr_babyWormHead,subimg,x+_xOff,y+yy+_yOff,1,1,0,image_blend,image_alpha)	
	
	draw_sprite_ext(spr_babyWormFace,subimg,(x+xx)+_xOff,y+yy+_yOff,1,1,0,image_blend,image_alpha)	
	
	yy=1 - sin(current_time * 0.0020);	
	
	if timer1<0
	{
		if !set1
		{
			xx-=.02
		}
		else
		{
			xx+=.02	if xx>=0{timer1=250 xx=0 set1=false}
		}
		if xx<-1.5
		{
			set1=true	
		}
	}
	
	
	show_debug_message(xx)
	
	timer1--
}

if name="Typha"
{
	
	draw_sprite_ext(spr_catTailsBody2,subimg,x-3,y+10,xxscale*1.25,.7,rot2,image_blend,image_alpha)	
	draw_sprite_ext(spr_catTailsBody2,subimg,x+3,y+10,xxscale*-1.25,.7,rot2*-1,image_blend,image_alpha)
	
	draw_sprite_ext(spr_catTailsHead,subimg,x+4,y+3,1,yyscale,rot,image_blend,image_alpha)
	
	draw_sprite_ext(spr_catTailsHead,subimg,x-4,y+3,-1,yyscale,rot,image_blend,image_alpha)
	
	draw_sprite_ext(spr_catTailsHead,subimg,x-2.5,y+3,1,yyscale*1.25,rot+10,image_blend,image_alpha)
	
	draw_sprite_ext(spr_catTailsBody1,subimg,x,y,xxscale,1,0,image_blend,image_alpha)
	
	
	//draw_sprite_ext(spr_catTailsBody2,subimg,x,y,1,yyscale,rot,image_blend,image_alpha)
	
	if (hp <= 0) 
	{
		
	}
	if (hp > 0)
	{
		xxscale=1 + sin(sinTimer / 20) * 0.035
		
		yyscale=1 + sin(sinTimer / 20) * 0.035
		
		rot=0 + cos(sinTimer /20) * 3
		
		rot2=0 + 3*sin(sinTimer /20) * 3
	}
	
	sinTimer++
}
if name="Annoyed Ant"
{
	subimg+=.1
	
	draw_self()
	
	draw_sprite_ext(spr_annoyedAntHead,subimg,x,y+yy,1,1,0,image_blend,image_alpha)	
	
	if (hp <= 0) 
	{
		yy=-1
	}
	if (hp > 0) 
	{
		yy=1 - sin(current_time * 0.0020);	
	}
	
	if yy>.5{image_index=2}
	else{image_index=1}
}

if name="Nightcrawler"
{	
	var _xOff=0
	
	var _yOff=-1
	
	subimg+=.2
	
	draw_sprite_ext(spr_nightcrawlersLegs,subimg,x+_xOff,y+_yOff,1,1,0,image_blend,image_alpha)	
	
	draw_sprite_ext(spr_nightcrawlerHead,subimg,x-11+_xOff,y-20+yy+_yOff,1,1,0,image_blend,image_alpha)	
	
	if (hp <= 0) 
	{
		yy=-1
	}
	if (hp > 0) 
	{
		yy=1 + 2 * sin(current_time * 0.0020);	
	}
}
if name="Bull Frog"
{	
	var _xOff=0
	
	var _yOff=-5
	
	subimg+=.2
	
	draw_sprite_ext(spr_bullFrogHorns,subimg,x+_xOff,y-3+_yOff,xxscale,1,rot,image_blend,image_alpha)	
	draw_sprite_ext(spr_bullFrogHorns,subimg,x+_xOff,y-3+_yOff,xxscale*-1,1,rot*-1,image_blend,image_alpha)
	
	draw_sprite_ext(spr_bullFrogBody,subimg,x+_xOff,y+_yOff,1,1,0,image_blend,image_alpha)
	draw_sprite_ext(spr_bullFrogArms,subimg,x+_xOff,y+_yOff,1,yyscale,0,image_blend,image_alpha)
	
	if (hp <= 0) 
	{
		
	}
	if (hp > 0)
	{
		xxscale=1 - sin(sinTimer / 20) * 0.035
		
		rot=0 + sin(sinTimer /20) * 3
		
		yyscale=1.1 - sin(sinTimer / 20) * .035
	}
	
	sinTimer++
}


if flash > 0
{
	flash-=.05
	shader_set(shd_flasher)
	alpha = shader_get_uniform(shd_flasher, "_alpha")
	shader_set_uniform_f(alpha,flash)
	shader_reset()
}


//unit flasher
if flash > 0
{
	flash -= subtract
	shader_set(shd_flasher)
	
	r = shader_get_uniform(shd_flasher, "_red")
	g = shader_get_uniform(shd_flasher, "_green")
	b = shader_get_uniform(shd_flasher, "_blue")
	alpha = shader_get_uniform(shd_flasher, "_alpha")
	shader_set_uniform_f(r,red)
	shader_set_uniform_f(g,green)
	shader_set_uniform_f(b,blue)
	shader_set_uniform_f(alpha,flash)
	
	if name="Grinning Rock"
	{
		draw_self()
	}
	
	if name="Nightcrawler"
	{	
		var _xOff=0
	
		var _yOff=-1
	
		draw_sprite_ext(spr_nightcrawlersLegs,subimg,x+_xOff,y+_yOff,1,1,0,image_blend,image_alpha)	
	
		draw_sprite_ext(spr_nightcrawlerHead,subimg,x-11+_xOff,y-20+yy+_yOff,1,1,0,image_blend,image_alpha)
	}
	
	if name="Scaly Feline"
	{
		var _xOff=15
	
		var _yOff=20
	
		draw_sprite_ext(spr_scalyFelineTail,subimg/2,(x-35+_xOff)+xxscale*50,y-30+yy+_yOff,1,1,rot*-1,image_blend,image_alpha)
	
		draw_sprite_ext(spr_scalyFelineBody,subimg,x-11+_xOff,y-20+_yOff,xxscale,1,0,image_blend,image_alpha)	
	
		draw_sprite_ext(spr_scalyFelineLegs1,subimg,x-11+_xOff,y-22+yy+_yOff,xxscale,1,0,image_blend,image_alpha)	
	
		draw_sprite_ext(spr_scalyFelineLegs2,subimg,x-11+_xOff,y-22+yy+_yOff,xxscale,1,0,image_blend,image_alpha)	
	
		draw_sprite_ext(spr_scalyFelineHead,subimg,(x+15+_xOff)-xxscale*25,y-20+yy+_yOff,1,1,0,image_blend,image_alpha)
	}
	
	if name="Teakettler"
	{
		var _xOff=0
	
		var _yOff=-4
	
		//draw_sprite_ext(spr_teakettlerBackLegs,subimg,x-2,y,1,1,rot,image_blend,image_alpha)
		draw_sprite_ext(spr_teakettlerTail,subimg,x-15+_xOff,y+3+_yOff,1,1,rot2,image_blend,image_alpha)
	
		draw_sprite_ext(spr_teakettlerBackLegs,subimg,x+2+_xOff,y-40+_yOff,1,1,rot3,image_blend,image_alpha)
	
		draw_sprite_ext(spr_teakettlerBackLegs,subimg,x+2+_xOff,y-40+_yOff,-1,1,rot3*-1,image_blend,image_alpha)
	
		draw_sprite_ext(spr_teakettlerFrontLegs,subimg,x-3+_xOff,y+_yOff,1,1,rot,image_blend,image_alpha)
		draw_sprite_ext(spr_teakettlerFrontLegs,subimg,x+7+_xOff,y+_yOff,-1,1,rot*-1,image_blend,image_alpha)
	
		draw_sprite_ext(spr_teakettlerBody1,subimg,x+27+_xOff,y+22+_yOff,1,yyyyscale,0,image_blend,image_alpha)
	
		draw_sprite_ext(spr_teakettlerBody2,subimg,x+27+_xOff,y+23+_yOff,1,yyscale,0,image_blend,image_alpha)
	
		draw_sprite_ext(spr_teakettlerTrunk,subimg,x+41+_xOff,y+3+_yOff,1,yyyscale,0,image_blend,image_alpha)
	}
	
	if name="Wapaloosie"
	{
		var _xOff=0
	
		var _yOff=-3
	
		subimg+=.025
	
		draw_sprite_ext(spr_wapaloosieTail,subimg,x-8+_xOff,y-20+_yOff,1,1,rot,image_blend,image_alpha)
	
		draw_sprite_ext(spr_wapaloosieBody1,subimg*2,x-11+_xOff,y-20+_yOff,xxscale,1,0,image_blend,image_alpha)
	
		draw_sprite_ext(spr_wapaloosieBody2,subimg*2,x-11+_xOff,y-20+yy+_yOff,xxscale,1,0,image_blend,image_alpha)
	
		draw_sprite_ext(spr_wapaloosieHead,subimg,x-11+_xOff,y-20+yy+_yOff,1,1,0,image_blend,image_alpha)
	}
	
	if name="Crude Spider"
	{
		draw_sprite_ext(spr_caveSpiderLegs,subimg,x,y,1,1,rot+rot2,image_blend,image_alpha)	
		draw_sprite_ext(spr_caveSpiderLegs,subimg,x,y,1*-1,1,(rot*-1)+(rot2),image_blend,image_alpha)
	
		draw_sprite_ext(spr_caveSpiderBody,subimg,x-1,y,1,1,rot2,image_blend,image_alpha)	
		draw_sprite_ext(spr_caveSpiderHead,subimg,x-1,y+yy,xxscale,1,rot2,image_blend,image_alpha)	
	}
	
	if name="Typha"
	{
		draw_sprite_ext(spr_catTailsBody2,subimg,x-3,y+10,xxscale*1.25,.7,rot2,image_blend,image_alpha)	
		draw_sprite_ext(spr_catTailsBody2,subimg,x+3,y+10,xxscale*-1.25,.7,rot2*-1,image_blend,image_alpha)
	
		draw_sprite_ext(spr_catTailsHead,subimg,x+4,y+3,1,yyscale,rot,image_blend,image_alpha)
	
		draw_sprite_ext(spr_catTailsHead,subimg,x-4,y+3,-1,yyscale,rot,image_blend,image_alpha)
	
		draw_sprite_ext(spr_catTailsHead,subimg,x-2.5,y+3,1,yyscale*1.25,rot+10,image_blend,image_alpha)
	
		draw_sprite_ext(spr_catTailsBody1,subimg,x,y,xxscale,1,0,image_blend,image_alpha)
	}
	
	if name="Mutant Worm"
	{
		var _xOff=0
	
		var _yOff=-3
	
		draw_sprite_ext(spr_babyWormBody,subimg/2,x+_xOff,y+_yOff,1,1,0,image_blend,image_alpha)	
	
		draw_sprite_ext(spr_babyWormHead,subimg,x+_xOff,y+yy+_yOff,1,1,0,image_blend,image_alpha)	
	
		draw_sprite_ext(spr_babyWormFace,subimg,(x+xx)+_xOff,y+yy+_yOff,1,1,0,image_blend,image_alpha)	
	}
	
	if name="Annoyed Ant"
	{
		draw_sprite_ext(spr_annoyedAntHead,subimg,x,y+yy,1,1,0,image_blend,image_alpha)	
	}
	
	if name="Bull Frog"
	{	
		var _xOff=0
	
		var _yOff=-5
		
		draw_sprite_ext(spr_bullFrogHorns,subimg,x+_xOff,y-3+_yOff,xxscale,1,rot,image_blend,image_alpha)	
		draw_sprite_ext(spr_bullFrogHorns,subimg,x+_xOff,y-3+_yOff,xxscale*-1,1,rot*-1,image_blend,image_alpha)
	
		draw_sprite_ext(spr_bullFrogBody,subimg,x+_xOff,y+_yOff,1,1,0,image_blend,image_alpha)
		draw_sprite_ext(spr_bullFrogArms,subimg,x+_xOff,y+_yOff,1,yyscale,0,image_blend,image_alpha)
	}
	
	shader_reset()
}