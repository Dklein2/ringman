highlight = 0;

ini_open(working_directory + "\local_highscore.ini")
         for(i=1;i<=10;i++) 
            {
            
            
                if(ini_read_string(string(i),"User","")==global.profileName && ini_read_real(string(i),"Score",0)==score && highlight == 0)
                {
                    draw_set_color(c_yellow);//playerScore color
                    highlight = 1; //sets the globalHighscore to 1 to prevent multiple highlighted scores
                }
                else
                {   
                    draw_set_color($cf57cb); //Default color
                }
                
                draw_set_halign(fa_left); //Aligns the username to the left
                draw_text(argument0,argument1+(i-1)*(argument3-argument1)/10,ini_read_string(string(i),"User",""));
                
                draw_set_halign(fa_right); //Aligns the score to the right
                draw_text(argument2,argument1+(i-1)*(argument3-argument1)/10,round(ini_read_real(string(i),"Score",0))); //Draws the score from the variable result
                
            }
            draw_set_halign(fa_left);
            ini_close();
