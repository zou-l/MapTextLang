MODE_S <- 1; //0 - pseudo-random, 1 - Shuffle
GLITCH_MODE <- false;
GLITCH_COUNT <- 0;

BOSS_MODE <- false;

SUPER_MODE <- false;
SUPER_MODE_TWICE_WIN <- 0;

NORMAL_CHECK <- 0;
NORMAL_MODES <- [
    //0 name //1 备份 //2 PrintChat name mod //3 Relay trigger mod
    ["FFVII", "FFVII", "***当前模式 : FFVII mode***", "relayMode_FFVII"], //0 
    ["Boss", "Boss", "***当前模式 : Boss模式***", "relayMode_Boss"], //1
    ["SilentHill", "SilentHill", "***当前模式 : 寂静岭***", "relayMode_SilentHill"], //2
    ["Classic", "Classic", "***当前模式 : 经典模式***", "relayMode_Classic"], //3
    ["Massacre", "Massacre", "***当前模式 : 屠杀模式***", "relayMode_Massacre"], //4
    ["Flood", "Flood", "***当前模式 : 洪水模式***", "relayMode_Flood"], //5
    ["Normal", "Normal", "***当前模式 : 正常模式***", "relayMode_Normal"], //6
    ["SpaceFFVII", "SpaceFFVII", "***当前模式 : 低重力FFVII mode***", "relayMode_SpaceFFVII"], //7
    ["Tornado", "Tornado", "***当前模式 : 龙卷风模式***", "relayMode_Tornado"], //8
    ["SpaceMassacre", "SpaceMassacre", "***当前模式 : 太空大屠杀模式***", "relayMode_SpaceMassacre"], //9
    ["Space", "Space", "***当前模式 : 低重力模式***", "relayMode_Space"], //10
    ["VIP", "VIP", "***当前模式 : VIP模式***", "relayMode_VIP"], //11
    ["Train", "Train", "***当前模式 : 列车模式***", "relayMode_Train"], //12
    ["TriggerMadness", "TriggerMadness", "***当前模式 : 疯狂随机事件***", "relayMode_TriggerMadness"], //13
    ["KnockbackMadness", "KnockbackMadness", "***当前模式 : 反向击退模式***", "relayMode_KnockbackMadness"], //14
    ["Face2Face", "Face2Face", "***当前模式 : 克隆模式***", "relayMode_Face2Face"], //15
    ["ZombieHorde", "ZombieHorde", "***当前模式 : Zombie Horde mode***", "relayMode_ZombieHorde"], //16
    ["UFO", "UFO", "***当前模式 : UFO模式***", "relayMode_UFO"], //17
    ["Carnival", "Carnival", "***当前模式 : 狂欢模式***", "relayMode_Carnival"], //18
    ["Monkey", "Monkey", "***当前模式 : 猴子模式***", "relayMode_Monkey"], //19
    ["MonkeyMassacre", "MonkeyMassacre", "***当前模式 : Monkey Massacre mode***", "relayMode_MonkeyMassacre"], //20
    ["AllItems", "AllItems", "***当前模式 : 全部神器解锁***", "relayMode_AllItems"], //21
    ["Hell", "Hell", "***当前模式 : 地狱模式***", "relayMode_Hell"], //22
    ["Turtle", "Turtle", "***当前模式 : 海龟模式***", "relayMode_Turtle"], //23
    ["BossTwist", "BossTwist", "***当前模式 : Boss Twist mode***", "relayMode_BossTwist"], //24
    ["OneWay", "OneWay", "***当前模式 : 单向模式***", "relayMode_OneWay"], //25
    ["TotalWarfare", "TotalWarfare", "***当前模式 : 全面战争模式***", "relayMode_TotalWarfare"], //26
    ["Asedium", "Asedium", "***当前模式 : 攻城模式***", "relayMode_Asedium"], //27
    ["Explosive", "Explosive", "***当前模式 : 炸弹模式***", "relayMode_Explosive"], //28
    ["HoldEm", "HoldEm", "***当前模式 : HoldEm mode***", "relayMode_HoldEm"], //29
    ["ZM", "ZM", "***当前模式 : ZM模式***", "relayMode_ZM"], //30
    ["ItemRush", "ItemRush", "***当前模式 : 神器抢购模式***", "relayMode_ItemRush"], //31
    ["Arena", "Arena", "***当前模式 : 神器竞技模式***", "relayMode_Arena"], //32
    ["Castle", "Castle", "***当前模式 : 城堡模式***", "relayMode_Castle"], //33
    ["Forest", "Forest", "***当前模式 : 森林模式***", "relayMode_Forest"], //34
    ["Depression", "Depression", "***当前模式 : 抑郁模式***", "relayMode_Depression"], //35
    ["Medieval", "Medieval", "***当前模式 : 中世纪战争***", "relayMode_Medieval"], //36
    ["Halloween", "Halloween", "***当前模式 : 万圣节***", "relayMode_Halloween"], //37
    ["LordsOfDestruction", "LordsOfDestruction", "***当前模式 : 毁灭之王模式***", "relayMode_LordsOfDestruction"] //38
];

MOD_SELECTED_TYPE <- false;
NEXT_MODE <- null;

PLAYER_VIP <- null;
VIP_BONUS_ITEMS <- false;
ZOMBIE_HORDE_PLAYERS <- null;

MUSIC_ARR <- [
    ["vo/ravenholm/madlaugh04.wav", true], //0
    ["fart.mp3", true], //1
    ["bot/aah.wav", true], //2
    ["vo/ravenholm/monk_helpme03.wav", true], //3
    ["vo/ravenholm/monk_helpme05.wav", true], //4
    ["npc/overwatch/radiovoice/die2.wav", true], //5
    ["ambient/animal/crow_1.wav", true], //6
    ["ambient/machines/train_horn_3.wav", true], //7
    ["luff_medusa/medusa_scream.mp3", true], //8
    ["luff_medusa/medusa_god.mp3", true], //9
    ["luff_medusa/medusa_bottomfeeder.mp3", true], //10
    ["luff_medusa/medusa_unstoppable.mp3", true], //11
    ["luff_medusa/medusa_wicked.mp3", true], //12
    ["ze_random_labyrinth/ascream7.mp3", true], //13
    ["luffaren/gettothechopper.mp3", true], //14
    ["weapons/molotov/fire_ignite_5.wav", true], //15
    ["weapons/hegrenade/explode5.wav", true], //16 case 2
    ["weapons/hegrenade/explode3_distant.wav", true], //17
    ["weapons/hegrenade/explode4_distant.wav", true], //18
    ["misc/medic.wav", true], //19
    ["mako_reactor/seph_saygoodbye.mp3", true], //20
    ["npc/roller/blade_out.wav", true], //21
    ["mako_reactor/seph_howdoesit.mp3", true], //22
    ["npc/combine_gunship/gunship_pain.wav", true], //23
    ["npc/stalker/go_alert2a.wav", true], //24
    ["mako_reactor/seph_toolate.mp3", true], //25
    ["ambient/energy/electric_loop.wav", true], //26
    ["ze_random_labyrinth/iliketurtles.mp3", true], //27
    ["ze_random_labyrinth/itsatrap.mp3", true], //28
    ["weapons/sensorgrenade/sensor_explode.wav", true], //29
    ["bahamut_growl2.mp3", true], //30
    ["npc/dog/dog_on_dropship.wav", true], //31 csae 3
    ["minas_tirith/horn.mp3", true], //32
    ["minas_tirith/balrog_scream.mp3", true], //33
    ["weapons/hegrenade/explode5.wav", true], //34
    ["minas_tirith/explode5.mp3", true], //35
    ["minas_tirith/explode4.mp3", true], //36
    ["minas_tirith/explode3.mp3", true], //37
    ["npc/combine_gunship/ping_patrol.wav", true], //38
    ["ze_random_labyrinth/gon_alert1.mp3", true], //39
    ["ze_random_labyrinth/gon_die1.mp3", true], //40
    ["npc/ichthyosaur/attack_growl1.wav", true], //41
    ["physics/nearmiss/whoosh_huge1.wav", true], //42
    ["weapons/hegrenade/explode5_distant.wav", true], //43
    ["ambient/levels/citadel/portal_beam_shoot6.wav", true], //44
    ["buttons/button10.wav", true], //45 case 3
    ["minas_tirith/nazgul1.mp3", true], //46
    ["physics/flesh/flesh_squishy_impact_hard3.wav", true], //47
    ["weapons/hegrenade/explode4.wav", true], //48
    ["npc/antlion_guard/antlion_guard_die1.wav", true], //49
    ["common/stuck1.wav", true], //50
    ["hl1/fvox/beep.wav", true], //51
    ["common/stuck2.wav", true], //52
    ["ambient/explosions/exp3.wav", true], //53
    ["npc/stalker/laser_burn.wav", true], //54
    ["vo/ravenholm/madlaugh04.wav", true], //55
    ["ambient/materials/cartrap_explode_impact2.wav", true], //56
    ["weapons/hegrenade/explode4.wav", true], //57
    ["weapons/underwater_explode3.wav", true], //58
    ["npc/strider/charging.wav", true], //59 case 4
    ["npc/manhack/grind_flesh1.wav", true], //60 case 5
    ["weapons/hegrenade/explode5.wav", true], //61
    ["weapons/crossbow/bolt_fly4.wav", true], //62
    ["npc/strider/strider_step2.wav", true], //63
    ["weapons/molotov/fire_ignite_5.wav", true], //64
    ["physics/glass/glass_strain2.wav", true], //65
    ["ambient/alarms/warningbell1.wav", true], //66
    ["npc/ichthyosaur/attack_growl2.wav", true], //67
    ["tools/ifm/beep.wav", true], //68
    ["hl1/fvox/buzz.wav", true], //69
    ["minas_tirith/nazgul2.mp3", true], //70
    ["minas_tirith/nazgul3.mp3", true], //71
    ["ambient/tones/tunnel_wind_loop.wav", true],
    ["ambient/levels/canals/windmill_wind_loop1.wav", true]
];

CURRENT_MOD <- "";
::PLAYERS <- [];
::ZOMBIE_ITEMS <- [];
DEBUG <- false;
PL_HANDLE <- [];
TEMP_HANDLE <- null;
MAPPER_COMMANDS <- false; //set false to disable chat commands for mapper (LINE 820)
M_STEAM_ID <- [];

eventinfo <- null;
eventproxy <- null;
eventlist <- null;
event_he <- null;
eventsay <- null;
eventhurt <- null;
eventdeath <- null;
g_zone <- null;
speed_ent <- null;
round_end_ent <- null;
weapon_s <- null;
eq_knife <- null;

once_check <- false;
T_Player_Check <- 5.00;

function MapStart()
{
    if(SUPER_MODE_TWICE_WIN >= 2)
    {
        SUPER_MODE_TWICE_WIN = 0;
        SUPER_MODE = true;
    }
    if(GLITCH_COUNT >= 8)
    {
        GLITCH_COUNT = 0;
        GLITCH_MODE = true;
    }
    for(local i = 0; i < MUSIC_ARR.len(); i++)
    {
        if(MUSIC_ARR[i][1] == false){MUSIC_ARR[i][1] = true;}
        self.PrecacheScriptSound(""+MUSIC_ARR[i][0]);
    }
    if(VIP_BONUS_ITEMS)
    {
        VIP_BONUS_ITEMS = false;
        EntFire("vip_bonus", "FireUser1", "", 11.00, null);
    }
    if(M_STEAM_ID.len() <= 0)
    {
        local data_m = Entities.FindByName(null, "mapper_data");
        if(data_m == null || data_m.GetScriptScope() == null)return;
        printl("ENT: "+data_m.GetName()+" | SCOPE: "+data_m.GetScriptScope());
        if(DEBUG && type(data_m.GetScriptScope()) == "table")
        {
            foreach(i, v in data_m.GetScriptScope()){printl(i+" : "+v);}
        }
        if("GetDataM" in data_m.GetScriptScope()){data_m.GetScriptScope().GetDataM();}
        data_m.Destroy();
    }
    else
    {
        local data_m = Entities.FindByName(null, "mapper_data");
        data_m.Destroy();
    }
    TITAN_PLAYER = null;
    Sudden_CT = null;
    Sudden_T = null;
    CURRENT_MOD = "";
    PLAYER_VIP = null;
    ZOMBIE_HORDE_PLAYERS = null;
    
    //开局重置一遍击退相关
    FORCE_KNOCKBACK = 0;
    FORCE_KNOCKBACK_Z = 25;

    SendToConsoleServer("sv_disable_radar 1");
    if(ReturnCountPlayers() >= 32){EntFire("mathHOWMANYFUCKINGNAZGULSUPURARSE", "SetHitMax", "2", 0.00, null);}
    if(ZOMBIE_ITEMS.len() > 0){ZOMBIE_ITEMS.clear();}
    if(eventinfo == null || eventinfo != null && !eventinfo.IsValid()){eventinfo = Entities.FindByName(null, "pl_ginfo");}
    if(event_he == null || event_he != null && !event_he.IsValid()){event_he = Entities.FindByName(null, "eventhe_d");}
    if(speed_ent == null || speed_ent != null && !speed_ent.IsValid()){speed_ent = Entities.FindByName(null, "speedo");}
    if(eventhurt == null || eventhurt != null && !eventhurt.IsValid()){eventhurt = Entities.FindByName(null, "pl_hurt");}
    if(eventproxy == null || eventproxy != null && !eventproxy.IsValid()){eventproxy = Entities.FindByClassname(null, "info_game_event_proxy");}
    if(g_zone == null || g_zone != null && !g_zone.IsValid()){g_zone = Entities.FindByName(null, "check_players");}
    if(eventdeath == null || eventdeath != null && !eventdeath.IsValid()){eventdeath = Entities.FindByName(null, "pl_death");}
    if(weapon_s == null || weapon_s != null && !weapon_s.IsValid()){weapon_s = Entities.FindByName(null, "weaponStrip");}
    if(eq_knife == null || eq_knife != null && !eq_knife.IsValid()){eq_knife = Entities.FindByName(null, "equipKnife");}
    if(round_end_ent == null || round_end_ent != null && !round_end_ent.IsValid()){round_end_ent = Entities.FindByName(null, "round_end");}
    EntFireByHandle(eventdeath, "Enable", "", 5.00, null, null);
    once_check = true;
    LoopPlayerCheck();
    EntFireByHandle(self, "RunScriptCode", "ModeSelection();", 11.00, null, null);
}

function GetArrD()
{
    if(M_STEAM_ID.len() > 0)
    {
        for(local i = 0; i < M_STEAM_ID.len(); i++)
        {
            printl("INDEX: "+i+" | STEAM ID: "+M_STEAM_ID[i]);
        }
        printl("MAPPER COMMANDS: "+MAPPER_COMMANDS);
    }
    else{printl("ARRAY CLEAR");}
}

function SetNextMode(n){NEXT_MODE = n;}

function ModeSelection()
{
    if(NEXT_MODE != null && type(NEXT_MODE) == "integer")
    {
        local boss_case = Entities.FindByName(null, "caseWhatBossShouldWeSpawn");
        if(NEXT_MODE == 39)
        {
            EntFireByHandle(boss_case, "FireUser1", "", 0.00, null, null);
            EntFire("relayBossSettings", "Trigger", "", 0.00, null);
            return;
        }
        if(NEXT_MODE == 40)
        {
            EntFireByHandle(boss_case, "FireUser2", "", 0.00, null, null);
            EntFire("relayBossSettings", "Trigger", "", 0.00, null);
            return;
        }
        if(NEXT_MODE == 41)
        {
            EntFireByHandle(boss_case, "FireUser3", "", 0.00, null, null);
            EntFire("relayBossSettings", "Trigger", "", 0.00, null);
            return;
        }
        if(NEXT_MODE == 42)
        {
            EntFireByHandle(boss_case, "FireUser4", "", 0.00, null, null);
            EntFire("relayBossSettings", "Trigger", "", 0.00, null);
            return;
        }
        if(NEXT_MODE == 43)
        {
            EntFireByHandle(boss_case, "InValue", "Medusa", 0.00, null, null);
            EntFire("relayBossSettings", "Trigger", "", 0.00, null);
            return;
        }
        if(NORMAL_MODES[NEXT_MODE][0] != "Normal"){ScriptPrintMessageChatAll(RandomColorChat()+" "+NORMAL_MODES[NEXT_MODE][2]);}
        EntFire(""+NORMAL_MODES[NEXT_MODE][3], "Trigger", "", 0.00, null);
        CURRENT_MOD = NORMAL_MODES[NEXT_MODE][0];
        NEXT_MODE = null;
        return;
    }
    if(!MOD_SELECTED_TYPE)
    {
        MOD_SELECTED_TYPE = true;
        MODE_S = RandomInt(0,1);
    }
    if(MODE_S < 0 || MODE_S > 1){MODE_S = 0;}
    if(!GLITCH_MODE && !BOSS_MODE && !SUPER_MODE)
    {
        if(MODE_S == 0)
        {
            ScriptPrintMessageChatAll(RandomColorChat()+" Selection of mods pseudo-random");
            NORMAL_CHECK++;
            if(NORMAL_CHECK % 2 == 0)
            {
                for(local i = 0; i < NORMAL_MODES.len(); i++)
                {
                    if(NORMAL_MODES[i][0] == null){NORMAL_MODES[i][0] = NORMAL_MODES[i][1];}
                }
            }
            local modes = [];
            for(local i = 0; i < NORMAL_MODES.len(); i++)
            {
                if(NORMAL_MODES[i][0] != null)
                {
                    modes.push(NORMAL_MODES[i]);
                    printl("PUSH MOD: "+NORMAL_MODES[i][0]);
                }
            }
            local rnd_pint = rndint(modes.len());
            local select_mode = modes[rnd_pint][0];
            printl("S MOD: "+select_mode);
            if(modes[rnd_pint][0] != "Normal"){ScriptPrintMessageChatAll(RandomColorChat()+" "+modes[rnd_pint][2]);}
            EntFire(""+modes[rnd_pint][3], "Trigger", "", 0.00, null);
            CURRENT_MOD = select_mode;
            SetNullInArrByString(select_mode);
        }
        if(MODE_S == 1)
        {
            ScriptPrintMessageChatAll(RandomColorChat()+" Selection of mods shuffle");
            local modes = [];
            for(local i = 0; i < NORMAL_MODES.len(); i++)
            {
                if(NORMAL_MODES[i][0] != null)
                {
                    modes.push(NORMAL_MODES[i]);
                    printl("PUSH MOD: "+NORMAL_MODES[i][0]);
                }
            }
            if(modes.len() > 0)
            {
                local rnd_pint = rndint(modes.len());
                local select_mode = modes[rnd_pint][0];
                printl("S MOD: "+select_mode);
                if(modes[rnd_pint][0] != "Normal"){ScriptPrintMessageChatAll(RandomColorChat()+" "+modes[rnd_pint][2]);}
                EntFire(""+modes[rnd_pint][3], "Trigger", "", 0.00, null);
                CURRENT_MOD = select_mode;
                SetNullInArrByString(select_mode);
            }
            else
            {
                for(local i = 0; i < NORMAL_MODES.len(); i++)
                {
                    if(NORMAL_MODES[i][0] == null){NORMAL_MODES[i][0] = NORMAL_MODES[i][1];}
                }
                local rnd_pint = rndint(NORMAL_MODES.len());
                local select_mode = NORMAL_MODES[rnd_pint][0];
                printl("S MOD: "+select_mode);
                if(NORMAL_MODES[rnd_pint][0] != "Normal"){ScriptPrintMessageChatAll(RandomColorChat()+" "+NORMAL_MODES[rnd_pint][2]);}
                EntFire(""+NORMAL_MODES[rnd_pint][3], "Trigger", "", 0.00, null);
                CURRENT_MOD = select_mode;
                SetNullInArrByString(select_mode);
            }
        }
    }
    else
    {
        if(GLITCH_MODE)
        {
            GLITCH_MODE = false;
            local glitch_case = Entities.FindByName(null, "caseGlitchMode_ModeModes");
            EntFireByHandle(glitch_case, "PickRandom", "", 0.00, null, null);
            return;
        }
        if(BOSS_MODE)
        {
            BOSS_MODE = false;
            ScriptPrintMessageChatAll(RandomColorChat()+" *** BONUS ROUND - Boss Mode ***");
            local boss_case = Entities.FindByName(null, "caseWhatBossShouldWeSpawn");
            EntFireByHandle(boss_case, "PickRandom", "", 0.00, null, null);
            return;
        }
        if(SUPER_MODE)
        {
            SUPER_MODE = false;
            local super_case = Entities.FindByName(null, "caseSuperMode_ModeModes");
            EntFireByHandle(super_case, "PickRandom", "", 0.00, null, null);
            return;
        }
    }
    EntFireByHandle(self, "FireUser1", "", 1.00, null, null);
}

function PlaySoundOnClient(indx)
{
    if(indx > MUSIC_ARR.len() || indx < 0 || !MUSIC_ARR[indx][1])return;
    MUSIC_ARR[indx][1] = false;
    EntFireByHandle(self, "RunScriptCode", "MUSIC_ARR["+indx+"][1] = true;", 0.50, null, null);
    self.EmitSound(""+MUSIC_ARR[indx][0]);
}

function TestAllSound()
{
    for(local i = 0; i < MUSIC_ARR.len(); i++)
    {
        self.EmitSound(""+MUSIC_ARR[i][0]);
    }
}

::GetMod <- function()
{
    local base_s = Entities.FindByName(null, "map_brush");
    return base_s.GetScriptScope().CURRENT_MOD;
}

///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

function StartVipMod()
{
    PLAYER_VIP = ReturnRndPlCt();
    PLAYER_VIP.SetHealth(300);
    local light_vip = Entities.FindByName(null, "lightVIP");
    local vip_sprite = Entities.FindByName(null, "vip_sprite");
    light_vip.SetOrigin(Vector(PLAYER_VIP.GetOrigin().x, PLAYER_VIP.GetOrigin().y, PLAYER_VIP.GetOrigin().z+56));
    vip_sprite.SetOrigin(Vector(PLAYER_VIP.GetOrigin().x, PLAYER_VIP.GetOrigin().y, PLAYER_VIP.GetOrigin().z+96));
    // local targetn_vip = UniqueString();
    // EntFireByHandle(PLAYER_VIP, "AddOutput", "targetname "+targetn_vip, 0.00, PLAYER_VIP, null);
    // EntFireByHandle(light_vip, "SetParent", ""+targetn_vip, 0.00, PLAYER_VIP, null);
    // EntFireByHandle(vip_sprite, "SetParent", ""+targetn_vip, 0.00, PLAYER_VIP, null);
    EntFireByHandle(vip_sprite, "ShowSprite", "", 0.00, PLAYER_VIP, null);
    EntFireByHandle(light_vip, "TurnOn", "", 0.00, PLAYER_VIP, null);
    EntFireByHandle(light_vip, "SetParent", "!activator", 0.00, PLAYER_VIP, null);
    EntFireByHandle(vip_sprite, "SetParent", "!activator", 0.00, PLAYER_VIP, null);
    TickVip();
}

function ReturnRndPlCt()
{
    local pl = [];
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid() && PLAYERS[i].handle.GetTeam() == 3 && PLAYERS[i].handle.GetHealth() > 0)
        {
            pl.push(PLAYERS[i]);
        }
    }
    try
    {
        local selected_vip = pl[rndint(pl.len())];
        ScriptPrintMessageChatAll(" \x07 *** VIP selected! VIP "+GetPlayerNickNameByHandle(selected_vip.handle)+" ***");
        return selected_vip.handle;
    }
    catch(error)
    {
        ScriptPrintMessageChatAll(" \x07 *** VIP ERROR | RESTART ROUND ***");
        RestartRound(0,3);
        return;
    }
}

function TickVip()
{
    if(PLAYER_VIP == null || !PLAYER_VIP.IsValid() || PLAYER_VIP.GetTeam() == 2 || PLAYER_VIP.GetHealth() <= 0)
    {
        ScriptPrintMessageChatAll(" \x07 *** VIP IS DIE ***");
        RestartRound(2,3);
    }
    EntFireByHandle(self,"RunScriptCode","TickVip()", 0.50,null,null);
}

function VipBonus()
{
    VIP_BONUS_ITEMS = true;
    EntFire("vip_bonus", "Trigger", "", 0.00, null);
}

function IsPlayerVip()
{
    if(PLAYER_VIP != null && PLAYER_VIP.IsValid() && activator == PLAYER_VIP){return true;}
    else{return false;}
}

///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

//CT END SPAWN 1024 -2048 9264
//T END SPAWN 1024 512 9264

TITAN_PLAYER <- null;

function ZombieHorde()
{
    EntFireByHandle(eventhurt, "Enable", "", 0.00, null, null);
    ZOMBIE_HORDE_PLAYERS = (ReturnCountPlayers()*4).tointeger();
    if(ZOMBIE_HORDE_PLAYERS <= 0)
    {
        ScriptPrintMessageChatAll(" \x08 *** No alive players ***");
        RestartRound(0,3);
    }
    TickHorde();
}

function TickHorde() //if ZOMBIE_HORDE_PLAYERS = 0 disable auto respawn zombie (zr_respawn 0, zr_zspawn 0 in ZHZombiesCounter) and spawn Titan
{
    ScriptPrintMessageCenterAll("-ZOMBIE HORDE-\n-------------------\nThere are "+ZOMBIE_HORDE_PLAYERS+" remaining zombies.\n-------------------");
    if(ZOMBIE_HORDE_PLAYERS <= 0)
    {
        EntFire("ZHZombiesCounter", "Trigger", "", 0.00, null);
        EntFire("templateZWeapon_Titan", "AddOutput", "origin 1600 -2384 -328", 0.00, null);
        EntFire("templateZWeapon_Titan", "ForceSpawn", "", 0.02, null);
        EntFireByHandle(self, "RunScriptCode", "SetTitanPlayer();", 0.05, null, null);
        return;
    }
    // EntFireByHandle(self, "RunScriptCode", "ZOMBIE_HORDE_PLAYERS=0;", 10.00, null, null);
    EntFireByHandle(self, "RunScriptCode", "TickHorde();", 0.50, null, null);
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid() && PLAYERS[i].handle.GetTeam() == 2 && PLAYERS[i].handle.GetHealth() > 500)
        {
            PLAYERS[i].handle.SetHealth(500);
        }
    }
}

function SetTitanPlayer()
{
    local pl = [];
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid() && PLAYERS[i].handle.GetTeam() == 2 && PLAYERS[i].handle.GetHealth() > 0)
        {
            pl.push(PLAYERS[i]);
        }
    }
    try
    {
        TITAN_PLAYER = pl[rndint(pl.len())];
        ScriptPrintMessageChatAll(" \x07 *** Titan selected! Titan "+GetPlayerNickNameByHandle(TITAN_PLAYER.handle)+" ***");
        EntFire("weaponStrip", "Strip", "", 0.00, TITAN_PLAYER.handle);
        EntFire("speedo", "Modifyspeed", "0", 0.00, TITAN_PLAYER.handle);
        EntFire("end_wall_temp", "ForceSpawn", "", 0.00, null);
        EntFire("brush_NoUpperAreas", "Disable", "", 0.00, null);
        TITAN_PLAYER.handle.SetOrigin(Vector(1600,-2384,-328));
        EntFireByHandle(TITAN_PLAYER.handle, "AddOutput", "origin 2000 -2400 256", 1.00, null, null);
        EntFireByHandle(self, "RunScriptCode", "TeleportAllZm();", 2.00, null, null);
        return;
    }
    catch(error)
    {
        ScriptPrintMessageChatAll(" \x07 *** HORDE ERROR | RESTART ROUND ***");
        RestartRound(0,3);
        return;
    }
}

function TeleportAllZm()
{
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null &&
        PLAYERS[i].handle.IsValid() &&
        PLAYERS[i].handle.GetTeam() == 2 &&
        PLAYERS[i].handle.GetHealth() > 0 &&
        PLAYERS[i].handle.GetOrigin().z < 9000 &&
        PLAYERS[i].handle != TITAN_PLAYER.handle)
        {
            PLAYERS[i].handle.SetOrigin(Vector(1024,512,9400));
        }
    }
    EntFireByHandle(self, "RunScriptCode", "TeleportAllZm();", 0.10, null, null);
}

///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
//SuddenDeath
//CT END SPAWN 1024 -2048 9264
//T END SPAWN 1024 512 9264
//CT_ARENA 270 -1345 9010 ang 0 90 0
//T_AREND 270 -190 9010 ang 0 270 0

Sudden_CT <- null;
Sudden_T <- null;

function StartSuddenDeath()
{
    if(ReturnCountCt() == 0 || ReturnCountT() == 0)return;
   // EntFire("brush_NoUpperAreas", "Disable", "", 0.00, null);
    EntFire("SuddenDeath_Template", "ForceSpawn", "", 0.00, null);
    EntFire("end_wall_temp", "ForceSpawn", "", 0.00, null);
    TeleportAllPl();
    EntFireByHandle(self, "RunScriptCode", "TickSudden();", 1.00, null, null);
}

function TickSudden()
{
    EntFireByHandle(self, "RunScriptCode", "TickSudden();", 0.10, null, null);
    if(Sudden_CT == null || Sudden_CT != null && !Sudden_CT.IsValid()){return PickRandomCt();}
    if(Sudden_T == null || Sudden_T != null && !Sudden_T.IsValid()){return PickRandomT();}
    if(Sudden_CT.GetHealth() <= 0 || Sudden_CT.GetOrigin().z <= 8900 || Sudden_CT.GetTeam() == 2)
    {
        EntFireByHandle(Sudden_CT, "SetHealth", "-100", 0.00, null, null);
        Sudden_CT = null;
    }
    if(Sudden_T.GetHealth() <= 0 || Sudden_T.GetOrigin().z <= 8900)
    {
        EntFireByHandle(Sudden_T, "SetHealth", "-100", 0.00, null, null);
        Sudden_T = null;
    }
}

function PickRandomCt()
{
    local rnd_ct = [];
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid() && PLAYERS[i].handle.GetTeam() == 3 && PLAYERS[i].handle.GetHealth() > 0)
        {
            rnd_ct.push(PLAYERS[i].handle);
        }
    }
    try
    {
        Sudden_CT = rnd_ct[rndint(rnd_ct.len())];
        local rnd_spawn_pos = RandomInt(0,5);
        switch(rnd_spawn_pos)
        {
            case 0:
            {
                Sudden_CT.SetOrigin(Vector(270,-1345,9010));
                Sudden_CT.SetAngles(0,90,0);
                break;
            }
            case 1:
            {
                Sudden_CT.SetOrigin(Vector(-55,-1290,9010));
                Sudden_CT.SetAngles(0,55,0);
                break;
            }
            case 2:
            {
                Sudden_CT.SetOrigin(Vector(-250,-1100,9010));
                Sudden_CT.SetAngles(0,36,0);
                break;
            }
            case 3:
            {
                Sudden_CT.SetOrigin(Vector(-305,-770,9010));
                Sudden_CT.SetAngles(0,0,0);
                break;
            }
            case 4:
            {
                Sudden_CT.SetOrigin(Vector(600,-1290,9010));
                Sudden_CT.SetAngles(0,125,0);
                break;
            }
            case 5:
            {
                Sudden_CT.SetOrigin(Vector(795,-1100,9010));
                Sudden_CT.SetAngles(0,140,0);
                break;
            }
        }
    }
    catch(error){return Sudden_CT = null;}
}

function PickRandomT()
{
    local rnd_t = [];
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid() && PLAYERS[i].handle.GetTeam() == 2 && PLAYERS[i].handle.GetHealth() > 0)
        {
            rnd_t.push(PLAYERS[i].handle);
        }
    }
    try
    {
        Sudden_T = rnd_t[rndint(rnd_t.len())];
        local rnd_spawn_pos = RandomInt(0,5);
        switch(rnd_spawn_pos)
        {
            case 0:
            {
                Sudden_T.SetOrigin(Vector(270,-190,9010));
                Sudden_T.SetAngles(0,270,0);
                break;
            }
            case 1:
            {
                Sudden_T.SetOrigin(Vector(600,-245,9010));
                Sudden_T.SetAngles(0,230,0);
                break;
            }
            case 2:
            {
                Sudden_T.SetOrigin(Vector(795,-440,9010));
                Sudden_T.SetAngles(0,205,0);
                break;
            }
            case 3:
            {
                Sudden_T.SetOrigin(Vector(-60,-245,9010));
                Sudden_T.SetAngles(0,310,0);
                break;
            }
            case 4:
            {
                Sudden_T.SetOrigin(Vector(-250,-440,9010));
                Sudden_T.SetAngles(0,325,0);
                break;
            }
            case 5:
            {
                Sudden_T.SetOrigin(Vector(850,-770,9010));
                Sudden_T.SetAngles(0,180,0);
                break;
            }
        }
    }
    catch(error){return Sudden_T=null;}

}

function TeleportAllPl()
{
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid() && PLAYERS[i].handle.GetTeam() == 3 && PLAYERS[i].handle.GetHealth() > 0)
        {
            PLAYERS[i].handle.SetOrigin(Vector(1024,-2048,9400));
            EntFireByHandle(weapon_s, "Strip", "", 0.00, PLAYERS[i].handle, null);
            EntFireByHandle(PLAYERS[i].handle, "AddOutput", "rendermode 0", 0.00, null, null);
            EntFireByHandle(eq_knife, "Use", "", 0.00, PLAYERS[i].handle, null);
            EntFireByHandle(PLAYERS[i].handle, "SetDamageFilter", "", 0.00, null, null);
        }
        if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid() && PLAYERS[i].handle.GetTeam() == 2 && PLAYERS[i].handle.GetHealth() > 0)
        {
            PLAYERS[i].handle.SetOrigin(Vector(1024,512,9400));
            EntFireByHandle(weapon_s, "Strip", "", 0.00, PLAYERS[i].handle, null);
            EntFireByHandle(PLAYERS[i].handle, "AddOutput", "rendermode 0", 0.00, null, null);
            EntFireByHandle(eq_knife, "Use", "", 0.00, PLAYERS[i].handle, null);
            EntFireByHandle(PLAYERS[i].handle, "SetDamageFilter", "", 0.00, null, null);
        }
    }
}

///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

function LoopPlayerCheck()
{
    EntFireByHandle(self, "RunScriptCode", "LoopPlayerCheck();", T_Player_Check, null, null);
    if(PL_HANDLE.len() > 0){PL_HANDLE.clear();}
    EntFireByHandle(g_zone, "FireUser1", "", 0.00, null, null);
    EntFireByHandle(self, "RunScriptCode", "CheckValidInArr();", T_Player_Check*1.5, null, null);
}

class PlayerInfo
{
	userid = null;
	name = null;
	steamid = null;
	handle = null;
    mapper = false;
    noclip = true;
	constructor(_userid,_name,_steamid)
	{
		userid = _userid;
		name = _name;
		steamid = _steamid;
	}
    function ReturnMapper()
    {
        if(this.mapper)
        {
            return true;
        }
        return false;
    }
    function SetMapper()
    {
        if(!this.mapper)
        {
            return this.mapper = true;
        }
    }
    function GetNoclipThis()
    {
        return this.noclip;
    }
    function ToggleNoclip()
    {
        if(this.noclip)
        {
            return this.noclip = false;
        }
        else
        {
            return this.noclip = true;
        }
    }
}

function SetMapper()
{
    if(PLAYERS.len() > 0 && M_STEAM_ID.len() > 0)
    {
        for(local i = 0; i < PLAYERS.len(); i++)
        {
            if(M_STEAM_ID.len() == 1)
            {
                if(PLAYERS[i].steamid == M_STEAM_ID[0])
                {
                    PLAYERS[i].mapper = true;
                }
            }
            else
            {
                for(local a = 0; a < M_STEAM_ID.len(); a++)
                {
                    if(PLAYERS[i].steamid == M_STEAM_ID[a])
                    {
                        PLAYERS[i].mapper = true;
                    }
                }
            }
        }
    }
}

function PlayerConnect()
{
    if(eventlist == null || eventlist != null && !eventlist.IsValid())
    {
        SendToConsoleServer("sv_disable_immunity_alpha 1");
        eventlist = Entities.FindByName(null, "event_player_connect");
    }
    if(eventsay == null || eventsay != null && !eventsay.IsValid())
    {
        eventsay = Entities.FindByName(null, "pl_say");
    }
	local userid = eventlist.GetScriptScope().event_data.userid;
    local name = eventlist.GetScriptScope().event_data.name;
	local steamid = eventlist.GetScriptScope().event_data.networkid;
    local p = PlayerInfo(userid,name,steamid);
    PLAYERS.push(p);
}

function CheckValidInArr()
{
    if(PLAYERS.len() > 0 && once_check)
    {
        local Temp_Player_Arr = [];
        for(local i = 0; i < PLAYERS.len(); i++)
        {
            if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid())
            {
                Temp_Player_Arr.push(PLAYERS[i])
            }
        }
        PLAYERS.clear();
        for(local a = 0; a < Temp_Player_Arr.len(); a++)
        {
            PLAYERS.push(Temp_Player_Arr[a])
        }
        once_check = false;
    }
    return SetMapper();
}

function EventInfo()
{
	local userid = eventinfo.GetScriptScope().event_data.userid;
    if(PLAYERS.len() > 0)
    {
        for(local i=0; i < PLAYERS.len(); i++)
        {
            if(PLAYERS[i].userid == userid)
            {
                PLAYERS[i].handle = TEMP_HANDLE;
                return;
            }
        }
    }
    local p = PlayerInfo(userid,"NOT GETED","NOT GETED");
    p.handle = TEMP_HANDLE;
    PLAYERS.push(p);
}

function Set_Player()
{
    if(!ValidHandleArr(activator))
    {
        PL_HANDLE.push(activator);
    }
}

function Reg_Player()
{
    if(PL_HANDLE.len() > 0)
    {
        EntFireByHandle(self, "RunScriptCode", "Reg_Player();", 0.10, null, null);
        TEMP_HANDLE = PL_HANDLE[0];
        PL_HANDLE.remove(0);
        if(TEMP_HANDLE.IsValid())
        {
            EntFireByHandle(eventproxy, "GenerateGameEvent", "", 0.00, TEMP_HANDLE, null);
        }
        else
        {
            return;
        }
    }
}

function PlayerSay()
{
    try
    {
        if(eventsay == null || eventsay != null && !eventsay.IsValid()){eventsay = Entities.FindByName(null, "pl_say");}
        local userid = eventsay.GetScriptScope().event_data.userid;
        local msg = eventsay.GetScriptScope().event_data.text;
        if(msg.find("!map_ef") != 0){msg = msg.tolower();}
        local get_mapper = GetMapperByUserId(userid);
        if(get_mapper == null || !get_mapper || !MAPPER_COMMANDS)return;
        if(msg.find("!map_ef") == 0) //ent_fire <classname or targetname> <input name> <optional parameter> <optional delay>
        {
            local sp_text = split(msg," ") //@ct addoutput rendermode 6
            if(sp_text.len() < 3)return;
            local input = sp_text[2];
            local parameters = "";
            if(sp_text.len() > 3){parameters = sp_text[3];}
            if(sp_text[1] == "@me")
            {
                if(sp_text.len() > 3)
                {
                    for(local i = 4; i < sp_text.len(); i++){parameters += " "+sp_text[i];}
                }
                EntFireByHandle(GetPlayerByUserID(userid), ""+input, ""+parameters, 0.00, GetPlayerByUserID(userid), null);
            }
            else if(sp_text[1] == "@ct")
            {
                if(sp_text.len() > 3)
                {
                    for(local i = 4; i < sp_text.len(); ++i){parameters += " "+sp_text[i];}
                }
                InputPlayerCt(input, parameters);
            }
            else if(sp_text[1] == "@t")
            {
                if(sp_text.len() > 3)
                {
                    for(local i = 4; i < sp_text.len(); i++){parameters += " "+sp_text[i];}
                }
                InputPlayerT(input, parameters);
            }
            else if(sp_text[1].find("id") == 0)
            {
                local id_tar = split(sp_text[1].tostring(),"id");
                if(sp_text.len() > 3)
                {
                    for(local i = 4; i < sp_text.len(); i++){parameters += " "+sp_text[i];}
                }
                InputPlayerUserid(id_tar[0].tointeger(), input, parameters)
            }
            else
            {
                if(sp_text.len() > 3)
                {
                    for(local i = 4; i < sp_text.len(); i++){parameters += " "+sp_text[i];}
                }
                EntFire(""+sp_text[1], ""+sp_text[2], ""+parameters, 0.00, GetPlayerByUserID(userid));
            }
            ScriptPrintMessageChatAll(" \x04 target:"+sp_text[1]+" \x07 input:"+sp_text[2]+" \x03 par:"+parameters);
        }
        if(msg.find("!map_noclip") == 0)
        {
            local sp_text = split(msg," ")
            if(sp_text.len() < 2)return;
            if(sp_text[1] == "@me")
            {
                SetNoclipM(userid);
                return;
            }
            local uid_m = sp_text[1].tointeger();
            if(uid_m != null)
            {
                SetNoclipM(uid_m);
            }
        }
    }
    catch(error)
    {
        return;
    }
}

// function SetNextModTest(n)
// {
//     if(n < 0 || n > 53)return;
//     NEXT_MODE = n;
//     local boss_case = Entities.FindByName(null, "caseWhatBossShouldWeSpawn");
//     local glitch_case = Entities.FindByName(null, "caseGlitchMode_ModeModes");
//     local super_case = Entities.FindByName(null, "caseSuperMode_ModeModes");
//     if(NEXT_MODE >= 39 && NEXT_MODE < 44){BOSS_MODE = true;n = 0;}
//     if(NEXT_MODE >= 44 && NEXT_MODE < 48){GLITCH_MODE = true;n = 0;}
//     if(NEXT_MODE >= 48 && NEXT_MODE <= 53){SUPER_MODE = true;n = 0;}
    // if(NEXT_MODE == 39)
    // {
    //     EntFireByHandle(boss_case, "FireUser1", "", 0.00, null, null);
    //     EntFire("relayBossSettings", "Trigger", "", 0.00, null);
    // }
    // if(NEXT_MODE == 40)
    // {
    //     EntFireByHandle(boss_case, "FireUser2", "", 0.00, null, null);
    //     EntFire("relayBossSettings", "Trigger", "", 0.00, null);
    // }
    // if(NEXT_MODE == 41)
    // {
    //     EntFireByHandle(boss_case, "FireUser3", "", 0.00, null, null);
    //     EntFire("relayBossSettings", "Trigger", "", 0.00, null);
    // }
    // if(NEXT_MODE == 42)
    // {
    //     EntFireByHandle(boss_case, "FireUser4", "", 0.00, null, null);
    //     EntFire("relayBossSettings", "Trigger", "", 0.00, null);
    // }
    // if(NEXT_MODE == 43)
    // {
    //     EntFireByHandle(boss_case, "InValue", "Medusa", 0.00, null, null);
    //     EntFire("relayBossSettings", "Trigger", "", 0.00, null);
    // }
    // if(NEXT_MODE == 44)
    // {
    //     EntFireByHandle(glitch_case, "InValue", "1", 0.00, null, null);
    // }
    // if(NEXT_MODE == 45)
    // {
    //     EntFireByHandle(glitch_case, "InValue", "2", 0.00, null, null);
    // }
    // if(NEXT_MODE == 46)
    // {
    //     EntFireByHandle(glitch_case, "InValue", "3", 0.00, null, null);
    // }
    // if(NEXT_MODE == 47)
    // {
    //     EntFireByHandle(glitch_case, "InValue", "4", 0.00, null, null);
    // }
    // if(NEXT_MODE == 48)
    // {
    //     EntFireByHandle(super_case, "InValue", "NightmareInSilentHill", 0.00, null, null);
    // }
    // if(NEXT_MODE == 49)
    // {
    //     EntFireByHandle(super_case, "InValue", "FinalFight", 0.00, null, null);
    // }
    // if(NEXT_MODE == 50)
    // {
    //     EntFireByHandle(super_case, "InValue", "MakoTirith", 0.00, null, null);
    // }
    // if(NEXT_MODE == 51)
    // {
    //     EntFireByHandle(super_case, "InValue", "ReallyBadWeather", 0.00, null, null);
    // }
    // if(NEXT_MODE == 52)
    // {
    //     EntFireByHandle(super_case, "InValue", "ApocalypseWow", 0.00, null, null);
    // }
    // if(NEXT_MODE == 53)
    // {
    //     EntFireByHandle(super_case, "InValue", "Weird", 0.00, null, null);
    // }
//     if(NEXT_MODE < 39 && NORMAL_MODES[NEXT_MODE][0] != "Normal"){ScriptPrintMessageChatAll(RandomColorChat()+" NEXT MODE: "+NORMAL_MODES[NEXT_MODE][1]);}
// }

function SetNoclipM(id)
{
    if(GetPlayerClassByUserID(id).handle.IsValid())
    {
        if(GetPlayerClassByUserID(id).GetNoclipThis())
        {
            GetPlayerClassByUserID(id).ToggleNoclip();
            EntFireByHandle(GetPlayerClassByUserID(id).handle, "AddOutput", "movetype 8", 0.00, GetPlayerClassByUserID(id).handle, null);
        }
        else if(!GetPlayerClassByUserID(id).GetNoclipThis())
        {
            GetPlayerClassByUserID(id).ToggleNoclip();
            EntFireByHandle(GetPlayerClassByUserID(id).handle, "AddOutput", "movetype 2", 0.00, GetPlayerClassByUserID(id).handle, null);
        }
    }
}

function InputPlayerCt(_input, _parameter)
{
    local h = null;
	while(null != (h = Entities.FindByClassname(h, "player")))
	{
		if(h != null && h.IsValid() && h.GetHealth() > 0 && h.GetTeam() == 3)
		{
			EntFireByHandle(h, ""+_input, ""+_parameter, 0.00, h, null);
		}
	}
}

function InputPlayerUserid(_uid, _input, _parameter)
{
	EntFireByHandle(GetPlayerByUserID(_uid), ""+_input, ""+_parameter, 0.00, GetPlayerByUserID(_uid), null);
}

function InputPlayerT(_input, _parameter)
{
    local h = null;
	while(null != (h = Entities.FindByClassname(h, "player")))
	{
		if(h != null && h.IsValid() && h.GetHealth() > 0 && h.GetTeam() == 2)
		{
			EntFireByHandle(h, ""+_input, ""+_parameter, 0.00, h, null);
		}
	}
}

function PlayerDeath()
{
    local userid = eventdeath.GetScriptScope().event_data.userid;
    local b = GetPlayerClassByUserID(userid);
    if(b != null && b.handle != null && b.handle.IsValid())
    {
        EntFireByHandle(b.handle, "ClearParent", "", 0.00, b.handle, null);
        EntFireByHandle(b.handle, "SetDamageFilter", "", 0.00, b.handle, null);
        EntFireByHandle(b.handle, "AddOutput", "rendermode 0", 0.00, b.handle, null);
        EntFireByHandle(speed_ent, "ModifySpeed", "1", 0.00, b.handle, null);
        EntFireByHandle(speed_ent, "AddOutput", "gravity 1", 0.00, b.handle, null);
        if(ZOMBIE_HORDE_PLAYERS != null && b.handle.GetTeam() == 2)
        {
            ZOMBIE_HORDE_PLAYERS--;
            if(ZOMBIE_HORDE_PLAYERS <= 0){ZOMBIE_HORDE_PLAYERS = 0;}
        }
    }
}

function ValidHandleArr(h)
{
    foreach(p in PLAYERS)
	{
		if(p.handle == h)
		{
            return true;
		}
	}
	return false;
}

function CheckPlInArr()
{
    if(PLAYERS.len() > 0)
    {
        try
        {
            ScriptPrintMessageCenterAll("ARRAY LEN: "+PLAYERS.len()+
            "\nPL NAME: "+GetPlayerClassByHandle(activator).name+
            "\nPL UID: "+GetPlayerClassByHandle(activator).userid+
            "\nPL STEAMID: "+GetPlayerClassByHandle(activator).steamid+
            "\nHANDLE: "+GetPlayerClassByHandle(activator).handle+
            "\nMAPPER: "+GetPlayerClassByHandle(activator).ReturnMapper());
        }
        catch(error)
        {
            ScriptPrintMessageCenterAll("PLAYER ERROR, TRY RETRY");
        }

    }
    else
    {
        ScriptPrintMessageCenterAll("ARRAY CLEAR");
    }
}

function CheckPlInArrUid(uid)
{
    if(PLAYERS.len() > 0)
    {
        ScriptPrintMessageCenterAll("ARRAY LEN: "+PLAYERS.len()+
        "\nPL NAME: "+GetPlayerClassByUserID(uid).name+
        "\nPL UID: "+GetPlayerClassByUserID(uid).userid+
        "\nPL STEAMID: "+GetPlayerClassByUserID(uid).steamid+
        "\nHANDLE: "+GetPlayerClassByUserID(uid).handle+
        "\nMAPPER: "+GetPlayerClassByUserID(uid).ReturnMapper());
    }
    else
    {
        ScriptPrintMessageCenterAll("ARRAY CLEAR");
    }
}

function GetMapperByUserId(userid)
{
    foreach(p in PLAYERS)
	{
		if(p.userid == userid)
		{
            return p.ReturnMapper();
		}
	}
	return null;
}

function GetPlayerByUserID(userid)
{
	foreach(p in PLAYERS)
	{
		if(p.userid == userid)
		{
            return p.handle;
		}
	}
	return null;
}

function GetPlayerClassByHandle(handle)
{
	foreach(p in PLAYERS)
	{
		if(p.handle == handle)
		{
            return p;
		}
	}
	return null;
}

function GetPlayerClassByUserID(uid)
{
    foreach(p in PLAYERS)
	{
		if(p.userid == uid)
		{
            return p;
		}
	}
	return null;
}

function GetPlayerBySteamId(sid)
{
    foreach(p in PLAYERS)
    {
        if(p.steamid == sid)
        {
            return p.handle;
        }
    }
    return null;
}

function GetPlayerNickNameByHandle(handle)
{
    foreach(p in PLAYERS)
	{
		if(p.handle == handle)
		{
            if(p.steamid == "NOT GETED")
            {
                return "UserId: "+p.userid;
            }
            else
            {
                return "Name: "+p.name;
            }
		}
	}
	return null;
}

::CheckPidarasByHandle <- function()
{
    foreach(p in PLAYERS)
    {
        if(p.handle == activator && p.steamid == "STEAM_1:0:561327146") // INSIDE LITTLE FAGGOT
        {
            // return p.handle.Destroy();
            return EntFireByHandle(p.handle, "SetHealth", "0", 0.00, null, null);
        }
    }
}

function rndint(max)
{
    local roll = 1 * max * rand() / RAND_MAX;
    return roll;
}

function RandomColorChat()
{
    local colors = "\x01 \x02 \x03 \x04 \x05 \x06 \x07 \x08 \x09 \x10 \x0A \x0B \x0C"
    local sp_text = split(colors," ");
    if(sp_text.len() > 0)
    {
        local rnd_color = " "+sp_text[rndint(sp_text.len())];
        return rnd_color;
    }
}

function SetNullInArrByString(str)
{
    for(local i = 0; i < NORMAL_MODES.len(); i++)
    {
        if(NORMAL_MODES[i][0] == str){return NORMAL_MODES[i][0] = null;}
    }
}

function Testf()
{
    for(local i = 0; i < NORMAL_MODES.len(); i++)
    {
        printl("MODE: "+NORMAL_MODES[i][0]+" | "+NORMAL_MODES[i][2]);
    }
    // ScriptPrintMessageChatAll(""+NORMAL_MODES.len());
}

function ReturnCountCt()
{
    local ct_count = 0;
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid() && PLAYERS[i].handle.GetTeam() == 3 && PLAYERS[i].handle.GetHealth() > 0)
        {
            ct_count++;
        }
    }
    return ct_count;
}

function ReturnCountT()
{
    local t_count = 0;
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid() && PLAYERS[i].handle.GetTeam() == 2 && PLAYERS[i].handle.GetHealth() > 0)
        {
            t_count++;
        }
    }
    return t_count;
}

function ReturnCountPlayers()
{
    local pl_count = 0;
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid() && PLAYERS[i].handle.GetHealth() > 0)
        {
            pl_count++;
        }
    }
    return pl_count;
}

function RestartRound(n=0, time=3) //n = team | n = 0 Draw | n = 1 CT | n = 2 T, time = Parameter is how long until the next round starts.
{
    if(n == 0)
    {
        EntFireByHandle(round_end_ent,"EndRound_Draw",""+time, 0.00,null,null);
    }
    else if(n == 1)
    {
        EntFireByHandle(round_end_ent,"EndRound_CounterTerroristsWin",""+time, 0.00,null,null);
    }
    else if(n == 2)
    {
        EntFireByHandle(round_end_ent,"EndRound_TerroristsWin",""+time, 0.00,null,null);
    }
}

function AddGlitch(){GLITCH_COUNT++;}

function RoundEnd_Map()
{
    local pl_win = [];
    foreach(p in PLAYERS)
    {
        if(p.handle != null && p.handle.IsValid() && p.handle.GetTeam() == 3 && p.handle.GetHealth() > 0)
        {
            pl_win.push(p);
        }
    }
    if(pl_win.len() > 0)
    {
        if(CURRENT_MOD == "VIP")
        {
            if(PLAYER_VIP != null && PLAYER_VIP.IsValid() && PLAYER_VIP.GetTeam() == 3 && PLAYER_VIP.GetHealth() > 0)
            {
                printl("ROUND WIN CT");
                SUPER_MODE_TWICE_WIN++;
                VipBonus();
            }
        }
        if(CURRENT_MOD != "VIP"){SUPER_MODE_TWICE_WIN++;}
    }
    else
    {
        printl("ROUND WIN T");
        SUPER_MODE_TWICE_WIN = 0;
    }
}

function UseLadderC()
{
	if(activator.GetHealth() > 0 && activator.GetTeam() == 2)
	{
		EntFireByHandle(self,"FireUser1","", 0.00,null,null);
	}
}

///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

//FIXED Failnades

HE_PUSH <- 500;
HE_RAD <- 384;

function HeDetonate()
{
    if(event_he.GetScriptScope() == null)return;
    local rad = PI / 180;
    local he_pos = Vector(event_he.GetScriptScope().event_data.x,event_he.GetScriptScope().event_data.y,event_he.GetScriptScope().event_data.z);
    local he_userid = event_he.GetScriptScope().event_data.userid;
    DebugDrawCircle(he_pos, Vector(255,0,0), HE_RAD, 64, true, 10.00);
    if(PLAYERS.len() > 0)
    {
        for(local i = 0; i < PLAYERS.len(); i++)
        {
            if(PLAYERS[i].handle != null && PLAYERS[i].handle.GetTeam() == 2 && DistanceCheck3D(he_pos, PLAYERS[i].handle.GetOrigin()) < HE_RAD)
            {
                local delta = he_pos - PLAYERS[i].handle.GetOrigin();
                PLAYERS[i].handle.SetVelocity(Vector((delta.x*rad*HE_PUSH)*-1,(delta.y*rad*HE_PUSH)*-1,HE_PUSH));
            }
        }
    }
}

///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

//FIXED KnockBack
//["player_hurt",["userid","attacker","health","armor","weapon","dmg_health","dmg_armor","hitgroup"]];

FORCE_KNOCKBACK <- 0;
FORCE_KNOCKBACK_Z <- 25;

function PlayerHurt()
{
    if(eventhurt.GetScriptScope() == null)return;
    local userid = eventhurt.GetScriptScope().event_data.userid;
    local attacker = eventhurt.GetScriptScope().event_data.attacker;
    if(attacker == 0)return;
    local weapon_a = eventhurt.GetScriptScope().event_data.weapon;
    if(FORCE_KNOCKBACK == 0 && weapon_a != "knife")return;
    local a_obj = GetPlayerClassByUserID(attacker);
    local uid_obj = GetPlayerClassByUserID(userid);
    if(a_obj != null && a_obj.handle != null && a_obj.handle.GetTeam() == 3 && uid_obj != null && uid_obj.handle != null)
    {
        local rad = PI / 180;
        local delta =  uid_obj.handle.GetOrigin() - a_obj.handle.GetOrigin();
        if(weapon_a != "knife"){uid_obj.handle.SetVelocity(Vector((delta.x*rad*(FORCE_KNOCKBACK*100))*-1,(delta.y*rad*(FORCE_KNOCKBACK*100))*-1,uid_obj.handle.GetVelocity().z+FORCE_KNOCKBACK_Z));}
        else
        {
            local force = FORCE_KNOCKBACK < 0 ? fabs(FORCE_KNOCKBACK) : FORCE_KNOCKBACK
            if(FORCE_KNOCKBACK == 0){force = 1;}
            uid_obj.handle.SetVelocity(Vector(delta.x*(force*50),delta.y*(force*50),700));
        }
        // printl("delta_x: "+delta.x+" | delta_y: "+delta.y+" | delta_z: "+delta.z);
    }
    else
    {
        // printl("NOT VALID");
        return;
    }
}

function SetKnockBackF(n){FORCE_KNOCKBACK = n;}
function SetKnockBackZ(n){FORCE_KNOCKBACK_Z = n;}
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

SNIPERS <- {
    weapon_awp = "weapon_awp"
    weapon_sg556 = "weapon_sg556"
    weapon_g3sg1 = "weapon_g3sg1"
    weapon_scar20 = "weapon_scar20"
    weapon_ssg08 = "weapon_ssg08"
}

function KillAllSnipers()
{
    foreach(i in SNIPERS){EntFire(i, "Kill", "", 0.00, null);}
    EntFireByHandle(self,"RunScriptCode","KillAllSnipers()", 0.01,null,null);
}

function KillAllWeapons()
{
    local w = null;
    while(null != (w = Entities.FindByClassname(w, "weapon_*"))){if(w.GetClassname() != "weapon_knife"){w.Destroy();}}
    EntFireByHandle(self,"RunScriptCode","KillAllWeapons()", 0.01,null,null);
}

function SetAllHp1()
{
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid() && PLAYERS[i].handle.GetHealth() > 0)
        {
            PLAYERS[i].handle.SetHealth(1)
        }
    }
    EntFireByHandle(self,"RunScriptCode","SetAllHp1()", 0.10,null,null);
}

//DebugDrawCircle(Vector center, Vector rgb, float alpha, float radius, bool ztest, float duration)
function DebugDrawCircle(Vector_Center, Vector_RGB, radius, parts, zTest, duration)
{
    if(DEBUG)
    {
        local u = 0.0;
        local vec_end = [];
        local parts_l = parts;
        local radius = radius;
        local a = PI / parts * 2;
        while(parts_l > 0)
        {
            local vec = Vector(Vector_Center.x+cos(u)*radius, Vector_Center.y+sin(u)*radius, Vector_Center.z);
            vec_end.push(vec);
            u += a;
            parts_l--;
        }
        for(local i = 0; i < vec_end.len(); i++)
        {
            if(i < vec_end.len()-1){DebugDrawLine(vec_end[i], vec_end[i+1], Vector_RGB.x, Vector_RGB.y, Vector_RGB.z, zTest, duration);}
            else{DebugDrawLine(vec_end[i], vec_end[0], Vector_RGB.x, Vector_RGB.y, Vector_RGB.z, zTest, duration);}
        }
    }
}

function DistanceCheck3D(obj, obj_2)
{
    local dist = (obj.x-obj_2.x)*(obj.x-obj_2.x)+(obj.y-obj_2.y)*(obj.y-obj_2.y)+(obj.z-obj_2.z)*(obj.z-obj_2.z);
    return sqrt(dist).tointeger();
}

function RandomSpeedAllPlayer()
{
    local rnd_speed = RandomFloat(0.50, 3.00);
    ScriptPrintMessageChatAll(RandomColorChat()+" *** RANDOM SPEED "+rnd_speed+" ***");
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null && PLAYERS[i].handle.IsValid() && PLAYERS[i].handle.GetHealth() > 0)
        {
            EntFireByHandle(speed_ent, "ModifySpeed", ""+rnd_speed, 0.00, PLAYERS[i].handle, null);
            EntFireByHandle(speed_ent, "ModifySpeed", "1.00", 8.00, PLAYERS[i].handle, null);
        }
    }
}

function SetSpeedPlayer(speed, team, time)
{
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null &&
        PLAYERS[i].handle.IsValid() &&
        PLAYERS[i].handle.GetTeam() == team &&
        PLAYERS[i].handle.GetHealth() > 0)
        {
            EntFireByHandle(speed_ent, "ModifySpeed", ""+speed, 0.00, PLAYERS[i].handle, null);
            EntFireByHandle(speed_ent, "ModifySpeed", "1.00", time, PLAYERS[i].handle, null);
        }
    }
}

function SetPlayerImmortality(team, time)
{
    for(local i = 0; i < PLAYERS.len(); i++)
    {
        if(PLAYERS[i].handle != null &&
        PLAYERS[i].handle.IsValid() &&
        PLAYERS[i].handle.GetTeam() == team &&
        PLAYERS[i].handle.GetHealth() > 0)
        {
            EntFireByHandle(PLAYERS[i].handle, "AddOutput", "rendermode 10", 0.00, PLAYERS[i].handle, null);
            EntFireByHandle(PLAYERS[i].handle, "SetDamageFilter", "NoDamage", 0.00, PLAYERS[i].handle, null);
            EntFireByHandle(PLAYERS[i].handle, "AddOutput", "rendermode 0", time, PLAYERS[i].handle, null);
            EntFireByHandle(PLAYERS[i].handle, "SetDamageFilter", "", time, PLAYERS[i].handle, null);
        }
    }
}

//CT END SPAWN 1024 -2048 9264
//T END SPAWN 1024 512 9264
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////