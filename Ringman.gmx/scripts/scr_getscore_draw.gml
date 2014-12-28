

highlight = 0;//resets globalHighscore to 0, so that the highlight can be drawn again 
//if the player clicks between local and global multiple times.

for(i:=1; i<=10; i+=1) //loops the following code 10 times
  {
    //------------Draw Username-----------------------------
    if(gms_player[i]==global.profileName && gms_score[i]==score && highlight == 0)
    {
        draw_set_color(c_yellow);//playerScore color
        globalHighlight = 1; //sets the globalHighscore to 1 to prevent multiple highlighted scores
    }
    else
    {   
        draw_set_color($cf57cb); //Default color
    }
    draw_set_halign(fa_left); //Aligns the username to the left
    draw_text(argument0,argument1+(i-1)*(argument3-argument1)/10,gms_player[i]); //Draws the username from the variable result
    //-------------------------------------------------------
    
    
    //------------Draw Score---------------------------------
    draw_set_halign(fa_right); //Aligns the score to the right
    draw_text(argument2,argument1+(i-1)*(argument3-argument1)/10,gms_score[i]); //Draws the score from the variable result
    //------------------------------------------------------- 
  }
  draw_set_halign(fa_left); //Resets the alignment to left (without this all of the text in the game would be shifted

