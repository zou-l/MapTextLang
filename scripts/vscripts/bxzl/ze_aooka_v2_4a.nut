bxzl_text <- null;
bxzl_firstline_time <- 0.0;
bxzl_secondline_time   <-  0.0;
bxzl_thirdline_time <- 0.0;
bxzl_fourthline_time <- 0.0;
bxzl_firstline_text  <-  "";
bxzl_secondline_text <-  "";
bxzl_thirdline_text <-  "";
bxzl_fourthline_text <-  "";
idx_time  <- 0.0;

bxzl_text_array <- [
    { 
        array_message="落星陨芒 - 开奶硬抗或者用金轮消除 - BOSS战开始和结束时释放"
        array_holdtime=5.0
    },

    {
        array_message="聚魂引 - 僵尸传送至BOSS正下方 - BOSS战开始后90秒时释放"
        array_holdtime=5.0
    },

    { 
        array_message="魂出电入 - 地面深色区域火焰伤害,且不要在左右两边有闪电的安全区"
        array_holdtime=5.0
    },

    { 
        array_message="锁星 - BOSS反伤(提前去BOSS正下方,下个技能必定解星)"
        array_holdtime=5.0
    },

    { 
        array_message="解星 - 全屏伤害,去BOSS正下方"
        array_holdtime=2.0
    },

    { 
        array_message="星夜问灵 - BOSS回血(提前蹲下,下个技能必定天罚非罪)"
        array_holdtime=3.0
    },

    { 
        array_message="天罚非罪 - 蹲下,上范围的伤害"
        array_holdtime=2.0
    },

    { 
        array_message="月离于毕 - 头顶九宫格天坠"
        array_holdtime=5.0
    },

    { 
        array_message="诸魂雁镇 - 场地三魂色伤害,去没有提到的颜色位置"
        array_holdtime=5.0
    },

    { 
        array_message="红 紫 绿 - 去白色区域"
        array_holdtime=4.0
    },

    { 
        array_message="白 紫 绿 - 去红色区域"
        array_holdtime=4.0
    },

    { 
        array_message="红 白 绿 - 去紫色区域"
        array_holdtime=4.0
    },

    { 
        array_message="红 紫 白 - 去绿色区域"
        array_holdtime=4.0
    },
];

function Say_ScriptDate()
{
	bxzl_text = Entities.FindByName(null,"bxzl_text");
	EntFire("cmd","Command","say script by bxzl(冰雪葬泪) on 2021.06.17",0.00,null);
}


function Bxzl_DisplayText(bxzl_displaytime) 
{    
    local bxzl_message = "";
	if (bxzl_text == null)
    {
        return;
    }
    if (bxzl_displaytime>0.0)
    {
        if (bxzl_firstline_text=="" && bxzl_secondline_text=="" && bxzl_thirdline_text=="" && bxzl_fourthline_text=="" )
        {
            EntFire("cmd","Command","say 1215",0.00,null);
            return;
        }
        bxzl_message = bxzl_firstline_text.tostring() + "\n" + bxzl_secondline_text.tostring() + "\n" + bxzl_thirdline_text.tostring() + "\n" + bxzl_fourthline_text.tostring();
        bxzl_text.__KeyValueFromString("message", bxzl_message);
        EntFireByHandle(bxzl_text, "Display", "", 0, bxzl_text, bxzl_text);
        bxzl_displaytime = bxzl_displaytime - 0.1;
        EntFireByHandle(self,"RunScriptCode","Bxzl_DisplayText(" + bxzl_displaytime + ")",0.1,null,null);
    }
}

function Bxzl_SetText(bxzl_idx)
{
    if (bxzl_firstline_text == "")
    {
        bxzl_firstline_text = bxzl_text_array[bxzl_idx].array_message;
        idx_time = bxzl_text_array[bxzl_idx].array_holdtime;
        EntFireByHandle(self, "RunScriptCode", "Bxzl_DisplayText(idx_time);", 0.00, null, null);
        EntFireByHandle(self,"RunScriptCode","bxzl_firstline_text="+"\""+"\"",idx_time+0.4,null,null);
    }
    else if (bxzl_secondline_text == "")
    {
        bxzl_secondline_text = bxzl_text_array[bxzl_idx].array_message;
        idx_time = bxzl_text_array[bxzl_idx].array_holdtime;
        EntFireByHandle(self, "RunScriptCode", "Bxzl_DisplayText(idx_time);", 0.00, null, null);
        EntFireByHandle(self,"RunScriptCode","bxzl_secondline_text="+"\""+"\"",idx_time+0.4,null,null);
    }
    else if (bxzl_thirdline_text == "")
    {
        bxzl_thirdline_text = bxzl_text_array[bxzl_idx].array_message;
        idx_time = bxzl_text_array[bxzl_idx].array_holdtime;
        EntFireByHandle(self, "RunScriptCode", "Bxzl_DisplayText(idx_time);", 0.00, null, null);
        EntFireByHandle(self,"RunScriptCode","bxzl_thirdline_text="+"\""+"\"",idx_time+0.4,null,null);      
    }
    else if (bxzl_fourthline_text == "")
    {
        bxzl_fourthline_text = bxzl_text_array[bxzl_idx].array_message;
        idx_time = bxzl_text_array[bxzl_idx].array_holdtime;
        EntFireByHandle(self, "RunScriptCode", "Bxzl_DisplayText(idx_time);", 0.00, null, null);
        EntFireByHandle(self,"RunScriptCode","bxzl_fourthline_text="+"\""+"\"",idx_time+0.4,null,null);        
    }
}
