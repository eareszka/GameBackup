x=target.x
y=target.y

image_speed=.5

image_alpha-=.0075

if image_alpha<0{instance_destroy()}

if obj_projectileGenerator.target.flash=0&&image_alpha>.25
{
	oBattle.success+=1
}