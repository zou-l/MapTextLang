
function chusi(){
	if(activator.GetMaxHealth() == 60000){
		EntFireByHandle(activator, "SetHealth", "-999999", 1.50, null, null);
		EntFireByHandle(activator, "SetHealth", "-999999", 1.80, null, null);
		EntFireByHandle(activator, "SetHealth", "-999999", 2.00, null, null);
		EntFireByHandle(activator, "SetHealth", "-999999", 2.50, null, null);
		EntFireByHandle(activator, "SetHealth", "-999999", 3.00, null, null);
		EntFireByHandle(activator, "SetHealth", "-999999", 3.50, null, null);
		EntFireByHandle(activator, "SetHealth", "-999999", 4.00, null, null);
		EntFireByHandle(activator, "SetHealth", "-999999", 5.00, null, null);
		EntFireByHandle(activator, "SetHealth", "-999999", 6.00, null, null);
		EntFireByHandle(activator, "AddOutput", "max_health 100", 0.0, null, null);
		EntFireByHandle(activator, "AddOutput", "rendermode 0", 0.0, null, null);
		EntFireByHandle(activator, "SetDamageFilter", "", 0.0, null, null);
		EntFireByHandle(activator, "SetDamageFilter", "", 3.0, null, null);
		EntFireByHandle(activator, "SetDamageFilter", "", 5.9, null, null);
  		EntFire("speedmod", "modifyspeed", "0", 0.0, activator);
   		 EntFire("speedmod", "modifyspeed", "0", 0.2, activator);
    		EntFire("speedmod", "modifyspeed", "0", 0.4, activator);
   		 EntFire("speedmod", "modifyspeed", "0", 0.6, activator);
  		EntFire("speedmod", "modifyspeed", "0", 0.8, activator);
  		EntFire("speedmod", "modifyspeed", "0", 1.0, activator);
   		 EntFire("speedmod", "modifyspeed", "0", 1.2, activator);
   		 EntFire("speedmod", "modifyspeed", "0", 1.4, activator);
   		 EntFire("speedmod", "modifyspeed", "0", 1.6, activator);
  		EntFire("speedmod", "modifyspeed", "0", 1.8, activator);
   		EntFire("speedmod", "modifyspeed", "0", 2.0, activator);
    		EntFire("speedmod", "modifyspeed", "0", 2.2, activator);
		 EntFire("speedmod", "modifyspeed", "0", 2.4, activator);
   		 EntFire("speedmod", "modifyspeed", "0", 2.6, activator);
   		 EntFire("speedmod", "modifyspeed", "0", 2.8, activator);
	}
}



function rld()
{
	ScriptPrintMessageChatAll("koyo");
}
