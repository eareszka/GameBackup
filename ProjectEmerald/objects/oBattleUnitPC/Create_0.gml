event_inherited();
sprite_index = sprites.idle;
y=camera_get_view_y(view_camera[0])+190

setup=false

turnCompleted=false

nonDefenseY=camera_get_view_y(view_camera[0])+160
DefenseY=camera_get_view_y(view_camera[0])+172
DefenseX=oBattle.x+192

//for player dodging
leftDodge=false
dodgeTimer=0
moving=false
reverse=false
dodging=false


defensiveStance=false
yPos=ystart
dodgePos=2

moveTimer=0


dodgePhase=false
dodgeSetup=false

targeted=false