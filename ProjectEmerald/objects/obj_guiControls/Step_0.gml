timer -= 1;
if (timer <= 0) {
    alpha -= 0.0025;
}

if (alpha < 0)
{
	instance_destroy()
}