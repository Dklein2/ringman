
var site, act, result;
act = external_define("NetRead.dll","NetRead",1,1,2,1,1);
for(i:=1; i<=10; i+=1)
  {
  
    draw_set_color(c_red); //default color
    draw_set_halign(fa_left); 
    //draw name
    site = "http://www.gmhighscores.com/highscoreuser_man.php?gameid=" + "3880"+ "&place=" + string(i);
    result = external_call(act,site,"1000");
    if (result = "0")
    {   
        result = "<Nobody>";
    }
    draw_text(argument0,argument1+(i-1)*(argument3-argument1)/10,result);
    
    draw_set_halign(fa_right);
     //draw score
    site = "http://www.gmhighscores.com/highscorescore_man.php?gameid=" + "3880" + "&place=" + string(i);
    result = external_call(act,site,"10000");
    draw_text(argument2,argument1+(i-1)*(argument3-argument1)/10,result);
    
  }
  
  
  // try saving everything to an ini file and reading it to display the scores
  // after when the room is closed delete the ini file, do this also when the room first opens 
  // so that there wont be any issues where the scores dont reset
