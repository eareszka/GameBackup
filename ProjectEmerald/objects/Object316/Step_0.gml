if grow
{
	if image_xscale<.3{image_xscale+=.05}
	if image_yscale<.3{image_yscale+=.05}else{grow=false}
}

if !grow
{
	if image_xscale>0{image_xscale-=.05}
	if image_yscale>0{image_yscale-=.05}
	image_alpha-=.01
}

if image_alpha<0{instance_destroy()}
	