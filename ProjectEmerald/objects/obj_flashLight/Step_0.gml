light [|eLight.X]=obj_playerEmory.x+10
light [|eLight.Y]=obj_playerEmory.y+15



if room = RM_HOTELtop
{
	light [|eLight.Intensity]=1.25
	light [|eLight.Width]=1
	light [|eLight.Range]=2000
}
if room = RM_HOTELvent1||room = RM_HOTELvent2
{
	light [|eLight.Intensity]=1.5
	light [|eLight.Width]=1.5	
	light [|eLight.Range]=500
}
if room = RM_BROWNSTOWNcave
{
	light [|eLight.Intensity]=1.5
	light [|eLight.Width]=1.5	
	light [|eLight.Range]=1000
}

if room = RM_BACKROOMS1||room=RM_BACKROOMS2||room=RM_BACKROOMS3
{
	light [|eLight.Intensity]=1.5
	light [|eLight.Width]=5	
	light [|eLight.Range]=1000
}
