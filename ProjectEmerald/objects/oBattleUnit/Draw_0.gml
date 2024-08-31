if name="Teakettler"
{
	draw_sprite_ext(spr_teakettlerBackLegs,subimg,x+(xx/2),y+(yy/2),1,1,0,image_blend,image_alpha)
	
	draw_sprite_ext(spr_teakettlerBody,subimg,x,y,1,1,0,image_blend,image_alpha)
	
	draw_sprite_ext(spr_teakettlerFrontLegs,subimg,x+xx,y+yy,1,1,0,image_blend,image_alpha)
	
	draw_sprite_ext(spr_teakettlerTrunk,subimg,x+50,y+25,xxscale,yyscale,0,image_blend,image_alpha)
	
	xx=1 - sin(sinTimer / (10*2)) * 2
	
	yy=1 - sin(sinTimer / (10*1)) * 1
	
	xxscale=1 + sin(sinTimer / 20) * 0.1
	
	yyscale=1 + sin(sinTimer / 20) * 0.1
	
	rot=0 + sin(sinTimer /20) * 5
	
	sinTimer++
}

if name="Wapaloosie"
{
	subimg+=.025
	
	draw_sprite_ext(spr_wapaloosieTail,subimg,x-8,y-20,1,1,rot,image_blend,image_alpha)
	
	draw_sprite_ext(spr_wapaloosieBody1,subimg*2,x-11,y-20,xxscale,1,0,image_blend,image_alpha)
	
	draw_sprite_ext(spr_wapaloosieBody2,subimg*2,x-11,y-20+yy,xxscale,1,0,image_blend,image_alpha)
	
	draw_sprite_ext(spr_wapaloosieHead,subimg,x-11,y-20+yy,1,1,0,image_blend,image_alpha)
	
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
	subimg+=.2
	
	draw_self()
	
	draw_sprite_ext(spr_babyWormHead,subimg,x,y+yy,1,1,0,image_blend,image_alpha)	
	
	draw_sprite_ext(spr_babyWormFace,subimg,(x+xx),y+yy,1,1,0,image_blend,image_alpha)	
	
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
	subimg+=.2
	
	draw_self()
	
	draw_sprite_ext(spr_nightcrawlerHead,subimg,x-11,y-20+yy,1,1,0,image_blend,image_alpha)	
	
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
	subimg+=.2
	
	draw_sprite_ext(spr_bullFrogHorns,subimg,x,y-3,xxscale,1,rot,image_blend,image_alpha)	
	draw_sprite_ext(spr_bullFrogHorns,subimg,x,y-3,xxscale*-1,1,rot*-1,image_blend,image_alpha)
	
	draw_sprite_ext(spr_bullFrogBody,subimg,x,y,1,1,0,image_blend,image_alpha)
	draw_sprite_ext(spr_bullFrogArms,subimg,x,y,1,yyscale,0,image_blend,image_alpha)
	
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
	
	draw_self()
	if name="Wapaloosie"
	{
		draw_sprite_ext(spr_wapaloosieTail,subimg,x-8,y-20,1,1,rot,image_blend,image_alpha)
	
		draw_sprite_ext(spr_wapaloosieBody1,subimg*2,x-11,y-20,xxscale,1,0,image_blend,image_alpha)
	
		draw_sprite_ext(spr_wapaloosieBody2,subimg*2,x-11,y-20+yy,xxscale,1,0,image_blend,image_alpha)
	
		draw_sprite_ext(spr_wapaloosieHead,subimg,x-11,y-20+yy,1,1,0,image_blend,image_alpha)
	}
	if name="Crude Spider"
	{
		draw_sprite_ext(spr_caveSpiderLegs,subimg,x,y,1,1,rot+rot2,image_blend,image_alpha)	
		draw_sprite_ext(spr_caveSpiderLegs,subimg,x,y,1*-1,1,(rot*-1)+(rot2),image_blend,image_alpha)
	
		draw_sprite_ext(spr_caveSpiderBody,subimg,x-1,y,1,1,rot2,image_blend,image_alpha)	
		draw_sprite_ext(spr_caveSpiderHead,subimg,x-1,y+yy,xxscale,1,rot2,image_blend,image_alpha)	
	}
	
	draw_sprite_ext(spr_caveSpiderEyes,subimg,x-4.75,y+2,.45,.45,rot2,image_blend,image_alpha)	
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
		draw_sprite_ext(spr_babyWormHead,subimg,x,y+yy,1,1,0,image_blend,image_alpha)	
	
		draw_sprite_ext(spr_babyWormFace,subimg,(x+xx),y+yy,1,1,0,image_blend,image_alpha)
	}
	if name="Annoyed Ant"
	{
		draw_sprite_ext(spr_annoyedAntHead,subimg,x,y+yy,1,1,0,image_blend,image_alpha)	
	}
	if name="Nightcrawler"
	{	
		draw_sprite_ext(spr_nightcrawlerHead,subimg,x-11,y-20+yy,1,1,0,image_blend,image_alpha)	
	}
	if name="Bull Frog"
	{	
		draw_sprite_ext(spr_bullFrogHorns,subimg,x,y-3,xxscale,1,rot,image_blend,image_alpha)	
		draw_sprite_ext(spr_bullFrogHorns,subimg,x,y-3,xxscale*-1,1,rot*-1,image_blend,image_alpha)
	
		draw_sprite_ext(spr_bullFrogBody,subimg,x,y,1,1,0,image_blend,image_alpha)
		draw_sprite_ext(spr_bullFrogArms,subimg,x,y,1,yyscale,0,image_blend,image_alpha)
	}
	
	shader_reset()
}