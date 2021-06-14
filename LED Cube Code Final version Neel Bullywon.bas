'This program will run the LED Cube
'Written by Neel
'Date :2020/12/18
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


'The program below will turn on all the LEDs on the top level and make them repeat
again:

let outpinsc=%00000000
let outpinsb=%00000000




'This program below is for the custom pattern


'Diagonals
'This is for the loop 
for b20 = 1 to 10 '( does it 10 times in 4 seconds)

for b12 = 1 to 20 'In 0.4 seconds


high c.4
high c.7 
let outpinsb=%00000011
pause 5
low c.4


high c.5
low c.7
let outpinsb=%00011100
pause c.5
low c.5


high c.6
low c.7
let outpinsb=%11100000
pause 5
low c.6

next b12



'Same as earlier but in reverse
b13 = 1 to 20 "0.4 seconds


'Also reversed
high c.4
low c.7
let outpinsc=%11100000
pause 5
low c.4


high c.5
low c.7
let outpinsb=%00011100
pause 5
low c.5


high c.6
high c.7
let outpinsb=%00000011
pause 5
low c.6

next b13
next b20





'Alternative Even or Odd
for b11 = 1 to 10

let outpinsc=%11111111

high c.7
let outpinsb=%10101010

pause b50

low c.7
let outpinsb=%01011101

pause b50

next b11
'Alternative flash end pattern






'Fade out Effect
'Turns on all inputs
high c.7 
let outpinsc=%11111111
let outpinsb=%11111111


pause 400
low c.6
pause 400
low c.5
low 400
high c.5
pause 400
high c.6
pause 400

'Fade out effect end






'Final effect (Conclusion): Snake Effect

'(Blackout)
let outpinsc=%00000000
let outpinsb=%00000000
pause b50


high c.4 'Bottom layer
high c.7
pause b50
let outpinsb=%00000001
pause b50
let outpinsb=%00000011
pause b50
let outpinsb=%00010011
pause b50
let outpinsb=%00011001
pause b50
let outpinsb=%00011111
pause b50
let outpinsb=%00111111
pause b50
let outpinsb=%01111111
pause b50
let outpinsb=%11111111
pause b50


for b23 = 1 to 10 'Flash all the lights 10 times (for the loop)

high c.4
pause b50
low c.4
pause b50

next b23
low c.7

'Same for the bottom layer but in reverse
'Middle layer

let outpinsb=%00000000
high c.5
let outpinsb=%10000000
pause b50
let outpinsb=%11000000
pause b50
let outpinsb=%11100000
pause b50
let outpinsb=%11100100
pause b50
let outpinsb=%11101100
pause b50
let outpinsb=%11111100
pause b50
let outpinsb=%11111110
pause b50
let outpinsb=%11111111
pause b50
high c.7 
pause b50

for b23 = 1 to 10 'Flash middle 10 times

high c.5
pause b50
low c.5
pause b50

next b23
low c.7

let outpinsb=%00000000


'Last layer
high c.6
high c.7
pause b50
let outpinsb=%00000001
pause b50
let outpinsb=%00000011
pause b50
let outpinsb=%00010011
pause b50
let outpinsb=%00011011
pause b50
let outpinsb=%00011111
pause b50
let outpinsb=%00111111
pause b50
let outpinsb=%01111111
pause b50
let outpinsb=%11111111
pause b50

for b23 = 1 to 10 

let outpinsc=%11111111
pause b50
let outpinsc=%00000000
pause b50

next b23


let outpinsc=%11111111

'Snake Effect end























