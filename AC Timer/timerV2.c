void main() {


TRISB=1;
TRISD=0;
 ANSELB=0;
 LATD=0b10000000;

while(1)                            //infinite loop
{



//timer
if(PORTB.B3==1)
{
timer:
delay_ms(1000);                      //check for longer timer
if(PORTB.B3==1)                    //if button still pressed after 1s
{
LATD=0b10110000;                     //2 LEDs on
delay_ms(5400000);             //1.5 hr  timer
LATD=0b00000000;
 }
 else
 {
LATD=0b10010000;                  //single LED
delay_ms(3600000);                  //1 hr timer
LATD=0b00000000;
 }  }
else
 
 
 
 
 
 //Permanent on
 if(PORTB.B1==1)
 {
 
delay_ms(500);
while(1)
{
LATD=0b11000000;
if(PORTB.B2==1)
{
LATD=0b00000000;
break;
 }
 else
if(PORTB.B3==1)
{ 

goto timer;               //back to timer

 } }  }
 
 
 else
 
 
 
 

// Permanent off
if(PORTB.B2==1)
 {
 delay_ms(500);
LATD=0b00000000;
}
 
 
 
 
 
 
 
 }


}