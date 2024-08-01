if global.comboAmmount>1&&!dance
{
	if moveTo{move_towards_point(oBattle.partyUnits[0].x,oBattle.partyUnits[0].y+5,2.75)}

	if(point_distance(x,y,oBattle.partyUnits[0].x,oBattle.partyUnits[0].y+5)<speed){
	    x = oBattle.partyUnits[0].x
	    y = oBattle.partyUnits[0].y+5
	    instance_destroy(self)
	}
}


if fade{if image_alpha>0{image_alpha-=.1}else{instance_destroy()}}	

if !moveTo{ShakeObject(self,.40,.01)}


//invisible if 0
if global.comboAmmount<=0{visible=false}
else{visible=true}