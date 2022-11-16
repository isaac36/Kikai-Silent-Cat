/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(global.pause==true){
	
	if(salvei==false){
	
	Save_sprite_index = sprite_index;
	Save_image_index = image_index;
	SaveAlarm0 = alarm[0];
	SaveAlarm1 = alarm[1];
	SaveAlarm2 = alarm[2];
	SaveAlarm3 = alarm[3];
	SaveAlarm4 = alarm[4];
	SaveAlarm5 = alarm[5];
	SaveAlarm6 = alarm[6];
	SaveAlarm7 = alarm[7];
	SaveAlarm8 = alarm[8];
	SaveAlarm9 = alarm[9];
	SaveAlarm10 = alarm[10];
	SaveAlarm11 = alarm[11];
	
	salvei=true;
	
	}
	
	sprite_index = Save_sprite_index;
	image_index = Save_image_index;
    alarm[0] = SaveAlarm0;
	alarm[1] = SaveAlarm1;
	alarm[2] = SaveAlarm2;
	alarm[3] = SaveAlarm3;
	alarm[4] = SaveAlarm4;
	alarm[5] = SaveAlarm5;
	alarm[6] = SaveAlarm6;
	alarm[7] = SaveAlarm7;
	alarm[8] = SaveAlarm8;
	alarm[9] = SaveAlarm9;
	alarm[10] = SaveAlarm10;
	alarm[11] = SaveAlarm11;

	
	exit;


}


salvei=false;




