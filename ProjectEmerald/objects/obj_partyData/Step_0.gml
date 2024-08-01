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
	sprites : { idle: spr_emory_battleIdle, attack: spr_emory_battleAttack, special: spr_emory_special},
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
	sprites: { idle: spr_emory_battleIdle, attack: spr_emory_battleAttack, special: spr_emory_special},
	actions : [],
	},
	{
	name: "Fin",
	hp: global.FcurrentHP,
	hpMax: round(50+(global.hpAdd*1.2)),
	mp: 0,
	mpMax: 0,
	strength: round(10+(global.strengthAdd*.8)),
	sprites: { idle: spr_finn_idle, attack: spr_finn_attack, cast: spr_finn_idle},
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
	sprites: { idle: spr_emory_battleIdle, attack: spr_emory_battleAttack, special: spr_emory_special},
	actions : [],
	},
	{
	name: "Fin",
	hp: global.FcurrentHP,
	hpMax: round(50+(global.hpAdd*1.2)),
	mp: 0,
	mpMax: 0,
	strength: round(10+(global.strengthAdd*.8)),
	sprites: { idle: spr_finn_idle, attack: spr_finn_attack, cast: spr_finn_idle},
	actions: [global.actionLibrary.attackRhythm, global.specialLibrary.GrowHemp, global.actionLibrary.escape]
	},
	{
	name: "Broke",
	hp: global.BcurrentHP,
	hpMax: round(10+(global.hpAdd*.5)),
	mp: global.BcurrentMP,
	mpMax: round(50+(global.mpAdd*2)),
	strength: 1,
	sprites: { idle: spr_broke_battleIdle, attack: spr_broke_attack, defend: spr_broke_defend, cast: spr_broke_cast},
	actions: [global.actionLibrary.attackRhythm, global.specialLibrary.summonBoyToys, global.actionLibrary.escape]
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
	sprites: { idle: spr_emory_battleIdle, attack: spr_emory_battleAttack, special: spr_emory_special},
	actions : [],
	},
	{
	name: "Fin",
	hp: global.FcurrentHP,
	hpMax: round(50+(global.hpAdd*1.2)),
	mp: 0,
	mpMax: 0,
	strength: round(10+(global.strengthAdd*.8)),
	sprites: { idle: spr_finn_idle, attack: spr_finn_attack, cast: spr_finn_idle},
	actions: [global.actionLibrary.attackRhythm, global.specialLibrary.GrowHemp, global.actionLibrary.escape]
	},
	{
	name: "Broke",
	hp: global.BcurrentHP,
	hpMax: round(10+(global.hpAdd*.5)),
	mp: global.BcurrentMP,
	mpMax: round(50+(global.mpAdd*2)),
	strength: 1,
	sprites: { idle: spr_broke_battleIdle, attack: spr_broke_attack, defend: spr_broke_defend, cast: spr_broke_cast},
	actions: [global.actionLibrary.attackRhythm, global.specialLibrary.summonBoyToys, global.actionLibrary.escape]
	},
	{
	name: "Jen",
	hp: global.JcurrentHP,
	hpMax: round(100+(global.hpAdd*1.5)),
	mp: global.JcurrentMP,
	mpMax: round(50+(global.mpAdd*1.8)),
	strength: round(10+(global.strengthAdd*.5)),
	sprites: { idle: spr_jen_idle, attack: spr_jen_attack, cast: spr_jen_cast, defend: spr_jen_defend},
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