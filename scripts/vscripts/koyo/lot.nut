function chusi(){
	if(activator.GetMaxHealth() == 60000){
		EntFireByHandle(activator, "SetHealth", "-999999", 0.30, null, null);
		EntFireByHandle(activator, "AddOutput", "max_health 100", 0.0, null, null);
		EntFireByHandle(activator, "AddOutput", "rendermode 0", 0.0, null, null);
		EntFireByHandle(activator, "SetDamageFilter", "", 0.0, null, null);
  	EntFireByHandle("speedmod", "modifyspeed", 0, 0.0, null, null);
    EntFireByHandle("speedmod", "modifyspeed", 0, 0.2, null, null);
    EntFireByHandle("speedmod", "modifyspeed", 0, 0.4, null, null);
    EntFireByHandle("speedmod", "modifyspeed", 0, 0.6, null, null);
  	EntFireByHandle("speedmod", "modifyspeed", 0, 0.8, null, null);
  	EntFireByHandle("speedmod", "modifyspeed", 0, 1.0, null, null);
    EntFireByHandle("speedmod", "modifyspeed", 0, 1.2, null, null);
    EntFireByHandle("speedmod", "modifyspeed", 0, 1.4, null, null);
    EntFireByHandle("speedmod", "modifyspeed", 0, 1.6, null, null);
  	EntFireByHandle("speedmod", "modifyspeed", 0, 1.8, null, null);
   	EntFireByHandle("speedmod", "modifyspeed", 0, 2.0, null, null);
    EntFireByHandle("speedmod", "modifyspeed", 0, 2.2, null, null);
    EntFireByHandle("speedmod", "modifyspeed", 0, 2.4, null, null);
    EntFireByHandle("speedmod", "modifyspeed", 0, 2.6, null, null);
    EntFireByHandle("speedmod", "modifyspeed", 0, 2.8, null, null);
	}
}
