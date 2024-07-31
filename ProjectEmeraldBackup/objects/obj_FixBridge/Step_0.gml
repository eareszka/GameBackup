if global.flag[3]=0
{
	if place_meeting(x,y,obj_playerEmory)&&global.flag[29]=1
	{
		ammount+=1
		global.flag[29]=0
	}
	
	if ammount=0{image_index=0}
	if ammount=1{image_index=1 if instance_exists(inst_6CE6A5D2){instance_destroy(inst_6CE6A5D2)}}
	if ammount=2{global.flag[3]=1 if instance_exists(inst_118B9CC5){instance_destroy(inst_118B9CC5)}}
}
if global.flag[3]=1
{
	image_index=2
	if instance_exists(inst_6CE6A5D2){instance_destroy(inst_6CE6A5D2)}
	if instance_exists(inst_118B9CC5){instance_destroy(inst_118B9CC5)}
}