//-------Script: global_hs_draw-----------------------------//
//-------Studio:Awesome game studio (real name T.B.A.)------//
//-------Creator: David Klein II----------------------------//

//This code reads the highscores stored in the 'global_hs.ini' file created by the 'global_hs_store" script
//and stores draws the highscore list in a box defined by the scripts 4 arguments.


//To use this code:
//  1. Create an object,
//  2. Create a draw event in the object,
//  3. Either insert an EXECUTE CODE or EXECUTE SCRIPT,
//       A. If EXECUTE CODE use    global_hs_draw(argument0,argument1,argument2,argument3); 


//------------Arguments-------------//
//==================================//
//  argument0: left x value of box  //
//  argument1: top y value of box   //
//  argument2: right x value of box //
//  argument3: bottom y value of box//
//----------------------------------//




ini_open("global_hs.ini"); //Opens the highscore file, if there is no file it creates one
for(i:=1; i<=10; i+=1) //loops the following code 10 times
  {
    //------------Draw Username-----------------------------
    draw_set_color(c_red); //Default color
    draw_set_halign(fa_left); //Aligns the username to the left
    result= ini_read_string("userRank"+string(i),"name","Network Error"); //Reads the ini file and stores the "name" in the variable result
    //If there is no name for that section it replaces the username with "Network Error"
    draw_text(argument0,argument1+(i-1)*(argument3-argument1)/10,result); //Draws the username from the variable result
    //-------------------------------------------------------
    
    
    //------------Draw Score---------------------------------
    draw_set_halign(fa_right); //Aligns the score to the right
    result = ini_read_string("userRank"+string(i),"score","error"); //Reads the ini file and stores the "score" in the variable result
    //If there is no name for that section it replaces the score with "Network Error"
    draw_text(argument2,argument1+(i-1)*(argument3-argument1)/10,result); //Draws the score from the variable result
    //------------------------------------------------------- 
  }
  draw_set_halign(fa_left); //Resets the alignment to left (without this all of the text in the game would be shifted
  ini_close(); //Closes the ini file
