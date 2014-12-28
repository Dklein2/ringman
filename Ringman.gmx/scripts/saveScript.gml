//-------Script:saveScript-----------------------------//
//-------Studio:Awesome game studio (real name T.B.A.)------//
//-------Creator: David Klein II----------------------------//

//This code reads the arguments inputed and saves them to a saveSlot(#).ini
//file. This code is ment to be used as an example, when you set this code up
//be sure to change the sections, keys, arguments to fit your game.


//Here is an example of the function used to write to the file:

//-----------------------------------------------//
//      Example ini_write_string function        //
//===============================================//
//    ini_write_string(section,key,argument);    //
//-----------------------------------------------//


//Here is an example of how an ini file looks:

//----------------------//
//  EXAMPLE INI FILE    //
//======================//
// 
// Section              //
//      key = argument  //
//      key = argument  //
//      key = argument  //
//      key = argument  //
// Section              //
//      key = argument  //
//      key = argument  //
//----------------------//

//To use this code:
//  1. Organize the code to fit your needs,
//  2. Create a save button,
//  3. Create an LEFT PRESSED event,
//  3. Insert an EXECUTE CODE and use saveScript(argument0,argument1.....); 
//   DO NOT USE EXECUTE SCRIPT: EXECUTE SCRIPT only supports 5 arguments.




ini_open("saveSlot"+argument0+".ini"); // Opens the ini file, argument0 will tell what number the save slot is (for having multiple saves)

ini_write_string("Profile","username","argument0"); //This will write the players username.

ini_write_string("Position","room",argument1); //This saves the room number that the player is in.
ini_write_string("Position","posX",argument1); //This saves the players X Position.
ini_write_string("Position","posY",argument2); //This saves the players Y Position.
ini_write_string("Position","angle",argument3); //This saves the angle that the player is facing.

ini_write_string("Vitals","playerLevel",argument4); //This saves the players level
ini_write_string("Vitals","healthHas",argument5); //This saves the amount of health the player currently has
ini_write_string("Vitals","healthMax",argument5); //This saves the amount max of health the player can have
ini_write_string("Vitals","manaHas",argument6); //This saves the amount of 'mana' a player currentlyhas
ini_write_string("Vitals","manaHas",argument6); //This saves the amount max of 'mana' the player can have
ini_write_string("Vitals","staminaHas",argument7); //This saves the amount of stamina the player currently has
ini_write_string("Vitals","staminaHas",argument7); //This saves the amount max of stamina the player can have

//MAKE ONE OF THESE FOR EACH ITEM/QUEST YOU HAVE

ini_write_string("Inventory","item",argument8); //This saves the amount of an item a player has, replace item with the name of the item you want to write

ini_write_string("Equipped","item",argument9);//This will save the items a player has equipped, replace item with the name of the item you want to write
                                              // and send a 0 or a 1 to tell if it is equipped

ini_write_string("Completed Quests","quest#IsComplete",argument10); //This will save if a quest has been complete, replace the number with the number of a quest
                                                                    //Or a quest name.

ini_write_string("Side Quests","quest#IsComplete",argument11); //This will save if a side quest has been complete, replace the number with the number of the 
                                                               //side quest or a side quest name.



ini_close(); //Closes the ini file
