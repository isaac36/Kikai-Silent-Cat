function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // player1
	global.__objectDepths[1] = 0; // player2
	global.__objectDepths[2] = 0; // obj_player_controles
	global.__objectDepths[3] = 0; // obj_hitbox_p1
	global.__objectDepths[4] = 0; // obj_hitbox_p2
	global.__objectDepths[5] = 0; // obj_hitbox
	global.__objectDepths[6] = 0; // obj_furacao
	global.__objectDepths[7] = -999; // obj_saci
	global.__objectDepths[8] = -999; // obj_curupira
	global.__objectDepths[9] = 0; // obj_lanca
	global.__objectDepths[10] = 0; // obj_musica_amazonia
	global.__objectDepths[11] = 0; // obj_bgm_amazonia
	global.__objectDepths[12] = 0; // obj_musica_selecao
	global.__objectDepths[13] = 0; // obj_bgm_selecao
	global.__objectDepths[14] = 0; // menu_BATALHA
	global.__objectDepths[15] = 1; // menu_CONFIGURACOES
	global.__objectDepths[16] = 0; // menu_VOLTAR
	global.__objectDepths[17] = 1; // menu_botao_selecao
	global.__objectDepths[18] = 0; // mostrar1
	global.__objectDepths[19] = 0; // mostrar2
	global.__objectDepths[20] = 0; // obj_start
	global.__objectDepths[21] = 9999; // obj_foto_player
	global.__objectDepths[22] = -999; // obj_personagem_generico
	global.__objectDepths[23] = 0; // obj_piranha
	global.__objectDepths[24] = 0; // obj_piranha2
	global.__objectDepths[25] = 0; // obj_wall
	global.__objectDepths[26] = 0; // obj_slow
	global.__objectDepths[27] = 0; // obj_wall_escalavel
	global.__objectDepths[28] = -1; // setup1
	global.__objectDepths[29] = 0; // setup2
	global.__objectDepths[30] = 0; // seila
	global.__objectDepths[31] = 0; // mira_camera
	global.__objectDepths[32] = 0; // obj_teste
	global.__objectDepths[33] = 0; // obj_testa
	global.__objectDepths[34] = 0; // obj_vida
	global.__objectDepths[35] = 0; // obj_vida2
	global.__objectDepths[36] = 0; // obj_vencedor
	global.__objectDepths[37] = 0; // obj_timer
	global.__objectDepths[38] = 0; // obj_nv
	global.__objectDepths[39] = 0; // obj_item_life
	global.__objectDepths[40] = 0; // obj_item
	global.__objectDepths[41] = -99999; // obj_transicao_para_selecao


	global.__objectNames[0] = "player1";
	global.__objectNames[1] = "player2";
	global.__objectNames[2] = "obj_player_controles";
	global.__objectNames[3] = "obj_hitbox_p1";
	global.__objectNames[4] = "obj_hitbox_p2";
	global.__objectNames[5] = "obj_hitbox";
	global.__objectNames[6] = "obj_furacao";
	global.__objectNames[7] = "obj_saci";
	global.__objectNames[8] = "obj_curupira";
	global.__objectNames[9] = "obj_lanca";
	global.__objectNames[10] = "obj_musica_amazonia";
	global.__objectNames[11] = "obj_bgm_amazonia";
	global.__objectNames[12] = "obj_musica_selecao";
	global.__objectNames[13] = "obj_bgm_selecao";
	global.__objectNames[14] = "menu_BATALHA";
	global.__objectNames[15] = "menu_CONFIGURACOES";
	global.__objectNames[16] = "menu_VOLTAR";
	global.__objectNames[17] = "menu_botao_selecao";
	global.__objectNames[18] = "mostrar1";
	global.__objectNames[19] = "mostrar2";
	global.__objectNames[20] = "obj_start";
	global.__objectNames[21] = "obj_foto_player";
	global.__objectNames[22] = "obj_personagem_generico";
	global.__objectNames[23] = "obj_piranha";
	global.__objectNames[24] = "obj_piranha2";
	global.__objectNames[25] = "obj_wall";
	global.__objectNames[26] = "obj_slow";
	global.__objectNames[27] = "obj_wall_escalavel";
	global.__objectNames[28] = "setup1";
	global.__objectNames[29] = "setup2";
	global.__objectNames[30] = "seila";
	global.__objectNames[31] = "mira_camera";
	global.__objectNames[32] = "obj_teste";
	global.__objectNames[33] = "obj_testa";
	global.__objectNames[34] = "obj_vida";
	global.__objectNames[35] = "obj_vida2";
	global.__objectNames[36] = "obj_vencedor";
	global.__objectNames[37] = "obj_timer";
	global.__objectNames[38] = "obj_nv";
	global.__objectNames[39] = "obj_item_life";
	global.__objectNames[40] = "obj_item";
	global.__objectNames[41] = "obj_transicao_para_selecao";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
