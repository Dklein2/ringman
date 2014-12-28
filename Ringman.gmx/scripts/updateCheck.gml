if (deviceManagement == 0)
{
    
    var result, evid;
    evid = ds_map_find_value(async_load, "id");
    
    switch (evid) {
        case async_ini: 
            result = ds_map_find_value(async_load, "result");
            file = file_text_open_write("ringmanConfig.ini");
            file_text_write_string(file,result);
            file_text_close(file);
            break;
            }
    ini_open("config.ini");
        str = ini_read_string('version', 'number',"");
    ini_close();
    
    if(str > '1') {
        room_goto(12);
    }
    else
    {
        instance_destroy();
    }
}
