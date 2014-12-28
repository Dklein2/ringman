//GMH Example - Version 1.3

//argument0 = place
//argument1 = game id

//returns the name of the player who got the place specified

var site, act, result;

site = "http://www.gmhighscores.com/highscoreuser_man.php?gameid=" + string(argument1) + "&place=" + string(argument0);

//uncomment the line below if you want highscores to appear smallest to largest. (don't forget to do the same in hs_score)
//site = site + "&reverse=1";

act = external_define("NetRead.dll","NetRead",1,1,2,1,1);
result = external_call(act,site,"1000");

show_debug_message("GMHgetuser:site:" + site);
show_debug_message("GMHgetuser:result:" + result);

return result;
