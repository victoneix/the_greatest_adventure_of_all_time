//for(var i = 0; i < cell_w; i++){
//	for(var j = 0; j < cell_h; j++){
//		if(map[# i, j] == 0){
//			draw_sprite(spr_default, 0, i*160, j*120);
//		} 
//	}
//}

for(var i = 0; i < cell_w; i++){
	for(var j = 0; j < cell_h; j++){
		if(level[i][j] != 0){
			draw_rectangle(i * cell_s, j * cell_s, (i + 1) * cell_s, (j + 1) * cell_s, 1);
		}
	}
}