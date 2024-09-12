ObjDepth(self,obj_playerEmory,5,10)
image_speed=.8
if global.timeOfDay>=8
{
	visible=true
	instance_activate_object(inst_970604E)
	instance_activate_object(inst_1CD07EFF)	
}
else
{
	visible=false
	instance_deactivate_object(inst_970604E)
	instance_deactivate_object(inst_1CD07EFF)
}