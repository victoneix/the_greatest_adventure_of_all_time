cell_s = 8;
cell_w = room_width div cell_s;
cell_h = room_height div cell_s;
level = 0;

//map = ds_grid_create(cell_w, cell_h);
//ds_grid_clear(map, -1);


//for(var i = 0; i < cell_w; i ++){
//	for(var j = 0; j < cell_h; j ++){
//		map[# i, j] = 1;
//	}
//}

var _layer = layer_get_id("Wall");
var _map = layer_tilemap_get_id(_layer);

for(var _xx = 0; _xx < cell_w; _xx++){
	for(var _yy = 0; _yy < cell_h; _yy++){
		level[_xx][_yy] = tilemap_get(_map, _xx, _yy);
	}
}


