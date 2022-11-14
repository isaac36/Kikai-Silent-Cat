ms --;
if (ms == 0){
ms = 60;
segundos --;}
if (segundos == -1){
minutos --;
segundos = 59;}
if (segundos >= 60){
minutos ++;
segundos -= 60;}
if (minutos == 0 and segundos == 0){
minutos = 0;
segundos = 0;
ms = 0;
//room_goto(room_vencedor);
}

