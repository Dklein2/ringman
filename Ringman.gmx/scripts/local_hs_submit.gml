             ini_open(working_directory + "\local_highscore.ini")
            for (i = 1; i<=10; i++)
            {
                global.score_array[i, 0] = ini_read_string(string(i), "User", "");
                global.score_array[i, 1] = ini_read_real(string(i), "Score", 0);
            }
            ini_close();
            
            //search for first spot where player's score is greater
            for (i = 1; i<=10; i++)
            {
                //if the player's score is greater than the spot in question
                if (score > global.score_array[i, 1])
                {
                    //starting at the last element of the array, set each element to the one before it.
                    for (j = 10; j>i; j--)
                    {
                        global.score_array[j, 0] = global.score_array[j-1, 0];
                        global.score_array[j, 1] = global.score_array[j-1, 1];
                    }
                    
                    //now set the space to that of this player
                    global.score_array[i, 0] = global.profileName;
                    global.score_array[i, 1] = score;
                    break;
                }
            }
            
            //now update ini with this new array
            ini_open(working_directory + "\local_highscore.ini")
            for (i = 1; i<=10; i++)
            {
                ini_write_string(string(i), "User", global.score_array[i, 0]);
                ini_write_real(string(i), "Score", round(global.score_array[i, 1]));
            }
            ini_close();//don't forget to close
 
