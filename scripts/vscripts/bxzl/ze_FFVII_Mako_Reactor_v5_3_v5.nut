bxzl_text <- null;
bxzl_timer <- null;
bxzl_door_time <- 0;
bxzl_holy_time   <-  0;
bxzl_elevator_time <- 0;
bxzl_first_line  <-  "";
bxzl_second_line <-  "";
bxzl_thrid_line <-  "";

function Say_ScriptDate()
{
		bxzl_text = Entities.FindByName(null,"bxzl_text");
        bxzl_timer = Entities.FindByName(null,"bxzl_timer");
		EntFire("consola","Command","say script by bxzl on 2021.06.05",0.00,null);
}

function bxzl_check_text()
{
        if( (bxzl_door_time==0) && (bxzl_holy_time==0) && (bxzl_elevator_time==0) )
        {
            EntFire("bxzl_timer","Disable","",0.00,null);
        }
        else
        {
            if(bxzl_door_time>0)
            {
                bxzl_first_line = "大门将在"+bxzl_door_time.tostring()+"秒后打开";
                EntFireByHandle(caller,"RunScriptCode","bxzl_door_time-=1;",1.00,null,null);
            }
            else
            {
                bxzl_first_line = "";
            }
            if(bxzl_holy_time>0)
            {
                bxzl_second_line = "终极将在"+bxzl_holy_time.tostring()+"秒生效";
                EntFireByHandle(caller,"RunScriptCode","bxzl_holy_time-=1;",1.00,null,null);
            }
            else
            {
                bxzl_second_line = "";
            }
            if(bxzl_elevator_time>0)
            {
                bxzl_thrid_line = "电梯将在"+bxzl_elevator_time.tostring()+"秒后离开";
                EntFireByHandle(caller,"RunScriptCode","bxzl_elevator_time-=1;",1.00,null,null);
            }
            else
            {
                bxzl_thrid_line = "";
            }
            bxzl_text.__KeyValueFromString("message", bxzl_first_line.tostring()+"\n"+bxzl_second_line.tostring()+"\n"+bxzl_thrid_line.tostring());
        }
}
