#line 1 "C:/Users/0arun/Desktop/MikroC/AC Timer/timer_beta.c"
void main() {


TRISB=1;
TRISD=0;
 ANSELB=0;
 LATD=0b10000000;

while(1)
{




if(PORTB.B3==1)
{
timer:
delay_ms(1000);
if(PORTB.B3==1)
{
LATD=0b00110000;
delay_ms(5400000);
LATD=0b10000000;
 }
 else
 {
LATD=0b00010000;
delay_ms(3600000);
LATD=0b10000000;
 } }
else






 if(PORTB.B1==1)
 {

delay_ms(500);
while(1)
{
LATD=0b01000000;
if(PORTB.B2==1)
{
LATD=0b10000000;
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
LATD=0b10000000;
}







 }


}
