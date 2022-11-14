if(instance_exists(obj_vida)){instance_destroy(obj_vida)};
if(instance_exists(obj_vida2)){instance_destroy(obj_vida2)};

if(room=room_selecao){instance_destroy()}

if(alpha>1){room_goto(room_selecao);instance_destroy();}

