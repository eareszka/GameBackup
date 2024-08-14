// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createFlavorText(_enemy,_text)
{
	switch _enemy.name
	{
		case "Nightcrawler":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" isn't standing strong"
					break;
					
					case 2:
						return string(_enemy.name)+" looks weak"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2
			{
				switch _text
				{
					case 0:
						return "You should've went to bed.."
					break;
					case 1:
						return "Smells sussy"
					break;
					case 2:
						return string(_enemy.name)+" is standing strong"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return "You should've went to bed.."
					break;
					case 1:
						return "Smells sussy"
					break;
					case 2:
						return string(_enemy.name)+" is standing strong"
					break;
				}
			}
		break
		
		case "The Magician":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" isn't standing strong"
					break;
					
					case 2:
						return string(_enemy.name)+" looks weak"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2
			{
				switch _text
				{
					case 0:
						return "The Bunny is cheering you on!"
					break;
					case 1:
						return "Smells like magic"
					break;
					case 2:
						return string(_enemy.name)+" isn't playing around anymore"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return "The Bunny is cheering you on!"
					break;
					
					case 1:
						return string(_enemy.name)+" is sizing up the situation"
					break;
					
					case 2:
						return string(_enemy.name)+" looks angry"
					break;
				}
			}
		break
		
		case "Mutant Worm":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" isn't standing strong"
					break;
					
					case 2:
						return string(_enemy.name)+" looks weak"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" slithers around"
					break;
					case 1:
						return "Torch lights illuminate " + string(_enemy.name)
					break;
					case 2:
						return string(_enemy.name)+" is making a nasty slime trail"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" isn't playing around anymore"
					break;
					
					case 1:
						return string(_enemy.name)+" is sizing up the situation"
					break;
					
					case 2:
						return string(_enemy.name)+" isn't playing around anymore"
					break;
				}
			}
		break
				
		case "Typha":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" is wilting"
					break;
					
					case 2:
						return string(_enemy.name)+" looks weak"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks healthy"
					break;
					case 1:
						return "Smells like pond water"
					break;
					case 2:
						return "Smells like pond water"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return "'Cat tails, thats where it's all at'"
					break;
					case 1:
						return string(_enemy.name)+" is wilting"
					break;
					case 2:
						return string(_enemy.name)+" is standing strong"
					break;
				}
			}
		break;
				
		case "Itty-Bitty Ant":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" is confused"
					break;
					
					case 2:
						return string(_enemy.name)+" looks weak"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" can not comprehend it's environment"
					break;
					case 1:
						return string(_enemy.name)+" is stomping its tiny legs"
					break;
					case 2:
						return string(_enemy.name)+" is marching"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" is marching"
					break;
					case 1:
						return string(_enemy.name)+" is stomping its tiny legs"
					break;
					case 2:
						return string(_enemy.name)+" is still standing"
					break;
				}
			}
		break
				
		case "Bull Frog":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" is angry"
					break;
					
					case 2:
						return string(_enemy.name)+" looks weak"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks bulky"
					break;
					case 1:
						return "Smells like pond water"
					break;
					case 2:
						return "The "+string(_enemy.name)+" is not ribbiting"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return "The "+string(_enemy.name)+" is not ribbiting"
					break;
					case 1:
						return string(_enemy.name)+" looks angry"
					break;
					case 2:
						return string(_enemy.name)+" is standing strong"
					break;
				}
			}
		break
				
		case "Crude Spider":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" is confused"
					break;
					
					case 2:
						return string(_enemy.name)+" looks weak"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2
			{
				switch _text
				{
					case 0:
						return "Hope you don't have Arachnophobia"
					break;
					case 1:
						return "Smells like dust and dew"
					break;
					case 2:
						return string(_enemy.name)+" is creeping you out"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" is creeping you out"
					break;
					case 1:
						return "Smells like dust and dew"
					break;
					case 2:
						return string(_enemy.name)+" is still standing"
					break;
				}
			}
		break;
				
		case "Grinning Rock":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" is cracking"
					break;
					
					case 2:
						return string(_enemy.name)+" looks shattered"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" is rolling around"
					break;
					case 1:
						return "Smells like dust and dew"
					break;
					case 2:
						return string(_enemy.name)+" is keeping it solid"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" is cracking"
					break;
					case 1:
						return "Smells like dust and dew"
					break;
					case 2:
						return string(_enemy.name)+" is keeping it solid"
					break;
				}
			}
		break;
				
		case "Momma Worm":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" is splitting"
					break;
					
					case 2:
						return string(_enemy.name)+" looks furious"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" is slithering towards you"
					break;
					case 1:
						return string(_enemy.name)+" wants blood"
					break;
					case 2:
						return string(_enemy.name)+" looks furious"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" is sizing up the situation"
					break;
					case 1:
						return string(_enemy.name)+" looks furious"
					break;
					case 2:
						return string(_enemy.name)+" is slithering towards you"
					break;
				}
			}
		break;
				
		case "Armored Beetle":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" is cracking"
					break;
					
					case 2:
						return string(_enemy.name)+" looks furious"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2
			{
				switch _text
				{
					case 0:
						return "Smells like a skunk"
					break;
					case 1:
						return string(_enemy.name)+" wants blood"
					break;
					case 2:
						return string(_enemy.name)+" looks bulletproof"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" wants blood"
					break;
					case 1:
						return string(_enemy.name)+" is sizing up the situation"
					break;
					
					case 2:
						return string(_enemy.name)+" isn't playing around anymore"
					break;
				}
			}
		break;
				
		case "Horned Beetle":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" is cracking"
					break;
					
					case 2:
						return string(_enemy.name)+" looks furious"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2
			{
				switch _text
				{
					case 0:
						return "Smells like a skunk"
					break;
					case 1:
						return string(_enemy.name)+" looks intimidating"
					break;
					case 2:
						return string(_enemy.name)+" looks bulletproof"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks intimidating"
					break;
					case 1:
						return string(_enemy.name)+" is sizing up the situation"
					break;
					
					case 2:
						return string(_enemy.name)+" isn't playing around anymore"
					break;
				}
			}
		break;
				
		case "Poison Thornster":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" is wilting"
					break;
					
					case 2:
						return string(_enemy.name)+" is wilting"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2
			{
				switch _text
				{
					case 0:
						return "Smells like a skunk"
					break;
					case 1:
						return string(_enemy.name)+" looks prickly"
					break;
					case 2:
						return string(_enemy.name)+" looks poisonous"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return "Smells like a skunk"
					break;
					case 1:
						return string(_enemy.name)+" looks prickly"
					break;
					case 2:
						return string(_enemy.name)+" looks poisonous"
					break;
				}
			}
		break;
				
		case "Mogging Mole":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return string(_enemy.name)+" looks are fading"
					break;
					
					case 2:
						return string(_enemy.name)+" looks weak"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2 //middle hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+"'s hair shines brightly"
					break;
					case 1:
						return "Smells like dirt and cologne"
					break;
					case 2:
						return string(_enemy.name)+" looks are fading"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+"'s hair shines brightly"
					break;
					case 1:	
						return "Smells like dirt and cologne"
					break;
					
					case 2:
						return string(_enemy.name)+" is sticking out their tongue"
					break;
				}
			}
		break;
				
		case "Bane Bat":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" is moulting"
					break;
					
					case 1:
						return string(_enemy.name)+" is losinng feathers"
					break;
					
					case 2:
						return string(_enemy.name)+" looks weak"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2 //middle hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks poisonous"
					break;
					case 1:
						return "Torch lights illuminate " + string(_enemy.name)
					break;
					case 2:
						return "A soft breeze created an eerie sound"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks poisonous"
					break;
					case 1:	
						return "Torch lights illuminate " + string(_enemy.name)
					break;
					
					case 2:
						return string(_enemy.name)+" is sticking out their fangs"
					break;
				}
			}
		break;
				
		case "Amalbonemation":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" is cracking"
					break;
					
					case 1:
						return string(_enemy.name)+" is turning to dust"
					break;
					
					case 2:
						return string(_enemy.name)+" looks weak"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2 //middle hp
			{
				switch _text
				{
					case 0:
						return "A soft breeze created an eerie sound"
					break;
					case 1:
						return "Torch lights illuminate " + string(_enemy.name)
					break;
					case 2:
						return string(_enemy.name)+" stands strong"
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks lively"
					break;
					case 1:	
						return "Torch lights illuminate " + string(_enemy.name)
					break;
					
					case 2:
						return string(_enemy.name)+" is intimidating"
					break;
				}
			}
		break;
				
		case "Ancient King":
			if _enemy.hp<_enemy.hpMax/4 //low hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+" looks frail"
					break;
					
					case 1:
						return "Smells like dust and rotton flesh"
					break;
					
					case 2:
						return string(_enemy.name)+" looks weak"
					break;
				}
			}
			if _enemy.hp>=_enemy.hpMax/2 //middle hp
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+"'s crown shines brightly"
					break;
					case 1:
						return string(_enemy.name)+" looks intimidating"
					break;
					case 2:
						return "Torch lights illuminate " + string(_enemy.name)
					break;
				}
			}
			else
			{
				switch _text
				{
					case 0:
						return string(_enemy.name)+"'s crown shines brightly"
					break;
					case 1:
						return "Smells like dust and rotton flesh"
					break;
					
					case 2:
						return string(_enemy.name)+" isn't playing around anymore"
					break;
				}
			}
		break;
	}
}