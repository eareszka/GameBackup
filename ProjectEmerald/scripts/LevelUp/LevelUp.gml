// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LevelUp()
{
	//this is all ai generated dont worry ;)
	//theres def a better way to do this but im too lazy to fix
	
	
	//checks level up
	//level 2
	if ((global.battleExperince)>=11 && (global.battleExperince)<21 && (global.levels.level2 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");	
	    battleEndMessages[4] = string("HP increased!");	
	    battleEndMessages[5] = string("MP increased!");	
	    battleEndMessages[6] = string("Strength increased!");	
		battleEndMessages[7] = string("Emory learned Wrath I !");	
		
		global.abilities.wrath1 = true
	    global.hpAdd = 10;
	    global.mpAdd = 5;
	    global.strengthAdd = 2;
	    global.levels.level2 = true;
	}
	else if ((global.battleExperince)>=21 && (global.battleExperince)<41 && (global.levels.level3 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");	
	    battleEndMessages[4] = string("HP increased!");	
	    battleEndMessages[5] = string("MP increased!");	
	    battleEndMessages[6] = string("Strength increased!");	

	    global.hpAdd = 15;
	    global.mpAdd = 10;
	    global.strengthAdd = 4;
	    global.levels.level3 = true;
	}
	else if ((global.battleExperince)>=41 && (global.battleExperince)<71 && (global.levels.level4 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");	
	    battleEndMessages[4] = string("HP increased!");	
	    battleEndMessages[5] = string("MP increased!");	
	    battleEndMessages[6] = string("Strength increased!");	
		battleEndMessages[7] = string("Emory learned Scatter Rage!");	

		global.abilities.scatterRage = true
	    global.hpAdd = 20;
	    global.mpAdd = 15;
	    global.strengthAdd = 6;
	    global.levels.level4 = true;
	}
	else if ((global.battleExperince)>=71 && (global.battleExperince)<111 && (global.levels.level5 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");	
	    battleEndMessages[4] = string("Strength increased!");	

	    global.hpAdd = 20;
	    global.mpAdd = 15;
	    global.strengthAdd = 10;
	    global.levels.level5 = true;
	}
	else if ((global.battleExperince)>=111 && (global.battleExperince)<161 && (global.levels.level6 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");	
	    battleEndMessages[4] = string("HP increased!");	
	    battleEndMessages[5] = string("MP increased!");	

	    global.hpAdd = 30;
	    global.mpAdd = 20;
	    global.strengthAdd = 10;
	    global.levels.level6 = true;
	}
	else if ((global.battleExperince)>=161 && (global.battleExperince)<231 && (global.levels.level7 == false))
	{
		battleEndMessages[3] = string("Party Level Up!");	
		battleEndMessages[4] = string("HP increased!");	
	    battleEndMessages[4] = string("MP increased!");
		battleEndMessages[5] = string("Strength increased!");	
		global.hpAdd = 40;
	    global.mpAdd = 25;
	    global.strengthAdd = 13;
	    global.levels.level7 = true;
	}
	else if ((global.battleExperince)>=231 && (global.battleExperince)<321 && (global.levels.level8 == false))
	{
		battleEndMessages[3] = string("Party Level Up!");
		battleEndMessages[4] = string("HP increased!");	
		battleEndMessages[5] = string("Strength increased!");	
		global.hpAdd = 50;
	    global.strengthAdd = 16;
	    global.levels.level8 = true;
	}
	else if ((global.battleExperince)>=321 && (global.battleExperince)<431 && (global.levels.level9 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 60;
	    global.mpAdd = 27;
	    global.strengthAdd = 20;
	    global.levels.level9 = true;
	}
	else if ((global.battleExperince)>=431 && (global.battleExperince)<561 && (global.levels.level10 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 70;
	    global.mpAdd = 30;
	    global.strengthAdd = 25;
	    global.levels.level10 = true;
	}
	else if ((global.battleExperince)>=561 && (global.battleExperince)<711 && (global.levels.level11 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 80;
	    global.mpAdd = 35;
	    global.strengthAdd = 30;
	    global.levels.level11 = true;
	}
	else if ((global.battleExperince)>=711 && (global.battleExperince)<881 && (global.levels.level12 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 90;
	    global.mpAdd = 40;
	    global.strengthAdd = 35;
	    global.levels.level12 = true;
	}
	else if ((global.battleExperince)>=881 && (global.battleExperince)<1071 && (global.levels.level13 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 100;
	    global.mpAdd = 45;
	    global.strengthAdd = 40;
	    global.levels.level13 = true;
	}
	else if ((global.battleExperince)>=1071 && (global.battleExperince)<1281 && (global.levels.level14 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 110;
	    global.mpAdd = 50;
	    global.strengthAdd = 45;
	    global.levels.level14 = true;
	}
	else if ((global.battleExperince)>=1281 && (global.battleExperince)<1511 && (global.levels.level15 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 120;
	    global.mpAdd = 55;
	    global.strengthAdd = 50;
	    global.levels.level15 = true;
	}
	else if ((global.battleExperince)>=1511 && (global.battleExperince)<1761 && (global.levels.level16 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 130;
	    global.mpAdd = 60;
	    global.strengthAdd = 55;
	    global.levels.level16 = true;
	}
	else if ((global.battleExperince)>=1761 && (global.battleExperince)<2031 && (global.levels.level17 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 140;
	    global.mpAdd = 65;
	    global.strengthAdd = 60;
	    global.levels.level17 = true;
	}
	else if ((global.battleExperince)>=1761 && (global.battleExperince)<2031 && (global.levels.level17 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 140;
	    global.mpAdd = 65;
	    global.strengthAdd = 60;
	    global.levels.level17 = true;
	}
	else if ((global.battleExperince)>=2031 && (global.battleExperince)<2321 && (global.levels.level18 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 150;
	    global.mpAdd = 70;
	    global.strengthAdd = 65;
	    global.levels.level18 = true;
	}
	else if ((global.battleExperince)>=2321 && (global.battleExperince)<2631 && (global.levels.level19 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 160;
	    global.mpAdd = 75;
	    global.strengthAdd = 70;
	    global.levels.level19 = true;
	}
	else if ((global.battleExperince)>=2631 && (global.battleExperince)<2961 && (global.levels.level20 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 170;
	    global.mpAdd = 80;
	    global.strengthAdd = 75;
	    global.levels.level20 = true;
	}
	else if ((global.battleExperince)>=2961 && (global.battleExperince)<3311 && (global.levels.level21 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 180;
	    global.mpAdd = 85;
	    global.strengthAdd = 80;
	    global.levels.level21 = true;
	}
	else if ((global.battleExperince)>=3311 && (global.battleExperince)<3681 && (global.levels.level22 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 190;
	    global.mpAdd = 90;
	    global.strengthAdd = 85;
	    global.levels.level22 = true;
	}
	else if ((global.battleExperince)>=3681 && (global.battleExperince)<4071 && (global.levels.level23 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 200;
	    global.mpAdd = 95;
	    global.strengthAdd = 90;
	    global.levels.level23 = true;
	}
	else if ((global.battleExperince)>=4071 && (global.battleExperince)<4481 && (global.levels.level24 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 210;
	    global.mpAdd = 100;
	    global.strengthAdd = 95;
	    global.levels.level24 = true;
	}
	else if ((global.battleExperince)>=4481 && (global.battleExperince)<4911 && (global.levels.level25 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 220;
	    global.mpAdd = 105;
	    global.strengthAdd = 100;
	    global.levels.level25 = true;
	}
	else if ((global.battleExperince)>=4911 && (global.battleExperince)<5361 && (global.levels.level26 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 230;
	    global.mpAdd = 110;
	    global.strengthAdd = 105;
	    global.levels.level26 = true;
	}
	else if ((global.battleExperince)>=5361 && (global.battleExperince)<5831 && (global.levels.level27 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 240;
	    global.mpAdd = 115;
	    global.strengthAdd = 110;
	    global.levels.level27 = true;
	}
	else if ((global.battleExperince)>=5831 && (global.battleExperince)<6321 && (global.levels.level28 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 250;
	    global.mpAdd = 120;
	    global.strengthAdd = 115;
	    global.levels.level28 = true;
	}
	else if ((global.battleExperince)>=6321 && (global.battleExperince)<6831 && (global.levels.level29 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 260;
	    global.mpAdd = 125;
	    global.strengthAdd = 120;
	    global.levels.level29 = true;
	}
	else if ((global.battleExperince)>=6831 && (global.battleExperince)<7361 && (global.levels.level30 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 270;
	    global.mpAdd = 130;
	    global.strengthAdd = 125;
	    global.levels.level30 = true;
	}
	else if ((global.battleExperince)>=7361 && (global.battleExperince)<7911 && (global.levels.level31 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 280;
	    global.mpAdd = 135;
	    global.strengthAdd = 130;
	    global.levels.level31 = true;
	}
	else if ((global.battleExperince)>=7911 && (global.battleExperince)<8481 && (global.levels.level32 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 290;
	    global.mpAdd = 140;
	    global.strengthAdd = 135;
	    global.levels.level32 = true;
	}
	else if ((global.battleExperince)>=8481 && (global.battleExperince)<9071 && (global.levels.level33 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 300;
	    global.mpAdd = 145;
	    global.strengthAdd = 140;
	    global.levels.level33 = true;
	}
	else if ((global.battleExperince)>=9071 && (global.battleExperince)<9681 && (global.levels.level34 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 310;
	    global.mpAdd = 150;
	    global.strengthAdd = 145;
	    global.levels.level34 = true;
	}
	else if ((global.battleExperince)>=9681 && (global.battleExperince)<10311 && (global.levels.level35 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 320;
	    global.mpAdd = 155;
	    global.strengthAdd = 150;
	    global.levels.level35 = true;
	}
	else if ((global.battleExperince)>=10311 && (global.battleExperince)<10961 && (global.levels.level36 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 330;
	    global.mpAdd = 160;
	    global.strengthAdd = 155;
	    global.levels.level36 = true;
	}
	else if ((global.battleExperince)>=10961 && (global.battleExperince)<11631 && (global.levels.level37 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 340;
	    global.mpAdd = 165;
	    global.strengthAdd = 160;
	    global.levels.level37 = true;
	}
	else if ((global.battleExperince)>=11631 && (global.battleExperince)<12321 && (global.levels.level38 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 350;
	    global.mpAdd = 170;
	    global.strengthAdd = 165;
	    global.levels.level38 = true;
	}
	else if ((global.battleExperince)>=12321 && (global.battleExperince)<13031 && (global.levels.level39 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 360;
	    global.mpAdd = 175;
	    global.strengthAdd = 170;
	    global.levels.level39 = true;
	}
	else if ((global.battleExperince)>=13031 && (global.battleExperince)<13761 && (global.levels.level40 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 370;
	    global.mpAdd = 180;
	    global.strengthAdd = 175;
	    global.levels.level40 = true;
	}
	else if ((global.battleExperince)>=13761 && (global.battleExperince)<14511 && (global.levels.level41 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 380;
	    global.mpAdd = 185;
	    global.strengthAdd = 180;
	    global.levels.level41 = true;
	}
	else if ((global.battleExperince)>=14511 && (global.battleExperince)<15281 && (global.levels.level42 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 390;
	    global.mpAdd = 190;
	    global.strengthAdd = 185;
	    global.levels.level42 = true;
	}
	else if ((global.battleExperince)>=15281 && (global.battleExperince)<16071 && (global.levels.level43 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 400;
	    global.mpAdd = 195;
	    global.strengthAdd = 190;
	    global.levels.level43 = true;
	}
	else if ((global.battleExperince)>=16071 && (global.battleExperince)<16881 && (global.levels.level44 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 410;
	    global.mpAdd = 200;
	    global.strengthAdd = 195;
	    global.levels.level44 = true;
	}
	else if ((global.battleExperince)>=16881 && (global.battleExperince)<17711 && (global.levels.level45 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 420;
	    global.mpAdd = 205;
	    global.strengthAdd = 200;
	    global.levels.level45 = true;
	}
	else if ((global.battleExperince)>=17711 && (global.battleExperince)<18561 && (global.levels.level46 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 430;
	    global.mpAdd = 210;
	    global.strengthAdd = 205;
	    global.levels.level46 = true;
	}
	else if ((global.battleExperince)>=18561 && (global.battleExperince)<19431 && (global.levels.level47 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 440;
	    global.mpAdd = 215;
	    global.strengthAdd = 210;
	    global.levels.level47 = true;
	}
	else if ((global.battleExperince)>=19431 && (global.battleExperince)<20321 && (global.levels.level48 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 450;
	    global.mpAdd = 220;
	    global.strengthAdd = 215;
	    global.levels.level48 = true;
	}
	else if ((global.battleExperince)>=20321 && (global.battleExperince)<21231 && (global.levels.level49 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 460;
	    global.mpAdd = 225;
	    global.strengthAdd = 220;
	    global.levels.level49 = true;
	}
	else if ((global.battleExperince)>=21231 && (global.battleExperince)<22161 && (global.levels.level50 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 470;
	    global.mpAdd = 230;
	    global.strengthAdd = 225;
	    global.levels.level50 = true;
	}
	else if ((global.battleExperince)>=22161 && (global.battleExperince)<23111 && (global.levels.level51 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 480;
	    global.mpAdd = 235;
	    global.strengthAdd = 230;
	    global.levels.level51 = true;
	}
	else if ((global.battleExperince)>=23111 && (global.battleExperince)<24081 && (global.levels.level52 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 490;
	    global.mpAdd = 240;
	    global.strengthAdd = 235;
	    global.levels.level52 = true;
	}
	else if ((global.battleExperince)>=24081 && (global.battleExperince)<25071 && (global.levels.level53 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 500;
	    global.mpAdd = 245;
	    global.strengthAdd = 240;
	    global.levels.level53 = true;
	}
	else if ((global.battleExperince)>=25071 && (global.battleExperince)<26081 && (global.levels.level54 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 510;
	    global.mpAdd = 250;
	    global.strengthAdd = 245;
	    global.levels.level54 = true;
	}
	else if ((global.battleExperince)>=26081 && (global.battleExperince)<27111 && (global.levels.level55 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 520;
	    global.mpAdd = 255;
	    global.strengthAdd = 250;
	    global.levels.level55 = true;
	}
	else if ((global.battleExperince)>=27111 && (global.battleExperince)<28161 && (global.levels.level56 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 530;
	    global.mpAdd = 260;
	    global.strengthAdd = 255;
	    global.levels.level56 = true;
	}
	else if ((global.battleExperince)>=28161 && (global.battleExperince)<29231 && (global.levels.level57 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 540;
	    global.mpAdd = 265;
	    global.strengthAdd = 260;
	    global.levels.level57 = true;
	}
	else if ((global.battleExperince)>=29231 && (global.battleExperince)<30321 && (global.levels.level58 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 550;
	    global.mpAdd = 270;
	    global.strengthAdd = 265;
	    global.levels.level58 = true;
	}
	else if ((global.battleExperince)>=30321 && (global.battleExperince)<31431 && (global.levels.level59 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 560;
	    global.mpAdd = 275;
	    global.strengthAdd = 270;
	    global.levels.level59 = true;
	}
	else if ((global.battleExperince)>=31431 && (global.levels.level60 == false))
	{
	    battleEndMessages[3] = string("Party Level Up!");
	    battleEndMessages[4] = string("HP increased!");
	    battleEndMessages[5] = string("MP increased!");
	    battleEndMessages[6] = string("Strength increased!");
    
	    global.hpAdd = 570;
	    global.mpAdd = 280;
	    global.strengthAdd = 275;
	    global.levels.level60 = true;
	}
	
}