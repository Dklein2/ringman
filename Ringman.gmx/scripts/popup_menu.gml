with (menu_onj) instance_destroy();
var ID=instance_create(argument0,argument1,menu_obj);
ID.mytext = string_replace_all (argument2,"#","\#");
io_clear();
return ID;


