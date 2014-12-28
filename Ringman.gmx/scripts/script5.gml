newPopUp = instance_create(mouse.x, mouse.y, obj_popup);
newPopUp.numberOfItems = 2;

newPopUp.itemText[0] = "man Mode";
newPopUp.itemText[1] = "Pig Mode";
//newPopUp.itemText[1] = "temp art Mode";

newPopUp.action[0] = "modeSelect = 0;";
newPopUp.action[1] = "modeSelect = 1;";
//newPopUp.action[2] = "modeSelect = 2;";
