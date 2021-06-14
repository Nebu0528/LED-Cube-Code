'This program will run the LED Cube
'Written by Neel
'Date :2019/12/18
'Pin B7 - B0 connect to LED 9 and LED 2
'Pin C7 connects to LED 1
'Pin C6 connects to Level 3
'Pin C5 connects to Level 2
'Pin C4 connects to Level 1
let dirsc=%11111111 'Assign all port c pins as outputs
let dirsc=%11111111 'Assign all port b pins as outputs
let outpinsc=%00000000 'Assign all c port pins low
let outpinsc=%00000000 'Assign all b port pins low
b50 = 250 'delay variable (makes the pattern longer)






'Basic test pattern

high c.4 'Connecting low level to ground
high c.7 'Turns on LED 1
pause b50 'Pauses the delay variable 
low c.7 'Sets c.7 low so LED 1 does not turn on
let outpinsb=%00000001 'Set port b.0 high so LED 2 turns on
pause b50 
let outpinsb=%00000010 'Turns on LED 3
pause b50
let outpinsb=%00000100 'Turns on LED 4
pause b50
let outpinsb=%00001000 'Turns on LED 5
pause b50
let outpinsb=%00010000 'Turns on LED 6
pause b50 
let outpinsb=%00100000 'Turns on LED 7
pause b50
let outpinsb=%01000000 'Turns on LED 8
pause b50
let outpinsb=%10000000 'Turns on LED 9
pause b50
low c.4 'Turns current level off
let outpinsb = %00000000 


high c.5 
high c.7
pause b50
low c.7 'First LED turns on
let outpinsb=%00000001 
pause b50 
let outpinsb=%00000010 
pause b50
let outpinsb=%00000100 
pause b50
let outpinsb=%00001000 
pause b50
let outpinsb=%00010000 
pause b50 
let outpinsb=%00100000 
pause b50
let outpinsb=%01000000 
pause b50
let outpinsb=%10000000 
pause b50
low c.5
let outpinsb = %00000000 



high c.6 'Connects the Upper level to GND
high c.7
pause b50 'pauses the delay variable
low c.7 
let outpinsb=%00000001 
pause b50 
let outpinsb=%00000010 
pause b50
let outpinsb=%00000100 
pause b50
let outpinsb=%00001000 
pause b50
let outpinsb=%00010000 
pause b50 
let outpinsb=%00100000 
pause b50
let outpinsb=%01000000 
pause b50
let outpinsb=%10000000 
pause b50
low c.6

'The basic pattern finishes

















