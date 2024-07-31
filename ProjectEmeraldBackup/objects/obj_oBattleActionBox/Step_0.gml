ShakeObject(self,.25,.01)

//attacking
if action=1
{
	img=0	
}
//taunting
if action=2
{
	img=1
}
//talking
if action=3
{
	if !mirror{cutscene_setSprite(self,spr_oBattleActionBox,2,6)}
	if mirror{cutscene_setSprite(self,spr_oBattleActionBoxMirror,2,6)}
}