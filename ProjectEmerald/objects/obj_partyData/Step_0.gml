//Party data
if (global.fin == 0 && global.broke == 0 && global.jen == 0){
	global.party = [
	{
	name: "Emory",
	hp: global.EcurrentHP,
	hpMax: 20+global.hpAdd,
	mp: global.EcurrentMP,
	mpMax: 20+global.mpAdd,
	strength: 10+global.strengthAdd,
	sprites : { idle: spr_emory_battleIdle, attack: spr_emory_battleAttack, special: spr_emory_special, defend: spr_emory_defend, defendOutline: spr_emory_defendOutline},
	actions : [],
	}
	];
	
	
	
} else if (global.fin == 1 && global.broke == 0 && global.jen == 0) {
	global.party = [
	{
	name: "Emory",
	hp: global.EcurrentHP,
	hpMax: 20+global.hpAdd,
	mp: global.EcurrentMP,
	mpMax: 20+global.mpAdd,
	strength: 5+global.strengthAdd,
	sprites: { idle: spr_emory_battleIdle, attack: spr_emory_battleAttack, special: spr_emory_special, defend: spr_emory_defend, defendOutline: spr_emory_defendOutline},
	actions : [],
	},
	{
	name: "Fin",
	hp: global.FcurrentHP,
	hpMax: round(50+(global.hpAdd*1.2)),
	mp: 0,
	mpMax: 0,
	strength: round(10+(global.strengthAdd*.8)),
	sprites: { idle: spr_finn_idle, attack: spr_finn_attack, cast: spr_finn_idle, defend: spr_emory_defend, defendOutline: spr_emory_defendOutline},
	actions: [global.actionLibrary.attackRhythm, global.specialLibrary.GrowHemp, global.actionLibrary.escape]
	}
	];
	
	
	
} else if (global.broke == 1 && global.fin == 1 && global.jen == 0) {
	global.party = [
	{
	name: "Emory",
	hp: global.EcurrentHP,
	hpMax: 20+global.hpAdd,
	mp: global.EcurrentMP,
	mpMax: 20+global.mpAdd,
	strength: 5+global.strengthAdd,
	sprites: { idle: spr_emory_battleIdle, attack: spr_emory_battleAttack, special: spr_emory_special, defend: spr_emory_defend, defendOutline: spr_emory_defendOutline},
	actions : [],
	},
	{
	name: "Fin",
	hp: global.FcurrentHP,
	hpMax: round(50+(global.hpAdd*1.2)),
	mp: 0,
	mpMax: 0,
	strength: round(10+(global.strengthAdd*.8)),
	sprites: { idle: spr_finn_idle, attack: spr_finn_attack, cast: spr_finn_idle, defend: spr_emory_defend, defendOutline: spr_emory_defendOutline},
	actions: [global.actionLibrary.attackRhythm, global.specialLibrary.GrowHemp, global.actionLibrary.escape]
	},
	{
	name: "Broke",
	hp: global.BcurrentHP,
	hpMax: round(10+(global.hpAdd*.5)),
	mp: global.BcurrentMP,
	mpMax: round(50+(global.mpAdd*2)),
	strength: 1,
	sprites: { idle: spr_broke_battleIdle, attack: spr_broke_attack, defend: spr_broke_defend, cast: spr_broke_cast, defend: spr_broke_defend, defendOutline: spr_broke_defendOutline},
	actions: [global.actionLibrary.attackRhythm, global.specialLibrary.summonBoyToys, global.specialLibrary.summonBoyToys2,	global.actionLibrary.escape]
	}
	];
	
	
	
} else if (global.jen == 1 && global.broke == 1 && global.fin == 1) {
	global.party = [
	{
	name: "Emory",
	hp: global.EcurrentHP,
	hpMax: 20+global.hpAdd,
	mp: global.EcurrentMP,
	mpMax: 20+global.mpAdd,
	strength: 5+global.strengthAdd,
	sprites: { idle: spr_emory_battleIdle, attack: spr_emory_battleAttack, special: spr_emory_special, defend: spr_emory_defend, defendOutline: spr_emory_defendOutline},
	actions : [],
	},
	{
	name: "Fin",
	hp: global.FcurrentHP,
	hpMax: round(50+(global.hpAdd*1.2)),
	mp: 0,
	mpMax: 0,
	strength: round(10+(global.strengthAdd*.8)),
	sprites: { idle: spr_finn_idle, attack: spr_finn_attack, cast: spr_finn_idle, defend: spr_emory_defend, defendOutline: spr_emory_defendOutline},
	actions: [global.actionLibrary.attackRhythm, global.specialLibrary.GrowHemp, global.actionLibrary.escape]
	},
	{
	name: "Broke",
	hp: global.BcurrentHP,
	hpMax: round(10+(global.hpAdd*.5)),
	mp: global.BcurrentMP,
	mpMax: round(50+(global.mpAdd*2)),
	strength: 1,
	sprites: { idle: spr_broke_battleIdle, attack: spr_broke_attack, defend: spr_broke_defend, cast: spr_broke_cast, defend: spr_broke_defend, defendOutline: spr_broke_defendOutline},
	actions: [global.actionLibrary.attackRhythm, global.specialLibrary.summonBoyToys, global.actionLibrary.escape]
	},
	{
	name: "Jen",
	hp: global.JcurrentHP,
	hpMax: round(100+(global.hpAdd*1.5)),
	mp: global.JcurrentMP,
	mpMax: round(50+(global.mpAdd*1.8)),
	strength: round(10+(global.strengthAdd*.5)),
	sprites: { idle: spr_jen_idle, attack: spr_jen_attack, cast: spr_jen_cast, defend: spr_jen_defend, defend: spr_emory_defend, defendOutline: spr_emory_defendOutline},
	actions: [global.actionLibrary.attackRhythm, global.actionLibrary.defend, global.specialLibrary.caduceus]
	}
	];
}


if global.abilities.wrath2 = true
{
	global.party[0].actions = [global.actionLibrary.attackRhythm, global.specialLibrary.wrath1, global.specialLibrary.scatterRage, global.specialLibrary.wrath2, global.actionLibrary.escape]
}
else if global.abilities.scatterRage = true
{
	global.party[0].actions = [global.actionLibrary.attackRhythm, global.specialLibrary.wrath1, global.specialLibrary.scatterRage, global.actionLibrary.escape]
}
else if global.abilities.wrath1 = true
{
	global.party[0].actions = [global.actionLibrary.attackRhythm, global.specialLibrary.wrath1, global.actionLibrary.escape]
}
else
{
	global.party[0].actions = [global.actionLibrary.attackRhythm, global.actionLibrary.escape]
}

//sprites for party memebers
//if global.quest.blackRing.available = false && global.quest.blueRing.available = false
//{
//	if keyboard_check(vk_lshift){sprite[RIGHT] = emory_r_running}else{sprite[RIGHT] = emory_r_walking}
//	if keyboard_check(vk_lshift){sprite[UP] = emory_b_running}else{sprite[UP] = emory_b_walking}
//	if keyboard_check(vk_lshift){sprite[LEFT] = emory_l_running}else{sprite[LEFT] = emory_l_walking}
//	if keyboard_check(vk_lshift){sprite[DOWN] = emory_f_running}else{sprite[DOWN] = emory_f_walking}
//	sprite[UPr] = emory_b_walking
//	sprite[DOWNr] = emory_f_idle
//	sprite[UPl] = emory_b_walking
//	sprite[DOWNl] = emory_f_idle
//	sprite[DOWNi] = emory_f_idle
//	sprite[RIGHTi] = emory_r_idle
//	sprite[LEFTi] = emory_l_idle
//	sprite[UPi] = emory_b_idle
//}