y--

image_alpha-=.01

if image_alpha<0{instance_destroy()}

if y<ystart-10{depth=oBattle.depth+1}

if image_xscale<.5{image_xscale+=.05}
if image_yscale<.5{image_yscale+=.05}

image_angle+=5