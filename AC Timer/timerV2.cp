#line 1 "C:/Users/0arun/Desktop/MikroC/AC Timer/timerV2.c"
void main() {


TRISB=1;
TRISD=0;
 ANSELB=0;
 ANSELD=0;
 LATD=0x00;

while(1)
{




if(PORTB.B3==1)
{
timer:
delay_ms(1000);
if(PORTB.B3==1)
{
LATD=0b10110000;

delay_ms(10000);
 LATD=0x00;
 }
 else
 {
LATD=0b10010000;

delay_ms(2000);
 LATD=0x00;
 } }

 else






 if(PORTB.B1==1)
 {

delay_ms(500);
while(1)
{
LATD=0b11000000;
if(PORTB.B2==1)
{
LATD=0x00;
break;
 }
 else
if(PORTB.B3==1)
{

goto timer;

 } } }


 else







if(PORTB.B2==1)
 {

delay_ms(500);
LATD=0x00;
}







 }


}
