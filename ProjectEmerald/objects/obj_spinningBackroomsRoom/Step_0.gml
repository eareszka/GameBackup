if global.flag[53]=1{image_speed=.6}
if global.flag[53]=0{image_speed=0}


if image_index>=20&&image_index<21{instance_activate_object(inst_6B06E757)}
else{instance_deactivate_object(inst_6B06E757)}

show_debug_message(image_index)