//used in the asynchronus http event of object_getscore
//listens for the string that scr_get_gmscore will fetch from the server.

gmscoreboard_data = "";
if ds_map_exists(async_load, "status"){
gmscoreboard_data = ds_map_find_value(async_load, "result" );

if string_length(gmscoreboard_data) > 8 && string_pos(gmscoreboard_data,"href") <= 0{

//strip slashes
gmscoreboard_data = string_replace_all(gmscoreboard_data,'/','');
gmscoreboard_data = string_replace_all(gmscoreboard_data,'\','');

//converts to ds_map
gmscoreboard_datamap = json_decode(gmscoreboard_data);
if ds_map_exists(gmscoreboard_datamap,"p1"){
//this feeds the ds_map into an array for player names(string), and one for scores(real).
i = 1;
repeat(10){
gms_player[i] = string(ds_map_find_value(gmscoreboard_datamap,"p"+string(i)));
gms_score[i] = real(ds_map_find_value(gmscoreboard_datamap,"s"+string(i)));
show_debug_message(string(ds_map_find_value(gmscoreboard_datamap,"p"+string(i))));
i+=1;}
ds_map_destroy(gmscoreboard_datamap); }


}
}
