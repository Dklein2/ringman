//GMH Example - Version 1.3

//argument0 = name
//argument1 = game id
//argument2 = score
//argument3 = verify1
//argument4 = verify2
//argument5 = verify3

//submits score with the name specified, for the game with the game id specified
//you can find the verify numbers and the game id for your games by clicking

var verify, site, act, result;

verify = round((argument2 + argument3)/argument4) mod argument5;

site = "http://www.gmhighscores.com/newhighscore_action.php?game=" + string(argument1) + "&score=" + string(argument2) + "&verify=" + string(verify) + "&user=" + argument0 ;

act = external_define("NetRead.dll","NetRead",1,1,2,1,1);
result = external_call(act,site,"10");

//show_debug_message("GMHsubmit:site:" + site);
//show_debug_message("GMHsubmit:result:" + result);

return 0;
