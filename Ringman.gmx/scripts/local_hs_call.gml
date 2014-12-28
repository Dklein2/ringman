ini_open("localHighscore.ini");
localScore_grid = ds_grid_create(2,10);

ds_grid_set(localScore_grid,0,0, ini_read_real('highscores','1',0));
ds_grid_set(localScore_grid,1,0, ini_read_string('highscores','u1',''));
ds_grid_set(localScore_grid,0,1, ini_read_real('highscores','2',0));
ds_grid_set(localScore_grid,1,1, ini_read_string('highscores','u2',''));
ds_grid_set(localScore_grid,0,2, ini_read_real('highscores','3',0));
ds_grid_set(localScore_grid,1,2, ini_read_string('highscores','u3',''));
ds_grid_set(localScore_grid,0,3, ini_read_real('highscores','4',0));
ds_grid_set(localScore_grid,1,3, ini_read_string('highscores','u4',''));
ds_grid_set(localScore_grid,0,4, ini_read_real('highscores','5',0));
ds_grid_set(localScore_grid,1,4, ini_read_string('highscores','u5',''));
ds_grid_set(localScore_grid,0,5, ini_read_real('highscores','6',0));
ds_grid_set(localScore_grid,1,5, ini_read_string('highscores','u6',''));
ds_grid_set(localScore_grid,0,6, ini_read_real('highscores','7',0));
ds_grid_set(localScore_grid,1,6, ini_read_string('highscores','u7',''));
ds_grid_set(localScore_grid,0,7, ini_read_real('highscores','8',0));
ds_grid_set(localScore_grid,1,7, ini_read_string('highscores','u8',''));
ds_grid_set(localScore_grid,0,8, ini_read_real('highscores','9',0));
ds_grid_set(localScore_grid,1,8, ini_read_string('highscores','u9',''));
ds_grid_set(localScore_grid,0,9, ini_read_real('highscores','10',0));
ds_grid_set(localScore_grid,1,9, ini_read_string('highscores','u10',''));
ini_close();
//===========================================

