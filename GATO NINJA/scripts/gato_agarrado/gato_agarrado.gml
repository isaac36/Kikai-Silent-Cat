// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function gato_agarrado(){

sprite_index = sem_mascara;

if(instance_exists(boss1)){
x = boss1.x;
y = boss1.y-20;
}


if(!place_meeting(x,y,boss1)){estado=solado};

}