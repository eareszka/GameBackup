if!setup{path_start(path,3,path_action_stop,false)setup=true}

if path_position=1 {instance_destroy(self)}
else{image_angle+=3}
image_index=0