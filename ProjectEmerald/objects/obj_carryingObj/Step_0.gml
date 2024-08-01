//depth based on player pos
if obj_playerEmory.face=UP{depth=obj_playerEmory.depth+10 yy=-6}
if obj_playerEmory.face=DOWN{depth=obj_playerEmory.depth-10}
if obj_playerEmory.face=LEFT{depth=obj_playerEmory.depth-10 xx=-20}
if obj_playerEmory.face=RIGHT{depth=obj_playerEmory.depth-10 xx=0}

x=obj_playerEmory.x+xx
y=obj_playerEmory.y+yy

if global.flag[29]=0{instance_destroy(self)}