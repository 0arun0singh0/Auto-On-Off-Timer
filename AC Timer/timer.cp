#line 1 "C:/Users/0arun/Desktop/MikroC/AC Timer/timer.c"
void main() {


TRISB=1;
TRISD=0;
 ANSELB=0;
 ANSELD=0;
 LATD=0b00000111;

while(1)
{

if(PORTB.B0==1)
{
delay_ms(500);
LATD=0b11000000;

delay_ms(2000);
 LATD=0b00000000;
 }

 else
 if(PORTB.B1==1)
 {
delay_ms(500);
LATD=0b11000000;

delay_ms(6000);
 LATD=0b00000000;

 }

 else
 if(PORTB.B2==1)
 {
delay_ms(500);
LATD=0b11000000;

delay_ms(10000);
 LATD=0x00;

 }


}










}
