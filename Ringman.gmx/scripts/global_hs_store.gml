//-------Script: global_hs_write-----------------------------//
//-------Studio:Awesome game studio (real name T.B.A.)------//
//-------Creator: David Klein II----------------------------//


//This script reads the usernames and highscores from http://www.gmhighscores.com  
//and saves them to a .ini file called 'global_hs.ini' Before you use this code, 
//create an account on http://www.gmhighscores.com and set up a game page for your game.

//====== WARNING EXECUTING THIS SCRIPT WILL CAUSE UP TO 10 SECONDS OF LAG =========== //

//To use this code:
//  1. Download the examples file from http://gmhighscores.com/services.php,
//  2. Extract the folder,
//  3. In gameMaker, right click the included files group on the resource tree,
//  4. Click create included file and navigate to the example folder gmh_example4,
//  5. Select 'NetRead.dll',
//  6. Create an object,
//  7. Give the object a button sprite,
//  7. Create a LEFT RELEASE event in the object
//  8. Either insert an EXECUTE CODE or EXECUTE SCRIPT,
//       A. If EXECUTE CODE use    global_hs_write(argument0,argument1,argument2,argument3); 



// All of the information for the arguments is located at http://gmhighscores.com/account.php
// Beside your registered game. 

//------------Arguments-------------//
//==================================//
//  argument0: Game ID              //
//  argument1: Verify 1             //
//  argument2: Verify 2             //
//  argument3: Verify 3             //
//----------------------------------//


// In order to not have unneccesary lag I recommend setting up a variable that will let this script only run once
// while the room is open. I also recommend having local highscores show up first and let the user activate this by clicking
// The object, but you dont have to do that, you can put it in the create event of the object (BY DOING THIS YOU WILL HAVE A 10
//SECOND PAUSE BEFORE THE ROOM LOADS.




ini_open ("global_hs.ini"); // Opens 'global_hs.ini'  
var site, act, result; // Instantiates the variables site, act and result
act = external_define("NetRead.dll","NetRead",1,1,2,1,1);// creates an external function from netread.dll and stores it into the variable 'act'


for(i:=1; i<=10; i+=1)//loops the following code 10 times
  {
  
   

    //----------initiate usernames in global_hs.ini----------------
    
    site = "http://www.gmhighscores.com/highscoreuser_man.php?gameid=" + "3880"+ "&place=" + string(i); // Stores the website url (for the highscore usernames) into the variable 'site'
    result = external_call(act,site,"1000"); //Reads the username from the website and inputs it into the 'result' variable
    if (result = "0")         //
    {                         //If there isn't enough highscores to fill all 10 places on the leaderboard replace the blank usernames (0's) with '<Nobody>'
        result = "<Nobody>";  //
    }
    ini_section_delete("userRank"+string(i)); //Deletes the section before writing, this guarantees that the user isnt getting old scores.
    ini_write_string("userRank"+string(i),"name",result); //This is writing the username from the 'result' variable into the 'name' key in the section 'userRank(#)' of 'global_hs.ini
    //--------------------------------------------------------------
    
    
 
    //-------------initiate score in global_hs.ini------------------

    site = "http://www.gmhighscores.com/highscorescore_man.php?gameid=" + "3880" + "&place=" + string(i); // Stores the website url (for the highscore scores) into the variable 'site'

    result = external_call(act,site,"10000"); //Reads the score from the website and inputs it into the 'result' variable
    ini_write_string("userRank"+string(i),"score",result); //This is writing the score from the 'result' variable into the 'score' key in the section 'userRank(#)' of 'global_hs.ini
    //--------------------------------------------------------------
    
  }
  
ini_close();      //Closes 'global_hs.ini' 





