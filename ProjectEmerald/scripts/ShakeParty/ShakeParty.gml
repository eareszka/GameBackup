// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShakeParty(_targets,_damage,_crit=undefined)
{
	if array_length(_targets)<=1
	{
		//if _targets.enemy=false&&!_crit{MoveH(oBattleStats,6,1.5,,,false)}
		//if _targets.enemy=false&&_crit{MoveV(oBattleStats,6,1.5)instance_create_depth(_targets.x,_targets.y,_targets.depth-1, oFloatingText, {subtraction: 0.02, font: fnM5x7, col: c_lime, text: "Crit!"})}
	}
	
	if _targets.enemy=true&&!_crit{MoveH(_targets,6,1,true,true,false)}
	if _targets.enemy=true&&_crit{MoveV(_targets,6,1)instance_create_depth(_targets.x,_targets.y,_targets.depth-1, oFloatingText, {subtraction: 0.02, font: fnM5x7, col: c_lime, text: "Crit!"})}
}