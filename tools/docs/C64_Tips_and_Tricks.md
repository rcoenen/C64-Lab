Angerhausen - English
Gerits-Thrun

Tips & Tricks

A treasure trove for him
Commodore 64 users

A DATA BECKER BOOK

ISBN 3-89011-001-0

4th expanded and revised edition

Copyright (C) 1984 DATA BECKER GmbH

Merowingerstr. 30

4000 Düsseldorf

All rights reserved. No part of this book is allowed in

any form (print, photocopy or other

procedure) without written permission from DATA BECKER
GmbH reproduced or used electronically

systems processed, reproduced or distributed

become.

Important note

The circuits presented in this book,
Procedures and programs are carried out without regard to the
Patent situation communicated. They are exclusively for
It is intended and may not be used for amateur and educational purposes
be used commercially.

All circuits, technical information and programs in
This book has been written with the greatest care by the author
developed or compiled and consulted
reproduced through effective control measures. Nevertheless are
Errors cannot be completely ruled out. DATA BECKER sees itself
therefore forced to point out that neither
Guarantee nor legal responsibility or
any liability for consequences resulting from incorrect
If the information goes back, it can be adopted. For those
The author will report any errors at any time
grateful.

TABLE OF CONTENTS

1. Preface

2. Graphics for advanced users

D
D

N

O
N

N
H
N

M
N

M
N

m
N

—

N
H

W
W

»
w
m

D
H

n
o

Graphics on the Commodore 64

3D graphics - BASIC program

Colored bar graph

Definition of your own character set
Modification of the character set with the joystick.

The split screen

Soft scrolling

The keyboard layout and its changes

3. Data entry with convenience

Cursor positioning and query

the cursor position

Turn cursor on and off

Repeat function for all keys
The WAIT command: Wait for a key press

The assignment of the function keys

A convenient INPUT routine

The “mouse” on the 64:

Simulation with the joystick

W

W

w
W

W
w
W

W
w
W

I
W

N

W

b
b

1

N

N
S

14

21

24

32

38

40

45

47

49

50

52

59

67

4.

BASIC for advanced users

4.1 Often tried, rarely successful:

Creating a BASIC line in BASIC 75

4.2 Copying the BASIC interpreter into RAM 83

4.3 No more negative numbers with the FRE function 85

4.4 Return to the BASIC program after LIST 87

4.5 GOTO, GOSUB and RESTORE

with calculated line numbers 90

4.6 The MID$ command 94

4.7 INSTR and STRING$ function. 101

4.8 Automatic line numbering. 108
4.9 DEF FN - the unknown being .112
4.10 Your Commodore 64 speaks German .115
4.11 Using a HARDCOPY routine for

commercial programs en .121

4.12 Set theory on the CBM 64 using an example

using the Berlin Ku’damm clock

the real time clock and sprites. 123
4.13 A little copy protection. 130

5 The CBM 64 can't just do BASIC

-1 The programming of FORTH . 136

Comparison program FORTH - BASIC .139
Other languages: PASCAL, LOGO .148
>.4 ADA for the Commodore 64. 150

6. CP/M on the Commodore 64

6.1 This is CP/M. 152
6.2 Handling the individual CP/M programs. 163

6.3 Adaptation of CP/M standard software

to the 64 ......... . 2.6.4 26 2. «© « « « «168

6.4 The memory management of the Z80 processor ... .169

6.5 Diskette management under CP/M ........ .171

6.6 The cooperation of the processors 6510 - 280. . .174

6.7 Commented BIOS listing ........... .. .176

6.8 Implementation of own input/output functions

into the BIOS. . 0 nn. 2,221

6.9 Transferring programs and data from the CP/M

to Commodore BASIC and vice versa. . . ..2...223

7.

Connection and expansion options for the Commodore 64

7.1 A sensible use of the USER port

using the example of a Centronics printer. . ....227

7.2 Data transmission from and to other computers

via USER port ........... . . . . .237

7.3 The expansion port:

A case study with the CP/M cartridge. . . . ...245

7.4 Synthesizer in Stereo... 0 2 2 2.2.2. .253

8

File management: No closed book 230

Cassette - floppy disk ............. . .259

The principle of file management:

Sequential files ............. . .266

8.3 Copying files

with one and two drives ........ . .280

8.4 This is how it works faster: Relative files ..... .284

8.5 Another method: direct access ...... . .304

8.6 Saving an incorrectly

closed file ............. . .3088.7 The block tracker ............ . .314

9. Poke’s and other useful routines

o
w

8

8

D
D

o
w

o
w

w
W

®
8
®

o
w

N
H

—

WN
m

i
v

a

A

o
O

©

a
A

The cassette buffer as program memory

Sorting string fields

Minimum and maximum of numeric fields

DUMP - Output of all variables

and their values

Modified PEEK function

Multitasking on the Commodore 64

POKE’s and the Zeropage

Controlling text input via the keyboard

Formatted program listing

O Saving variables and warm start

.319

.322

.327

.334

.339

.343

. 353

.355

.359

.362

FOREWORD

The Commodore 64 makes thousands of new friends around the world every day.

That's not surprising, because the 64 doesn't just offer

excellent performance data, but also an excellent one

Price/performance ratio. You can get it for well under 2000 marks

Already a Commodore 64 including a floppy disk drive.

If you add the new CP/M module, you're still below

2000 marks. And then for a complete computer system that

not just the two most common processors 6502 and Z-80 but

also the two most widespread operating systems CP/M and

COMMODORE BASIC includes. The Commodore 64 does have one

Entry-level price, but it's only for getting in and playing

too bad. Rather, it offers the committed

Hobby programmers have an almost limitless field of activity

can easily also be used for smaller commercial and technical

use scientific applications. Here 64 TIPS &

TRICKS, our second book on the Commodore 64. Our tried and tested

Author team consisting of Klaus Gerits, Lothar English and
Michael Angerhausen has once again dug deep into his bag of tricks.

We would like to provide you with countless examples and sample programs

Authors suggestions for your own work with the Commodore 64

give. This book should also help you get more out of your
Commodore 64 to make. All three authors know the 64 like they do

Vest pocket. Klaus Gerits, for example, has IEC-BUS 64 and MAXI 64

developed by Lothar English, PROFI-MON 64 and PROFI-

ASS 64. Both have dealt extensively with technical and

system-related properties of the 64. To the results

include, for example, projects with the user port and a detailed one

Treatment of the CP/M module, of course in detail

documented BIOS listing. Michael Angerhausen, ours

Database specialist, has studied the 64 below in detail

aspect of file management. Among other things, he shows how

You can also create relative files with BASIC 2.0.

Our authors would be happy to receive comments on this book

and suggestions for further work. Here's an answer right away

to the often asked question: Can you actually use DATA BECKER

Collaborate on books? - One can ! We are happy to accept new authors

on, regardless of whether it's just a post or even one

completely own book.

Have fun reading 64 TIPS & TRICKS.

Foreword to the expanded and revised 2nd edition

The first 10,000 copies were sold within a few months

of 64 Tips & Tricks out of stock. We have the opportunity of |

New edition used to revise this popular book and

to be expanded in significant parts.

To all machine programs and routines from 64 TIPS & TRICKS

you will now also find a BASIC loader. With the help of this

Simple BASIC programs can now also be used by all non-

Machine programmers can program in machine language easily

Enter and use it fully. The respective BASIC loader is checked

the program also for input errors.

Foreword to the expanded and revised 4th edition

Thanks to the intensive work with the Commodore 64, we still have

found out some interesting things that we didn't tell you

want to withhold. New subject areas such as ADA, copy protection

and block chasers were added by Mr. Frank Thrun.

Düsseldorf, October 1984

The authors

CHAPTER 2: ADVANCED GRAPHICS

2.1 GRAPHICS ON THE COMMODORE 64

Of course, every user of the Commodore 64 wants to get it sooner

or later with the built-in graphics of this computer

work. Unfortunately, the manual only explains this very briefly and succinctly

more information about the skills and possibilities available with the
Commodore 64 has.

At this point we would like to go into this in more detail

graphical possibilities and special features.First of all, with the Commodore 64 you have to choose between the normal graphics,

which can be accessed via the keyboard (i.e. the block or

line graphics), the high-resolution graphics and the sprites

differentiate. Offer block graphics and high-resolution color graphics

only a few computers - but the SPRITES are a real one

Innovation on the Commodore 64. These SPRITES are currently only from

known from the many slot machines. They know them there

fantastic games, whether adventure, SPACE games or action games

games. And these are exactly the possibilities that it offers us today
Commodore 64.

On the next few pages we want to look at the three different ones

enter graphic modes. Of course, the theory is here again

supported by examples.

1. The block or line graphics of the keyboard.

This possibility of creating graphics on the Commodore 64

is the easiest and most convenient way. Here you don't have to do just anything

which addresses are calculated or paid attention to different registers

become. You can do various things in the program from the keyboard

Create symbols and display them directly. To get these symbols

To achieve this you have to press two buttons. If you look at the

Take a closer look at the Commodore 64's keyboard, so you will

You will notice that almost every button on the device has two functions.

The symbol or graphic symbol on the left side of the

button is activated by simultaneously pressing the C= (CBM) button and

the corresponding key on which the symbol is located,

achieved.

You can always use these characters when entering a program

within a PRINT or INPUT statement. To that

for example you write:

100 PRINTS"

and then press the C= and A keys. You will now see the top one

right corner of a frame on the screen. By a whole

To create a frame, the following additional inputs are necessary (we

we are still on line 100):

Press the SHIFT and * keys 38 times. They now look like you

from the corner of the frame a straight line on the same

Draw height. You have also now learned that pressure

press SHIFT and another key to open the right character

can be entered using this key. Now press again

the keys C= and S and there is the upper part of a frame

completed. At the end of line 100, enter

a:

". and press the RETURN button

You can now enter the next line as follows:

110 PRINTS"

Then press: SHIFT and - once, the spacebar and 38 times

SHIFT and - again. Finally, enter again:

", and press the RETURN button.

The second line of the frame is now finished. The

Now write the third and last line as follows:

120 PRINTS"

and then 1 time C= and Z, 38 times SHIFT and* and 1 time C= and X.

Now you have the entire frame, consisting of 3 lines

completed. Now enter the following program lines:

99 PRINT CHR$(147);: REM CLEAR SCREEN

132 A$=" "

135 REM A$=PRESS SPACEBAR 38 TIMES

140 B$="THIS LINE FILLS OUR FRAME"

150 PRINT CHR$(19);

160 PRINT CHR$(17) ;CHR$(29) ;A$;

170 PRINT CHR$(19);

180 PRINT CHR$(17);CHR$(29);B$;

190 FOR I=1 TO 1000: NEXT

200 GOTO 150

All commercial programs today are through the application

Such a framework is very clear and user-friendly

designed. As you can see, the Commodore 64 can also be programmed

become like the “big ones”.

Of course there is also another way to enter

such graphic symbols. All of these symbols can also be used

via the CHR$ function. For example in ours

Program:

100
101

A1$=CHR$(176): A2$=CHR$(174)

REM THE LEFT AND RIGHT TOP CORNER

102

A3$=CHR$(173): A4$=CHR$(189)

103

REM THE LEFT AND RIGHT BOTTOM CORNER.

104

H1$=CHR$ (96)

105

REM THE HORIZONTAL LINE

106

H2$=CHR$( 125)

107

REM THE VERTICAL LINE

108

H3$=CHR$(32)

109

REM THE SPACE

110

Z1$=A1$

111

FOR I=1 TO 38

112

21$=21$+H1$

113

NEXT I

114

Z1$=Z1$+A2$

115

REM 1st LINE OF THE FRAME

116

22$=H2$

117

FOR I=1 TO 38

118

22$=22$+H3$

119

NEXT I

120

22$=22$+H2$

121

REM 2nd LINE OF THE FRAME

122

$23=A3$

123

FOR I=1 TO 38

124

23$=23$+H1$

125

NEXT I

126

$23=$23+A4$

127

REM 3RD LINE OF THE FRAME

128

PRINT $21;

129

PRINT $22;

130

PRINT $23;

When you enter these new lines and start the program,you will have the same result as before. The advantage lies

simply in the programs that come with it

such CHR$ functions

written are easier to read and change.

2. The use of SPRITES

But your Commodore 64 can do more than just draw simple lines.

As I said at the beginning, it offers you options

were previously reserved for the big slot machines.

The Commodore 64 is capable of up to 8 different

Manage “small graphics” independently. These small graphics

we call SPRITES. You can use any of these maximum 8 sprites

move, delete, independently through simple POKEs

collide and much more. But to make sense with SPRITES

To be able to work, you must familiarize yourself with the information in detail

the corresponding registers of the Commodore 64. The

You can find the complete register plan in the book “64 intern”. We

At this point I would just like to briefly look at the different ones

Sprite manipulation options.

As already mentioned, we have different options for each sprite

Register available. It would be beneficial if you first

Experiment with the SPRITES that you have in the Commodore

Find the manual.

The most important address when using sprites is the number

53248. This address indicates the start of the video controller.

The built-in VIC (video controller) 6569 also works

these addresses. To create a sprite, for example
position, we have to tell the VIC chip which one

Place the sprite to be drawn. The register for this is this

Register O (or more precisely the address 53248). In this one

We find the horizontal address, and in register 1 (53249) the

vertical position of the sprite.

POKE 53248, 160: POKE 53249, 120

So 2 POKEs are enough to send a whole small graphic to one

to set a specific screen position. The sprite in the middle

of the screen. Registers O and 1 are used for this purpose

Sprite 1, registers 2 and 3 to sprite 2, etc. After the same

Almost all other registers work in principle. Most accurate information

As already mentioned, you can find out more about working with the sprites in

"64 internal". On the next pages you will find out how

can also create complex graphics without much effort.

2.2 3D GRAPHICS - BASIC PROGRAM

Right at the beginning of our book we want to give you a BASIC

Introduce a program that uses high-resolution color

graphics of the Commodore 64 three-dimensional representations

brings the screen. The program uses the commands of

Supergraphics 64; However, below you will find the necessary

changes if you do not have access to this program.

add.

The program presents a function that you can use on line 100

of the program. The function can be divided into three

can be presented in different ways:

First, in a normal Cartesian (rectangular) coordinate

dinate system, just as you can use the function on millimeter scales.

pier would draw.

Secondly, the representation is in polar coordinates (specification

of radius and angle).

The most interesting thing is undoubtedly the three-dimensional representation

position. To do this, the function is rotated around the (vertical) Y-axis

rotated. Because of the large number of points to be calculated

However, this type of representation takes the longest time.
You can control the display parameters as much as possible

influence.

Now for the description of the program. First you can do the

Select display type (lines 40-70). In the Cartesian

and polar display you will then be informed after the function
krement asked (line 260). This is the value by which the
Horizontal axis parameters after each calculated point
is increased. Lines 270 and 280 ask for the factor for X-
and Y axis. This allows you to change the scale ratio of the

Determine axes. For starters you can do 1 both times
enter. When moving horizontally and vertically

w
t

(Lines 370-410) we can initially enter zero. In line
430 switches to graphics mode. Lines 450 to
560 draw the axes and scaling. Lines 680
to 790 characters are the polar representation, from lines 820 to 970

is the rectangular representation.
The three-dimensional representation starts from line 1010. First
you can determine the scale and position of the display again;
To start, enter the suggested values of 20 or 90
a. For the three-dimensional representation, the function must be inLine 100 can be calculated tens of thousands of times; that
Depending on the function, the program requires about half an hour

several hours.
Let the program once with different functions
run; As a suggestion, here are a few functions that are inter-

interesting representations.

100 DEF FN R(Q) = COS (2*Q) + COS ((Q + BB)/16)

100 DEF FN R(Q) = SQR (ABS(.5*(16-Q*Q)) + 1/(Q+4)

100 DEF FN R(Q) = COS (4*Q) + 20/(Q*Q + 3)

If you don't have a supergraphic, you need to make the following changes

and make additions to the program:

Line 5 POKE 56.32 CLR

Line 430 and 1400: GOSUB 2000 each

Line 470 FOR A1=0 TO 199 : AX=F: AY=A1: GOSUB 3000 : NEXT
Line 480 FOR A1=0O TO 319 AX=A1: AY=E: GOSUB 3000 : NEXT
Line 500 FOR A1=E-1 TO E+1: AX=XR: AY=A1: GOSUB 3000: NEXT
Line 520 FOR A1=E-1 TO E+t1: AX=XL: AY=A1: GOSUB 3000: NEXT
Line 540 FOR Ai=F-1 TO F+1: AX=A1: AY=YD: GOSUB 3000: NEXT
Line 560 FOR A1=F-1 TO Ft1: AX=A1: AY=YU: GOSUB 3000: NEXT

Line 770 AX=XX: AY=YY: GOSUB 3000

Line 900 AX=G: AY=YY: GOSUB 3000

Line 1600 AX=X1: AY=Y1: GOSUB 3000

Line 1620 GOSUB 4000 : RETURN

Line 2000 FOR A1=8192 TO 16191 : POKE A1,0 : NEXT
Line 2010 FOR A1=1024 TO 2023 : POKE A1,16: NEXT
Line 2020 POKE 53248+17, 27+32 : POKE 53248+24, 16+8
Line 2030 RETURN

Line 3000 OY=320*INT(AY/8)+(AYAND7)

Line 3010 OX=8*INT(AX/8)

Line 3020 =2T((7-AX)AND?)

Line 3030 AV=8192+0Y+0X
Line 3040 POKE AV,PEEK(AV) OR MA : RETURN
Line 4000 FOR A1=Y1+1 TO 199: AX=X1: AY=A1: GOSUB 5000: RETURN
Line 5000 OY=320*INT(AY/8)+(AYAND7)

Line 5010 OX=8*INT(AX/8)

Line 5020 MA=2f( (7-AX)AND7)

Line 5030 AV=8192+0Y+0X

Line 5040 POKE AV,PEEK(AV) AND NOT MA : RETURN

By programming the graphics functions in BASIC
the program is significantly slower than programming
with the Supergraphics 64.

16 PRINT") GRAPHIC REPRESENTATION OF F
FUNCTIONS"
26 PRINT" DEFINED IN LINE 163)"
4a PRINT "M 1 - CARTESIC REPRESENTATION"
sa PRINT" 2 - POLAR COORDINATES"

66 PRINT"S 3 - 3D REPRESENTATION"

76 INPUT" EXHAUST: IE":PL

166 DEF FNRCO>=COS
CO +COS¢ ZERO) +C0S¢ Sea
218 IFPL=STHENIG14
258 PRINT: PRINT
2660 INPUT" FUNCTION INCREMENT ="; Ik

10

Te asJPUT" SEAR TOR EOE B Om EI«HEE Suited
_27H INPUT"E ACTOR FUE AXIS = "55
i
D
D
E
o
e
M
O
y

PRINT" SURSPRUMG Una OR RIGHT PU

HIEBEH"

D
I
A
G

O
D

S
O

N
G

U
D

O
&
e
b
e
e
h
d
O
h
h
h
O
S
k
E
a
N
n
I
a

IHFUT"ZRHL VOW 12a TO 130"GC

FEINT"SURPRUNG UP OR DOWN VER

TE BEN"

IHNFUT" NUMBER

“OH -Sa TO Se "sf

aea

E=100+0: F=168+C

right door 128

'E TO 319.E

FORKR= FTOSISSTEPIS#S1

MR .E-1T0rsR.E+1

FOR=L=FTOSSTER-19#51

“L.E-1T0sL.E+1

FORYI=SETÜOLFSSTEPL1I#5Z

F-1.YDTOF+1.'YD

“ad FOR YUE TOMSTEP-15#52

“he F-il sSWUTOR+L TU

oH IFPL=1ITHENSZE

i

i
O

l
e
i
b
E
N

D
N
I
R

F
O

r
o
m

m
w

a
s
O
o
o
C
o

O
W

O
W

h
T

&

a

a

I

m
a
G

REM POLAR PLOT |

T=SG#RT
RT=1Loe:>Fürg=-ESTÜOSEESTEPIE:
S=FHRC

TI #COS¢ ToS Y=FPHR GT OeSINGTo

BAER LORS LO +P sks LESS O+E

ass 31S THEN’ Se
IFeacadR

IPS YOR Yo 1LSSTHENPS Sse

ret oe

HEAT

EMT

REM CARTESIAW PLOT

FORG=ATOS19STEPIE

SSQG-FoC 19512: Y=FNRe A

YWY=E—C'YRISRSS

TF edRYo 1 SSTHENSSe

ayy

EMD

1
I
m
Z
1020 PRINT "SIERERBRRWERTICAL SCALE"

A REM 30 PLOT

K
H

1636 PRINT" Bepeei-d+e BIS de ra | | | Ten

PUTHNI

1049 FRINT'EBIBRBIWERTIERLE LAGE"

19636 PRINT" aRRB-S5ca EIS 150 target":

:IN

FUTHNZ

11

!
s
i

1266 REM KOMSTANTS A.B.C.DLE.F.G
1286 A=144:E=2.25:C=H1:1=.0327:E=160:Feh
2:G=133
1406 &.1:
1416 FORH=-ATOASTEPE
1426 AR=INT* .5+50R¢ A*XA—-HRHD 2?
1436 FORBE=—AATORA
> CC=S0R*¢ BBXBB+H*H > HI
1446 DL=FNR CCl): D0=D1LeC : GOSUBISZ@:
NEXT: H
ExT: END
1456 GOTO14560
1326 *=BR+H/B+teE
: 'Y=D0—-H-B+F
1529 #1=INTE .SSeeo °YL=INT .SeiG— Yoo IP YS
BORY>
1 S9THEMRE TURN
1660 1.71
1626 E X1.Y1+1T0%1.193:RETURH

On the next page you will find the results

this one

program.

12

Y

e en

o@ee

e ee

eo * 0%. goca@2? 9% OF A Tr 0 °°, OOM Sf Sf et ante, eK 8%. *. ReePR® en

® 6 4, i” PT —._ where

e ity a or OE de es te YT a

eo ee ee” oe

eee

D2. A? PP)” Pr

. . a) Ys, Ar y . éree o aw”—— Sn.”
ik oe ftde igi NNN NS
6, u — > vee

benad

2.3 COLOR BAR GRAPHICS

The following machine program is for drawing

horizontal or vertical colored bar graphics. With that

Curves and tables can be clearly laid out graphically

Display color on the screen. Since the graphic with

normal screen characters are created, the display can be

can be mixed with texts as desired, e.g. for labelingof the graphics. The bars are each equal to 8 pixels
Characters wide and can be 320 points horizontally or vertically

Solve 200 points.

The machine program was designed in such a way that length or

Height and color can be specified. The bar graph
is drawn from the current cursor position. Um
to simplify the display of complete graphics
the cursor after each output of a vertical bar
(which is drawn from bottom to top) by one to the right
set so that the next bar is displayed immediately (if necessary in
a different color). With horizontal
In bar graphics, the cursor automatically moves by one
down.

The call is made using an extended SYS command:

SYS H, L, C or

SYS V, L, C

where H and V are the start addresses of the routines for horizontal
and vertical graphics are, L is the length of the graphic up to 320
or 200 and C is the color code (O to 15).

The machine program is printed below:

14

N
E
b

100: c000 .opt pi

; colored bar graph

; hplot and vplot

130: c000 getcor = $b7eb

140: c000 scrout = $e716

150: c000 lbyt = $14

160: c000 hbyt = lbyt + 1

170: cO00 curcol = $d3

180: c000 setcol = $ea24
190: c000 setchar = $eale

200: c000 illquan = $b248

205: 000 chkcom = $aefd

210: cO00 code = $22

220: c000 tmp = code+1

230: c000 xreg = tmp + 1

235: c000 tmp1 = xreg + 1

240: c000 color = $f3 ; pointer to color ram

250: c000 curright = $ab3b

260: cOOO adr = $fd

270: cO00 linelen = $d5

280: c000 charadr = $d1

290: c000 *= $c000
300: cO000 20 fd ae hplot jsr chkcon

310: c003 20 eb b7 jsxr getcor

315: c006 86 24 stx xreg

320: cOO8 a5 15 lda hbyt

330: c00a c9 02 cmp #2

340: cOOc bO 42 bes ill

350: cOOe Oa asl

350: cOOf Oa asl

350: c010 Oa asl

350: c011 0a asl

350: c012 Oa as]

15

360:

c013

85

23

370:

c015

a5

14

sta

tmp

lda

lbyt

380:

c017

48

390:

c018

4a

390:

c019

4a

390:

cO1a

4a

400:

CO1b

18

pha

lsr

lsr

lsr

clc

; through 8

410:

cO1c

65

23

adc

tmp

420:

cole

65

d3

adc

curcol

; cursor column

430:

c020

48

440:

c021

a8

pha

tay

450:

c022

c5

d3

cmp

curcol

460:

c024

140)

13

beq

t1

470:

c026

c9

27

cmp

#39

; <40

480:
490:

500:

c028

90

02

CO2a

a0

27

bcc

t2

ldy

#39

CO2c

20

24 ea

t2

jsr

setcol

; pointer to color ram

910:

CO2f

a9

a0

lda

#" "+ $80

reverse blank

c031

20

le ea

jsr

setchar

; set characters and colors

540:

550:

560:

c034

88

c035

c4

d3

570:

c037

£3

580:

590:

c039

68

t1

cO3a

a8

600:

cO3b

610:

cO3c

620:

cO3e

630:

c040

640:

c042

28

Whether

07

dey

Cpy

curcol

bpl

t2

pla

tay

pla

Cpy

#40

bcs

finished

and

#7

tax

650:

c043

53c0

lda

table,x

655:

c046

24

ldx

xreg

660:

c048

le ea

jsr

setchar

670:

cO4b

11

finished

lda

#17

; cursor down

680:

c04d

16 e7

Jmp

scrout

16

690:

700:

c050

4c

48

b2 ill

jmp

illquan

c053

20

65

74 tables

byt

$20, $65, $74, $75, $61, $£6, $ea, $e7

1000:

cO5b

20

fd

ae vplot

jsr

chkcom

1010:

cO5e

20

eb

b7

jsr

getcor

1020:

c061

a5

15

1030:

c063

do

eb

1040:

c065

86

24

lda

hbyt

bne

ill

stx

xreg

: color

1050:

c067

a5

14

lda

lbyt

1060:

c069

4a

1060:

cOba

4a

1060:

cO6b

4a

1070:

cO6c

85

23

1080:

cO6e

a5

14

1090:

1100:

c070
c072

29

07

85

25

1110:

c074

a5

di

1120:

c076

18

1130:

c077

65

d3

: through 8

lsr

lsr

lsr

sta

tmp

lda

lbyt

and

#7

sta

tmp1

lda

charadr

- line address

clc

adc

curcol

; plus cursor column

1140:

c079

85

fd

sta

addr

1150:

CO7b

a5

d2

lda

charadr + 1

1160:

c07d

69

00

1170:

cO7f

85

fe

1180:

c081

aQ

1190:

c083

off

23

1200:

c085

£0

20

adc

#0

sta

addr+1

ldy

#0

ldx

tmp

beq

t3

1210:

c087

20

c7

cO t4

jsr

color

: calculate color address

1270:

c08a

a9

aQ

lda

#" " + $80

1275:

cO8c

91

fd

1280:

c08e

a5

24

1290:

c090

91

£3

1300:

c092

a5

fd

1310:

c094

38

sta

(adr),y

lda

xreg

: color

sta

(color),y

; set characters and colors

lda

addr

sec

1320:

c095

e9

28

sbc

#40

: next line

1330:

c097

85

fd

sta

addr

17

1340: c099 bo 08 bes t5

1350: cO9b c6 fe dec addr+1

1360: cO09d a5 fe Ida adr+1i

1370: cO9f c9 04 cmp #4 ; Reached the top line?

1380: cOa1 90 12 bec t6

1390: cOa3 c6 23 t5 dec tmp

1400: cOa5 dO e0 | bne t4

1410: cOa7 20 c7 cO t3 jsr color

1470: cOaa a6 25 ldx tmp!

1480: cOac bd bf cO lda tab2,x

1485: cOaf 91 fd sta (adr),y1490: cOb1 a5 24 blade ; hands

1500: cOb3 £91 (fast),y

1510: cOb5 a5 d3 t6 pound

1520: cOb7 c5 d5 d5 m5 cmm ; Latzer latzers ?

1530: cOb9 £0 03 * + 5

1540: cObb 4c 3b correctly ; Right runrs

1550: cObe 60 network

1560: cObf 20 64 64 £20, $20,$64,$64, $79, $62,$62, $8,$7,$7,$3

1570: cOc7 a5-fd lip color

1580: cOc9 £85 3 is factory
1590: cOcb a5 f | Adr+1

1600:

cOchd 4c 2a and Gmp + 6

Hier Ein Ladeprograms in BASICft, kiinens

Absayler Object Grefugung Gembens.

100 for i = 49152 to 49359

110 x: poke i,x : S=S+x : Newx

120 data 32.253.174, 32.183.183.134, 36.165, 21.201, 2

130 data 176, 66, 10, 10, 10, 10, 10.133, 35.165, 20, 72

140 dates 74, 74, 74, 24.101, 35.101.211, 72.168.197.211

150 data 240, 19.201, 39.144, 2.160, 39, 32, 36.16.169

18

160

date

160, 32, 30.234.136.196.211,

168, 104
16,243.104,

170

date

192, 40.176, 11, 41, 7.170.170.189, 83.192.166, 36

180

date

32, 30.234.169, 17, 76, 22.231, 76, 72.178, 32

190

date

101.116,17, 97.234.234.231, 32.174, 32.235

200

date

183.165, 21.208.235,134, 36.165, 20, 74, 74, 74, 74

210

date

133, 35.165, 20, 41, 7.133, 37.165.209, 24.101

220

date

21.133.253.165.105,105, 0.133.160,160, 0.166

230

date

35.240, 32, 32.1992.192.169.160.1453.165,165, 36

240

date

145.243.165.253, 56.233, 40.133.176,176, 8.198

250

date

254.165,254.201, 4.144, 18.198, 35.224.224, 32

260

Gata 199.192,166, 37.191.192.192.192.1453,165, 36.145

270

date 243.165.165.197.213.240, 3, 76, 59.171, 96, 32

280

165.253, 133.243.165
given 100.111.111.121, 98.248.248.227,

290

Gata 254, 76, 42.234

300

if s <> 26696 prints "fehler on date !!" end

310

prison "ok !"

See

n wr a bunch of Awendenung Andenth terr Graphkroutsin

year.

Alss Wolen Gamsatzstatissttisstates

force

texture.

100

I’m on the stately dated Syndhysstthehlen

110

ruses jhhires

120

say u(12)

130

we were eligible sneak

140

for i = 1 to 12 12 Differents : Noth

150

I mximalwets

160

max =

170

for i = 1 to 12

180

effect > maximum > maximum Then = u(i)

190

200

water
v = 12*4096+5*16+11 would be adhested tering Masschiinout

220

prince (147)

swear fleeing

230

technology

1 1 your 21 snows : I do Turn

print chr$(17);

19

240

Gunchan graphics

250

260

for i = 1 to 12
prison spice(2); sys v, u(i)/max * 180 , the

270

water

280

atively

290

We had moatersummer

300

for i=1 your 12

310

Printing right$(s +str$(i),3);

320

water

330

Get at $, 330

400

410

420

did humsate
date 12000, 13500, 11000, 8000, 14000, 9000

date 13800, 14000, 12750, 14000, 13800, 17200

Nach dem Beispiel Four Balkengraphyen Valkens if they wir

unsafe

ineine Funkction myths harzuntalen Balkengraphik years.

In Ziile 100 wit

Farbcode Dann Saint

building.

ary

Illdschect Bildschect, Hintergrund Aug

screen

slope

drift of Cursor in the Gebraacht zweitis.

In Zielle

120

a

130 Funkation of Funkation von -2.2 2.2 blunts,

stack

Mulyplikaration 300

within

Resident

GroBenornung

jabacht adam dem SYS-Befhephhl.

100

input ".c:if: c<1 gold c>15 100

110 h=12%4096

prints chr$(147)tab(2); Poke53281.0

120

for 1=-2.2.2 stap .2

130

sys h,exp(-i*i)*300,c : nothing

20

2.4 EINE EINESTIONS EIGMENSATION

Eine der Besonderheitens ten Commodores 64 Asts of Moccelket,

user Zeicenerer in RAM-Speeicer sugar. Less

biett Ihnen said, Zeicle 19th sygene sidens.

Wie wid we eichen defering you?

Jeses Zeicen Gechen Six Zeicenmatrix Synnatrix Zeicenmatrixs

bysmmet, 8 * 8 Punkten Besteht. Jeder Matrixunkt

wrad hard Bit edi Zeicengener Bits, 64

Bits 8 Byte. Ist Null Null, I’m going to be entering

Punkt of nichazt niche. Ein gestures Bittzthes Bit

einen gestures Punkt in the Zeicenmatrix. Sleep

zealine Program of Matrix Zeicans Zeicans Zeiclenes dem

Bildschrm years. Since editing Diree

Au PEEK-Funkation aus Kapiel 9.5 - ladders Gebens Geben Sie deshalb Sie

Zerest Zears Siee Dress Engines.

1@@ PERINT "Tee"
119 INPUT "BITTES EINGEBEN ";H$;H$

129 "S" ASS :C=PEEK(AAI24) |

138 PRINT:RINT:RINT
148 CG = 1344096 : START START DEICHEN

GENERATORS

1598 BESTIMMUMMONG YOHMUNG YOHS ODER ODER

GRAF IKMODUS

169 B = <PEEK(S3248+245 2> * 1024

178 FOR I = to TO 7189 Z =USR (CG+B+S#C+I> : REM: MATRIX ZE

GET ILENTITT

196 FOR J=? TO 8 STEP -1

200 A = Z AND 2tJ
216 IF A THEN PRINT "#"G: GOTO 230

226 PRINT ".";
235 NEXT: PRINT: HEXT

21

The program asks for the character whose matrix you

want to watch. The character's screen code is displayed in line

120 brought into variable B. Line 140 checks for uppercase/lowercase
or large/graphics mode. Line 160 is the starting position

the character matrix in the character generator. In line

180 determines whether a matrix point is set or not.

Depending on this, either a star or a point will appear

drawn. Enter a "T" and you'll get the following

Output:

KERR

KK,

KR.

“KR

IK,

Now that you have looked at the matrix of individual characters

we can start defining our own characters.

To do this we need to move the character generator from ROM to RAM
transferred and then tell the operating system where the new one is
Character generator is located. At the same time the
Screen memory by address $C400 (decimal from 50176 to
51175) moved. This can be done from BASIC with a

POKE loop happens. We'll use that again for this

USR function from Chapter 9.5.

100 FOR I=13*4096 TO 14*4096-1

110 POKE I+4096,USR(I) : NEXT

120 POKE 53272.24 : POKE 56576.148 : POKE 648.196

22

After running this program we can use

Define our own characters using the following program. This

Program asks for the character you want to change. Then

you can enter the character matrix; a star means

again a set point and a point means no again

Point set. If you want to end the program, enter

Please enter the word “END” as a symbol.

166 REM CHARACTER DEFINITION
116 CG=14#460596: FEM BASE OF CHARACTER GENE

ERATORS

“46 IHFUT "Cl[eielenmeE

I CHEN ";: AS: IFAF="END

E" THENEHD

216 PRIHNHT"S"AF

224 C=PEERI12F4AISE+124)

1 234"
220 PRINT" Measbpiphpppe

say FOR I=da TO 7
316 PRINTI: :-IMPUTASC I>: IFLENSAFLCT>DSÖHSTH

II": GOTOZ 1A
EMPRINT'

2246 NEXT

400 B=(PEEK (S3248+24 .AND2>#1G24 : REM GR

OSs."GRAFTE -MoODUS
405 AIL=CG+EB+C#3
4160 FOR Isa Tü? : 2=6

d70 FOR Jedi Ta 7
1) .S-J.139="e" I) EZT I
430 2=2-CMIDUScASc

440 NEST

4306 POKE AItI.2 : REM CHARACTERS

466 FÜKE ADI+1l@244+1.255-2 : REM RYS SIGN

EN

47°70 NEXT

4309 GOTO 2aa

23

2.5 MODIFICATION OF THE CHARACTER SET USING JOYSTICK

For certain purposes it is often desirable to use special ones

To have characters and symbols available that can be used on keypads

print appear immediately. This includes, for example, Greek

Letters commonly used in mathematical formulas

become.

Small game figures are also conceivable

can be created with sprites, which is a bit

more complex both to create and to handle

is.

If you are familiar with the appropriate procedures, you can

First draw your figures as a grid representation

Draw a sheet of paper and then put the determined values into it

Duplicate of the character generator poke, but that's determined

not for everyone.

We therefore wrote a small program with help

which you can easily enter the desired character on the screen

allow it to emerge and follow its development.

The only requirement for this is a joystick on the control

port 1. |

The way the program works is that initially two

Duplicates of the character generator are copied into RAM.

A character is taken from the first duplicate and as

Sprite displayed, once in its original size and

once in twice the size for better readability.

A flashing dot appears in the sprites, the so-called

Microcursor, which you can now move with the help of the joystick

can.

The desired action, namely draw line, delete line

or just position it by pressing the button

Select on the joystick.

If the sign turns out to your satisfaction, so be it

24

press the Fi key.

The new character will now be moved to the position shown

Alternative character set (2nd duplicate).

If you want the displayed character to remain unchanged, press

press the G key.

Now you can edit the next character.

After you have edited all 512 characters, exits

the program. |

Why 512 characters?

Well, for one operating mode, namely Large/Graphics or GroB/
Small font, there are 128 displayable characters. SameCharacters again in reverse representation makes 256.

This results in a total of 512 for both operating modes.
The positions associated with the characters in the character generator
can be found on pages 132ff in the operating manual of the C64
remove. |

Before we discuss the program in detail, you should

the meaning of the variables and memory addresses used
know. |

First the variables:

C base address of the 1st duplicate of the next

pointing sign |

CD base address of the character to be transmitted in the 2nd duplicate
CP character position counter in the range 0-511

JB State of the button on the joystick

JR joystick stick position

JS address of control port 1

MA counter for the operating status |

PO microcursor position within the addressed byte
PP address within the sprite data where the

Microcursor is located

PV instantaneous value of the byte of the sprite data, which is represented by

25

the joystick is currently addressed

SB base address of the sprite data

V Base address of the video controller
X x position of the sprites on the screen

XJ x position of the microcursor controlled by the joystick

Y y position of the sprites on the screen

YJ y position of the microcursor controlled by the joystick

Now the addresses:

56

Higher-order byte of the pointer to the memory surface

border

648

Pointer to the start of the videoram

832

Starting address of the cartridge buffer.

Since this is not available elsewhere within the program

is required, the machine program is behind it.

lays.

50169

Pointer for sprite 1

90170

Pointer for Sprite 2

93272

Pointer for videoram and character generator inside

of the video controller

56576

Here are the two bits for defining the

16k range for those connected to the screen

hanging storage.

The following is the step-by-step introduction to the program:

10 The memory cap is reduced because

here is the first duplicate of the character set

should be deposited.

30-70 The sprites 1+2 are switched on and their

Color set.

26

Now the sprite pointers are loaded and then

Sprite 2 on double size display
switched. |

The sprite data is first deleted and

' then the sprites approximately

into the screen

positioned in the middle.

1000-1010

The machine program is here.

For those interested, below is the assembly

spelling:

be

Prevent interrupt

lda #$33

Character generator to

sta 1

lda #0

sta $5f

sta $5a

sta $58

lda #$dO

sta $60

lda #$f0

sta $59

lda #$eO

sta $5b

jsr $a3bf

lda #$37

sta 1

cli

rts

make accessible

dude

Start of block lo

old

Block end lo

new

Block end lo

old block beginning hi

new block end hi

old

End of block hi

Block move routine

Allow interrupt

back to Basic

1020-1040

The machine program is in the

cassette

buffer brought and executed, that is, by

The character generator creates two duplicates

generated.

1060

The operating system is changed

27

conditions communicated.

The position of the character generator has been changed

and (inevitably because of the hardware) videoram.

The characters you see now on the screen

see, already come from the 2nd duplicate.

2000-2360 The characters are now inserted one after the other into the

Sprite data is transferred and can be changed

become.

2380 After treating all characters the

Ability to save the new one

Character set offered.

4000-4070 The joystick is queried and depends on

the position of the stick and button

branched.

9000-12040 Depending on the position of the joystick, the

Cursor position updated.

13000-13200 The position of the joystick is set to the

Point position of the microcursor converted and

this point is switched on and off alternately.

20000-20060 Here the sign found to be good is converted into the

2. Transfer duplicate.

30000-30200 The newly created character set can be displayed here

Floppy disk (8) or cassette (1) is saved

become.

Another special feature of this program is that:

the modified character generator does not have basic memory

documented. It is located in the RAM under the operating system

(This is to be taken literally, because as we all know, they overlap

on the C64 Ram and Rome).

The videoram now has the start address 49152, which you please

want to take into account when you poke into it. Through the

Unfortunately, the hardware of the C64 means that when you move the

Character generator also causes a shift in the videoram

28

takes place. You will find this problemin our book

“64 internally” explained in more detail.

Finally the program listing:

10

poke56, 144:c1r:v=53248

30

pokev+21.6:pokev+40.1:pokev+41.1

40

poke50169, 16:poke50170, 16:pokev+23.4:pokev+29.4

50

fori=0t062:poke50176+i1,0:next

60

x=150:y=100:pokev+4,x:pokev+2,x-40:pokev+16,0

70

pokev+5,y:pokev+3,y+19

1000

data120,169,51,133,1,169,0,133,95,133,90,133,88,169

'208, 133.96, 169,240, 133

1010

data89, 169,224,133,91,32,191,163,169,55,133,1,88,96

1020

fori=832t0832+33:reada:pokei,a:next

1040

sys832:poke850, 160:sys8B32

1060

poke53272,8:poke56576, peek(56576)and252:poke648, 192

1070

printchr$(147)

2000

c=9*4096

2020

forcp=0t0511:printchr$(19)cp:sb=50176

2040

:nexti
fori=0t07:pokesb+3*i,peek(c+i)

2360

c=c+8 :gosub4000: nextcp

2380

pokevt+21.0:goto 30000

4000

pp=832
x3=0: yj=0: js=56321:sb=50176:

4020

Jand 15: jb=(255-peek(js) Jand16
jr=(255-peek(js)

4030

ifjbthenma=mat1: ifma>2thenma=0

4040

6000, 4020, 7000, 8000, 9000, 4020,
onjrgoto5000,

10000, 11000, 12000

4045

ifpeek(203)<>4then4066

4050

printchr$(19)chr$(17)chr$(17)chr$(17)chr$(18)

"save" :gosub20000

4055

printchr$(19)chr$(17)chr$(17)chr$(17)chr$(17)" "

'return |

4066

ifma=1thenprintchr$(19)chr$(17)chr$(17)chr$(18)" set"

29

4067

i£fma=2thenprintchr$(19)chr$(17)chr$(17)chr$(18)" clr"

4068

ifpeek(203)=26thenreturn

4069

ifma=Othenprintchr$(19)chr$(17)chr$(17)" "

4070

gosub13000: goto4020

5000

rem above

5020

YJ=yj-1:ifyj<Othenyj=0

5040

gosub13000:goto4020

6000

rem below

6020

YJ=yjt1:ifyj}>7thenyj=7

6040

gosub13000: goto4020

7000

rem left

7020

x)J=xj-1:ifxj<Othenxj=O

7040

gosub13000:goto4020

8000

rem top left

8020

xJ=xj-1:i£fxj<Othenxj=O

8040

goto5000

9000

rem bottom left

9020

xj=xj-1:ifxj<Othenxj=O

9040

goto6000

10000

rem right

10020

XjJ=Xj+1:ifxj>7thenxj=7

10040

gosub13000: goto4020

11000

rem top right

11020

xjJ=xj+1:ifxj>7thenxj=7

11040

goto5000

12000

rem bottom right

12020

XJ=Xj+1:ifxj>7thenxj=7

12040

goto6000

13000

rem

13020

pp=sbtyj*3+int(xj/8)
: pv=peek(pp)

13040

po=xj-int(xj/8)*8

13060

ifpvand2f(7-po)thenpokepp, (pvand(255-2#(7-po) ) }

:90t0 13100

13080

pokepp, (pvor(24(7-po) ) )

30

13100 ifma=1thenpv=(pvor(2®#(7-po)))

13120 ifma=2thenpv=(pvand(255-24(7-po)))

pokepp, pv: return
13200 fori=Oto50:next:

20000 rem new character transferred

20010 cd=c+20472

20020 fori=0to7

peek (sb+3*1i)
20040 pokecdti, peek(sb+3*i) :pokecd+i-20480,

20060 nexti:return

30000 input"save";r$

30020 if r$<>"j"then 30200

30040 input"name ":n$

30060 input “device address “;ad

30080 poke186,ad:poke781,0:poke782,160

144: poke780, 251
30120 poke251,0:poke252,

30140 poke183, len(n$) :poke187, 680and255: poke188 , 680/256

30160 fori=1tolen(n$) |

30180 poke679+i,asc(mid$(n$,1,1)):next:sys65496

30200 poke56, 160:clr

The following small program makes it possible

Read in the character set again and activate it.

Load 100 rem character set

110 input"name ";n$

120 input "device address";ad

130 poke186,ad:poke781,0:poke782,224

poke183, len(n$)
140 poke780, 0: poke185,0:

poke188 , 680/256
150 poke187,680and255:

: poke679+i,asc(mid$(n$,1,1)):next
160 fori=1tolene(n$)

170 sys65493:rem load

peek (56576) and252: poke648, 192
180 poke53272,8:poke56576,

190 printchr$(147)

31

2.6 THE SPLIT SCREEN

A feature of the video controller in the Commodore 64 that

very beautiful effects are possible, but little has been described yet

and used - the grid interrupt.

To explain to you what this is all about, we have to

Let's go a little further and make it clear to us how
Your computer's video controller produces a television picture.

The television picture is made up of individual lines
You can see clearly once you look at the television picture
take a closer look. You can then definitely see that
For example, a letter is made up of eight lines. The
Video controller now has a register that always has the number
of the TV line that is currently being displayed. This
Register has the number 18, so it is at the address
93248+18 = 53266. Question the content of this
Register off,

PRINT PEEK(53266)

so you get random values that are instantaneous

Specify the grid line shown. However, there in a second
25 television images are displayed, we can do this in BASIC
not evaluating quickly enough. So we have to go to

Moving programming to machine language. This is what comes to usanother feature of the video controller: The

Video controller is able to run a program then

to interrupt when watching a particular grid line

is displayed. You can enter the number of this grid line

by writing to the same register of the video controller

determine. Such an automatic program interruption

is called an ‘interrupt’. Furthermore, the interrupt must be carried out by the

32

d
t

A
I

Video controller

be permitted.

This is done through

describe

des

Interrupt mask register.

One like this

However, programming is just

possible in machine language.

We therefore have a small program for

you wrote,

that takes advantage of these opportunities for you.

10:

20:

25:

35:

40:

50:

55:

60:

033C

033C

033C

033C

033C

033C

033C

033C

100:

033C

IRQALT

IRQVECT

GRID

TRQREG

MASK

FRAME

COLOR

ICR

.OPT

Pi

$EA31

$314

$D012 ;;

grid line

$D019 s

Video interrupt flag

$DO1A

Video controller interrupt mask

$D020 |;

Frame color

$DO21

background color

$DCOD |;

Timer interrupt flag

110:

033C

RETIRQ

$FEBC s

Return from interrupt

120:

OOFB

130:

OOFC

140:

OOFD

150:

OOFE

160:

OOFF

LINE1

LINE2

COLOR1

COLOR2

$FB

e+

r+

r+{

+4

190:

033C

828

- Cassette buffer

200:

033C

SETUP

210:

033D

AQ

220:

033F

8D

03

230:

0342

AY

240:

0344

8D

03

260:

0347

A5

$< IRQNEW

IRQVECT

#> IRQNEW

IRQVECT+1

LINE1

270:

0349

8D

THURS

GRID

; Grid line for interrupt

275:

034C

11

THURS

GRID-1

275:

O34F

29

IF

#$7F ;

Delete high byte

275:

0351

8D

11

THURS

GRID-1

280:

0354

AS

81

#$81

Allow IRQ through grid

33

300:

0356

8D

THURS

STA MASK

310:

0359

98

320:

035A

60

CLI

RTS

400:

400:

035B

AD

19

THURS

IRQNEW LDA IRQREG ;

035E

8D

19

THURS

STA IRQREG ; Clear interrupt flag

410:

0361

29

01

AND #1

420:

0363

THURS

07

BNE SCREEN ; Interrupt by grid line?

430:

0365

AD

O.D

DC

LDA ICR ; Clear interrupt flag

430:

0368

28

CLI ; Allow grid interrupt

435:

0369

4c

31

JMP IRQALT

450:

460:

470:

036C

AD

12

THURS

SCREEN LDA GRID =; Read grid line

O36F

C5

FC

0371

B.O

O.D

CMP LINE2

BCS SECOND; greater than or equal to 2nd value?

480:

0373

A5

FD

LDA COLOR1

490:

500:

510:

520:

560:

570:

580:

0375

8D

20

THURS

STA FRAME ; Set color 1

0378

8D

21

THURS

STA COLOR

037B

A5

FC

LDA LINE2 ; next interrupt at 2nd value

037D

4c

8A

03

JMP EXIT

0380

A5

FE

SECOND LDA COLOR2

0382

8D

20

THURS

STA FRAME ; Set color 2

0385

8D

21

THURS

STA COLOR

590:

0388

A5

FB

LDA LINE1 ; next interrupt

600:

610:

038A

8D

12

THURS

EXIT STA RASTER ; at line 1

038D

4c

B.C

FE

JMP RETIRQ

Here's another loading program

in BASIC. Enter this

program first,

save it and start it

with RUN’.

34

100 FOR I = 828 TO 911

110 READ X : POKE I,X : S=S+X : NEXT

120 DATA 120,169, 91,141, 20, 3,169, 3,141, 21, 3,165

130 DATA 251,141, 18,208,173, 17,208, 41,127,141, 17,208

140 DATA 169,129,141, 26,208, 88, 96,173, 25,208,141, 25

150 DATA 208, 41, 1,208, 7,173, 13,220, 88, 76, 49,234

160 DATA 173, 18,208, 197,251,176, 13,165,253,141, 32,208

170 DATA 141, 33,208,165,252, 76,138, 3,165,254,141, 32

180 DATA 208,141, 33,208,165,251,141, 18,208, 76,188,254
190 IF S <> 10677 THEN PRINT "ERROR IN DATAS!!" :END

200 PRINT "OK"

We have a program for you as an example program
developed that allows you to define a screen area
with a different background color. You can
thereby highlighting one or more lines of the screen. Um
You can keep the program as universal as possible
both the background colors of the area to be highlighted
as well as those of the rest of the area using POKE commands
determine. You can also select the grid row where the
Switching to the second background color should happen
determine. Of course, this also applies to the number
Grid line that returns to the first color
is switched back. This may seem a bit complicated
sound; However, try the following program
once and you will see the effect.

With this program you can create a colored bar from the
Width of one screen line (8 grid lines) by pressing
the ‘cursor up’ and ‘cursor down’ keys by one each
Move line up or down. Note that this
doesn't happen all at once, but by 8 grid linessuccessively. You can use the function keys to
Change the color of the bar and the rest of the background.

35

100

110

21=251:22=21+1:F1=22+1:F2=F1+1
Z=50:SYS828:REM INITIALIZE INTERRUPT

120

Z+8: POKEF 1,6: POKEF2, 8
POKEZ1,2Z:POKEZ2,

150

GETA$ : IFA$=""THEN150

160

(17) THENGOSUB200
IFA$=CHR$

170

(145) THENGOSUB300
IFA$=CHR$

180

(133 ) THENGOSUB400
IFA$=CHR$

190

(134) THENGOSUB500
IFA$=CHR$

195 GOTO150

: Z=Z+1: POKEZ1,Z:POKEZ2,Z+8:NEXT
200IFZ<240THENFORI=OTO7

210 RETURN

300 IFZ>S5OTHENFORI=OTO7: Z=2-1:POKEZ1,2:POKEZ2, Z+8:NEXT

310 RETURN

400 POKEF1,PEEK(F1)+1AND15:RETURN

500

: RETURN
POKEF2 , PEEK (F2)+1AND15

You

You can modify the program for your purposes by:

into the memory cells 251 to 254 in sequence

poke the grid line, which switches to the second

Color should take place, then the grid line where again

is switched back to the original color. The

The next two addresses 253 and 254 contain the color code

the first and second colors. This applies to the grid lines

the following area:

The grid line 50 corresponds to the upper image boundary (there

where the frame begins), while the beginning of the lower one

Frame corresponds to grid line 250. One line of screen

is divided into 8 grid lines. This means you can also

Border between two different colors in the middle of one

Lay screen line.

However, switching the background color is not the case

only effect you achieve with the grid interrupt

36

can. You can configure all the parameters of the video controller

Change interrupt-controlled. Here are a few suggestions:

Superimpose a line of text on a high-resolution graphic

or Switch between two graphics pages. you see

then, for example, a graphic image in the upper half of the screen

and a second one in the lower half. Through constant change
You can do this on the grid line where the switch occurs

e.g. blend two graphic images from top to bottom,
similar to the colored bar in our example. Yours

There are no limits to imagination; maybe

Also try out different character sets

different parts of the screen!

With this technique you can also achieve effects that...

Commodore 64 can't actually do that out of the box, e.g.

Is it possible using the grid interrupt to have more than 8

Display sprites at the same time. You can do this in the
display eight sprites in the upper half of the screen. At
When you reach a certain grid line, simply set the
Sprite pointer and coordinates around and you can in the

display another 8 sprites in the lower half. Of course you can
To do this, divide the screen into more than two parts

divide.

37

2.7 SOFT SCROLL - A THING FOR PERFECTIONISTS

You will surely know what scrolling means: The

Screen scrolls up one line. There

disappears the top line and at the bottom of the screen

a new line appears.

By soft scroll we now mean the possibility of a new one
to let the line appear slowly in the image, while the old one
Line slowly disappears. This gives us this opportunity
Video controller in hand. We use the register for this
17. The lowest three bits allow shifting by
a total of 8 grid lines, which is exactly one screen line
corresponds. Now a new line on the screen
To make it appear, we can use the video controller

instruct to display only 24 lines. This is then the one

Case when bit 3 of register 17 is cleared.

So we now proceed as follows: First we switch
change the screen to 24 lines and position it
remaining screen content so that the top 24 lines
be displayed. Now we can enter the invisible 25th.
Write something on the line and the visible part of it
Screen up by 8 grid lines equal to one line
and the top line disappears at the same time.

In addition to scrolling up (or down), the
Video controller still allows horizontal soft scrolling to the right
or left. Register 22 is used for this purpose. The bottom three
Bits are again responsible for moving columns,
while bit 3 enables the display of 38 columns.

The example program scrolls the screen up.

38

100

VIDEO = 53248

110

LINE = VIDEO + 17

115

X$=CHR$(19): FOR I=1 TO 24: X$=X$+CHR$(17):

NEXT

120

130POKE LINE ,PEEK(LINE) AND NOT 8

POKE LINE 'PEEK(LINE) AND 248 OR 7

140

N=N+1: A$="ROW"+STR$(N): GOSUB200: GOTO140

200

PRINT : PRINT X$ A$;

210

FOR I=7 TO O STEP-1

220

POKE LINE, PEEK(LINE) AND 248 OR I

230

FOR J=1 TO 100 : NEXT

240

NEXT: RETURN

A string from once Cursor Home’

and 24 times

“Cursor Down” will

To

‘Cursor positioning

the 25th

Line is defined.

120 bit 3 in register 17 of the video controller

deleted. This increases the display to 24 lines

switched.

130 bits O to 2 are set. This will make them

top 24 lines of the screen

displayed,

while the 25th line at the bottom of the screen

remains invisible.

140 The counter N is incremented in A$

Text to be output for the subprogram

passed that is then called.

200 The PRINT command causes the

screen around

moved up one line.

Then he will

Text to be output in the last

screen line

written.

210 -240 This loop moves the screen by eight

Grid rows up. The

Delay loop

determines the speed at which you scroll up

will.

39

2.8 THE KEYBOARD ASSIGNMENT AND THEIR CHANGES

The keyboard of the Commodore 64 is designed as a matrix with 8

Rows and 8 columns arranged. The lines are the

8 lines with port A (address $DCOO = 56320) of CIA 1

connected and the 8 columns are on port B (address $DCO1

56321) from CIA 1. When querying the keyboard (address $FF9F

65485) the keyboard is queried line by line by

A signal is applied to each other via port A on each line

will. If a key is now pressed, you can use port B

Query the column of the key you just pressed. From line

and column number now becomes the key number between O and 63

calculated. 64 means no key pressed here. The assignment

tion is shown in the table above. This value will

stored in address $CB equal to 203 for every query; the

Number of the last key pressed is stored in $C5 = 197

lays. The status of the special keys is displayed during keyboard

query stored in address $028D = 653. Bit O0 means

SHIFT, bit 1 is reserved for COMMODORE and bit 2 stands for

pressed CTRL key. The assignment of a specific character

to a button happens via different tables that

Determine ASCII code assigned to a specific key

will. Because in the Commodre 64 all keys have four functions

There are 4 such tables. Also note the

Distinction between left and right shift key. Shift

Lock is connected to the left shift key.

40

line -------------------------- -------------------- ---------- - --

O DEL RETURN CURRIGHT F/7 F 1 F3 F5 CURDOWN

1 3 W A 4 Z S E SHIFT LEFT

2 5 R D 6 c F T x

3 7 Y G 8 B H U V

4 9 I J OÖ M K O N

5 + P L - ® .

6 POUNDS * HOME SHIFT RIGHT = Tr /

7 1 PFL CTRL 2 EMPTY C= Q STOP

The first table gives the ASCII code when the button alone

was printed. The code is in the second table

pressed Shift key, Table 3 applies to pressed
Commodore key and table 4 finally is for the

Control button responsible. An entry of $FF = 255 in this

Table marks an invalid entry. The buttons

“Shift”, Commodore’ and °CTRL’ are treated separately;
the corresponding entries in the first table are 1, 2

and 4. This status is additionally $28D = 653

saved. Bits 0, 1 and 2 correspond to these three

buttons.

If we now want to assign a different code to a key,

we have to change the corresponding entry in the table.

Since the table is in ROM, this is not easy

possible. However, the Commodore 64 also has RAM in

this memory area so that we can put the operating system in that

Copy the RAM “below” and make the changes there

can do. This can be done with a small BASIC program

happen. At the same time, BASIC must also be included

underlying RAM can be copied.

41

100 for i = 40960 to 49151: copy rem basic-rom

110 poke i, peek(i) : next

120 for i = 14*4096 to 65535 : copy rem operating system

130 poke i, peek(i) : next

140 poke 1, 53

Lines 100 to 130 copy the operating system and Basic

from ROM into the RAM underneath. Then in line 140

switched from ROM to RAM, so that the operating system is now

running in RAM. Now we can go and get the codes

change individual keys.The German keyboard usually has Y and

N

swapped compared to the American keyboard, i.e. 2Z

is next to T and Y is next to X.

To do this we first need the addresses of the 4 tables:

Table 1 unshifted $EB81 = 60289

Table 2 with shift $EBC2 = 60354

Table 3 with Commodore $ECO3 = 60419

Table 4 with control $EC78 = 60536

If we now want to change a code, we have to go from the
Matrix table determine the number of the keys that we change

want. The numbering runs from O at the top left to 63 at the right

below. So Y is number 25 and Z is number 12. Into this

So now we have to write the new code.

150 t1 = 60289 : rem table 1 without shift

160 t2 = 60354 : rem table 2 with shift

170 t3 = 60419 : rem table 3 with commodore

180 t4 = 60536 : rem table 4 with control

42

m
U

,
n
i

200 poke t1+25, asc("z")

210 poke t1+12, asc("y")

If you now press the “2” key, a “y” will appear on it

screen and vice versa. To use lowercase and uppercase letters

You must also change the entries in Table 2

change:

220 poke t2+25, asc("Z")

230 poke t2+12, asc("Y")

If the corresponding control keys are required, you can

You can also change this:

240 poke t4+25, asc("z")-64

250 poke t4+12, asc(“y”)-64

So with the help of these 4 tables you can get 4*64 equals 256

define different characters. You can use the RESTORE button

don't redefine; she is directly with the NMI management

processor connected. The keyboard definition remains as long

until you press Stop/Restore. This will open again

the ROM switched back. But you can do this too

prevent this by setting the memory configuration value

change in RAM. This could be done in our program above, for example

Line 190 happens:

190 poke 64982, 53

43

Instead of getting the number of the key from the matrix,

You can also let the program determine it itself.

Program with automatic number determination could

A

e.g.

look like this:

100 dim t(4): for i=1 to 4: read t(i): next

110 data 60289,60354,60419,60536

120 for i=14*4096 to 65535: poke i, peek(i): next

130 for i=40960 to 49151 : poke 1, peek(i) : next

140 poke1, 53: poke64982, 53

1000 print "please press the key to change ";

1010 get a$: if a$="" then1010

1020 print a$

1030 a = asc(a$)

1040 for j=1 to 4: t=t(j)

1050 for i=0 to 63: if peek(t+i) <> a then next: next

1060 print "please specify desired occupancy":

1070 get a$: if a$="" then 1070

1080 print a$

1090 poke t+i, asc(a$): goto 1000

n
a

44

WITH COMFORT
CHAPTER 3 DATA ENTRY

3.1 CURSOR POSITIONING AND QUERY OF THE CURSOR POSITION

For comfortable input and output on the screen

it very useful to place the cursor directly on any desired

To be able to set the position of the screen. The Commodore 64

only has commands for positioning the cursor in a

Line, the TAB command and the POS function to query the

Column. The TAB command also only allows positioning

forward possible.

However, the operating system already maintains the routines

Positioning of the cursor ready. In two storage locations in

The zero page contains the row and column in which

the cursor is currently located. By querying these values with

PEEK we can find out the position at any time.

100 PRINT "THE CURSOR IS ON LINE" PEEK(214)

"COLUMN" PEEK(211)

If we want to place the cursor, it is not enough to put it in address

214 and 211 POKE the corresponding value. The operating

system still has to get the required ones from the cursor position

Calculate pointers for screen and color RAM. That's what it stands for

However, a routine is available in the operating system.

SET 100 REM CURSOR

110 INPUT "ROW ";Z

120 INPUT "COLUMN";p

130 POKE 214.2

140 POKE 211.8

150 SYS 58640

45

160 PRINT "TEST";

By calling this routine the cursor is sent to the

desired location.

Combining these two processes creates new ones

Programming options. You can in your

For example, the program can provide a status line in which, depending on the case

In this case, instructions will be issued to the operator. Around the

so as not to disturb normal output in its course,

remember the current position of the beforehand

Cursors and then put the cursor to output in the

Status line. Now output the message here. Afterwards

put the cursor back to the original position andcontinue with the program flow. A program excerpt looks

then something like this:

300 Z=PEEK(214): REM LINE

310 S=PEEK(211): REM COLUMN

320 POKE 214.0: REM CURSOR IN LINE O

330 POKE 211.10: REM CURSOR IN COLUMN 10

335 SYS 58640

340 PRINT "PLEASE INSERT DISK"

350 POKE 214.2: RESTORE REM LINE

360 POKE 211,S: REM COLUMN

370 SYS 58640

The numbering of the rows and columns goes from O to 24

or from O to 39.

46

3.2 TURN CURSOR ON AND OFF

The cursor to mark the current screen position

is automatically switched on on the Commodore 64 whenever

when the computer expects an input. This is e.g. then

the case when an INPUT command is used or when in

Work in direct mode. But make an entry with GET,

so no cursor appears. Sometimes you want to avoid this

so that the user can use the flashing cursor to point to the required

such input is indicated.

However, the Commodore 64 has a memory location called a flag

for the cursor works. Does the storage location contain the

He knows the value is one (or a value other than zero).

Calculator that the cursor is switched off and the corresponding

corresponding program location in the operating system (during the inter-

rupts) is skipped. A value of zero, on the other hand, means

for the computer that the cursor flashes.

We can take advantage of this fact if we...

Want to switch cursor on and off programmatically. We

For example, you can switch on the cursor before a GET command, then

Wait for the key to be pressed and then press the cursor again

turn off.

100 POKE 204.0: REM CURSOR ON

110 GET A$: IF A$ = "" THEN 110: REM WAIT FOR KEY PRESS

120 POKE 204.1: REM CURSOR OFF

130 PRINT A$;

It can happen that the cursor just then

is switched off when it is in the flashing phase. On the

A white square remains on the screen. This can

47

You can avoid this if you ask whether the

Cursor is currently in the blinking phase. There's one for that too

Storage location in the zero page. We also add the line

115 a.

115 IF PEEK(207) THEN 115: REM WAIT FOR CURSOR OFF

An application of this technique can be found in Chapter 3.6

48

3.3 REPEAT FUNCTION FOR ALL BUTTONS

When working with your Commodore 64 you will certainly do so

have found that the cursor control keys as well as the

Space bar is assigned a repeat function. Press

These keys are automatically repeated as long as

until you release the buttons again. This is particularly true

Cursor positioning and when editing programs

useful. However, with a POKE command the Commodre 64 can

Assign all keys a repeat function. This is for

Example very useful for word processing. The switch

can be carried out either in the program or in direct mode

and can also be reversed. The address to

Switching is 650. A value of O0 means that only the

Cursor keys are repeated automatically. Write along

POKE the value 128 into memory location 650, then all

buttons repeatedly. It is also possible to use the repeat function

to switch off completely. To do this, the value 64 must be in address 650

stand.

100 POKE 650,128: REM REPEAT FOR ALL BUTTONS

200 POKE 650.0: REM REPEAT ONLY FOR CURSOR

300 POKE 650.64: TURN OFF REM REPEAT COMPLETELY

The values until the button responds (repeat delay)
and the repetition rate are in memory locations 651 and
652. However, these values are always changed by the operating system
set so that changes can only be made by moving the operating
systems into RAM are possible (see also chapters 2.8 and

4.2).

49

3.4 THE WAIT COMMAND: WAIT FOR A KEYPRESS

A BASIC command that is rarely used is

the WAIT command. How does this command work?

WAIT A,B

With this command the contents of memory cell A are fetched

(as with the PEEK function). This value is determined via AND with B

linked. If the result is zero, then the whole thing happens again
repeated. If the value is not zero, im

Program flow continued. From this description goes

already clear that the value A is either the address of a

I/O ports or another peripheral module
or that the value of A was changed by the interrupt routine
must be. Otherwise the command would not work at all or

wait forever. You can find an application atData transfer between two computers in Chapter 7.2

The most interesting application is certainly waiting for
certain key presses. The memory cell 653 contains e.g.
the information about whether the three special keys SHIFT,
CONTROL or COMMODORE are pressed. You can with that
WAIT command wait until one of the three buttons is pressed
became.

100 PRINT "PLEASE PRESS THE CONTROL BUTTON"

110 WAIT 653.4: REM WAIT FOR CTRL

120

The program waits in line 110 until the

Control key is pressed. Press the SHIFT and keys
You can wait with COMMODORE using the following WAIT commands:

50

l
t
A

WAIT 653.1: REM WAIT FOR SIHFT

WAIT 653.2: REM WAIT FOR COMMODORE

If you want to wait for any key press, you can

You query the memory location 203. It's not a button

pressed, the address contains the value 64, otherwise it is

there the matrix number of the pressed key (see also

chapter 2.5). With

WAIT 203.64

the program waits as long as a key is pressed. With

WAIT 203.63

Waits for any key press. You can do this

For example, use the GET command to return the query to the

to save empty string.

100 WAIT 203.63

110 GET A$: PRINT A$;

The WAIT command will only end if this

time a key is pressed. Maybe they were already there

Data in the keyboard buffer, you can also set the number of

the keys pressed become the basis of the WAIT query.

100 WAIT 198,255: REM DATA IN THE KEYBOARD BUFFER?

110 GET A$: PRINT A$;

120 GOTO 100

51

3.9 THE ASSIGNMENT OF THE FUNCTION KEYS OF THE COMMODORE 64

The Commodore 64 has alphanumeric keys in addition to its

4 more function keys that are assigned twice. These buttons

can be used, for example, in the menu control to select certain

Select program parts. You can do this with GET on the keyboard

query and, depending on the key pressed, the

make the adjustment. The function keys have the following ASCII

Codes:

Fi => 133

F3 => 134

F5 => 135

F7 => 136

If you hold down the shift key at the same time, it increases

ASCII code at 4: |

F2 => 137

F4 => 138

F6 => 139

F8 => 140

A function key query can be implemented like this:

100 GET A$ : IF A$="" THEN 100

110A = ASC(A$)

120 IF A = 133 THEN 1100 : REM F1

130 IF A = 134 THEN 1200 : REM F3

140 IF A = 135 THEN 1300 : REM F5

150 IF A = 136 THEN 1400 : REM F7

160 IF A = 137 THEN 1500 : REM F2

170 IF A = 138 THEN 1600 : REM F4

52

180 IF A 139 THEN 1700 : REM F6

190 IFA 140 THEN 1800 : REM F8

200 GOTO 100

Depending on the function key pressed, the
corresponding routine branches. You can do this more elegantly with

an ON .. GOTO jump distributor.

100 GET A$ : IF A$="" THEN 100 ;

110 A = ASC (A$) : IF A<133 OR A>140 THEN 100
120 ON A-132 GOTO 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800

You can use this technique within programs.

However, we now want to introduce you to a program that...
allows you to assign a text to each function key
Pressing the button appears on the screen. With that you can
You can make working with your computer more comfortable.
Most of the time you will use the function keys with BASIC command words
e.g. RUN, LIST, PRINT, GOTO. It will also be possible
be, a function key a word including the
to assign the final RETURN key. This will make them
The above commands are then executed directly. For example, it is on the
Key Fi the text LIST and the code for RETURN, so through
Pressing the Fi key lists the program without any
further key operation would be required. The maximum
Length of a text when assigning the function keys
10 characters, the length of the keyboard input buffer.

As a special feature, you can use our program not only B
place different texts on the function keys (double
Assignment - with and without shift key), but even 16. To
In addition to the shift key, the distinction is also made by:
Commodore and Control keys. We choose the following

Assignment to the buttons:

53

Q1

F2

F3

F4

Q5

Q6

Q7

Q8

Q9

F10

Q11

F12

F13

F14

F15

F16

=)

Q1

F3

FS

Q7

Q1

F3

Q5

Q7

Q1

F3

Q5

Q7

Q1

F3

Q5

Q7

plus

SHIFT

plus

SHIFT

plus

SHIFT

plus

SHIFT

plus

COMMODORE

plus

COMMODORE

plus

COMMODORE

plus

COMMODORE

plus

CTRL

plus

CTRL

plus

CTRL

plus

CTRL

We will now introduce you to a machine program,

that the

Occupancy of the

Function keys with any

Texting

permitted.These texts are as DATA’s

filed and can

up to 10

Characters must be long.

; Function keys for cbm 64

190:

033c

200:

033c

210:

033c

220:

033c

230:

033c

240:

033c

250:

260:

033c

033c

keyvec

keypnt

buffer.buffer

nmbkeys

shift

keyno

lastkey

828

$28f

$f£5

$277

$c6

$28d

$cb

$c5

0
2
>

Cassette buffer
Keyboard decoding vector

Pointer to decoding table

Keyboard buffer

Number of characters in the keyboard buffer

0

Flag for SHIFT/CBM/CTRL

Matrix number of the pressed key

Number of the last key

94

265:

033c

270:

033c

280:

033c

temp

fmin

fmax

lastkey

$85: Lowest functional code?

$88 - Highest function key code

285:

033c

setflag

$eb26

287:

033c

oldkey

$eb48 - old keyboard evaluation

300:

033c

a9

47

init

300:

033e

ad

03

310:

0340

8d

8f

02

lda

ldy

sta

#<function ; Set Vector to a new routine;

# >function

keyvec

310:

0343

8c

90

02

sty

keyvect1

310:

0346

60

rts

330:

0347

a4

cb

function

ldy

keyno ; Number of the button

335:

0349

c4

c5

335:

034b

£0

0a

340:

034d

b1

£5

350:

034f

c9

89

360:

0351

370:

0353

380:

0355

04

85

03

Cpy

lastkey ; same as before?

beq

nofunc ; yes

lda

cmp

(keypnt),y ; Ascii code
ffmax+t 1 - with highest function key

compare

bcs

nofunc ; no function key?

cmp

#fmin

esp

function

390:

0357

48

eb nofunc

jmp

oldkey ; to the old keyboard evaluation

85

c5

400:

035a

400:

035c

410:

035e

410:

£035

410:

0360

c5

410:

0362

function

sbc

#fmin

sta

temp

asl

asl

adc

temp

asl

; times 10

420:

0363

8d

02

ldx

shift ; Flag SHIFT/CBM CTRL

430:

0366

430:

0368

440:

036a

440:

036c

01

Oe

02

07

cpx

#1 - SHIFT?

beq

shiftkey

CPX

#2 - CBM?

beq

chnkey

450:

036e

e0

04

Cpx

#4 > CTRL ?

55

450: 0370 dO 09 bne nospec

900: 0372 18 ctrlkey clc

900: 0373 69 28 adc #40

910: 0375 18 cbmkey clc

510: 0376 69 28 adc #40 ; Pointer to next table

520: 0378 18 shift key clc

920: 0379 69 28 adc #40

530: 037b aa nospec tax ; Pointer as index

540: 037c a0 00ldy #0

950: 037e bd 00 cf getkey 1da table,x ; Get occupancy from table

950: 0381 £0 09 beq endkey

560: 0383 99 77 02 sta buffer,y ; and write to keyboard buffer

570: 0386 e8 inx

570: 0387 c8 iny

970: 0388 cO Oa cpy #10 ; already 10 characters?

980: 038a dO f2 bne getkey

590: 038c 84 cé endkey sty nmbkeys ; Remember number of characters

600: 038e a2 ff ldx #$ff ; Keyboard code flag invalid

610: 0390 4c 26 eb jmp setflag ; Update flags

615: 0393 table = $cf00 ; Table with key assignments

The following BASIC program generates this

Machine program

)
A
F

n
i
“

and stores the texts for the 16 function keys in memory.
The texts themselves are in the program as DATA from line 300
stored and can of course be changed according to your wishes
become. Please note, however, that texts with more than 10
characters are not permitted. Do you want a command through
Pressing the function key is carried out directly, this must be the case
final 'RETURN' must be included in the text.
To do this, use a +’ (arrow) as the last character

to the left).
This character is then exchanged for the RETURN code when loading

Write

exchanged (line 250).

Do you want quotes

use within the text,

so use instead

56

whose

an apostrophe °: LOAD’$’,8 (line 260).

Coming

a comma within a text,

that's how he has to

complete

Text

enclosed in apostrophes (see line 330).

100

for i = 828 to 914

110

read x : poke 1,x S=St+x: next

120

data 169, 71,160, 3,141,143, 2,140,144, 2, 96,164

130

data 203,196,197,240, 10,177,245,201,137,176, 4,201

140

data 133,176, 3, 76, 72,235,233,133,133,197, 10, 10

150

data 101,197, 10,174,141, 2,224, 1,240, 14,224, 2

160

data 240, 7,224, 4,208, 9, 24,105, 40, 24,105, 40

170

data 24,105, 40,170,160, 0.189, 0,207,240, 9,153

180

data 119, 2,232,200,192, 10,208,242,132,198,162,255

190

data 76, 38,235

200

if s <> 10591 then print "error in datas!!" end

210

sys 828

220

store rem assignments in memory

230

ad = rem $cf00

12*4096+15*256

240

for i=O to 7

read x$

for j=1 to len(x$)

250

a=asc(mid$(x$,j,1))

if a=95 then a=13

:rem return

260

if a=39 then a=34

rem quotes

270

poke ad+10*itj-1,a next

280

if j<>11 then poke ad+1i*10+3-1,0 :

rem end criterion

290

next

300

data

list run, goto,

chr$(

310

data

?fre(O)e@,

save, print, then

320

datapoke,

peek(, print#, input#

330

data “load’$°,8”, next, gosub, return

The texts of the function keys are stored in the free RAM area

Address $CFOO stored.

Is this area occupied by you?

or

Do you want a different memory area for the keys?

5/

texts, you must enter this address on line 230

and also the address in the DATA statements

change line 170. To do this, replace the fifth and fourth last ones

Element (O and 207) by lo and high byte of the new

Address. If you want to use a different address, you must

160 bytes are available there (16 keys times 10

characters).

If you want to change the function key assignment, all you have to do is:

the program with correspondingly changed data from line 220

to let it run.

By pressing RUN/STOP-RESTORE the function key

definition repealed. With

SYS 828

In such a case you can restore the assignments

activate.

98

3.6 A CONVENIENT INPUT ROUTINE

You have probably often faced the problem that your...

Program "exited" after an input from the keyboard.

There were definitely two main reasons for this

available:

Input in the form INPUT A

A program abort occurs when the input

does not contain exclusively numerical characters.

Input in the form INPUT A$

The program is aborted if the RETURN button is pressed without

previous alphanumeric entry is pressed.

The input using GET A$ is syntactically safe

harmless, but many people shy away from it

required assembly of a string if the input

should contain more than one character. Also appears

no blinking cursor on the screen, what

However, it would be desirable as a request for input.

If you have overcome all obstacles when entering, so

can still change during further processing

Errors creep into the data obtained, which are not the case

Program termination must lead to the desired result

question.

A typical example of this is numerical input

via INPUT A$. |

So you ask for numbers via the keyboard, which you use

VAL(A$) into a numeric variable.

You probably have the possible conflict with INPUT A here

avoided, but an incorrect entry has the following

Effect:

59

You answer the above INPUT with 123R56. At the following one

Transfer with A=VAL(A$) you get the value 123 in A,

which was certainly not what you wanted.

You may now object that such input errors are not the case

Rule and also incorrect calculation results in the

commonly used by hobby programmers (which has no value whatsoever

means) created programs do not have far-reaching consequences

time.

However, we believe that your aim should be

to create "safe" programs, also with a view to

that you could definitely get into embarrassment at some point,

Write programs not just for your own use, and

which then makes your client at risk of crashing

You can imagine what the program will say.

We now want to give you a ready-to-use one

Introduce a subprogram that contains the ones outlined above

Problems to a large extent, even when it comes to program terminations

completely eliminated.

We will discuss this program in detail what

Should allow you to make certain parts your special

adapt to needs.

First of all, the meaning of the used in the program

Variables and memory cells are explained.

The following variables must be supplied when the routine starts

be:

MN=O A purely numerical entry is required

MN=1 The input can be alphanumeric

ML=O The length specified in IL is mandatory

ML=1 The maximum length is specified in IL

IL Mandatory or maximum length of the input

60

Furthermore, the following are used in routine:

CC Number of valid characters in IN$

CS Current column position of the cursor

CZ Current line position of the cursor

CP Length of the input field created by INSERT

MS Highest column position of the cursor during input

G$ Contains characters of the last GET

IN$ This returns the complete input

Storage locations used:

204=0 Switch on cursor

204=1 Switch off cursor

205 counter for flashing frequency of the cursor

207=0 Cursor in OFF phase

207=1 Cursor in ON phase

211 Column position of the cursor

214 Line position of the cursorAnother requirement for this INPUT routine to function

is the opening of the screen by 'OPEN 1.3°, since in
Line 35680 the generated input from the screen using

“GET#1° is read into a string variable.

Now to the individual program steps:

35020 The required variables are here

initialized and the cursor position for the

final GETU1 in line 35680 saved.

35060 A character is fetched from the keyboard.
35080 If this character was a RETURN, the
Entry initially viewed as finished and
depending on the value in ML the length is checked.

35100-35130 If the DELETE button was pressed, here

61

the length and position counters updated

will depend on whether the input field

only contains valid characters (CP=0) or whether it

was inflated by INSERT (CP<>O).

35140

INSERT is only executed if this does not happen

the length specified in IL is exceeded.

35160-35180

This must be taken care of with CRSR RIGHT and LEFT

be sure that the cursor is not in the input field

leaves.

35200

Start of the data filter depends on MN.

35220-35240

If the cursor is within the data field

and a pure numerical value is entered

was accepted, the character is accepted. Den

Validity range, here through the values 47 and

58 set, you can choose your own

Ideas vary.

In our example, these values limit the

the number range O-9 represented by it.

Basically you get the values for

Delimitation of the scope by:

Simply refer to the C64 manual, page

Read 135£ff.

For our example this means that the 47

under the sign O and the 58 above the sign

9 stands. All the characters that stand in between

i.e. O-9, are valid.

35300-35380

The same applies here as above, however

the scope also applies to letters

been expanded.

35400

If the input is not the required one

length (ML=0), it cannot be terminated.

35600-35690

The input field will now move from the screen to IN$

taken over, namely until either the one in IL

specified length is reached, or there is no

62

There is more data on the screen.

Before that, however, the cursor will return to the

Position he brought at the start of the routine

had, so that the GETül also at the beginning of the field

starts.

36000-36060 The cursor is turned off and the character in

G$ displayed on the screen.

The line numbering of the routine is chosen arbitrarily.

Of course, the routine can also be used with line numbers. 1000,

50000 or another number.

However, we recommend that you use subroutines in all programs

always put on the same one. This makes it easier

position

essential to programming and setting up new programs

from a block library.

Here is the INPUT routine:

35000

rem input keyboard

35020

:cp=0:ms=O
in$="":cc=0:cs=peek(211):cz=peek(214)

35040

poke204,0:rem cursor on

35060

getg$:ifg$=""then35060

35080

35600
g=asc(g$) :ifg=13thenonml+1goto35400,

35100

goto35060
i1fg=20andcp >Othencp=cp-1:gosub36000:

:rem delete

35120

ifg=20andcc >Oandpeek (211) >csthencc=cc-1:ms=ms-1

:Ccp=cp-1:gosub36000: goto35060

35130

>csthenms=ms- 1: gosub36000: goto35060
ifg=20andpeek(211)

35140

ifg=148andcpt+ms<ilthencp=cp+t1:ms=ms+1:gosub36000

:9g0t035060:rem insert

35160

ifg=29andpeek (211)<=cs+il-1ithengosub36000

:9g0t035060:rem cursor right

35180

(211) >csthengosub36000: 90035060
ifg=157andpeek

:rem cursor left

63

35200

onmngoto35300

35220

ifg>47andg<58andcc<ilandpeek (211)<=cs+il-1Ithencc=cc+1

:gosub36000: 930035360

35230

goto35360

35240

(211) <=cs+ilthengosub36000
ifg>47andg<58andpeek

:9g0t035360

35300

ifg<48or(g>57andg<65)or(g>90andg<193)org>218then35060

35320

ifcc<ilandpeek (211)<=cs+til-1ithencc=cc+1

: 90035360
: g0osub36000

35340

ifpeek(211)<cs+tilthengosub36000

35360

ifcp>Othencp=cp-1

35380

goto35060

35400

ifcc<>ilthen35060

35600

poke205.2

35620

ifpeek (207) < >Othen35620

35640

poke204.1

35660

poke211,cs:poke214,cz

35670

ifcc=Othenreturn

35680

get#1,9$:ifg$=chr$(13)then

in$=left$(in$+"

",11):return

35682

in$=in$+g$

35684

iflen(in$)<ilthen35680

35690

return

36000

poke205.2

36020

ifpeek(207)<>Othen36020

36040

printg$; :ifpeek(211) >msthenms=peek (211)

36060

return

Now how do you use the program?

Suppose you require the input of, for example, oneItem number for inventory management. This number

must

should have a fixed length of 6 digits

consist exclusively of numeric characters.

For this purpose the following must be programmed:

64

10 opent,3

100 11=6:mn=0:m1=0

110 print “article number “; :gosub35000

120 in=val(in$)
The desired article number is now available in IN
and you can be sure that it has exactly 6 digits and

contains only numbers.

For the previously entered article number. you need at the
Also add the name of the article. Since you have one
If you have set up a file with fixed-length sentences, you can do this
Description contains a maximum of 10 characters, but not

are mandatory.
This is what the associated program lines should look like:

200 il=10:mn=1:ml=1

210 print"label"; :gosub35000
The required designation is now in IN$ and is, if
shorter, to the length of 10 characters with spaces

filled up.

The price is of course also important. Of course this one has
also a variable length, let's say up to 8
digits, and contains only numeric characters,

so:

300 i1=8:mn=0:ml=1

310 print "price";:gosub35000

320 in=val(in$)
The required maximum 8-digit number is now in IN and

65

You can now enter the quantity, etc.

We hope this gives you a nice little routine

Having given your hand your trouble with syntactically

incorrect data can be forgotten.

The specifics used herein regarding the

Cursor positioning and input from the screen (GET#1)

You may also have inspired other programs.

i
r

66

3.7 THE “MOUSE” ON THE CBM64

The world of personal computers has a new buzzword
haunted: The “MAUS” |

What is behind this for the industry?

unusual expression?

Surely you know them from the video slot machines

so-called spin ball. This is instead of joysticks

or paddles, an actuator with which you

can move any characters across the screen.

In contrast to joysticks, whose levers can only be used in eight

Can move in different directions, the spin ball allows you to rotate
in all directions since this is a free

bearing ball, whose movement is based on two

Angular encoder is transmitted, one for each

the X and Y axes.

In slot machines, this ball is usually played with the

Palm set in motion. |

The “mouse” consists of a similar spinball, however

This is built into a handy housing that you can

Ball at the bottom, put it on the table and now with your hand

can roll back and forth.

By moving the case on the table the ball

caused to rotate by the friction on the table surface.

The current status of the

both angle encoders are transferred to the computer.

The sensible name for this arrangement may well come from the

similarity to a wind-up mouse.
Now how do you use the mouse? as serious

relevant programs?

To do this we have to go back a little:

If a program that has a wide range of users

accessible, the title “user-friendly” is rightly given

67

should carry, it is usually done according to the so-called

Menu technology must be constructed. This procedure has the

The advantage is that it can be handled by almost any operator

can.

The activities required by the user are carried out here

this, either individually or to choose from a group

of possibilities communicated via the screen.

The selection is made either by entering a

code letter or by moving the cursor into a

Field created on the screen for this purpose.

Now experts who understand something about ergonomics have

found that the process of selection was more convenient and

can also be done more safely if not on the keyboard

The appropriate letter was selected according to the eagle system

has to be done, but rather the whole thing in a soft armchair

can happen leaning back.

Of course, this assumes that the entire program is like this

can be handled, i.e. all the necessary ones

Inputs must be aligned with this system.

With the mouse, the cursor movements correspond

on the screen with those of the device on the table surface. This

You can reach the desired field by pressing an

button on the mouse is signaled to the computer.So much for the application and history of the “mouse”.

To give you the opportunity with this delightful
Animals can carry out their own experiments without purchasing them
of an expensive spin ball, we have the following small one

Program developed that works with an ordinary joystick

works on control port 2 of your CBM64.

Of course, the same level of comfort cannot be achieved
like with the real mouse, but to test the principle

it extremely useful.

According to a tried and tested method, we first want to give you the

68

use

zth variables and memory addresses and

ansh

let us discuss the program in detail.

Zunac

have the variables:

RO$

Sign for reverse on

RF$

Sign for reverse off

A$

B.S

Each character entered

After RETURN, contains all characters entered up to that point

A

Two-dimensional variable field that can be used for each

Position of the first four screen lines the ASC value

of the symbol shown there.

DR

original value of the data direction register in

56322. This value must be used when the

Program can be poked back there again.

Value caused by the joystick at control port 2

JS

Column position of the joystick

JZ

line position of the joystick

P.S

Column position for PRINT

PZ

Cell position for PRINT

Column position of the joystick cursor for indexing

A(y,X)

as above, but line position

?
y
L

Now the memory addresses:

96322

Data direction register for control port 2

58643

Operating system routine for querying the cursor position

58636

Operating system routine for positioning the cursor

781

Contents of the processor register X, which is at

SYS commands are loaded from there or stored there

will

69

782

as above, but processor register Y

204

=O Turn on cursor

=1

Turn off cursor

205

Counter for flashing frequency of the cursor

207

=0 Cursor in OFF phase

<>O Cursor in ON phase

Below is the program step by step

discussed:

Because control ports and keyboard are the same

The peripheral blocks in the C64 are occupied here

Keyboard switched off. At the end of your program

you have to poke the value in DR back to 56322,

otherwise the computer will no longer be able to access the keyboard

responded. From our example program saves you

only STOP/RESTORE.

10-50

This is where the menu field is displayed on the screen.

60-560

The array is filled with the ASC values in the

Screen lines 1-4 are filled with standing characters.

Will be the array with the row and column position

indexed, it returns the value of this

character standing on the screen.

680

The character returned by subprogram 5000

is brought to the screen.

700

The cursor position resulting from the PRINT

is saved because the menu field is new in 720

is constructed. This is necessary because at full

The lines on the screen are scrolled up and that

field can be destroyed.

760

The one displaced by the rebuilding of the field

Cursor is brought back to the old position.

780

If the last character was RETURN, the

70

Input of a line aborted. If you have one
If you wish to continue using the data, you should

take them here from B$.
Otherwise the entered character will be sent to B$

800

5020-5140

attached.
The cursor is saved and turned off. Then
the cursor is set to the position O and

switched on again.
The value provided by the joystick on control port 2

is brought to J.
Delay loop. This will cause the cursor

5160

5170

5180-5340

easier to control.
According to the position of the joystick lever

6010-6160

the cursor moves.
If the button on the joystick was pressed (5260), so
the character under the cursor (ab

6010) adopted to A$.
This is done with the cursor position of the joystick
Array A(y,X) addressed and that from it
resulting characters brought to A$ (6060).
Since the C64 has a double line organization,
i.e. the column counter can have 80 positions
although there are only 40 per screen line
characters, the column value becomes 6050
correct indexing of the array.

Using this program is extremely easy.
After RUN appears in the top left corner of the

screen the cursor.
You can now do this using the joystick
hopefully plugged into control port 2.
Does it now coincide with a character that you would like to search for B$
If you want to take over, simply press the button.

71As a receipt, the selected character appears for a few lines

underneath. Now look for the next character.

After selecting RETURN the line is completely in B$, from which

You can now take out the data.

Then proceed in the same way with the next one

cell further.

We hope you enjoy the program and you

encourages your own experiments.

Finally, the program listing:

1 dr=peek(56322) :poke56322,224:
ro$=chr$(18) :rf$=chr$(146)

5 printchr$(147):gosub10:goto60

10 printchr$(19)" , - . / 0 1 2 3 4 5 6 7 8

20 print"Qabcdefghijkl"

30 print" mnopqrstuvwxyaz "

40 print" "ro$"ret"rf$" “ro$"del"rf$" “ro$"f1"rfy" "

ro$"f£3"rf$" “ro$"£5"rF$F;

45 print" "ro$"£7"rfg"

50 returns

60 dima(4.40)

100 fori=0t013

120 a(0,i*2+1)=i+44

140 nexti

180 fori=0to12

200 a(1,i*2+2)=i+64

220 nexti

260 fori=0t013

280 a(2,i*2+1)=i+77

300 nexti

340 fori=1to3

72

N
I

4
+

s
i

r
i

N

y
h
t

360

a(3,1)=13

380

nexti

420

fori=5to7

440

a(3,1)=20

460

nexti

>00

fori=0to3

520

a(3,i*2+9)=i+133

540

a(3,i*2+9)=i+133

560

nexti

580

print:print

600

b$="":;x=fre(0)

640

gosub5000:get rem characters

680

printa$;

700

sys58643:pz=peek(211) :ps=peek(214)

720

gosub10

760

poke211,pz:poke214,ps:remsys58636

780

ifasc(a$)=13then600

800

b$=b$+a$

820

goto640

9000

rem

9001

rem ***** Soystick query *****

5002

rem

9020

sys58643:save rem print cursor

9060

pz=peek(781) :ps=peek( 782)

5070

poke205.3

5080

ifpeek(207)then5080

5090

poke204.1

5,100

j3z=0: js=0
poke781,0:poke782,0:

5120

sys58636:set rem joystick cursor

5140

poke204,0:turn on rem cursor

5160

j=peek(56320):query remote joystick

5170

fori=0t050:nexti

5180

if(j and1)=Othenjz=jz-1

5200

if(j and2)=Othenjz=jz+t1

73

5220

if(j and4)=Othenjs=js-1

5240

if(j and8)=Othenjs=js+1

5260

if(j and16)=Othen6000

5280

ifjz<Othenjz=O

5281

ifjs<Othenjs=0

5282

ifjs>30thenjs=30

9283

ifjz>3thenjz=3

59285

poke205.3

9290

5295

ifpeek
(207) then5290
poke204.1

5300

poke781,jz:poke782,js:sys58636

3340

goto5 140

6000

rem

6001

rem ***** assignment to a character *****

6002

rem

6010

poke205.3

6015

ifpeek(207)then6015

6017

poke204.1

6020

sys58643:rem get cursor position

6040

z=peek(781):s=peek(782)

6050

ifs>39thens=s-40

6060

a$=chr$(a(z,s))

6,100

poke781,pz:poke782,ps

6120

sys58636:rem load print position

6160

return

74

r
r
g

y
a

CHAPTER 4 BASIC FOR ADVANCED PEOPLE

4.1 CREATE A BASIC LINE IN BASIC

Have you ever tried a truly universal one

Write a calculation program?
By universal we mean a program with which
Any arithmetic operations can be done with any
Allow variables or constants to be carried out. The emphasis

is set to “any”.
Of course not, you will answer, because the essence of one
The program lies in it, according to previously determined

Algorithms to handle the data.
Sure, but imagine if you wanted one
arithmetic word processing (there is such a thing) to write.
In your text you have numeric fields that are arithmetic
should be linked together. This is the case, for example
Writing an invoice the case where the price fields of the
Individual items should be added together, then the total
is multiplied by the VAT rate and also

Packaging and postage to be added.
You can of course use a version of the above
Write an outlined program that is specifically tailored to the
the needs of invoice writing.
Such a program is certainly quite useful if you
Know the prices of the individual items and enter them accordingly

can.
A carpet dealer, however, who sells carpet from the roll
sold, this program is already doing a lot
heavier because the price of his goods depends on the square footage
depends. He has to calculate this first and only afterwards

73

multiplying by the price per square meter determines the value

make it available to the billing program described

can.

No problem, you'll say, let's just write one

another version for the carpet dealer.

Sure, but how many versions should be for how many retailers

then arise? |

Wouldn't it be much more practical to have a single version?

with which all types of calculations arise

are covered?

That's exactly what we want to convey to you here, namely a

Procedure with which you can subsequently, i.e. duringProgram run can determine which variables and how

should be linked together.

This is only possible if you manage to use a basic line

the desired formula as often as you like while the program is running

generate.

We now want to show you how this is done.

The program discussed below also includes one
Machine language part, but don't worry, that too is sent via
Basic handled.

Before we go into more detail about the individual program steps,
First you should know the variables used and
Memory addresses are presented.

First the variables:

TM address of the end of memory

VL low-order byte of the address ‘variable start’

VH as above, but higher byte

VT as above, but overall value

BU address from the area of the line input buffer

BC Run variable for filling the buffer

76

CA$ entered calculation rule

RE this is the result after the routine has been run

The storage locations used:

45-46

Pointer to the start of the variable

47-48

Pointer to start of array

49-50

Pointer to the start of the strings

96

Higher-order byte of the pointer to the end of the Basicram

40448

The generated basic line 50100 is here

40704

From here on there is the routine that comes from the content of the

A basic line is generated in the input buffer and after 40448

brings

Now the program step by step

The memory cap is reduced to 40448,

because above this address the machine routine and

later the generated basic line is available.

The variable start pointer is incremented because

The connecting line 50099 is inserted here.

10-14

Lines 50100 and 50110 are shown here in advance

set up so that these are definitely available

are when they are jumped without first

an operation would have been deposited there. The lines

simply contain PRINT and RETURN.

20-30

The connecting line 50099 will be right after that

Basic program set.
The continuation address of this line points to the

Line 50100 at address 40449.

32-50

These lines contain the machine program, which

will be discussed in more detail later.

71

60-70

The machine program is stored in memory from 40704

brought.

50040

The basic line is written from the keyboard in CA$

read in.

When entering please take into account that only

functions still need to be entered. Imagine

The instruction “RE=" is given as given when entering.

50050

The input is transferred from CA$ to the line input buffer

brought (up to 50075).

50080

The machine program for generating the basic line

is started.

50095

This is where the actual calculation starts. This

Result is returned in RE.

For those who are interested, the machine program:

lda

$7a

Save basic pointer

sta

$9ff

lda

$7b

sta

$9ffe

lda

$14

sta

$9ffd

lda

$15

sta

$9ffc

lda

#$0b

sta

$7a

Jr

$a579

ldx

#O

Offset on input buffer

Calling the routine °CRUNCH’

XX

lda

$0200(x)

Transfer line to 40453

beq

YY

Jump out when end

sta

$9e05 (x)

inx

bne

XX

78

YY lda #$3a : behind the line

sta $9e05(x)

lda #$8e RETURN appended

sta $9e06(x)

lda #0 Mark end of line

sta $9e07 (x)

sta $9e08 (x)

sta $9e09(x)

lda $9fff Reload basic pointer

sta $7a

lda $9ffe

sta $7b

lda $9ffd

sta $14

lda $9ffc

sta $15

go back to Basic

The program listed below consists of:

two parts:
The first part of lines 1 to 70 only needs to be used once
start the program. It's important that it
is actually at the beginning of your program, so not
is transferred to other line numbers, otherwise the
lines 1 and 6 your variables will be destroyed.
The second part finally produces from the cCA$
entered calculation rule a basic line and leads
these out. The result is in RE.
If the operation does not change continuously, you can
of course also line 50100 several times in a row

jump on.
Your program, in which these routines are integrated,
may only go up to line 49999. The lines starting from 50000 must

79

definitely be the last in the program.

All I can say about the application is that you click on the

Input request (INPUT CA$) only enter functions

need, e.g. °75/2*V1-V2+SQR(V3)°.

The assignment of the result to RE is already in line 50050

given.

DANGER! If the program has already been started,

it can no longer be changed. You should be in thatEnter NEW, reload the program and then change it.

This is because the lines created are not immediate

behind the rest of the program, but at the very top

Storage. The operating system can have such an arrangement

when inserting or deleting a row.

Here is the program listing:

1 poke56, 158:clr

2 ifpeek(45)+2>255thenpoke45
,2- (256-peek(45)):

poke46, peek(46)+1:goto6

4 poke45,
peek (45)+2

6 poke47, peek(45) :poke48 , peek( 46) : poke49, peek(45) :

poke50O,
peek (46)

8 tm=40448 |

10 poketm, 0: poketm+1,7:poketm+2,
158: poketm+3, 180

poketm+4,195

12 poketm+5, 153:poketm+6,0:poketm+7,13:poketm+8,158:

poketm+9,190

14 poketm+10, 195: poketm+11,142:poketm+12.0:

poketm+13.0:poketmt14.0

20 vl=peek(45)
: vh=peek(46) : vt=vh*256+vl

30 pokevt-4,1:pokevt-3, 158:pokevt-2,179:pokevt-1, 195

80

32 data165,122,141,255,159,165,123,141,254,159,165,20,

141,253,159,165,21

33 data141,252,159,169,11,133,122,32,121,165
34 data162,0,189,0,2,240,6,157,5,158,232,208,245,169,

58, 157,5,158

36 data169,142,157,6,158,169,0,157,7,158,157,8,158,

157,9,158

40 data173,255,159,133,122,173,254,159
50 data133,123,173,253,159,133,20,173,252,159,133,21,96
60 fori=40704t040785

70 read mc:pokei,mc:nextl
50000 rem calculator KKKKEKKKKKEKKEKKEKEKEKKEKKKEKEKEKKEKEKEKE

50040 bu=523:input"calc";ca$
50050 pokebu,asc("r"):pokebuti,asc("e"):

pokebut2,asc("=")
: bu=but+2

50060 fori=1tolene(ca$)
50070 pokebu+ti,asc(mid$(ca$,i,1)):nexti

50073 bc=len(ca$)+1
50075 pokebutbc,0:pokebutbc+1,0: pokebut+bc+2,0

50080 sys40704
50095 gosub50100

50097 returns

At the (hopefully) good end, a suggestion for...

"Incubate:
Imagine you have found a method
which consists of a problem that has to be specifically formulated
Basic line required for the solution is generated. Set
further imagines that this procedure is so universal that it
is able to choose one from a chain of tasks
Generate series of basic lines including all
Loops and jumps.
The only problem that remains is putting these lines in one after the other

81

to bring the memory. The procedure described above

can only create a basic line, but it could be done

expand it so that it can also be used for several lines.

It should be noted that the machine program

Each line created does not always go to the same place

transferred, but the start address according to the

must increase the length of the previously created line.

In addition, the line sequence pointers (these are the first

two bytes at the beginning of each basic line).

are taken care of, which we neglected in our example

because the return command is in the created line itself

stands.

Maybe you can do it with this suggestion

to build a really good program generator, because around one

This is what it is like in principle. are program generators

namely programs that perform specific tasks from one

be entrusted to a specific topic and from it

Program in a well-known programming language (it doesn't have to be

always be Basic), i.e. a kind of macro interpreter.

e
v

82

4.2 COPYING THE BASIC INTERPRETER TO RAM

The Commodore 64 has the advantage over other Commodore computers
Advantage that the entire address space of the processor - 64
KByte - is equipped with RAM. So this allows you to
Commodore 64 with a completely new operating system and
a new BASIC interpreter, without any
Replacing ROM components. You need the new or
modified operating system or the BASIC interpreter only in
to load or transfer the RAM and then send it to the computer
share that the ROM is turned off and the corresponding RAM
should be activated. This can be done with POKE commands

reach.

you don't want to load a completely new BASIC, just a few
Change properties of the BASIC interpreter, e.g. implementation
Creating your own functions or modifying existing ones
functions or commands, simply copy the BASIC
Interpreter into RAM, makes the changes there and

then switches to RAM.

A little more about the memory management of the Commodore 64.
When you switch on the computer, the operating system is
tem-ROM and the BASIC-ROM switched on and started. If
Now use a PEEK command to select this memory area.
read, you get the value back from the ROM (Like you
How to access the RAM can be found in Chapter 9.5).On the other hand, write to the memory area with POKE, like this
is always written to RAM, whether ROM or RAM
is selected. We can take advantage of this property if
we put the complete operating system or the BASIC ROM into it
want to copy underlying RAM to it in RAM for
to manipulate our purposes. Copying can be done like this

83

in a BASIC loop.

FOR I=A TO E : POKE I, PEEK(I) : NEXT

A means the start address and E means the end address. For

for BASIC these are the addresses 40960 ($A000) and 49151

($BFFF); the operating system is from 57344 ($EOOO) to 65535

($FFFF).

This POKE loop converts the contents of the ROM into the

RAM underneath is copied. However, BASIC always runs

still in ROM. We first have to tell the computer

that the RAM should be selected.

Memory location 1, the processor port, is used for this purpose

Memory distribution served. Normally this contains

Memory cell the value 55. Do you want the BASIC in the RAM

you have to select the RAM with POKE 1, 54.

Attention: You may only carry out this POKE if

Use the loop above to add BASIC from 40960 to 49151

RAM, otherwise your computer will crash! Want

You also put the operating system in RAM, this is just it

possible together with the BASIC ROM, because when selecting this

RAMs automatically select the RAM under the BASIC ROM

(see also Chapter 2.8). The POKE command for this
is POKE 1.53. Do you want your BASIC interpreter like this
manipulate, so copy the ROM first, make the

desired changes and save the program with which

Once you have made the changes, turn it off first and then switch it off

with POKE O,... um. If you've made a mistake, so be it

your computer can say goodbye” and you have to go back

start over. So you can load the program again,

Correct the errors and run again until the thing is like this

runs as you imagined.

84

4.3 NO NEGATIVES

PAY MORE FOR THE FRE FUNCTION

Have you noticed that your Commodore

64 reports 38911 bytes free when switched on

Command

PRINT FRE(O)

but answers with -26627?

If you get a negative number, you first have to do 2 to the power of 16

equal to 65536 to get the correct value.

This is not tragic, but annoying. Why is this?

now?

To do this, we need to look at the relevant location in the ROM listing

view. (Address $B37D: 64 internal). There will be after the

Strings that are no longer used are removed and their

Storage space is released again (garbage collection)

the free space is calculated: start of the strings
($33/$34) minus end of arrays ($31/$32). This 16-bit

Integer value is now converted into floating point format and

returned. Now here lies the error. The integer value
is treated as a number with a sign in the same way as that
Integer variables (%) that only have values from -32768 to 32767

can have. However, these numbers are considered positive values
considered, they can range from O to 65535. At
The early Commodore computers never had free storage space
larger than 32767 bytes, so this error never occurred. We
now have to change the FRE routine so that the
Conversion to floating point numbers from a positive integer
value is assumed, as is the case, for example
Output of line numbers is the case, as is well known

85

can be larger than 32767.

These are the changes that are needed. Here are

we went and got it

additional code

in

one

unused area of the BASIC interpreter.

B38D 4c

595 BF

JMP

$BF55

B390EA

NOP

BF55 AS

34

BF57 ES

32

LDA

$34

SBC

$32

BF59 2

010)

LDX

#$00

BF5B 86
BF5D 85

O.D

62

BF5F 84

63

STX

$0D

STA

$62

STY

$63

BF61 A2

90

LDX

#$90

BF63 4c

49 BC

JMP

$BC49

The values can be set with a small POKE loop.

100

110

FOR I=40960 TO 49151

POKE I

, PEEK(I)

: NEXT

120

A=11*4096+3*256+8*16+13

130

FOR I=A TO A+3

140

READ X

POKE I,X :NEXT

150A=11*4096+15*256+5*16+5

160

FOR I=A TO A+16

170 READ

POKE I,X

: NEXT

180

POKE 1 '24

200 DATA 76,85,191,234

210 DATA 165.52,229.50,
162.0, 134.13, 133.98, 132.99

220 DATA 162,144,76,73,188

86

4.4 RETURN TO THE BASIC PROGRAM AFTER A LIST COMMAND

If you build a LIST command into a BASIC program, like thisthe program jumps after executing the LIST command

always back to direct mode. This is disturbing when

For example, you want to output lines that contain a function

definition with DEF FN included to specify the respective function

to display the screen. Likewise, you could not have a program

Output listing multiple times from a program, as well

not in direct mode in a loop, e.g.

FOR I=1 TO 2 : LIST : NEXT

Here's how to remedy this: Replace them

At the end of the LIST function, jump to the BASIC warm start

through a return command. In addition, you must before the

Call the LIST function the pointer to the program text

save because it is changed during the LIST function.

To do this we need a small routine that carries out these tasks

and jumps back to the BASIC interpreter. There

this requires a small machine program anyway

We'll also copy the BASIC ROM into the RAM

into it. This gave us the slow BASIC POKE

Loop saved.

We put the little routine in the cassette buffer.

After entering or loading it will be displayed once with SYS 828

called and from now on the LIST command can be used without

Use program abort.

87

105:

O033c

110:

033c

112:

033c

114:

033c

115:

033c

116:

033c

chrptr

chrgot

list

lstvec

nextst

828 ; Cassette buffer

$7a ;‚ Program pointer

$79 ; gets last character

$a69c ; LIST routine

$a042 ; Pointer to LIST routine

$a8f£8 ; sets program pointer

; on the next statement

117:

033c

crlf

$aad7 ; outputs CR

119:

033c

a2

20

120:

033e

a9

a0

120:

0340

a0

00

120:

0342

120:

0344

121:

0346

121:

0348

121:

034a

122:

034b

122:

034d

122:

034f

122:

0350

123:

0352

22

23

22

22

£9

23

£4

60

#32 32 Pages copy

#>$a000 ; Pointer to start of BASIC

#0

$22

$23

loop

($22),y ; Transfer loop

($22) ,y

loop

inc

$23

dex

bne

loop

lda

#$60 ; RTS code

123:

0354

14

al

sta

$a714

123:

0357

ea

lda

#$ea - NOP code

123:

0359

bb

a6

123:

035c

be

off

sta

$fig

sta

$a6bbc

125:

£035

6d

lda

#<newlst-1 ; Pointer to new LIST function

125:

0361

42

a0

sta

lstvec

126:

0364

03

lda

#>newlst-1

126:

0366

43

a0

sta

lstvec+1

127:

0369

127:

036b

127:

036d

36

01

lda

#$36 ; Switch memory to RAM

sta

1

rts

129:

O36e

Ta

newlst

lda

chrptr

M
m

88

130:

0370 48 pha - Save program pointer

140: 0371 a5 7b lda chrptr+1

150: 0373 48 pha

160: 0374 20 79 00 jsr chrgot ; get last character

170: 0377 20 9c a6 jsr list - execute LIST

175: 037a 20 d7 aa jsr crit - “Output CR°

180: 037d 68 pla

190: O37e 85 7b sta chrptr+1

200: 0380 68 pla : Retrieve program pointer

210: 0381 85 7a sta chrptr

220: 0383 20 £8 a8 jsr nextst ; Pointer to next statement

230: 0386 4c 79 00 jmp chrgot ; get last character

Here again the loading program in BASIC.

100 for i = 828 to 904

110 read x poke i,x s=st+x next

120 data 162, 32,169,160,160, 0.132, 34,133, 35,177, 34

130 data 145, 34,200,208,249,230, 35,202,208,244,169, 96

141,187, 166,141,188, 166, 169
140 data 141, 20,167,169,234,

150 data 109,141, 66,160,169, 3,141, 67,160,169, 54,133

160 data 1, 96,165,122, 72,165,123, 72, 32,121, 0, 32

170 data 156,166, 32,215,170,

104, 133,123,104,133,122, 32

180 data 248,168, 76,121,

190 if s <> 9613 then print "error in datas!!" end

200 print "ok!"

If you run the following small BASIC program once without and then

after calling 828, you will see it

Difference.

100 PRINT “LIST TEST”

110 LIST 120

120 GOTO 100

89

4.5 CALCULATED LINE NUMBERS IN GOTO. GOSUB AND RESTORE

Want a very useful change to the BASIC interpreter

let's look at it now.

Do you want a program branch or a subprogram

call, you have to set the line number as a number

enter. For more convenient programming it would be

However, desirable when calculating the line number

could, e.g. B. as the following small program assumes.

100 INPUT "LINE NUMBER";Z

110 GOTO Z

This could replace an extensive ON .. GOTO series.

The same applies to the GOSUB command. Here too we want
Allow calculated line numbers.

A RESTORE line would also be a significant advance

number. For example, if you have several different ones that are connected together

Data blocks that you want to read multiple times, you could

Previously, the READ-DATA pointer was always only at the start of the programreset and then may have had to transfer large amounts of data.

Read until you got to the data you wanted. A RESTORE

Line number now allows you to specifically point to the DATA pointer

to set any line.

Changing the GOTO command can be done with a few POKEs
accomplish. All we need is the call to fetch

replace the line number with a routine that has a
gets any numeric expression and puts it into that
required address format. Have the GOSUB command

90

We are therefore modifying it at the same time, since GOSUB has it

GOTO routine is called.

ABAO 20 CO 02 JSR $O2CO

O2CO 20 8A AD JSR $AD8A

O2C3 4C F7 B7 JMP $B7F7

Here we have the additional code at the address $02CO

(704) which is normally free as long as you don't

Use Sprite 11.

The code can be brought into memory with a few pokes

100 FOR I=40960 TO 49151

110 POKE I, PEEK(I) : NEXT

120A=10*4096+8*256+10*16

130 FOR I=A TO At2

140 READ X : POKE I,X :NEXT

150A=704

160 FOR I=A TO A+5

170 READ X : POKE I,X :NEXT

200 DATA 32,192.2

210 DATA 32,138,173,76,247,183

We have now covered the GOTO and GOSUB commands. At

RESTORE command is a little more required as normally

No line number is allowed at all. So we have to

distinguish whether it is a RESTORE command with or

without a line number. However, this is not difficult.

O2C6 DO 03 BNE $02CB ; are there any more characters?

O2c8 4C 1D AB JMP $A81D - to the old RESTORE command

O2CB 20 CO O2 JSR $02CO - Get line number

91

O2CE 20 13 A6 JSR $A613 ; Calculate address of line number

O2D1 38 SEC

O2D2 A5 5F LDA $5F ; Address low

O2D4 ES 01 SBC #$01 ; deduct one

O2D6 A4 60 LDY $60 - Address high

O2D8 4C 24 AB JMP $A824 ; continue as old RESTORE command

We can enter the code again using pokes.

300A=2*256+12*16+6

310 FOR I=A TO A+20

320 READ X : POKE I,X : NEXT |

330 DATA 208,3,76,29,168,32,192,2,32,19,166

340 DATA 56,165,95,233,1,164,96,76,36,168

Now we have to tell the interpreter where the new one is

RESTORE routine says:

400 POKE 40996, 197 : POKE 40997, 2

410 POKE 1.54

Line 410 switches back to RAM. From now on you can

Use the RESTORE command in three variants:

Once without a line number as before, then with one

Line number and an expression that is evaluated

and the line number results. In this case the

next READ command reads the DATA element that will be used next

from this line number. Exists the line number

not, there is no error message 'undef'd statement',

but the pointer is automatically moved to the next line

set. Now, for example, the following programming would be possible.

100 GOTO 200

92

7

e
i

8
a

200 RESTORE 10

500 RESTORE

800 GOSUB A*2+100

X* 100+500
900 RESTORE

93

h
a

a

4.6 THE MIDS COMMAND

I'm sure you all know the MID$ function with which a part

a character string can be isolated. The following

Program example

100 A$ “TEST STRING”

110 B$ = MID$(A$,5,3)

120 PRINT B$

leads to expression

STR

Below you will now find an extension of the MID$ command,

which not only allows parts of a string to be READ

light, but also REPLACING parts of a string.

With the new command, the following programming is possible, for example:

lich:

100 A$ = "TEST STRING"

110 MID$ (A$,5,3) = "123"

120 PRINT A$

Here 3 characters from position 5 through the string

"123" replaced; arises as a result

TEST123ING

Without the MID$ command you would have to break the string into individual parts
disassemble and reassemble:

100 A$ “TEST STRING”

110 A$ LEFT$(A$,4) + "123" + MID$(A$,7,3)

94

120 PRINT A$

This command is very useful, for example, if you are in a

You want to replace individual parts of the data set (data fields). To that

define a string the length of the record and

replace the values of each with the new MID$ command

Data fields.

The command is returned with a small machine program

realized.

90: 033c 'opt pi

: mid$ as a pseudo variable

: mid$(string variable,

position, length) = string expression

- mid$(stringvariable, position) = stringexpression

200: 033c midcode = $approx

210: 033c execute = $308 - execute vector for statement

220: 033c chrget = $73

230:033c chrgot = chrget + 6

240: 033c execold = $a7e7

250: 033c varnan = $45

255: 033c varadr = $49

260: 033c descrpt = $64

270: 033c teststr = $ad8f

280: 033c getvar = $bO8b
290: 033c setstr = $aa52300: 033c chkauf = $aefa ; clip on

310: 033c chkzu = $aef7 - clamp closed

320: 033c chkcon = $aefd ; comma

325: 033c test = $aeff

330: 033c getbyt = $b79e

340: 033c frmevl] = $ad9e

350: 033c illquan = $b248

95

0347

20

73

00

midtest

jsr

chrget

034a

c9

approx

034c

£0

06

034e

20

79

00

0351

4c

e]

al

cmp

#midcode

; code for mid$ ?

beq

centersr

jsr

chrgot

jmp

execold

; Execute normal statement

0354

20

73

00

centersr

jsr

chrget

; next character

352:

033c

355:

0003

360:

0004

370:

0005

372:

0007

375:

0007

378:

0007

390:

033c

Frestr

$b6a3

length

position

varstr

same

show2

+4

t+]

+2

$b2

$50

828

400:

033c

a9

47

init

lda

#<midtest

410:

033e

a0

03

ldy

#>midtest

420:

430:

0340

8d

08

03

sta

execute

0343

8c

09

03

sty

execute+1

440:

0346

60

rts

450:

460:

470:

480:

490:

500:

505:

510:

520:

530:

535:

540:

545:

0357

20

fa

ae

035a

20

8b

bO

035d

85

64

035f

84

65

535:

0361

85

0363

84

4a

0368

a0

00

036a

64

545:

036c

545:

036d

Ze

550:

£036

52

aa

560:

0372

01

560:

0374

b1

49

0365

20

a3

b6

jsr

Frestr

jsr

chkauf

; clip on

jsr

getvar

; get variable

sta

descrpt

sty

descrpt+1

sta

varadr

sty

varadr+1

ldy

#0

lda

(descrpt),y

pha

beq

ill

jsr

setstr

; transfer string into ram

ldy

#1

lda

(varadr),y

96

560:

0376

85

05

sta

varstr

- remember variable address

570:

0378

c8

iny

570:

0379

b1

49

lda

(varadr),y

d
~

570:

037b

85

06

sta

varstr+1

600:

037d

20

fd

ae

jsr

chkcom

610:

0380

20

Je

b7

jsr

getbyt ; get position

620:

0383

8a

630:

0384

£O

17

650:

0386

approx

txa

beq

ill

dex

650:

0387

86

04

stx

position

660:

0389

20

719

00

jsr

chrgot

660:

038c

c9

29

cmp

#")" - expression at the end?

665:

038e

dO

04

bne

next

665:

0390

a9

ff

lda

#$ff - max. long

665:

0392

dO

Oc

bne

store

670:

0394

20

fd

ae next

jsr

chkcon.

670:

0397

20

Je

b7

Jr

getbyt ; take a long time

680:

039a

8a

690:

039b

dO

03

txa

bne

%+5

700:

039d

4c

48

b2

ill

jmp

illquan

710:

03a0

85

03

store

sta

length

715:

03a2

68

715:

03a3

38

pla

sec

715:

03a4

e5

04

sbc

position

117:

03a6

c5

03

cmp

length

717:

03a8

bO

02

bcs

OK

717:

O3aa

85

03

sta

length

120:

O3ac

20

f7

ae

OK

jsr

chkzu - clamp closed

730:

O3af

a9

b2

lda

#same

770:

03b1

20

ff

ae

jsr

test

780:

03b4

20

ge

ad

jsr

frmevl ; get expression

790:

03b7

20

a3

b6

800:

O3ba

a0

02

jsr

Frestr

ldy

#2

800:

O3bc

b1

64

lda

(descrpt),y

97

800:

O3be

85

91

sta

show2+1

800:

03c0

88

dey

800:

800:

810:

810:

820:

840:

850:

860:

870:

03c1

b1

64

03c3

85

90

03c5

88

03c6

b1

64

03c8

£0

a3

O3approx

c5

03

O3cc

bO

O3ce

85

02
03

lda

(descrpt)‚y

sta

show2

dey

lda

(descrpt),y

beq

ill

> null, then error

cmp

length

bcs

ok1

sta

length

03d0

a5

05

ok1

lda

varstr

880:

0342

18

cle

. 880:

0343

65

04

0345

85

05

0347

90

02

0349

e6

06

O3db

a4

03

O3dd

88

loop

O3de

b1

50

03e0

91

05

03e2

cO

00

03e4

do

£7

910:

910:

920:

940:

950:

950:

960:

970:

970:

980:

adc

position

sta

varstr

bcc

*+4

inc

varstr+1i

ldy

length

dey

lda

sta

(show2),y characters from string expression

(varstr),y ; transferred to string variable

Cpy

#0

bne

loop

03e6

4c

ae a]

jmp

$a7ae ; to the interpreter loop

After entering the program, you can use the command

SYS 828

Yours

Command extension

below
played BASIC loader does this initialization
automatically.

initialize. This

98

100

for 1 =

828 to 1000

110

read x next

poke 1,x S=Stx:

120

data 169,

71,160, 3,141, 8, 3,140,

130

data 115,

0,201,202,240, 6, 32,121,

I,

Oh,

3,

96, 32

76,231,167

140

data 32,115,

QO, 32,250,174,

32,139,176,133, 100,132

150

Gata 101,133,

73,132, 74, 32,163,182,160,

0.177, 100

160

data 72,240, 46, 32, 82,170,160, 1,177,

73,133, 5

170

data 200,177, 73,133, 6, 32,253,174,

32,158,183,138

180

data 240, 23,202,134, 4, 32,121, 0.201,

41,208, 4

190

data 169,255,208, 12, 32,253,174,

32,158,183, 138,208

200

data 3, 76, 72,178,133, 3,104, 56,229,

4,197, 3

210

data 176, 2,133, 3, 32,247,174, 169,178,

32,255,174

220

data 32,158,173, 32,163,182,160,

2,177,100,133,

8 1

230

data 136,177,100,133,

80,136,

177, 100,240,211,197, 3

240

data 176, 2,133, 3,165, 5,

24,101,

4,133,

5,144250

data 2,230, 6,164, 3,136,177,

80,145,

5,192, O

260

data 208,247, 76,174,167

270

if s <> 19273 then print “error in datas

end

280

sys 828 print "ok!"

As an example and test for the new one

Function can

the following

Program serve:

100

DIM A$(10)

110

FOR I = 1 TO 10

120

A$(I) = "TEST STRING"

130

NEXT

140

FOR I = 1 TO 10

150

MID$ (A$(I),I,1) = MID$("1234567890",I,1)

160

NEXT

170

FOR I = 1 TO 10

180

PRINT A$(I)

190

NEXT

99

As a result you will get 10 string, where im

first

string

the first character was replaced by a "1", in

second

String stands as 2.

Sign a “2”

etc.:

1ESTSTRING

T2STSTRING

TE3TSTRING

TES4STRING

TEST5TRING

TESTS6RING

TESTST7ING

TEST STR8NG

TEST STRI9IG

TEST STRINO

100

4.7 INSTR AND STRINGS FUNCTION

Many other basic calculators have two very useful ones

String functions that are missing from the 64. The one function

usually called STRING$, creates a string with one command

of any length with a given ASCII code

another function, often called INSTR, checks whether a string is in

contained in another.

With the knowledge of the basic interpreter and the string connections

It is now possible to manage the Commodore 64 on the 64

to also implement these functions. As a designation

we use the already existing command words °’POS’ and

“STR$° of the 64, which we distinguish by a

preceded by "!" mark.

The INSTR function then has the following syntax:

I = !POS(A$,B$,P)

Where A$ is the string you want to search, B$ is

the string whose occurrence in A$ you want to check and

P is the position from which to search in the string A$. This

Result is assigned to variable I and is equal to zero,

if the searched string was not found. He's coming

second string in the first, so I contains the position, an

which he was found. The specification of the position P is

optional; if it is not specified, it will be from the beginning

wanted. Instead of variables you can use anywhere too

using expressions or the function itself in expressions,

E.g. use a print list.

Here are some examples for use:

101

PRINT !POS("ABCDEFGHIJK","D")

4

IF !POS(A$,"J") THEN PRINT "FOUND"

A$ = "TEST STRING"

PRINT !POS(A$,"T")

1

X = !POS(A$,"T",5) : PRINT X

6

The STRING$ function is used as follows:

or

A$ = !STRS$ (L,B$)

Here A$ is the string you want to create. L is the
Length that the generated string should receive and B is the
ASCII code of the string. Becomes a string instead of B

used, the ASCII code of the first character is used
String used. The following examples demonstrate the applications
dung:

PRINT !STR$(20.65)

AAAAAAAAAAAAAAAAAAA

A$ = !STR$(10,"*") : PRINT A$

KRKKKRKKKRKK

The machine program is stored in the free RAM area and
starts at address 51200.

102

100:

c800

.opt pt

- instring function

135:

c800

*= $c800

140:

c800

chkauf = $aefa

150:

c800

chkzu = $aef7

160:

c800

chkcon = $aefd

170:

c800

frmevl = $ad9e

180:

c800

chkstr = $ad8f

190:

c800

frestr = $b6a3

200:

c800

yfac = $b3a2

205:

c800

chrget = $73

210:

c800

chrgot = chrgett+6

220:

c800

getbyt = $b79b

226:

c800

integer = $biaa

229:

c800

descrpt = $64

230:

c800

stradr = $62

231:

c800

addr2 = $fb

232:

c800

addr 1 = $f£b+2

233:

c800

lent = 3

234:

c800

len2 = 4

235:

c800

number = 5

236:

c800

start = 6

237:

c800

typeflag = 13

238:

c800

strcode = $c4

240:

c800

241:

c800

242:

c800

illquan = $b248

syntax = $afO8

poscode = $b9

243:

c800

vector = $30a

245:

c800

temp = lent

248:

c800

a9 Ob

248:

c802

a0 c8

lda #<testin

ldy #>testin

248:

c804

8d Oa 03

stavector

248:

c807

8c Whether 03

sty vectorti

248:

c80a

60

rts

250:

c80b

a9 00

testin lda #0

103

250:

c80d

Od

sta

typeflag

250:

c80f

73

00

Jr

chrget

251:

c812

251:

c814

21

06

cmp

#18

beq

test2

251:

c816

19

00

jsr

chrgot

251:

c819

8d

ae

jmp

$aedd

252:

c8ic

00

test2

jsr

chrget

252:

c81f

252:

c821

252:

c823

252:

c825

b9

Oa

c4

03

253:

c827

b1

c8

253:

c82a

08

af

cmp

#poscode

beq

instr

cmp

#strcode

bne

*+ 5

jmp

jmp

string

syntax

300:

c82d

73

00

instr

jJsr

chrget

300:

c830

fa

ae

jsr

chkauf

- bracket up

e

310:

c833

Je

ad

320:

c836

Bf

ad

330:

c839

64

330:

c83b

jsr

frmevl

jsr

chkstr

!

e
?

lda

descrpt

get expression

test string

phastringadresse auf stack

340:

c83c

65

lda

descrpt+1

340:

c83e

pha

350:

c83f

fd

ae

jsr

chkcom

komma

360:

c842

Je

ad

jsr

frmevl

zweiter string

380:

c845

a3

b6

jJsr

frestr

64

04

fb

fc

390:

c846

400:

c84a

410:

c84c

420:

c84e

430:

c850

430:

c851

440:

c852

beq

ill

lange = 0

sta

len2

Stx

adr2

sty

adr2+1

pla

tay

pla

erste stringadresse

!

450:

c853

aa

b6

jsr

frestr+7

460:

c856

470:

c858

480:

c85a

490:

c85c

56

03

fd

fe

beq

ill

sta

len1

stx

adri

sty

adritt

104

500:

c85e

a2

00

1dx

#0 .

default fur 3. parameter

510:

c860

79

00

jsr

chrgot

520:

c863

c9

2c

530:

c865

dO

07

cmp

"0°

bne

11

540:

c867

20

9b

b7

jsr

getbyt

550:

c86a

8a

txa

startposition

560:

c86b

f0

41

570:

c86d

ca

beq

ill

dex

580:

c86e

86

06

11

stx

start ;

startposition im string

590:

c870

20

f7

ae

jJSr

chkzu

600:

c873

a5

03

lda

len1

610:

c875

38

sec

len2 > lent

620:

c876

e5

04

sbc

len2

630:

c878

90

28

bcc

end :

ergebnis 0 ?

640:

c87a

69

00

adc

#0

650:

c87c

85

05

sta

anzahl =;

der verschiebungen

660:

c87e

a5

06

lda

start

660:

c880

670:

c881

65

fd

670:

c883

85

fd

680:

c885

90

02

clc

adresse 1 plus startposition

0

adc

adri

sta

adr1

bcc

+4

690:

c887

e6

fe

inc

adri+1

700:

c889

aQ

00

710:

c88b

b1

fb

12

13

ldy

#0

lda

(adr2),y

720:

c88d

d1

fd

cmp

(adri),y

- zeichen vergleichen

730:

c88f

dO

Ob

bne

15 :

ab nachster position suchen

740:

c891

c8

740:

c892

c4

04

iny

Cpy

len2 .

schon alle zeichen string2 getestet ?

750:

c894

90

£5

bcc

13

760:

c896

a4

06

ldy

start

770:

c898

c8

780:

c899

790:

c89c

4c
e6

a2

b3

14

iny

jmp

yfac s

ergebnis

06

15

inc

start

800:

c89e

c6

05

dec

anzahl

810:

c8a0

do

04

bne

16 .

noch nicht fertig ?

820:

c8a2

a0

00

end

ldy

#0

nicht gefunden, null

105

830:

840:

850:

860:

870:

880:

c8a4

f0

beq

14

cBa6

e6

fd

16

inc

adr1

c8a8

do

df

c8aa

e6

fe

c8ac

do

db

bne

12 ; String2 adresse erhöhen

inc

adri+1

bne

12

c8ae

4c

48

b2

ill

Jmp

illquan

; string$-funktion

e
'

00 string

jsr

chrget

fa

ae

Je

b7

jsr

chkauf ; klammer auf

jsr

getbyt+3

; länge merken

txa

pha

jsr

chkcom

jsr

frmevl

bit

typflag

bmi

str ;‚ string

970:

c8c6

aa

b1

jsr

integer

900:

c8b1

900:

c8b4

910:

c8b7

920:

c8ba

920:

c8bb

930:

cöbc

ae

940:

c8bf

Ye

ad

950:

c8c2

960:

c8c4

Od

Oc

980:

c8c9

990:

c8cb

1000:

c8cd

64

ei

65

1010:

c8cf

db

c8

1020:

c8d2

82

b7

str

1030:

c8d5

1040:

c8d7

1050:

c8d9

a7

00

22

1060:

c8db

03.

str2

1070:

c8dd

1080:

c8de

b4

1090:

c8et

1100:

c8e2

1110:

c8e4

1120:

cBe6

1120:

c8e7

1130:

c8e9

07

03

62

fb

lda

descrpt ; highbyte

bne

ill ; > 255

Ilda

jmp

jsr

descrpt+1 ; low-byte, länge

str2

$b782 ; setstr, typflag auf numerisch

beg

ill ; lange null

ldy

#0

lda

($22),y ; erstes zeichen

temp . |

‚ länge

$b474 : frestr

sta

pla

jsr

tay

beq

str}

lda

temp

loop

dey

sta

(stradr),y ; string erzeugen

bne

loop

106

1140:

c8eb 20 ca b4 str3

jsx

$b4ca

- string in descriptorstack bringen

1150:

c8ee 4c f7 ae

jmp chkzu

Hier wieder

für

“Nicht-Maschinen-Programmierer

ein

Lade-

programm in

BASIC, das

auch bereits

die

Initialisierung

übernimmt.

100

for i

= 51200 to 51

440

110

read

x : poke 1,xX

s=st+tx next

120

data

169,

11,160,200,141,

10,

3,140,

11,

130

data

0,133, 13, 3

2,115, 0,201,

33,240,

3,

6,

96,169

32,121

140

data

O, 76,141,17

4, 32,115,

0,201,185,240,

10, 201

150

data

196,208, 3, 7

6, 177,200,

76,

8,175,

32,115, O

160

data

32,250,174, 3

2,158,173,

32,143,173,165,100,

72

170

data

165,101, 72, 3

2,253,174,

32,158,173,

32,163,182

180

data

240, 100, 133,

4,134,251,132,252,104,168,104,

32

190

data

170,182,240, 8

6,133,

3,134,253,132,254,162, O0

200

data

32,121, 0,201, 44,208, 7,

32,155,183, 138,240

210

data

65,202,134, 6, 32,247,174,165,

56,229, 4

220

data

144, 40,105, 0,133, 5,165, 6,

24,101,253,133

230

data

253,144,

2,230,254,160,

253, 208
O,177,251,209,

240

data

11,200, 196,

4,144,245,164,

6,200, 76,162,179

250

data

230, 6,198,

5,208, 4,160,

243, 230, 253
0,240,

260

data

208 , 223,230,25

4,208,219, 76,

72,178,

32,115, O

270

data

32,250,174, 3

2,158,183,138,

72,

32,253,174,

32

280

data

158,173, 36, 1

3, 48, 12,32,170,177,
165, 100, 208

290

data

225,165,101, 7

6,219,200,

32,130,183,240,215,160

300

data

0.177, 34.13

3, 3,104,

32,125,180,168,240, 7

310

data

165,

3,136,145,

98,208,251,

32,202,180, 76,247

320

data

174

330

if s

<> 30119 then print "error in datas!!"

end

340

sys 51200

print"

OK

107

4.8 AUTOMATIC LINE NUMBERING

In this section we want to give you a useful command

for your Commodore 64, which requires the input of

can make programs a lot easier. Which gives commands ‘AUTO’

after each program line that you have entered,

automatically the number of the next line. Can do this

the increment, i.e. the number by which the running

Line number is increased each time, you determine it yourself. The

Using the new command is very simple:

If you want to switch on automatic line numbering,

so enter the following command:

SYS 828, start number, increment

e.g. SYS 828, 100, 10

The increment can take values up to 255. After the

When you enter the SYS command, the start number is output and

the cursor is behind the line number. You can now

Enter the program line directly and accept it with RETURN.

Now the next line number is automatically specified,

in our example 110.

100 INPUT "INPUT"; A$

110

To exit AUTO mode, just press RETURN

without any further input. Want more later

To enter program lines, simply enter

SYS 828

108

without further information.

ES

will then

automatically

continued with the next following line number

was canceled.

Of course you can

starting value at any time

and change increment,

by using these values

with the SYS command

specify with.

This now follows

Listing of

machine program,

Cassette buffer is stored as well

then again

Loading program in BASIC.

150: 033C *= 828 - cassette buffer

152: 033¢C LO = $14

154: 033¢ HI = LO+1

156: 033C FAC = $62 ; Floating point battery

158: 033C CR = 13 - Carriage return

160: 033C LINE = 251 'line

162: 033C INCR = LINE +2 ; increment
164: 033C INTFLOAT = $BC49 - Integer to floating point

166: O33C FLOATASCI= $BDDD ; Floating point to ASCII

170: 033C VECTOR = $302 ; LINE ENTRY

172: 033C INPUT = $FFCF

174: 033C PRINT = $FFD2

176: 033C BUFFERI = $101

178: 033C BUFFER2 = $200

180: 033C MAINLOOP = $A486

182: 033¢ GOON = $A569

183: 033C CONTINUE = $A576

184: 033C CHRGOT = $79

186: O33C OLDVEC = $A483

187: 033C GETPAR = $B7EB

189: 033C CHKCOM = $AEFD

190: 033C 20 79 00 JSR CHRGOT ; more characters?

190: 033F FO 10 BEQ LO : no

109

200:

0341

20

FD AE

JSR

CHKCOM

: Comma?

200:

210:

0344

20

E.B

B7

JSR

GETPAR

; Get parameters

0347

86

FD

STX

INCR

220:

0349

A5

14

220:

034B

85

FB

230:

034D

A5

LDA

LO

; and save

STA

LINE

LDA

HI

230:

O34F

85

FC

STA

LINE+1

240:

0351

AY

oC

LO

LDA

#< AUTO

240:

250:

250:

0353

8D

02

03

STA

VECTOR

; Set input vector

0356

A9

03

LDA

#> CAR

0358

8D

03

03

STA

VECTOR+1

260:

035B

60

RTS

300:

035C

20

03

CAR

JSR

AUTONUM

310:

035F

4c

86.

A4

JMP

MAIN LOOP

330:

330:

340:

340:

340:

340:

350:

360:

370:

380:

390:

400:

400:

e
9

0362

A5

FB

AUTONUM

LDA

LINE

0364

A6

FC

0366

85

63

0368

86

62

036A

A2

90

036C

38

LDX

LINE+1

STA

FAC+1

; Line number

STX

FAC

LDX

#$90

SEC

036D

20

49

B.C

0370

20

DD

BD

JSR

INTFLOAT; after floating point

JSR

FLOATASCI ; to ASCII

0373

A2

00

LDX

#0

0375

BD

01

01

L1

LDA

BUFFER1,X ; Get digits

0378

FO

09

BEQ

L2

037A

9D

00

02

037D

20

D2

FF

STA

BUFFER2,X ; in BASIC buffer

JSR

PRINT ; and spend

410:

0380

E8

0381

THURS

F2

410:

420:

INX

ESD

L1

0383

A5

FB

L2

LDA

LINE ; Line number

420:

0385

420:

0386

65

FD

CLC

ADC

; increase

INCR |

110

420:

420:

420:

425:

425:

425:

430:

440:

450:

460:

460:

460:

410:

470:

480:

480:

490:

490:

500:

0388 85 FB STA LINE

038A 90 02 Bcc L3

038C E6 FC INC LINE+1
O38E AY 20 L3 LDA #° “ ; Output spaces —

0390 20 D2 FF JSR PRINT

0393 20 CF FF JSR INPUT
0396 C9 OD CMP #CR - empty input
0398 FO 03 BEQ L4 ' yes
039A 4C 69 A5 JMP GOON - carry on

039D AS FB L4 LDA LINE
O3SF ES FD SBC INCR - Line number for next
03A1 85 FB STA LINE: Degrade access

03A3 BO 02 BCS L5

O3A5 C6 FC DEC LINE +1

O3A7 AY 83 L5 LDA #< OLDVEC

O3AS AO A4 LDY #> OLDVEC
O3AB 8D 02 03 STA VECTOR ; old vectorO3AE 8C 03 03 STY VECTOR+1 ;restore

03B1 4C 76 A5 JMP CONTINUE

100

FOR I. = 828 TO 947

110

120

130

140

150

160

170

180

190

200

210

220

READ X : POKE I,X : S=StX : NEXT
DATA 32,121, 0.240, 16, 32,253,174, 32,235,183,134
DATA 253,165, 20,133,251,165, 21,133,252,169, 92,141
DATA 2, 3,169, 3,141, 3, 3, 96, 32, 98, 3, 76
DATA 134,164,165,251,166,252,133, 99,134, 98,162,144
DATA 56, 32, 73,188, 32,221,189,162, 0.189, 1, 1
DATA 240, 9,157, 0, 2, 32,210,255,232,208,242,165
DATA 251, 24,101,253,133,251,144, 2,230,252,169, 32
DATA 32,210,255, 32,207,255,201, 13,240, 3, 76,105
DATA 165,165,251,229,253,133,251,176, 2,198,252,169
DATA 131,160,164,141, 2, 3,140, 3, 3, 76,118,165
IF S <> 15495 THEN PRINT "ERROR IN DATAS!!" :END

230

PRINT "OK"

111

4.3 DEF FN XCY) - THE UNKNOWN BEING

Many programmers actually prefer this instead

convenient function - admittedly, it's in the manuals
usually imperfect (sometimes incomprehensible)

wrote - a few more program lines, often also subroutines
to enter.

Apart from the bad documentation mentioned, it has to be there for that

There is another reason: The function doesn't seem to work

to be very powerful, at least not at first glance

(which unfortunately often decides on usability and unusability)

ability), since obviously only one argument to the function

can be handed over.

In this section we would like to give you the following:

Illustrate how to use this function and, on the other hand, show

that even quite complex formula structures with several variations
by nesting several DEF FNX(Y) (this is actually
(actually possible) can be solved.

A function definition is structured as follows:

DEF FN name (function variable) = arithmetic expression

DEF FN A(X) = 2*X + B

Our function has the name A and the function variable X.
If the function is now called, the
Value used when called. Possibly
Existing variables named X and A remain there

112

unchanged. The function variable

holder for the current value when calling the function. In
In contrast, B refers to the variable B, which before
has been defined. The function variable is also often called
called a dummy variable. The result of a function must
always be numeric, there is no string expression

allowed.

To get you in the mood, a simple, often-used example:
namely commercial rounding. As you probably know
is the third decimal place of a DM amount
treated in such a way that values less than 5 are rounded down and

if it is greater than 4.

Most programmers do this rounding on the spot

of arising in form

> i

l INT (B*100+.5)/100

through. If this happens often, you can replace this formula

through

A = FNX(B)

save a lot of space. Specifically, the whole thing looks like this:

10 DEF FN K(B) = INT(B*100+.5)/100

100 A = FNK(B)

You can now repeat the command in line 100 as often as necessary
instead of the longer formula, where the variable B
should contain the unrounded value.

113

Now an example of nesting functions. Here

The sales price should be based on the net purchase price
Based on the desired trading range and the additional

value tax rate can be determined.

C is the purchase price

H is the trading range in % “from above”

M is the VAT rate in %

10 DEF FN V(C)

(C/(1-H/
100) * (1+M/100)

20 DEF FN K(B)

INT (FN V(C)*100+.5)/100

100 A = FN K(C)

A contains the sales price after line 100, rounded and
including VAT. Of course, functions still can
be nested deeper. The maximum is 10 times
Nesting possible. If you try to nest even deeper,
you get an “OUT OF MEMORY ERROR” because the intermediate
results are stored in the stack, which only has one specific
has limited size. Are there still subprograms during the FN call?
programs (GOSUB) or loops (FOR-NEXT) are also active
need the stack, then only a correspondingly smaller one
Nesting possible, but for practical applications
should still be sufficient.

114

4

y
e
r

n
I

4.10 YOUR COMMODORE 64 SPEAKS GERMAN

Does it actually bother you that your Commodore 64 has English?

speaks to you? - Then teach him German!

If you start the following program on your 64, it willCauses your computer to display all error messages

in German language. There is a list in the program

the error messages in German. The error

Messages are numbered from 1 to 29, the first error
The message would be, for example, “too many files”. Find this table

You in °64 internal’. We simply replace the error messages

this table with your own German texts. Own it

an assembler for the 64 and may want to do it yourself

If you enter other texts, please note that the end

of a text by a character with bit 7 set

is marked. You can achieve this simply by

by shifting the last letter of each text

enter. For the BASIC-only programmers we have it again

a loading program is printed.

100: c000 .opt pt

- German error messages c64

e
?

140: c000 errvec = $300 - vector for error messages

150: c000 erradr = $22 - pointer to error messages

160: c000 olderr = $a445

180: c000 t= $c000

190: | c000 a9 Whether init lda #<newerr

200: cQ02 a0 cO ldy . #>newerr

115

210:

220:

c004

8d

00

03

c007

8c

01

03

sta

errvec

sty

errvect1

230:

c00a

60

rts

250:

260:

cOOb

8a

newerr

txa

; error number

cOOc

03

bpl

Err!

270:

c00e

43

co

Err!

jmp

asl

tax

ready

a - times 2

; as an index

co

co

ff

aa

off

lda

errtab-2,x

sta

erradr

lda

errtab-1,x

sta

erradr+1

jsx

$ffcc ; clrch

Ida

#0

sta

$13 ; 1/o-flag

jsr

jsr

$aad7 ; new line

$from45 ; "2?" output

ldy

#0

loop

lda

(erradr),y

280:

c011

290:

300:

c012

c013

310:

c016

320:

c018

330:

CO1b

340:

cO1d

350:

c020

360:

c022

370:

c024

380:

c027

390:

CO2a

400:

CO2c

400:

cO2e

400:

co2f

410:

c031

off

420:

c034

420:

c035

420:

c036

pha

and

#$7£

jsr

$from47

iny

pla

bpl

loop

430:

c038

off

jsr

$a67a ; lock cont

440:

440:

440:

cO3b

a4

c03d

c8

cO3e

£0

ldy

$3a

iny

beq

ready

450:

c040

bd

jsz

$bdc2 ; ln line number

460:

470:

480:

c043

a9

c045

a0

ready

lda

#< finished

ldy

#> done

c047

20

a4

jsr

$a478 ; as usual

116

490:

c04a

co

96

errtab

'word £1,£2,£3,£4,£5,£6,£7,f£8

500:

c05a

13

ci

2b

'word £9,£10,£11,£12,£13,£14,£15

510:

c068

89

om

If

£20, £21, £22
'word £16,£17,£18,£19,

520:

c076

15

c2

29

'word £23,£24,£25,£26,f£27,£28,£29,£30

540:

c086

5a

55

20

f1

.asc "too many files"

550:

c096

44

41

54

£2

asc

"file open"

560:

cOa1

44

41

94

£3

asc

"file not open"

570:

cOb2

44

41

94

£4

'asc

"file not found"

580:

cOc6

47

45

92

£5

.asc

"not available"

590:

cOdc

4b

45

49

£6

.asc

"no input data"

600:

cOee

4b

45

49

{7

.asc

"no issue date"

610:

c100

46

45

48

£8

.asc

"missing filename"

620:

c113

55

de

47

£9

.asc

"invalid device number"

630:

c12b

27

de

45

£10

.asc

"next" without "for"

640:

c13b

al

.byt

"""+$80

650:

ci3c

53

39

de

£11

-asc

"syntax error"

660:

c149

27

92

45

£12

.asc “return” without “gosub”

670:

c15d

al

.byt

"""+$80

680:

ci5e

5a

99

20

£13

'asc

"too little data"

690:

c16d

al

.byt

"""+$80

700:

cibe

55

4e

5a

£14

.asc

"illegal value"

710:

c180

55

45

42

£15

asc

"overflow"

720:

c189

Yes

55

20

£16

-asc

"too little storage space"

730:

c19£f

46

45

48

£17

.asc

"missing line"

740:

ciad

55

4e

47

£18

.asc

"invalid indeX"

750:

cibe

46

4c

£19

-asc

"Field already dimensioned"

760:

c1d8

44

49

56

£20

-asc.

"division by zero"

770:

cieb

44

49

52

£21

-ascC

"direct mode forbidden"

780:

c200

46

41

4c

£22

.ascC

"wrong variable type"

790:

c215

5a

45

49

£23

-asc

"string too long"

800:

c229

46

45

48

£24

-asc

"incorrect data from data"

810:

c244

53

54

52

£25

-asc

"string expression too complicated"

820:

c261

46

af

52

£26

N "not possible to continue"

117

830:

840:

850:

860:

870:

880:

890:

100

110

120

130

140

150

160

170

180

190

c27b 4e 49 43 £27 .asc "undefined function"

c294 4b 45 49 £28 .asc "no match"

c2aa 4c 41 44 £29 .asc “loading error"

c2b4 41 42 42 £30 .asc “abort”

c2bb Od ready .byt 13 ; crlf

c2bc 46 45 52 .asc "done."

c2c3 Od 00 byt 13.0

for 1 = 49152 to 49860

read x poke 1,x S=s+x next

data 169, 11,160,192,141, 0, 3,140,

data 16, 3, 76, 67,192, 10,170,189,

1,

3,

96,138

72,192,133,

34

data 189, 73,192,133, 35, 32,204,255,169,0,133,

19

0,177,

data 32,215,170, 32, 69,171,160,

41
data 127, 32, 71,171,200,104, 16,244, 32,122,166,164
data 58,200,240,

3, 32,194,189,169,187,160,194, 32
data 120,164,134,192,150,192,161,192,178,192,198,192
data 220,192,238,192,

60,193
73,193, 94,193,110,193, 128,193,137, 193,159, 193

43,193,

34, 72,

19,193,

0,193,

200

data

s
a

n
i

210

220

data 173,193,190,193,216,193,235,193, 0,194,
data 41,194,

21,194
68,194, 97,194,123,194,148,194,170,194

230

data 180,194, 90, 85,

32, 86, 73,

69,

76,

69,

32,

68

240

250

260

data 65, 84, 69, 73, 69,206, 68,

data 79, 70, 70, 69,206, 68, 65,

data 73, 67, 72, 84, 32, 79, 70,

65,

84,

69,

73,

32

84,

69,

73,

32,

78

70,

69,206,

68,

65

270

data

84,

69,

32,

78,

73,

67,

72,

84,

32,

71,

69

280

data

70,

85,

78,

68,

69,

206,

71,

69,

82,

65,

69,

84

290

data

32,

78,

73,

67,

72,

84,

32,

86,

79,

82,

72,

65

300

data

78,

68,

69,206,

75,

69,

73,

78,

69,

32,

69,

73

310

data

78,

71,

320

data

73,

78,

65, 66,

69,

68,

65,

84,

69,201,

75,

69

32,

65,

85,

83,

71,

65,

66,

69,

68

330

data

65,

84,

69,201,

70,

69,

72,

76,

69,

78,

68,

69

340

data

82,

32,

68, 65,

84,

69,

73,

78,

65,

77,197,

85

118

350

data

78,

71,

85,

69,

76,

84,

73,

71,

69,

32, 71,

360

data

82,

65,

69,

84,

69,

78,

85,

77,

77,

69,210,

370

data

78,

69,

88,

84,

39,

32,

79,

12,

78,

69,

32,

39

39

380

data

70,

79,

82,167,

83,

89,

78,

84,

65,

88,

32,

70

390

data

69,

72,

76,

69,210,

39,

82,

69,

84,

85,

82,

400

data

39,

32,

79,

72,

78,

69,

32,

39,

71,

79,

83,

78

85

410

data

66,167,

90,

85,

32,

87,

69,

78,

73,

71,

32,

39

420

data

68,

65,

84,

65,

83,167,

85,

78,

90,

85,

76,

65

430

data

69,

83,

83,

73,

71,

69,

82,

32,

87,

69,

82,

212

440

data

85,

69,

66,

69,

82,

76,

65,

85,198,

90,

85,

32

450

data

87,

69,

78,

73,

71,

32,

83,

80,

69,

73,

67,

72

460

data

69,

82,

80,

76,

65,

84,218,

70,

69,

712,

76,

69

470

data

78,

68,

69,

32,

90,

69,

73,

76,197,

85,

78,

71

480

data

85,

69,

76,

84,

73,

71,

69,

82,

32,

73,

78,

68

490

data

69,216,

70,

69,

76,

68,

32,

66,

69,

82,

69,

73

500

data

84,

83,

32,

68,

73,

77,

69,

78,

83,

73,

79,

78

510

data

73,

69,

82,212,

68,

73,

86,

73,

83,

73,

79,

78

520

data

32,

68,

85,

82,

67,

72,

32,

78,

85,

76,204,

68

530

data

73,

82,

69,

75,

84,

45,

77,

79,

68,

85,

83,

32

540

data

86,

69,

82,

66,

79,

84,

69,206,

70,

65,

76,

83

550

data

67,

72,

69,

82,

32,

86,

65,

82,

73,

65,

66,

76

960

data

69,

78,

84,

89,208,

90,

69,

73,

67,

712,

69,

78

570

data

75,

69,

84,

84,

69,

32,

90,

85,

32,

76,

65,

78

980

data

199,

70,

69,

72,

76,

69,

82,

72,

65,

70,

84,

69

590

data

32,

68,

65,

84,

69,

78,

32,

65,

85,

83,

32,

68

600

data

65,

84,

69,

201,

83,

84,

82,

73,

78,

71,

65,

85

610

data

83,

68,

82,

85,

67,

75,

32,

90,

85,

32,

75,

79

620

data

77T,

80,

76,

73,

90,

73,

69,

82,212,

70,

79,

82

630

data

84,

70,

85,

69,

72,

82,

69,

78,

32,

78,

73,

67

640

data

712,

84,

32,

17,

79,

69,

71,

76,

73,

67,

200,

78

650

data

73,

67,

72,

84,

32,

68,

69,

70,

73,

78,

73,

69

660

data

82,

84,

69,

32,

70,

85,

78,

75,

84,

73,

79,

206

670

data

75,

69,

73,

78,

69,

32,

85,

69,

66,

69,

82,

69

680

data

73,

78,

83,

84,

73,

77,

77,

85,

78,199,

76,

65

119

690

data 68, 69, 70, 69,

72,

76,

69,210,

65,

66,

66, 82

700

data 85, 67,200, 13,

70,

69,

82, 84,

73,

71,

46, 13

710

data O

720

if s <> 62278 then print "fehler in datas

end

730

sys 49152 print "ok

m
i

%
1

m

N
I

n
i

f
f

R
a

n
n

A
Y

,
n
m

120

4.11 BASIC HARDCOPY ROUTINE UND DEREN ANWENDUNG

Haben auch Sie schon oft versucht den Inhalt des Bildschirms auf

Ihrem Drucker auszugeben ? Es gibt eine Reihe von verschiedenen
Maschinenprogrammen die diese Aufgabe erledigen. Aber auch von

BASIC aus ist dieses kleine Problem leicht zu lösen.

Damit Sie den Aufbau des Programmes aber auch verstehen müssen
wir uns zunächst noch etwas mit dem Aufbau des
Bildschirmspeichers beschäftigen. Denn diesen gilt es ja auf den

Drucker zu übertragen.

Wie Sie ja sicherlich schon wissen, stehen Ihnen auf demScreen 1000 characters available. Put the 1000 characters
consists of 40 characters in 25 lines. These 1000 characters
are of course not only on the screen but also
in the RAM of the Commodore 64. The area in which the
The number of individual characters in the Commodore 64's RAM is 1024
until 2023. To now see all the information on the screen
Also appear on paper, you need to bring these out
Memory area character by character using the PEEK function
read out and then the obtained value with the CHR$ function
print out. But you also have to keep in mind that you...
Values in the range from O to 31 inclusive are not direct
can be printed out, as this ASCII area contains so-called
There are control characters that cause strange output.

But there is something else to consider. As we just saw
one line on the screen consists of 40 characters. One
However, the print line usually consists of 80 characters. If you
If you have some knowledge of programming in BASIC, you know
You that if you have several characters in a row in one
want to output any line (screen or printer), every PRINT
Command with a ";" have to complete. With our HARDCOPY
Routinely you have to pay attention to 40 characters
to print one after the other (i.e. a whole line) and then a
Carriage Return to send you to the next line

121

come. To program this process you must

Use nested loops. The finished one

The program then looks like this:

50000

50010

OPEN 4.4: OPEN REM PRINTER CHANNEL FOR LARGE/GRAPHICS

FOR I1=1024 TO 1984 STEP 40: REM 25 LINES

590015

BZ$="": REM DELETE ENTIRE LINE

50020

FOR J=0 TO 39: REM 40 CHARACTERS

50030

Z=PEEK(I+J): READ REM CHARACTERS

50040

IF 2<32 THEN Z=Z+64: REM CONVERT FROM CAPITAL LETTERS

50050

BZ$=BZ$+CHR$(Z): FORM REM TOTAL LINE

50060

NEXT J: REM NEXT CHARACTER

50070

PRINT BZ$: REM PRINT ENTIRE LINE

50080

NEXT I: REM NEXT LINE

50090

RETURN: REM BACK TO THE MAIN PROGRAM

As you probably notice, we have in this program

something

taken a different path than mentioned above. If you

already

have ever seen a HARDCOPY routine in action,

You may have noticed that before printing one
A certain amount of time often elapses before it appears on the line

printer is output. Why this??? Almost every printer
has a more or less large so-called buffer.

Characters from the computer are stored in this buffer
transferred until the buffer is filled. Only then will the buffer

printed out. The advantage of this method is that in this way

and way the printing is finished faster than if characters for
characters would be printed directly. Fill for a similar reason
We first create a TEXT STRING (BZ$) before we print it out. This
is faster than if we print each character individually.

A special feature of this program is the conversion of
Capital letters (line 50040). As you may know, will
for the capital letters in the screen memory again with the code

"1" started. But since, for example, "A" does not have the code 1 but 65,

The number 64 is added to all numbers < 32.

122

4.12 THE BERLIN KU DAMM CLOCK ON THE CBM64

Some unprepared strollers on the Kurfürstendamm in

Berlin may have stopped and shook its head

in the face of one standing in the middle of the grass verge

Rack with red and yellow lights flashing.

At first glance, what is happening there is like a light organ

not dissimilar, and even at second glance it becomes so

It's easy for no one to realize that the whole thing is a normal watch

represents the time in a somewhat unusual way

way.

Even those who are initiated find it difficult to get it straight away

to determine the right time.

You can find one on the page behind the program listing

Drawing of the clock with an explanation of the individual fields.

We didn't want to miss this exciting opportunity

let you in this fun way a little

to familiarize yourself with the capabilities of the CBM64

A program was developed that runs this clock on the

screen of your computer.

Of course, the display only appears on a color television

really come into its own.

In this program we work, how could it be otherwise,

with the real-time clock and with sprites, of course also with thatnormal symbol graphics.

The real time clock in particular has what the program technology has

As far as handling is concerned, it has its pitfalls, not least of all

is due to the 12-hour counting method of the clock.

We will therefore take the program step by step

pick apart to enable you to get some parts

You can also use it for your own programs.

123

We'll start with a description of the ones used

Variables:

A$ Time when entered

AP pointer to the arrays for symbol graphics

Cc base address of the real time clock

V Base address of the video controller

Si address of the dot pattern for sprite O

S3 Address of the dot pattern for sprite 1

F1 =0

first half of a second

second half of a second

F2 =1

Clock reset

FL =0

in the morning

=1

afternoon

H

Number of hours

M number of minutes

S

T

Number of seconds

tenths of a second

H$ String format of H

M$ String format of M

S$ String format of S

ME$ (x)

MZ$ (x)

SE$ (x)

SZ$ (x)

Symbol graphic for minute one

Symbol graphic for minute fives

Symbol graphic for hour one

Symbol graphic for hour tens

Below you will find the explanations for each one

Program steps:

5-10

The variables are initialized.

15

The frame color is set to black and the

Sprites turned off, which is required when

Stop and restart the program. The

Sprites would otherwise be present when entering the time

ways.

124

30

The most significant bit of this register must be

Setting the time should be =O.

35

as a sign that the real-time clock is running with a

The clock of 50Hz is supplied, the highest value must be used

Bit of this register must be =1.

The clock for the clock is the mains voltage

taken from most European countries

is just 50Hz.

In the USA, however, this bit would have to be =O

The mains frequency there is 60Hz.

40-50

The time is entered using the keyboard.

60-80

The input string is converted to its numeric

Components disassembled.

90-100

Since the clock only has a 12-hour cycle, the

AM/PM flag (bit 7 in the hourly register) accordingly

110-160

the input can be set.

AM/PM is the abbreviation of the Latin expressions

‘ante /post meridiem’, which means plain in German

morning/afternoon means. In many countries it is

the time preferably represented like this.
The individual values are divided into units and tens
disassembled and the corresponding registers
supplied. Please note that the clock registers

work in BCD (Binary Coded Decimal) format, i.e.

Each nibble can only have a maximum value of 9.

161-164

Sprite data for the filled circle.

165-167

Sprite data for the circle border.

168-169

170-171

179-196

The sprite data is brought into memory.
The sprite pointers are set, the sprites
turned on and set to double size, the
Position sprites and determine their color.
The frames for the rectangular fields become

generated.

125

198-224 Here the arrays are with for each minute and

Hour filled with unique values and colors. This

Although this method requires more memory than one

Calculated filling of the fields, but essential for this

faster.

225-229 At an interval of half a second
here is the sprite for the filled | circle
switched on and off alternately. |

230-290 The real time clock is read out and the values in

converted to a decimal number. to the one you read
The number of hours depends on the AM/PM flag (the
Variable FL is derived from this in line 250) 12

added to get a 24 hour display.

310-350 The values read from the clock are converted into a
converted to printable format and in the bottom

right corner of the screen.

380-410 The ones stored in the arrays are now stored here
Minute and hour patterns generated. There for everyone
Combination a pattern exists, they need

Arrays are practically only indexed with the time

become.

Of course, this process is only every full minute
required (line 370), but in any case after

setting the clock (line 360).

Below is the program listing.

Please understand the slightly lower price
Font quality, since we made the list because of the many
Of course, printing out special characters on a printer
who could reproduce them.

126

l
r

n
n

m

o
r

s
o

7
4

s
i

|ogg

ee rh Sa” cada mim foils

t
s
p

&

>
b

n
c

&

h
o

&

a
m

t
o
f

A
c

y
a

WES sede-sl=7Ud -ssease -

=2EuPCB, WC Pentemeod. Spon ait she"
P-Dei]ei Tue ‚Mel« the Vendde?
Eakectd.ne el c+e2or
Erint"'Uhrzeit Eingben"
Ieut" format hhhhmm'";a%$
Left HC As, >>
Hzualr

=s=t

e
t t

am

Meyvvalcrights, z>)

1

1

e
e

R
you are

e
R
e

e
R
e

you are
t t
e
R
am
p p

G
SH

G
e

G
AM

I
R
t t

Y
M M
G&
G

M M
e

am
W

)
t t
you are
" "
‘ ‘

K k k
am
p p

Itfhossthendye

Ifh=Listenliu

IFF CHTHENH=H+ES
Ooke rts, les imnch les th-intchles#1le

I tm >stherdk
IG LA
Meokecets, 1e#intcom’1g>++M-intem

IT:>:5Eatherndd

nkoc+l. and#intielid>+S-intczila>#1LD

Oe EC,

I

dssat. Alt ,

AM,

/ lse,

o i

t t
sh

t t
am
p p

;
t t
I

" "
I
F

Bel.IDatatat

43,6,6,56,8,6,56,08,6,6

C.F Poke Utes
Poke Yvts?, Leg- Poke VT], SS: Pokeuts,ss: Pa

‚erpakeu+21,3:Rokeu+23,3

sh
you are

e
e

you are
e

t t
you are

G
N

R

h
you are

Y
you are

Y
you are

t t
I

D
h
J J
" "

F
M M

e
you are

R
h

R
Y

e
M M

e
you are

-

e
you are

l l l
e

l l l
e

l l l
l l l
e

e
U
D

e
e

G
YOU ARE

t t
Oh

YOU ARE
YOU ARE

C c
F

YOU ARE
YOU ARE

e
*
F

Y
t t

0

h
YOU ARE

C c
M M

J J

am

e
0 I
you are
( (

YOU ARE
l l l

e
e

1

you are
t t

you are
W

you are
U

e
p p

e
G

you are
t t

you are
t t

C c
F

you are
W

e
F

t t
F

G
YOU ARE

U

you are
t t

]
M M
I

e
e

am
p p

you are
h

e
I

I

)
Y
Y

t t
you are
B b

1,255,2

am

i 1 t

l l l

S >T

am
F

R
am

<I'm Soe

or EC,

2es

Alt,

Data, 23s, i, i,
Dadal,255,128.7,129,2249,12,6,45,24,6
DataCSE B.6, 132,8,3, 152,08, 3, 198 Mist,Os
Dateazd,. @,12,12,6.,2¢,12,0,45,
7,06,
For Izsitos1+62 :Reada:Pokei, A:Next
Fororizsthoss+E] Creadaspoke1,A:Rıext
a) Pe so , Spokezod1 12:Pokeu+++3

Fe] Etram, Y = Preacher Set, +44, [| 2?Yes eu » Leu =?

Lc oe, tea,

Print" See Ete
Erint' berr

Erint' See
Print" SS
Print" SBR

Print" SBR
Print" srr
Print" of
Er int" sew
Print" sbr]
Print" See
Erint'sr
Erint' sal
Erint' ban
Erint'zapbl
Ereint" SRB
Erint'sr

AM

R
AM

R
AM

D

MEAN
AM
AM

SH
AM
AM

I
K k k

SH
E

sh
B b

sh
B b

I
B b

I
B b

I
e

e
G

SH
B b

sh
G

N2
I
M M

N
I
e
M M

I
B b
I
N
I
p p

I
N
I
M M

AM
AM
AM

E
R
AM

AM

am
B b

U
V v

I
K k k

e
B b

sh
N

U
B b

R
W

I
e
I
t t
I
B b

M M
N
I
U
M M

N
I
e
B b

N
AM

I
B b

I
W

e

EB
B b

SH
B b

sh
B b

e
B b

e
B b

N
I
B b

I
N
I
N
I
B b

am
B b

sh
G

SH
G

l l l
E
e
B b

sh
G

e
E

SH
G

E
G

I
M M

ii
W

e
B b

sh
G

e
B b

I
B b

I
e

I
B b

e
G
e
h

sh
B b

I
N

I
B b

D
am

B b
G

sh
B b

sh
G

R
AM
AM

F
B b

I
W

I
W

print" sal
Szfcho=" Reba
EZFC15=" RRRBLYS

F
E

®

13

Bi

127

Bi

Bl
Bi
Bi

IB
Bi

Bi
Bi

am

G

t t

F
t t

N

>
e

U
t t

N
N

E
t t
e
p p

Az

h
I
h
G
e
N
W
R
YOU ARE
e
M M
Dr

Matt

.

Mae eggs

U

t t

I

U
Z

7
[

1

U

AM
t t
G

Mag

Mache

Rie

me.

Mai

U
F

l l l
F

Ü
F

Ü
F

)
h
F

t t
t t

am
F

e
SH

Y
X F

am
F

you are
p p

sh
1
& &

am

\

F
you are

h
t t

I
p p

& &

J J
M M

AM

SH
G

:
F
YOU ARE

you are
F

sh
e
~

N
,
e
7
am
t t
e

l l l
F

t t
e

AM

Y
t t

E
M M

sh
t t
t t

e
G
E

SH
e

M M
l l l

I
p p

I
F

I
F

I
F

am
F

I
R

Ü
F

I
F

Ü
F

Ü
F

F
am

l l l
p p

I
AM

you are
F
t t
F

am
F

I
F

I
F

I
F

t t
you are

t t
G

am
h
I
p p

am
F
I
F

h
M M

p p
~
-

I
F

Ü
F

M M
M M

am
F

p p
J J

I
F

R
e
F

F
h

t t
M M
SH

I
F

h
you are

!
h
am
C c
F

R
e
F

I
F

I
F

Ü
F

I
F

l l l
p p

I
D

t t
e
am
t t
‘ ‘

F
l l l

M M
M M
M M

I
“

F
you are

t t
YOU ARE

:
M M

!
l l l
I

e
e

I
E es
e

l l l
am
D

e
F

t t
you are

e
sh

e

e
D
am
“

=

'
e
t t
am
‘ ‘

e
am

= ‘

AM
you are

‘ ‘

!
Y
t t

I
D

h
M M

t t
am
M M
F
3

t t
am
:
W
‘ ‘
I

you are
you are

= u

e

|

e
SH

SH
N

SC SCT
C c

SH
E
B b

e

2

t t
!
M M
3
E

!
am

>
Y

|
- am
Y

© 2014

M M
e

=:

Bin]
Bi

al
IB

J) |
| Bi
1 Bl

al
Bi

Jbi
4

Bi

al
al

4
Bi

Bi
Bl

Bl
IB
Bl

4
Bi

Uii

Bi

al
4
al

Bl
4

Bl

Bl

Bi
Bi

4

al
4

Bi

4

11 De

"ıBrblus
"Ibbrlys

‘Prbs

e
t t

U
you are
h

Mut.

.

I
I

1
M M

"IBBBBLTS
= "irb

-

me.

t t
you are
p p

::

4

Bi

4

4

al

Bi

Bi
Bl

Nie

t t
sh
am
F

N
YOU ARE

I
F

h
e
you are

NIE 30%

M M

R
E

R
am
R

R
e

: = =

t t
F

Nie0,

WR
de | |] Itr

R
am
p p

R
D

Metcdo=" Pie Wis

Ü
F

I
p p

AM
l l l

Mr I sata

4

I
Bi

Bi

Bi

4

Bl
Bie

4

U
Bi

Bl
Bi
al
Bi
IB

4

Bi

4
4

E
E
:
3

E
SH

G
B b

Z
E

E
M= M
a==

D
U

R
am
R

M M
U
p p

R

R
am
R

B b
Z

!
R
e

Bin)
4

l fp be eh bhp ri peabe ert

and] EX EENS:AA‚il: +1=]1 Znake?
Iffvecc Cs needs
+1 =- Teas
hhzpeesl: cb epee be oct ep
+1=1

Llf se themnh=

H-Lee: + L= L= l=

Tagen

TA]]

Sewlke ICT]:

Peebe cit

Hankle 2¢1ea+h—

Imteh les #16 Cantleotozad

Itrh=1Z2thenzzn

h=h+l1z

Itth=1l2thenh=i

M= irk me 16 1 BM Intime“

egg

Esintis16.#1G+S-intes-

1E2#1

Return
He=strech
It LENCH$)
Mest im)
If Lene
s$=2tr
Ish CIF Lend
Primnt'sss

=Etherbhs="

M+ ahtéchs, 1)

Mes tenms="

$2 = sthesis="

Tri

of +P gy

Mbhte cms. 13
Ghtécsé,15

Brrbrbi"

Erimtmicht£cht, s

2A" 2 "I'm
right,

Caf,

2

>

‚r

Ante of

ı 27 >mthenzzzn

Apzintehe

Sto CPR Iret Serberbebt Ears 2): Eritsz

e et ser

Sprimszs Capo

Ap=h—-intch see

Sper rmt sl"

Fepe Sper Rts

FC Apes Prints

Syo= pete me
App=M—-inteme’ss

Don't cpr Ire me

zn

Sper late so spee spore deta s © ap)

The epee ert sl nme is ¢

Sep Spore and Tree Spo Spore Ec Age)

F
F

=«

you are
e

fl=noon tozzs

128

ie

StundenTIMES 5

HOURS

TIMES 1

MINUTES

TIMES 1

129

4.13 A SMALL COPY PROTECTION

Anyone who has ever written a program knows what they are doing

has done there. Hours, even days, weeks or months
a lot of effort goes into a good program. Who wants to

there is no protection against unauthorized reproduction

secure his work and his idea? That is, however

Easier said than done because there are all over the world

a community of computer geeks who make it their mission

has made, every new copy protection, no matter how it is

perfect to crack. In some places this is a real thing

Became a popular sport.

Furthermore, today there are increasingly sophisticated copy programs,

with which it is also possible for the bloody layman to protect themselves

Copy programs because the existing backup of the

Simply transfer the program from the copy program

will. Basically you have to choose between two different ones

Differentiate between types of protection. On the one hand there is that

so-called hardware protection. This is an example

electronic component that is in the user port or also

is plugged into the joystick port. In this "electronic

Key" there is then an integrated circuit,

which contains the data to be processed in the program in one

implemented or logically shifted in a very specific form. Because that

The inner workings of such a “dongl” are not recognizable

is cast with a plastic compound, it is necessary

a sound knowledge in the field of electronics and

some good measuring devices, to the way the data

be encrypted to find out. For one

However, this method is completely unsuitable for private individuals

he doesn't have the necessary equipment to produce them

Hardware backups. But take comfort, because

apart from the high manufacturing costs also has a

Hardware protection has the disadvantage that sooner or later

is outwitted.

130

I

t
d

a

We want to look at this on the following pages

software solution to this problem. It stays here

certainly worth noting that the following lines

at best an introduction to this topic.

If you are interested in this area, please join us

this refers to the book "64 TIPS & TRICKS, Volume 2".

Our copy protection consists of two parts. The first part

is the preparation, the second then puts, in modular

constructed form, represents the actual protection. This module

Can be easily converted into new ones, but also into existing ones

implement written programs. A very big one

The advantage of our solution is that it is currently

There are only two copy programs on the relevant market,

who are able to overcome our hurdle. So that's it

At least they are somewhat effective against some “casual perpetrators”.

secured.

In all attempts with the solution below you should

but be sure to adhere to two guidelines

Before you test the functionality of the two programs,

You should definitely save this beforehand, as the

There is a relatively high risk that something will go wrong, which could lead to...

The result is that all the recording work was in vain. Use

You during all tests and possible later practical use

basically just empty floppy disks, because that

Preparation program changes a disk block without

to take into account whether this may already be from

normal data is occupied.

Here is the preparation routine

131

10 REM KKKKRKKEKKKKKKEKEKKEKKKKKKKKKKEKEKEKKEKKEEKKEEKER

PREPARE 20 REM BLOCK

30 REM KKEKKKKKKKEKKKREREKEKKEKEKEKEREKKREKKER

40 PRINT CHR$(147)

50 PRINT" DO YOU WANT ONE SPECIFIC

BLOCK"

PREPARE 60 PRINTS

(Y/N)” |

70 GET A$ :IF A$ <>."J" AND A$ <> "N" TH

EN GOTO 70

80 IF A$ = "N" THEN TT = 18 : SS =2:G

OTO 200 |

90 PRINTS

100 INPUT" TRACK “";TT

110 IF TT > 35 THEN PRINT" DOES NOT EXIST
T"; CHR$(145); CHR$(145) : GOTO 100

120 PRINT" "

130 SX = 16

140 IF TT < 18 THEN SX = 20

150 IF TT < 25 THEN SX = 18

160 IF TT < 31 THEN SX
170 INPUT " SECTOR ";SS

= 17

180 IF SS > SX THEN PRINT" DOES NOT EXIST

T"; CHR$(145); CHR$(145) : GOTO 170

190 PRINT" "

200 OPEN 1,8,15 : OPEN 2,8,2,"#"

210 PRINT#1,"B-P:"2;0

220 INPUT" CODE WORD ";C$

230 IF LEN(C$) > 15 THEN PRINT"TOO LONG";

CHR$(145); CHR$(145) : GOTO 220

240 PRINT#2,C$

250 PRINT#1,"U2:"2;0;TT;SS

260 CLOSE2

270 PRINT#1,"B-F:"0O;TT;SS

280 CLOSE1

290 PRINT "DONE!" :END

132

n
I

N
A

a

n
m

e
v

|

K
mWhat is achieved by this small program?

You can decide whether you want one of them

want to prepare a specific block on the diskette or

not. If you choose "N", make a note

Please note the values: Lane 18, Sector 2. If you have one

prepare another block, so you need to get the one from you

remember assigned values. The program automatically checks

whether your entries are even possible and then tells you

for possible errors. It all happens in the lines

10 to 190. In line 200 the command channel and a

Data channel to the floppy opened. Then you will

asked to enter a “code word”. This too must

Be sure to remember them. In the one presented here

Program version, the code word must not be longer than 15

be a sign.

The code word is then written into the data buffer 2,

which in turn is then sent to the as a complete block

specified location on the diskette.

Finally, the block that has just been applied is placed in the BAM

Disk marked as "free". This is one of the

Reasons why this protection function for many copy programs

is insurmountable.

However, there is a catch. If you have the from

If you use the address specified by the program, you run the risk

delete them again if you have more than 24 programs

Save to your prepared diskette. Have yourself

the address determines, then it cannot be predicted

if and when your block returns to a normal data block

will.

Now let's move on to the second part of our backup package,

the so-called block query. |

133

10 REM KKK 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2

QUERY 20 REM BLOCK BLOCK

30 REM KAKKKKAKKKKKKKKKK KK KIT IKK IK IK IK KK IK KK KK N EK

40 PRINT"THIS IS A DEMONSTRATION"

50 PRINT "FOR THIS COPY PROTECTION"

60 INPUT "CODE WORD ";C$

70 TT = 18 : SS = 2

80 GOSUB 60000

90 END

60000 OPEN1,8,15 : OPEN2,8,2,"#"

60010 PRINT#1,"U1:"2;0;TT;SS

60020 INPUT#2,A$

60030 CLOSE1 : CLOSE2

60040 IF A$ = C$ THEN RETURN

60050 SYS 64738

This small demonstration program must be based on the previous one
prepared diskette, otherwise
is not functional. The actual one
The backup function can be found in the subprogram lines
60000 to 60050. This means that all basic lines are available to you
60000 available for your own program. To be noted
The only thing is that you put your code word in the variable C$
before you start the subprogram. Likewise
You should check whether the correct code word is on
on the diskette (in line 60040), there is the direct code
enter.

60040 IF A$ = "A code word" THEN RETURN

It is also important to note that the address on the diskette
either in the variables TT (for track) and ss (for
Sector) is stored or that it is stored directly in the
Block read command on line 60010 is entered.

60010 PRINT#1,"U1:"2;0;18;2

134

n
a

m

You can then use line 60050 of the subprogram

freely decide what should happen if the

control no match was achieved. In ours

In this case, a reset of the computer is triggered. That is, the

The computer is returned to its switched-on state.

The program in the computer is then self-evident

lost. You can see that you can use this method

Unimagined possibilities for securing your mental health

Offer ownership.

Of course, it is also conceivable that you have several

blocks on your floppy disk in the manner described

prepare with a key.

To see that our protection really works,

you should go here and see what you have given away

Enter code word incorrectly.

At this point, however, it must be pointed out that

that it is relatively easy to complete the entire key query

to remove from the program. This can be avoided by:
You compile your program or a good list protection for

use a basic program.

135

CHAPTER 5: THE 64 CAN'T JUST BASIC

9.1 PROGRAMMING FORTH

WHAT IS FORTH? This is a question everyone will probably ask themselves

so far only with programming in BASIC or assembler

has employed. Surely some people will say “Why should I?

use another programming language where my Commodore

64 but BASIC speaks excellently?". This objection may apply

may be justified at first glance, but at second glanceBut you should think about whether it might not be completely

It's good when a computer doesn't just speak one language

but is a true linguistic genius.

If you have already programmed in BASIC for a while, then you will

You know that every now and then there are things that are not or only

are quite difficult to program. For such cases you have

Large computers have the option of other languages

to be able to fall back. There is FORTRAN for math

Problem solving, COBOL for commercial purposes, ASSEMBLER for

Time-critical tasks (i.e. problems that are special

need to be processed quickly, 2E.g. machine controls),

BASIC for general problem solving on microcomputers and,

and, and. Then there are languages that give the newcomer this

structured programming, like PASCAL and

ELAN. So all languages ​​have their strengths and their weaknesses.

FORTH, which means “The Fourth”, is one of the youngest

Generation of programming languages, as their name suggests

fourth generation. So you tried all the advantages of them

well-known, renowned programming languages in FORTH

implement, but without taking over their errors.

FORTH has some very distinctive ones, even in its structure

Advantages that are particularly advantageous for microcomputers:

136

1.) The computer running FORTH usually only needs
a very small RAM. Since FORTH programs not much

If you need space, you can also do it on a very small computer,

create large, powerful programs.

2.) FORTH requires no, or very few, I/O lines.
So you don't have to upgrade the hardware of your device
Know the inside to program in FORTH. In addition, stand by
Microcomputers often only have very few I/O lines anyway

available.

3.) The advantage already mentioned under 2 also shows that
that FORTH itself would manage without a floppy station.

A floppy is of course advantageous in any case.

FORTH consists of five parts:

1.) TABLE OF CONTENTS: The philosophy of FORTH is that the
actual vocabulary, i.e. the commands that FORTH understands, only
is very small. However, it is possible to use your own commands
to define and apply them in the programs themselves. You
You can create your own, very powerful language
write - just the way you need it. As an example:

You want to write a program that solves mathematical problems
to solve - for example a curve discussion. In this one
So you will hardly use any parts of the program for text editing
need, and if you also want to do without graphics, So
Just leave these orders out too.’ For this reason
So you don't need a lot of RAM.

2.) STACK: Actually the most important element in FORTH. The
The term STACK will already be familiar to everyone who is a
know little about programming in machine language, or
who own an HP calculator. We'll get to that later

still back.

137

This STACK works according to the LIFO system (Last in - First out,

or translated: Last in, first out). All

Operations of a computational, logical, comparative nature,

are processed on this STACK.

3.) INTERPRETER: As already known from the Commodore 64, this is how it works

also FORTH with an interpreter. This means you first

create the FORTH program with the EDITOR, and then with the

corresponding command to start the program. During the

Error checking is then carried out during the program run. So you have to
not just the program in a tedious manner
compile, but can start it directly. However, that has

usually results in interpreted programs being slower.
With FORTH this time factor is not so big - the interpreter

is divided into the TEXT INTERPRETER and the ADDRESS

INTERPRETER. The TEXT INTERPRETER checks the WORDS in the

Table of contents, and when the WORD is found, the

ADDRESS INTERPRETER activated. This interpreter then works
the absolute addresses. The result is that in this way one
very quick process is guaranteed.

4.) ASSEMBLER: Every FORTH interpreter includes one

Assembler, With this assembler you can define WORDS that

can then execute entire machine routines when called.
This type of programming is required to establish a connectionto the outside world. As you probably notice, has

FORTH here is also very similar to the usual one

ASSEMBLER programming - it's just as fast, but a lot

easier to learn.

5.) SPEICHER: This is of course very important for FORTH

RAM. This memory has the special feature that:

Change of individual blocks in memory, which are always the same

are long, at the same time the corresponding block on the

Floppy disk is changed, of course only if there is one

Floppy is turned on.

138

n
M

l
a
t

5.2 COMPARISON PROGRAM FORTH - BASIC

Of course, the easiest way to get to know FORTH is to be a

FORTH program compared to a BASIC program

accomplishes the same task.

But before we get to the program, we have to do a few things first

Explain terms and techniques.

We already pointed out in Chapter 5.1 that the STACK

play an important role, and one here compares with that

How the HP calculator works:

We now calculate (2 + 3) * (4 + 5) on an HP calculator. The

Key sequences are as follows:

2 <ENTER> 3 + 4 <ENTER> 5 + *

This may look confusing at first glance, but
If you try to work without the usual °(° °)°, you will
you can see that this is the only way to complete the task
solve. So I take the number °2° by pressing the <ENTER> key
put them on the STACK. Then I press the number °3°, too
This number must be put on the STACK, so we change the 2°
pushed one place further back. In a picture could

imagine the process like this:

STACK: TOP -

|

BOTTOM 3

>
>

2
-
4

+

(The arrows on the right are intended to indicate the direction,

into which the stack is expanded.)

139

Then the °+° key is pressed and the addition is carried out.

After addition, the STACK looks like this:

TOP -

BOTTOM I)

When you press the °4° button, the °5° now shifts one

Space at the top, and the °4° is below:

TOP -

DOWN

>

Now the number 5 should be entered. After pressing this

button, both the old °5° and the °4' shift

move up one place:

TOP -

u

&

m
m

DOWN

Now the number 4 and the number 5 should be added. So see

The STACK then looks like this:

140

TOP -

BOTTOM 9

And the last operation is multiplication:

TOP -

BOTTOM 45

So now we have the result available. That sees everything

Although incredibly complicated and time-consuming, but everyone

Calculators and even computers work on this principle.

However, this principle is the same with the HP calculator

most clearly developed. Anyone who has ever had one of these
worked on the computer or programmed in assembler

can quickly get their head around FORTH - but so can the newcomer
in programming will have fewer difficulties than him

maybe thinks, because FORTH is actually a very easy one

learning language. The only difficulty of FORTH is,

that it is so different from other languages.

Here is a first small FORTH program that shows how it works
of the stack and at the same time the definition of a WORD

shows.

This program is about finding the cube value of a number
determine. Since there is no command for this calculation, we must

Let's first define it:

141

CUBIC (THIS WORD IS NOW DEFINED)

DUP DUP (COPY THE NUMBER 2* INTO THE STACK)

x * ( MULTIPLICATES THE STACK 2* WITH ITSELF )

So what does this program mean? First of all, the °:’

FORTH informed that a word should now be defined. Would

If you don't include the colon, FORTH would be with the

Message

CUBIK?

come back, thereby indicating that this word is not yet in the

Table of contents is noted. But we just want a word

define it, i.e. add it to the table of contents. To that

So we need the °:°. FORTH now knows that as long as the

The definition of a word should follow until it reaches a semicolon °;

hits. After this signal, FORTH reports again with its

sympathetic

Okay

We now know that FORTH is the word in its table of contents

has recorded, and from now on you can do it directly, or in one

Apply program. By the way, the definition of the word is just

Keep it in the computer as long as it stays on. Um

to be able to use these new words again laterThey are of course saved on floppy. You can do that later

keep reloading the extended FORTH from diskette.

The DUP command copies the lowest STACK value. But since we

calculate not just the square but the cube of a number

If we want to, we have to copy the stack twice, i.e. one

second DUP. With the number 5 the STACK would now look like this:

TOP -

142

l
U

n
u

m
n

DOWN

Now we have to multiply the numbers together.
So a total of 2 multiplications are necessary. FORTH used
for this the normal multiplication sign °*”°. After we do so
Having multiplied the STACK twice, we can get the definition
finish. As mentioned above, we add a semicolon
a. FORTH reports again with his OK (if we do everything
have done correctly) and we can now start with the calculations

begin. So for example with the 5:

YOU TYPE: FORTH REPORTS:

5 CUBIC . 125 OK

1 CUBIC . 1 OK

-15 CUBIC . -3375 OK

As you can see, it is very easy to create new commands yourself
define. That is precisely the enormous advantage of FORTH. You
You never need a useless load of commands at all
No need to lug around and save one

a whole lot of storage space.

Here is a comparison between a FORTH and a BASIC

Program:

This program calculates the cube numbers between O and 10. If
If you are writing this program in FORTH, you must remember
that the word KUBIK is used in this program. So it has to
must first be defined using the program given above.

CUBIC NUMBERS:

143

1.) FORTH

CUBIC NUMBERS

10 O (FROM O TO 10! LIFO!!)

DO (BEGIN LOOP)

CR I . I CUBIC . (PRINT NUMBER (I) AND CUBIC)

LOOP (END OF LOOP)

CUBIC NUMBERS

OO

1 1

2 8

3 27

4 64

5,125

6,216

7,343

8,512

9 729 OK

2.) BASIC

10 REM CALCULATE CUBIC NUMBERS

20 MIN=O: MAX=9

30 FOR I=MIN TO MAX: PRINT I,I*I*I

40 NEXT I

5O END

RUN

O O

4

2 8

3 27

4 64

5,125

6,216

7,343

8,512

144

3 129

READY.

As you can see, both programs require approximately the same

Number of program lines. But in memory the whole thing looks

looks different - the FORTH program is a lot smaller.

But this space saving is far from everything. Do

Let's do a time comparison (benchmark test) in FORTH and

BASIC. What else is better than a simple one?

Loop:

1.) FORTH

TIME TEST

30000 O ( FROM O TO 30000 )

DO (BEGIN LOOP)

LOOP (END OF LOOP)

( EMPTY LOOP )

(END)

TIME TEST OK

2.) BASIC

10 REM TIME TEST

20 MIN=O: MAX=30000

30 FOR I=MIN TO MAX

40 NEXT I

50 END

RUN

READY.

And now our little race can begin. The result is

perhaps quite surprising: it was a race between hare and

Hedgehog, only this time the hedgehog wasn't quite as intelligent.

Here are the times:

145

LANGUAGE: TIME:

And that shouldn't be forgotten: both time tests

were made with one and the same computer:

YOUR COMMODORE 64:! !ı

This result alone might make some people

Maybe consider getting to know FORTH. The

Programming is extremely easy and the time saved is significant

Learning something new is always fun. Or?

If you are now interested in the Commodore FORTH, contact us

Some special information here:

FORTH 64 can be made into a FORTH by making a few small word changes.

79 standard package - the standard on which the

Most FORTH programs were written.

FORTH 64 uses 3 disk buffers, each 1024 bytes long,

and located at the address $CO0O. In addition, FORTH 64 is still

generates a screen memory that is at $0400.

FORTH 64 is stored on MODULE and is therefore always accessible

ready to start.

FORTH - The language for the professional software developer

It should also be interesting that more and more professional...

Software developers switch to FORTH. The reason lies in the

advantages of FORTH outlined above. It's already after a short time

Training period similarly easy and comfortable to use and

146

still offers the flexibility and computing speed that it offers

Machine programming is so valued. Also on the Commodore

64 are already sophisticated program packages in FORTH

been developed. This includes, for example, the CALC program

RESULT, a very powerful, universal calculation andPlanning program.

Another advantage that software houses in particular have

appreciate, FORTH. It is one of the few portable languages

i.e. programs written in FORTH on a computer
can be implemented very easily on another computer.

This means that software investments do not become worthless so quickly,

and it won't take that long to get new computers

appropriate programs can be offered.

To work with the FORTH language you can use any Commodore 64

Programmers unreservedly advise.

147

5.3 OTHER LANGUAGES: PASCAL. LOGO. TURTLE GRAPHICS

Different languages make a computer one

perfect computer. It will also be coming very soon for the Commodore 64

give the most different languages. This possibility will

expanded by the fact that the Commodore 64 is now one of the

belongs to computers that can process the CP/M operating system

(see Chapter 6). And almost all languages can run under CP/M,

that even exist for microcomputers.

What are the individual languages ​​used for?

PASCAL

This language is actually intended as a teaching language. She became

developed by a Swiss professor (N. WIRTH) and is impressive

through the possibility of programming in a properly structured manner.

PASCAL is now used by many institutes and companies

regular computer language used and at the various

taught in schools and colleges.

LOGO

This language is still quite unknown. She too was chosen for that

Training developed on the computer. IT'S SO EASY TO LEARN

THAT EVEN CHILDREN CAN PROGRAM AFTER A FEW HOURS

CAN. This is the motto of this language, and it is true

also. The individual elements of this language are easy to understand

learn and apply.

TURTLE GRAPHICS

This is actually not one of the known languages. She stands

between PILOT and LOGO. As her name suggests, she is supportive

graphics programming. Since the Commodore 64 is well known

This one has excellent graphics properties

Language made for this computer. Here's a small one

148

)
n
I

Example showing the programming of a graphic under TURTLE

GRAPHICS should clarify:

1 LABEL BOX

2 REMARK SET THE SCREEN COLORS

3 SCREEN COLOR CYAN

4 BORDER COLOR CYAN

5 TURTLE COLOR BLACK

6 REMARK SET THE HI-RES MODE

7 HIRES

8 REMARK MUTE RECORDER

9 PEN UP

10 REMARK SCREEN POSITION TOP-LEFT

11 MOVE TO O-O

12 REMARK TURN ON THE RECORDER

13 PEN DOWN

14 REMARK SCREEN POSITION BOTTOM-RIGHT

15 MOVE TO 199-319

16 REMARKS QUEUE

17 WAIT 300

With this program you draw a straight line from the position 0.0

to position 199,319. The writer behaves like this

a plotter would do. As soon as PEN DOWN is set, draws

every movement - e.g. the movement through the MOVE TO

Command.

As you can see, there are a lot of interesting languages out there

make the Commodore 64, in every respect, a computer that

can also compete with larger systems.

149

9.4 ADA FOR THE COMMODORE 64

a
i
[

Some time ago it was among the languages that your Commodore

understands, a new one has been added. It's ADA. The name

This language, unlike many others, is none

Abbreviation of the language meaning (e.g. COBOL = Common Business

Oriented Language). ADA is the first name of a woman who

already in the 18th century with the development of

computer languages.

ADA, like many other languages from American

Funded by the Ministry of Defense, is as relevant today as it is

never before. It is particularly characterized by a good

Structured and easy to learn. ADA commands

are, as is common practice, borrowed from the English language.

An ADA program is always modular. Any program
consists of a number of problems. At ADA, everyone will

Problem in turn broken down into individual fragments, which in their

The entirety then results in a solution to the problem. Variable names

can be freely chosen according to their meaning. The

Whole program structure is very clear and that's why

easy to detect even when troubleshooting. There are none
superfluous formal instructions that are specific to one
Beginners can easily find it fun to do.

Let's consider a small ADA program and you

you will find that it is almost self-documenting.

010 with TEXT IO; use TEXT IO:020 with C 64; use C64;

030 --

040 -- This program calculates this

050 -- Product of two to be entered

060 -- Evaluate and print it out.

070 --

080 procedure CALCULATE is

090 --

150

100 -- Set variables

110 --
120 MAND : float

130 MOR : float

l
o
l

O

O

140 --

150 RESULT : float :=0

160 --

170 begin

180 --

190 --
200 put ("Enter the multiplicand");

210 get (MAND)

220 --
230 put ("Enter the multiplier");

240 get (MOR)

250 --.

260 -- form result

270 --

280 RESULT := MAND * MOR ;

300 --

310 set row(10); set col(10);

320 --

330 -- Show result

340 --

350 put ( MAND ); put("*"); put ( MOR );

360 put ("="); put ( RESULT );

370 --

380 --

390 end CALCULATE

There is actually no need for any explanation about this program

more.
Program nesting is also a given
possible using several convenient commands. Since you
can use different nesting commands
an ADA program is really elegant.

151

CHAPTER 6: CP/M ON THE COMMODORE 64

6.1 THIS IS CP/M

CP/M is the most popular operating system available on

Microcomputers are used. It has continued to be that to this day

Standard operating system proven to be the most sophisticated

kind at all. With many new operating systems you often have

the problem that persisted for many years after the introduction of the

The operating system still hasn't fixed all the teething problems

are. This problem does not exist with CP/M. So you can

completely rely on this operating system.

But what does the Commodore 64 user get out of this?

Operating system? He is used to his DOS and his BASIC 2 -

then why another operating system?

This question actually only arises for the Commodore 64 user,

who has not yet seen anything of the big computer world. There

he finds a mountain of software that he has only ever heard of
dreamed. Not that the Commodore 64 has little software

has, on the contrary, but against the whole mountain of CP/M

Software, the Commodore 64 software feels like a small one

ground elevation. It will be a whole in the near future

Amount of Commodore 64 coming onto the market - from
word processing, file management, commercial software,
to games. But the CP/M software already has one

A lead that can no longer be caught.

The wide range of CP/M Software includes more than just various

Programs for word processing and file management, but also

Individual software can be found on the CP/M market in abundance

Find abundance.

But it's not just the user of such software that benefits

This offer, the programmer also has many advantages

152

N

a
K

N

this CP/M system. So he can now use his software for one
write a much larger circle of users than he has previously
could do. Creating CP/M software is a concept
means something to 100,000 computer users; the programmer of
Commodore 64 software only finds its sales market with the
Commodore 64 user group. We don't mean to say that
this circle wouldn't be very big - but CP/M is closed
compare with a seal of quality. Many a programmer
an “exotic” operating system, you’ve probably already heard:

/
~

AND WHEN WILL THE PROGRAM BE AVAILABLE ON THE CP/M OPERATING SYSTEM?

At this point we should also consider a problem with every CP/M
Operating system point out:

CP/M IS NOT THE SAME CP/M!

Unfortunately, most computer manufacturers use their own,
modified CP/M. This makes it despite apparent
Compatibility with other computers not possible, programs
exchange or transfer data. Also the CP/M of the
Commodore 64 has its peculiarities. This is how it is, for example
IOBYTE of the CP/M operating system is not implemented at all,
on the other hand, the Commodore 64 can only handle 40 characters per screen
and the format of the diskettes is not different
Compatible with computers. But about these problems AND HOW TO DEAL WITH THEM
We'll get to FIXED later.

You've just seen the CP/M have some standards

requires:

1.) There must be at least a 48K RAM computer available.

2.) CP/M has free programming memory from address $0 100

3.) As a rule, most programs require one
Screen display of 80 characters in 24 (or 25) lines.

153

4.) The CP/M software is almost exclusively used on large, 8°
Floppys delivered.We would now like to briefly discuss these standards. First would be
because the RAM is 48K. Many microcomputers can
can be expanded to this storage capacity today. The Commodore
64 already owns you from the start. And there's something else
This calculator is interesting: As is well known, you can do the whole thing
Hide ROM (see 64 internal). This allows you to do this with this
Computers realize things, even under CP/M, that others do
Computers that also have a specific ROM area
impossible or at least only with great difficulty
can be achieved.

,
a
y

For example, there are computers whose ROM is in one, for CP/M,
is in such an unfortunate area (e.g. from 0000) that on this
The entire CP/M operating system on the computer has a different structure
must. Any programmer working on such an operating system
meets, and who wants to use CP/M routines, gets it
gray hair when programming. Nothing about compatibility too
see. Fortunately, the Commodore 64 is different
structured. Here the CP/M is where it belongs, namely off
Address $0100.

The first problem actually only arises with the
Character representation on the screen. CP/M programs, such as
WordStar, the star among word processing programs,
DataStar, the file management program, and other programs,
require 80 characters to function properly
screen. Unfortunately, the Commodore 64 only has 40 characters. But
Here, too, there is the right remedy for the user. More
about this in chapter 6.3.

The last problem is the floppy. As already said,
Most software is offered on 8° floppys. The 1541
So floppys aren't so lucky - that's what you think

154

at least. But it is more the case that almost all microcomputer
Manufacturers are increasingly turning to 5 1/4°° floppys
use. So actually every microcomputer has this
Data transfer from 8°° to 5 1/4°°. How this happens
see chapter 6.3

What does CP/M consist of?

CP/M is an operating system that consists of several parts
is composed. To be more precise, there are 4 parts,
which we now want to go into in more detail.

1.) BIOS (Basic Input/Output System): As its name suggests
says, the BIOS is for communication with the outside world
responsible. For example, if information is sent to the
printer, to the terminal (screen) or to the floppy
should be given. To tell the operating system what
to do, the BIOS has some function calls. The
We show you the entire table at the end of these 4 parts.

2.) BDOS (Basic Disk Operating System): This part controls
the floppys - i.e. their content, the administration of the
Table of contents and 'the actual reading and
Write commands. These processes are also all over
individual function calls controlled. We'll get to that in a moment.

3.) CCP (Console Command Processor): Somehow this has to happen
Operating system will be told what you actually do
want. This notification is usually made via the
Keyboard of the Commodore 64. CCP guides your commands
the CP/M system continues - you can also see it as
Imagine the switchboard where all the connections are
between the individual participants, in our case the
CP/M sharing. |

4.) TPA (Transient Program Area): This is now the one
actual, free, program memory that the user has

155

can prove. So when you write a program, or

If you use one, this is the working memory for it.

And this is how BIOS, BDOS, CCP and TPA are located in the main memory:

Description from address

FDOS ( BIOS + BDOS ) $ICOO

CCP $9400

TPA $0 100

System parameters $0000

Here are the FDOS functions in detail:

Function: Designation:

BIOS

OO system reset

01 Read ASCII characters from terminal

O2 Send ASCII characters to the terminal

03 Read ASCII characters from reader

04 Send ASCII characters to puncher

05 Send ASCII characters to the printer

06 Receive/send characters to console

07 Read status of a device unit

08 Send status to a device unit

09 Send character string from buffer

10 Read string into buffer

11 Read status of the console unit

156

BDOS

12 Read version number of CP/M
13 Disk Reset
14 select drive number
15 open file (OPEN)
16 Close file (CLOSE)
17 Search for first program in FCB
18 Search for the next program in FCB
19 Delete program (DELETE)
20 Read from sequential file
21 Write to sequential file
22 Create file23 Change the program name (RENAME)
24 Specify possible drives
25 Read current drive number
26 Set DMA address
27 Read address
28 sets of write protection
29 Read/Write pointers
30 Set read/write pointers
31 Read address of the disk parameters
32 Read/Set user ID
33 Read from random file
34 Write to random file
35 Calculate program length
36 Read address of the record

All of these functions follow a very specific pattern
called. To make this clear, we now have to look at something
deal with the 8080 machine language. Since CP/M on this
processor was developed, and the 2-80 processor, which is located in
The Commodore 64 CP/M module also contains this language
understands, most CP/M applications are in this language
presented. If you are not yet familiar with this processor and
his language, but deal more intensively with CP/M
If you want to, we can only recommend that you don't just get one
Read the detailed CP/M manual (e.g. HOW TO HANDL

157

CP/M -- Bernd Pol -- IWT Verlag, or CP/M manual -- RODNAY
ZAKS), but also Z-80 or 8080 manuals to your standard
to make literature.

What do the function calls look like?

For example, the version number of the Commodore CP/M
To determine (this is 2.2) the following routine can be used
apply:

MVI 6.12 - FUNCTION 12

CALL 0005 :BDOS INTERVENTION

CPI 20H ;$20 MEANS CP/M 2.0

First, the C register is created with the value 1? loaded, so that
Function number for reading the CP/M version. This C register
is always loaded with the function number before the address
0005 is branched. CP/M now knows that we have the CP/M version
'want to know, and automatically branches to the location of the CP/M
System where the version number is read. BDOS then jumps
back into our machine routines and has it
Version number provided in the battery. Is the value of the battery now
$20, so we know this version of the CP/M
is at least a 2.0 version. This information can
be very interesting if we want to write a program,
that manages random files. All versions before 2.0 can
namely only sequential files (see Chapter 8). So if we
our program on another CP/M computer as well
If you want to use our Commodore 64, we can easily
determine whether this program is actually running on the computer.

Play a very important role in the CP/M function calls
Each of the different registers. First and foremost here is this
C register, in which the function number in front of the
BDOS/BIOS call is stored. After carrying out the

158

The routine mentioned is then included in the various others

Register the desired information. Of course it can too

happen that there is no input, but the output of a character

should be done. Then of course the call is a little different. This

Register C still contains the function code. The others

Register or the other register are already created before

Call loaded.

Why short codes?

As you already know, one of the advantages of CP/M

Operating system that a CP/M program generally runs on every CP/M

computer should run. But you can do this from computer to computer

Small changes in BIOS/BDOS or CCP may be necessary. To

ensure that the programs run without the

Programmers have to worry about the structure of the CP/M, there

this BIOS/BDOS call at the address 0005. So a

certain part of the CP/M operating system can be changed (and

if it is only one byte) without the already existing ones

Programs would have to be readjusted. Have the same advantage

This also applies to the KERNAL of the standard Commodore 64, i.e. without CP/M

Operating system. The various entry points are available there

the most diverse I/O (input-output) routines. Would now

If one of these routines is changed, it is still possible

to continue using the old programs - they even notice

nothing about the change in the operating system.

The CCP commands

As already mentioned above, the CCP provides an interface to the

other CP/M programs. It has its own

small set of commands. You can also do this from here

Run executable programs. All in all, that

Connection between the CP/M operating system and the user.

Here are the commands in detail:

1591.) DIR (Directory): With this command you can

View the diskette's table of contents. There is this

different options:

- DIR displays the entire contents of the diskette located in

the currently addressed drive is located.

- DIR B: displays the entire contents of the diskette, which is

located in drive B (1). Instead of B you can also use A

stand. Then the contents of drive A (0) will be displayed.

- DIR <NAME.EXT> only shows whether the program you are looking for

is on the diskette. The NAME can be chosen arbitrarily,

but must not exceed 8 digits and none

Contain special characters. EXT is a 3-digit suffix

the program name. It indicates what type of program it is
acts. For example, only such programs can

which have the abbreviation COM. TXT would

means that this is a TEXT file, BAS

is a BASIC program etc.

- DIR <*.EXT> Shows all programs that have the abbreviation EXT

have. So *.COM would show all programs that go directly to

are starting.

There are a number of other forms for the DIR command.

Please refer to the CP/M manual.

Here is the format of the table of contents in the application

the DIR command on the Commodore 64:

A>YOU

A: MOVCPM COM : PIP COM

A: SUBMIT COM : XSUB COM

A: ED COM : ASM COM

A: DDT COM : LOAD COM

A: STAT COM : SYSGEN COM

160

A: DUMP COM : DUMP ASM

A: COPY COM : CONFIG COM

A>

2.) ERA (Erase): This command deletes a program or

several programs from the table of contents. Here too there is

there are again different possibilities:

- ERA <NAME.EXT> see above

- ERA <*.EXT> see above

3.) REN (Rename): With this command you can

existing program or file

give new name. There is only one form here

- REN <NEW NAME> = <OLD NAME>

4.) TYPE: This command only has an effect on

Text files. So for example, do you want a file that

you created with a file management program

the screen (or the printer) so you can

use this command. It has the form:

- TYPE <FILE NAME.EXT>

In most cases the abbreviation is of the type TXT, PRN or

be like that.

5.) SAVE: This command is correct at first glance

complicated. Normally you use this command then

if you have changed a program with DDT (see below) and it

want to save again. But also when saving

a modified CP/M version (see below). The form is:

- SAVE <PAGE NUMBER> <NAME.EXT>

161

The page number indicates how many ‘pages’ each 256 bytes

should be saved. This is how the command saves:

SAVE 50 TEST.COM

the program TEST.COM from the address $0100 (beginning of TPA) to

to the address $32FF. The length is therefore 50*256 bytes.

6.) USER: With the help of this command you can

Split table of contents for different users.

So it is possible to select certain areas of the table of contents

against use by other users (on other computers)

to secure. However, the Commodore 64 has this command

no greater importance. He's here just as a matter of form

mentioned. The form is:

- USER USER NUMBER

The user number can have a value between O and 15.

So by specifying a number you get to

Table of contents for the corresponding user. is set

the number O.

These are the commands that every computer with a CP/M

Operating system understands. Only the USER command has only been around since

the CP/M version 2.0. But everything else is standard

Command set from CP/M. On the next pages we give you

A brief insight into the standard CP/M programs:

PIP, ED, DDT, STAT. They are included in the scope of delivery of every CP/M

System disk, but are not as commands, but as
to understand programs. As a whole, they form a unit
a command extension, but must first be from the diskette

be reloaded.

162

6.2 HANDLING THE INDIVIDUAL CP/M PROGRAMS

What would CP/M be without its basic framework of support programs? DIGITAL

RESEARCH, the manufacturer of CP/M, has ensured that the

Users start programming from the very first moment

can begin - a downer for Commodore 64 users:

There is no special BASIC version as standard. But

nothing is impossible for CP/M - even a BASIC interpreter can

be used later.But now to the individual programs. The following programs include

to the CP/M standard:

- STAT.COM A program with which the most diverse

System information can be queried (e.g.

Space on disk, connected

interfaces, device assignments, etc.)

- ASM.COM An assembler. As mentioned above, is common

still programmed in 8080 assembly language. So

So this assembler is also on the

Programming designed in 8080 code.

- LOAD.COM This program makes the fully assembled

Programs (programs with the abbreviation .HEX)

executable programs.

- DUMP.COM This program can be used to create a program (.COM).

the screen is displayed in readable HEX form

become.

- PIP.COM You could get to this program in good German

say: A program for exchanging data

between different peripheral units.

- ED.COM The CP/M text editor. This program is a

important tool for creating texts,

163

Machine programs and the like.

SYSGEN.COM Where you could only copy files with PIP, there

You can use SYSGEN to record the individual BIOS traces

Write a disk and even a new BIOS

generate (see Chapter 6.3).

MOVCPM.COM This program adapts the standard CP/M to yours

specific computer type (see Chapter 6.3)

SUBMIT.COM It happens again and again that certain entries

done again and again, at the same time

must be. To make your work easier,

The SUBMIT program is available to you.

XSUB.COM This program also makes your work easier

with repeated command sequences.

However, this program is only available in

Applied in conjunction with SUBMIT. It allows that

manual input, i.e. via keyboard, during

automatic process through SUBMIT.

We cannot go into all of them in detail at this point

programs. At this point we will just content ourselves with

a short introduction to the various programs - CP/M

Manuals provide more information about this.

STAT

One of the most important programs is certainly the STAT program.

You could also call it a STATUS program. Because with the help of this

You can get a lot of information about the program

obtain the state of the entire system. It's not just him who can do it

remaining space on the diskette and the length of the

Programs can be determined, the read/write pointers can also be used

can be changed to show whether written to the diskette

and may be read by her, or perhaps only read by her

164

Access exists. And also information about the different ones

Interface steles can be queried and changed. Here there is

However, there is a limitation with the Commodore 64 CP/M version.

The IOBYTE is not implemented, which means that the individual

Assignments cannot be changed. But that's for them

Normal use not particularly annoying.

Here is an example of the STAT command:

A>STAT VAL:

TEMP R/O DISK: D:=R/O

SET INDICATOR: D:FILENAME.TYP $R/O $R/W $SYS $DIR

DISK STATUS DSK: D:DSK:

USER STATUS USR:

IOBYTE ASSIGN:

CON: = TTY: CRT: BAT: UC1:

RDR: = TTY: PTR: UR1: UR2:

PUN: = TTY: PTP: UP1: UP2:

LST: = TTY: CRT: LPT: UL1:

Here we find out what values and in what form we

can (theoretically) change - because, as already said, the values

under IOBYTE ASSIGN cannot be changed on the Commodore 64.

For example, if we set the write protection on the floppy disk

If you want something else, just say:

STAT A:=R/O. This write protection

remains as long as the device remains switched on.

Now to find out the connected CP/M interfaces
just type: STAT A:DEV: |

The printout for the Commodore 64 then looks like this:

A>STAT DEV:

CON: IS TTY:

165

RDR: IS TTY:

PUN: IS TTY:

LST: IS TTY:

t
f

Any change to any of these assignments would occur without. Change

stay on the system. For example: STAT LST:=LPT:.

The information about them is also very informative

Floppy disk characteristics. Here you can find out how big the capacity is

the disk, what its structure looks like and much more. The
The corresponding query is:

A>STAT DSK:

A: DRIVE CHARACTERISTICS

1088: 128 BYTE RECORD CAPACITY

136: KILOBYTE DRIVE CAPACITY

64: 32 BYTE DIRECTORY ENTRIES

64: CHECKED DIRECTORY ENTRIES

128: RECORDS/EXTENT

8: RECORDS/BLOCK

34: SECTORS/BLOCK

2: RESERVED TRACKS

This is the statement from STAT. Now for one more thing

program,

PIPThis program is a universal program for copying

files. There is not only the possibility between

different floppys, but also a text file

output to the printer. This has the advantage that the whole thing

Listing formatted, that is, with line numbers and tabs,

can be printed out. To copy an entire disk,

The following form is used: PIP B:=A:*.*. This command copies

all files and programs from drive A to drive B.

166

To output a text file to the printer, you must
use the following command: PIP LST:=DUMP.ASM. Now, if
the printer is connected, the entire program DUMP.ASM runs

issued to this.

ED

This text editor allows you to enter text as well
also the input of machine programs and all programs,
that are to be compiled later, such as FORTRAN
or COBOL programs. Working with ED requires some practice -
It is certainly a bit complicated for the Commodore user
and it takes some getting used to, but you can get used to it quite quickly
Familiar with how this simple editor works. Here one

Example:

A>ED TEST. TXT

NEW FILE

*I

THIS IS THE FIRST LINE OF TEXT

AND THIS THE SECOND
<CTRL>-Z Press CTRL and 2

button at the same time

*E

With this little example you can write your first one
Text file on diskette. When the writing process is finished,
the operating system reports again with A>. Try it
Now use the TYPE command (see above).

With ED you can not only create texts (programs) and
write them away, but you can also read them back in,
change and carry out further manipulations on them.

167

6.3 ADAPTING STANDARD CP/M SOFTWARE TO THE C-64

What is important when adapting CP/M software to the hardware?

of the Commodore 64? First of all you have to consider that

You only have a 40 character screen available. But there

most user software is limited to 80 characters

Standard terminals are tailored to this, you need an 80

Character card.

In addition, using CP/M is a large and fast

Floppy is an advantage.

Through this system you then have access to the largest

software offering in the world.

for adapting CP/M to a computer

Operating system via two programs: MOVCPM and SYSGEN.

With MOVCPM you can configure the operating system to a specific

Set memory configuration. This is how it is possible

to fully utilize maximum storage space. When starting the CP/M

operating system, the computer reports the message 44K CP/M.

But it is even possible to use the full memory for CP/M

use. As already said, it is possible to use the Commodore 64

switch entirely to RAM.

With SYSGEN the CP/M system can then be copied to your diskettes

become. You now have a CP/M computer that can do even more.

168

a

6.4 THE MEMORY MANAGEMENT OF THE Z80 PROCESSOR

The 280 processor on the CP/M card can handle the full 64 KByte

of the Commodore 64. Since the 280 has the address zero as

Reset address required, but this address in the Commodore 64

is occupied by the processor port of the 6510, you are at the

Addressing the memory by the 280 processor

went another way. The CP/M card contains the hardware for

Generation of an offset when addressing the memory

through the Z8O. The offset is $1000 equals 4096. This

The following situation arises: The Z80 processor speaks the

Memory cell O is caused by hardware manipulation

The address lines are the address $1000 of the Commodore 64

addressed under 6510. Since the Z80 together with the 6510

is therefore up to the Z80 processor

Continuous memory area available from address O.

If you want the corresponding 280 address from a 6510 address

calculate, you simply subtract $1000 and then get that

280 address. Alternatively, you can also add $FOOO and

leave any carryover unconsidered. Through

This trick will create a range of 4 Kbytes from address O to

$1000 of the 6510 is placed at the end of the address range of the 280.

This memory area is used by the 6510 as zero page, stack and

RAM occupied. There is also the video

RAM. The remaining 2 Kbytes from $800 to $FFF are stored at the

CP/M card for transferring data from the 6510 to the Z80 and vice versa

returns as well as program memory for 6510 input/outputroutines used. The Z80 delegates the input/output to the

6510. This situation is repeated on the next page

displayed graphically.

Below are the most important common addresses

CP/M between 280 and 6510 summarized.

169

Label 6510 _280 Meaning
HSTBUF $0800 OF800H 256 byte disk buffer

CMD $0900 OF9O00H Command register for 6510

DATA $0901 OF901H data register

SECTOR $0902 OF902H sector register

TRACK $0903 OF903H Track register

DISKNO $0904 OF904H Register for drive number

KEYCHAR $0905 OF9OSH Number of the key pressed

MODESW $DEOO OCEOOH switch for 6510 / 280

IOTYPE $SOCFF OFCFFH I/O configuration

y
a

6510 Z80 6510

$FFFF OEFFFH OFFFFH $OFFF

65 10

OPERATING

SYSTEM

$DOOO OCOOOH

48K BIOS65

$COOO OBOOOH

44K

OF9O0H $0900

DISC BUFFER

OF800H $0800

CP/M VIDEO

RAM

OF 400H $0400

6510

WORKING

$1000 OOOOOH STORAGE

6510 - Z80

$0000 OFOOOH OFOOOH = $0000

170

6.5 DISK MANAGEMENT UNDER CP/M

A floppy disk is divided into several concentric tracks
(Tracks) and these in turn into individual sectors
(Segments). For the VC 1541 it looks like this:

Track sectors

1-17 0-20

18-24 0-18

25-30 O-17

31-35 O-16

This is a total of 683 sectors (blocks), of which internal
track 18 is used for the diskette table of contents,
so that you still have 664 blocks available.

Under CP/M the first two tracks are for the CP/M system
self-reserved; the other programs are for data and
Free program storage. Track 18 is left out. Since the
Floppy disk management under CP/M no variable sector number
len per track, only sectors O to
16 occupied. In the end you still have 32 tracks each
17 sectors, which is 574 blocks of 256 bytes equal to 143
Kbytes. There is still some difference for the CP/M directory (max.
64 entries of 32 bytes each equals 2 Kbytes). This data is
in the BIOS (Basic Input/Output System) of the CP/M in the so-called
Disk parameter block is saved and can be accessed by the user
its disk capacity can be adjusted. In the BIOS it becomes
Example also track 18 (which is the Commodore Directory
contains) left out. Please see the BIOS listing

of the CP/M 64.

The assignment of the first two tracks by the operating system

looks like this:

171

Track 1 sector O contains the loading program °“CPM’. In track 1

The 'BIOS 65°' lies from sector 1 to 5, these are the

I/O routines for the 6510 as well as the cold start loader for the

CP/M. The 'CPM' program loads these 5 sectors into the

Memory range $OAOO to $OEFF. Afterwards the area of

$OEOO to $OEFF transferred to the address $1000 to $10FF.

This is the Z80 address 0, to which the cold start charger

is transmitted. The 6510 then switches itself on

off and the 280 on at the same time. The 280 now carries that
Program from address O, which is the CP/M operating system

Disk loads. CCP and BDOS (Command Console Processor and

Basic Disk Operation System) occupy 22 sectors on track

one and two; namely from Track 1 Sector 6 to Track 2

Sector 10. These sectors are also included with every warm boot

Control C is reloaded from the diskette; for everyone

When the sector is loaded, an asterisk appears on the screen.

The BIOS, which is only loaded during a cold start, occupies 5

Sectors from Track 2 Sector 11 to Sector 16. The Directory

occupies sectors O to 7 on track 3.

With the CP/M utility program 'COPY', the following are used

selected option then only the required sectors

read and written to the new diskette, e.g. at

“system tracks only” only sectors 1 and 2 as well as 18 and

Track 3 for the CP/M directory.

Do you want to connect another floppy, e.g. about the

IEC bus, so you need track and sector division of the

Know the floppy disk station. There is none on the floppy 4040

Adjustment required as 4040 disks are fully compatible

to 1541. For an 8050 or 8250 floppy the increased

Making use of memory capacity is an adjustment in the BIOS

required. The Disk Parameter Block is used for this purpose. There

are the values for sectors per track (23 for 8050) as well

172

the disk capacity. In addition, you still have to put it in place
Lane 18 leaves out lanes 38 and 39 because there
the Commodore directory is available. These changes are also in
COPY program required.

173

6.6 THE COLLABORATION BETWEEN 6510 AND Z80If you are working with CP/M on the Commodore 64, share
two microprocessors do the work. While the Z8O that
The actual CP/M is served by the 6510 for input and output
Operations used because the Commodore 64 operating system
already provides these routines. The following tasks
are delegated from the 280 to the 6510:

Command number operation

O read a sector from a floppy disk

N
A

W

H
L

l
U

n
n

write a sector to a floppy disk

Query the keyboard

Output characters to screen

Get printer status

Output characters to printer

Format diskette

7 - 9 reserved for future expansion,

e.g. serial input/output

The two processors cannot work at the same time, but only
work alternately. To switch between the two
Processors use the address $DEOO of the 6510 or OCEOOH of the
2860. Does the 280 want an input/output function from the 6510
to have it exported, he passes on the number of the 6510
desired command from the table above and so on
required additional parameters in a common
Memory area and then switches off by registering
a °1° to the address OCEOOH itself and the 6510 with it
a. This now knows which function based on the command number
he should execute for the 280. If the command is executed, so
The 6510 now switches on by writing an “O°”.
Address $DEOO yourself and turn the Z80 back on. The
280 can now be back in place in its program

174

m

continue, at which point he relinquished control to the 6510

had. Due to hardware requirements, the first command must follow

a NOP command each after switching the 6510 and 280 back on

(No Operation).

The memory area starting from the address is used to transfer parameters

$900 or OF9IOOH.

6510 280 meaning

$900 OF9O00H Command number

$901 OF901H Data for input or output

$902 OF902H sector number

$903 OF903H Track number

$904 OF904H disk number

$905 OF905H Key number for keyboard query

The range from $800 to $8FF or OF800H to OF8FFH serves

as a buffer for one to be written or one to be read

Sector of floppy disk.

Reading or writing diskette sectors takes place in

Direct access via block read and block write commands.

The keyboard query only returns the number of the

pressed button. The assignment of a key to a

ASCII value happens from the BIOS via a table of

Address $DOO to $DFF or OFDOOH to OFDFFH. From address $COO

or OFCOOH are the addresses of the texts with which the

Function keys are assigned. The texts themselves, which are up to 16

characters can then be available from address $C10 or

OFC1OH. These assignments can be made using the CONFIG program

can be changed arbitrarily.

175

6.7 COMMENTED CP/M BIOS LISTING

On the following pages you will find a detailed explanation

documented listing of the Basic I/O System (BIOS).

Commodore 64 CP/M. The BIOS is divided into 4 parts. The

The first part includes the "CPM" program on your system disk

and is loaded with LOAD "CPM",8 into the address range from $800 to

$8FF loaded. This program loads the BIOS65 into memory

from address $AOO to $DFF. This is the part of the BIOS that

executed by the 6510 processor. The third part is this

so-called “BOOT” program, which is used when the CP/M is started cold

fourth part, the actual Z80 BIOS, loads.

6.7.1 LOADING PROGRAM FOR BIOS 65

KKEAKKAKEKKKKEKKKKKKKEERKKEEEKKKEK Commodore 64 loading program for CP/M

O80F 78 SEI

0810 20 E7 FF JSR $FFE7 CLALL, close all I/O channels
0813 A9 OF LDA #$0F logical file number 15 |

0815 A2 08 LDX #$08 Device number 8

0817 AO OF LDY #$OF Secondary address 15

0819 20 BA FF JSR $FFBA Set file parameters

081C AI 00 LDA #$00 no file name

O81E 20 BD FF JSR $FFBD Set parameters for file names

0821 20 CO FF JSR $FFCO OPEN Error channel

0824 AY 02 LDA #$02 logical file number 2

0826 A2 08 LDX #$08 Device number 8

0828 AO 02 LDY #$02 Secondary address 2

082A 20 BA FF JSR $FFBA Set file parameters

082D A9 01 LDA #$01 Length of the file name equals one

082F A2 B5 LDX #$B5

0831 AO 08 LDY #$08 Pointer to "#"

176

0833

20

BD

FF

JSR $FFBD

Set parameters for file names

0836

20

CO

FF

JSR$FFCO

OPEN direct access channel

0839

AY

05

LDA #$05

083B

8D

B6

08

STA $08B6 —

Load payers for 5 sectors

O83E

A2

OF

LDX #$0F

15

0840

C9

FF

JSR$FFC9

CKOUT, output on channel 15

0843

A2

00

LDX #$00

0845

AO

OB

LDY #$0B

12 characters

0847

BD

08LDA $08AA,X

"U1:2 01s"

Track 1, sectors 1 to 5

O84A

20

D2

FF

JSR $FFD2

output

084D

E8

O84E

88

INX

DEY

O84F

THURS

Q6

GNI $0847

0851

20

C.C.C

FF

JSR$FFCC

CLRCH, output back to default

0854

A2

02

LDX #$02

2

0856

20

C6

FF

JSR $FFC6

CHKIN, enter channel 2

0859

A2

00

LDX #$00

085B

20

CF

FF

JSR $FFCF

Get characters

O85E

9D

00

O.A

STA $OA00,X

and save

0861

E8

INX

0862

THURS

Q7

GNI $085B

already 256 characters?

0864

20

de

FF

JSR$FFCC

CLRCH, input back to default

0867

EE

B3

08

INC $08B3

Increase sector number

086A

EE

60

08

INC $0860

Increase memory address by one page

O86D

CE

B6

08

DEC $08B6

already read 5 sectors?

0870

THURS

de

GNI $083E

no, read on

0872

A2

00

LDX #$00

0874

BD

00

O.E

LDA $0E00,X

BOAT program for 280

0877-

00

STA $1000,X

copy to 280 address OOOOH

O87A

E8

INX

087B

THURS

Q7

GNI $0874

087D

20

E7

FF

JSR $FFE7

CLALL, close I/O channels

0880

AS

36

LDA #$36

0882

85

01

STA $01

Switch off BASIC ROM

177

0884

A9

09

LDA #$09

CHR$ (9)

0886

20

D2

FF

JSR $FFD2

Allow switching

0889

AY

O.E

LDA #$0E

CHR$( 14)

088B

20

D2

FF

JSR $FFD2

Set text mode

088E

A9

08

LDA #$08

CHR$ (8)

0890

20

D2

FF

JSR $FFD2

Lock switchover

0893
0895

A9

93

LDA #$93

CHR$( 147)

20

D2

FF

JSR $FFD2

Clear screen

0898

AY

O.D

LDA #$0D

O89A

20

D2

FF

JSR $FFD2

089D

A9

FF

LDA #$FF

CHR$(13)

new line

089F

8D

00

09

STA $0900

Command register

O8A2

AY

28

LDA #$28

Key number

O8A4

8D

05

09

STA$0905

remember |

08A7

4c

00

O.A

JMP $0A00

to the main loop 280 - 6510

O8AA

95

31

3A

32 20 30 20 31 20

31 OD °U1:2 0 1 1" Block read command

08B5

23

"#° Filename for direct access

178

6.7.2 BIOS 65

e 2 2 5 2 2 2 2 2 2 2 2 2 22 2 2 2 2 2 2 2 2 2 2 2 2 ® |

Main loop Z80 - 6510

OAOO AI 00

LDA #$00

OAO2 8D 00 DE STA $DEOO

Turn off 6510

OAO5 EA

NOP

OAO6 20 OC OA JSR $0A0C

Run routine for 280

OAO9 AC 00 OA JMP $0A00

back to the loop

LE 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2;

Select routines for Z80

OAOC

AD

00 09 LDA $0900

Command code

OAOF

C9FF CMP

#$FF

280 not active?

OA11

THUR 03 BNE

$0A16

OA13

6C FC FF JMP

($FFFC)

RESET the Commodore 64

OA16

C9 OA CMP

#$OA

Command number greater than or equal to 10?

OA18

90 01 BCC

$0A1B

OA1A

60 RTS

no

finished

OA1B

D8 CLD

OAIC

18 CLC

OA1D

6D 00 09 ADC

$0900

Command number * 2

0A20

69 28 ADC

#$28

plus $28

OA22
OA25

8D 26 OA STA

$0A26

Set indirect address

6C 28 OA JMP

($0A28)

Execute command

a 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 8 2 2 5 2 8 8

Jump table of 10 functions

OA28

3F OA

Function

OA2A

97 O.A

Function

OA2C

86 O.A

Function

0,

a
=

H
N

READ SECTOR

WRITE SECTOR

KEYBOARD QUERY

OA2E

SF OA

Function

W
w
W

~
=

SCREEN OUTPUT

OA3O

99 O.A

Function

OA32

9F OA

Function

&

N
O

GET PRINTER STATUS

PRINTER OUTPUT

OA34

49

OB

Function a

FORMAT DISK

179

OA36 00 OE Function 7, AUX1, jump to $EOO

OA38 00 OF Function 8, AUX2, jump to $FOO

OA3A 3C OA Function 9, INDIRECT, Jump To ($906)

a 2.2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 Sn71.94 He}. 9, INDIRECT

OA3C 6C 06 09 JMP ($0906) indirect jump to ($906)

a 5.2. 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 Zn70900 e) QO, READ SECTOR

OA3F A9 31 LDA #$31 "1" for "U1" equals block read

OA41 20 F2 OA JSR $0AF2 sends block read command to diskette

OA44 20 DE OB JSR $OBDE Entry of random access channel

OA47 A2 00 LDX #$00

OA49 20 CF FF JSR $FFCF Get character

OA4C 9D 00 08 STA $0800,X store in buffer

OA4F E8 INX

OA50 DO F7 BNE $0A49 already 256 characters?

OA52 FO 60 BEQ $0AB4 CLRCH

OA54 20 97 OB JSR $0B97 Initialize diskette

KERKKKKKKKKKKK KK KK CK KK KK CK KK KK SL eS X Function 1, WRITE SECTOR

OA57 20 F4 OB JSR $OBF4 Output to the command channel of the diskette

OA5A AO 08 LDY #$08 8 characters

OA5C BD 80 OB LDA $0B80,X | "B-P 2 0°, set pointer to start of sector

OA5F 20 D2 FF JSR Issue $FFD2

OA62 E8 INX

OA63 88 DEY

OA64 DO F6 BNE $0A5C

OA66 20CC FF JSR $FFCC CLRCH

OA69 20 CE OB JSR $OBCE Read error channel |

OA6C DO E6 BNE $0A54 Error, then initialize and again

OA6GE 20 CC FF JSR $FFCC CLRCH

OA71 20 ES OB JSR $0BE9 Output on channel 2

OA74 A2 00 LDX #$00

180

y
a

OA76 BD O0 08 LDA $0800,X

characters from buffer

OA79 20 D2 FF JSR $FFD2zur schicken

OA7TC EB INX

OA7D F7 BNE $0A76

schon 256 Zechen

OATF 20 CC FF JSR $FFCC

CLRCH

OA82 AY 32 LDA #$32

"2" Fur "U2" gleich Block Write

OA84 DO 6C BNE $OAF2

Block Write Befehl an Diskette

RKEEAEARKKKRKKEKEKEKEKEKEKEKEKEKEKEKEKEKEKEKEKERKE

Function 2, TASTATUR-ABFRAGE

OA86 20 9F FF JSR $FF9F

abragen tatature

OA89 A5 C5 LDA $C5

Matrix-Nummer of Zeichens

OA8B 8D 09 09 STA $0905

an

OA8E 60 RTS

RREAEEKKKKKKEKKKKEKKKKEKKKEKKEKKKEKKE

Function 3, BILDSCHIRM-AUSGABE

OA8F AI 00 LDA #$0

OA91 85 D4 STA $D4

Hochcommaflag lösche

OA93 AD 01 09 LDA $0901

Zechen was down

OA96 4C D2 FF JMP $FFD2

und Bildschimm ausgeben

KEKAA REARE RARERE RARERERENEREES

Function 4, DRUCKER-STATUS HOLEN

OA99 AY 00 LDA #$0

OAIB 8D 01 09 STA $0901

Gleich null status

OASE 60 RTS

2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 8 2 SS 5;

Function 5, DRUCKER-AUSGABE

OASF AD 01 09 LDA $0901

auszugended Zechen

OAA2 C9 OA = CMP #$0A

Line Feed ?

OAA4 DO 01 DBNE $OAA7

nein ?

OAA6 60 RTS

ja, give out unterdrücken

OAA7 A2 04 LDX #$0

logische Phylemmer 4

OAA9 20 C9 FF JSR $FFC9

CKOUT, Ausgabe auf Drucker legen

OAAC BO 09 BCS $OAB7

Fehler ?

OAAE AD 01 09 LDA $0901

auszugended Zechen

181

OAB1 20 D2 FF JSR $FFD2 zum Drucker schicken

OAB4 4C CC FF JMP $FFCC CLRCH, Ausgabe wieder auf default

OAB7 C9 03 CMP #$03 File not open ?

OAB9S DO 05 BNE $OACO | neither, adenderer Fehler

OABB 20 C6 OA JSR $0AC6

OABE 90 DF BCC $OA9F is Fehler, and Zeichen is

OACO AY FF LDA #$FF Fur Fehler Code

OAC2 8D 01 09 STA $0901 to 280

OAC5 60 RTS

OAC6 AO 07 LDY #$07
OAC8 20 OA JSR $OOADE Dickdatei schließen und öffnen

OACB AD FF OC LDA $OCFF I/O-Typ (Druckertyp)

OCE 29 02 AND #$0

OADO F3 BEQ $0AC5 1515 Drucker ?

OAD2 A2 04 LDX #$04 logische Phylemmer

OAD4 20 C9 FF JSR $FFC9 CKOUT, Ausgabe auf Drucker

OAD7 A9 OD LDA #$0D carriage retret

OADS 20 D2 FF JSR $FFD2 zum Drucker

OADC AO 00 LDY #$00

OADE FOOD 04 LDA #$04 logische Phylemmer 4

OAEO 20 C3 FF JSR $FFC3 CLOSE

OAE3 AS 04 LDA #$04 logische Phylemmer 4

OAE5 A2 04 LDX #$04 Geratummer 4

OAE7 20 FOR FF JSR $FFBA Fileparamer seten

OAEA A9 00 LDA #$00 pilename
OAEC 20 BD FF JSR $FFBD | Filenmen ﬁir parameters setzen

OAEF 4C CO FF JMP $ OPEN

a2 222 22 222222222222222222 2

OAF2 8D 63 OB STA $0B63 Platz für "1" oder "2°

OAF5 AD 04 09 LDA $0904 Diskettenummer

OAF8 20 89 OB JSR $0B89 Zahl nach ASCII wandeln

182

OAFB

8D

67

OB

STA $0B67

morken

OAFE

AD

03

09

LDA $0903

Tracknumer

OBO1

89

OB

JSR $0B89

nach ASCII wandeeln

0BO4

69

OB

STX $0B69

morken

OBO7

6A

OB

STA $OB6A

OBOA

AD

02

09

LDA $0902

Sector

OBOD

20

89

OB

JSR $0B89

nach ASCII wandeeln

OB10

water

6C

OB

STX $OB6C

morken

OB13

8D

6D

OB

STA $OB6D

0B16

A9

02

LDA #$0

2 Versu

OB18

8D

01

09

STA $0901

OB1B

20

F4

OB

JSR $OBF4

CKOUT, Ausgabe auf Channel 15

OB1E

AO

OD

LDY #$0D

13 Zechen

OB20

BD

62

OB

LDA $0B62,X

"Ui: 20 tt tss" bzw "U2: 2 0 tt tss"

OB23

20

D2

FF

JSR $FFD2

an Diskette Senden

OB26

E8

OB27

88

INX

DEY

OB28

DO

F6

BNE $0B20

OB2A

20

CC

FF

JSR $FFCC

CLRCH

OB2D

20

CE

OB

JSR $OBEC

Fehlerchanal lesen

OB30

GIVE

OB

BEQ $OB3D

ok

0B32

CE

01

09

DEC $0901

bereits zweiter Versuch ?

OB35

GIVE

OE

BEQ $0B45

ja

0B37

20

97

OB

JSR $0B97

Initialier diskette

OB3A

ac

1B

OB

JMP $OB1B

und nochmal versuch

OB3D

A9

00

LDA #$0

Flag für 'ok'

OB3F

8D

01

09

STA $0901

merrk

OB42

4c

cc

FF

JMP $FFCC

CLRCH, Ausgabe wieder auf default

OB45

AS

FF

LDA #$FF

Fehler faith flash'

0B47

DO

F6

BNE $OB3F

weiter wie Counself

KK KR TI TR KK KK TE N I KK I |
KRRRKRKRKRKKKRK

Function 6, TRUSTE DIPEAL

183

OB49

20

F4

OB

JSR $OBF4

Befehlscanal offnen OPEN 15,8,15 und CHKOUT

OB4C

AQ

LDY #$1

16 Zechen

OB4E

BD

70

OB

LDA $0B70,X

"NO:CP/M DISK, 65"

OB51

20

D2

FF

JSR $FFD2

an Schicken Diskette

OB54

E8

OB55

88

INX

DEY

OB56

DO

F6

BNE $OB4E

OB58

20

CC

FF

JSR $FFCC

CLRCH

OB5B

20

CE

OB

JSR $OBEC

Fehlerchanal lesen

OB5E

DO

E5

BNE $0B45

Fehlerflag setsen

OB60

GIVE

DB

BEQ $0B3D

Flag fur ‘ok’ seten.

SSRSESSESSESSESESESESESESES & I X

Texte für Diskettendeenung

OB62 55 31 3A 32 30 20 54 54 54

20 53 53 OD "U1:2 The TT SS°*

OB6F

23

"#" Directzuggigsdateiob70 4e 30 3A 43 50 2f 4d 20 4

49 53 4b 2c 36 35 od "no:CP/M Disk, 65

Ob80 42 2d 50 20 32 20 30 OD

"B-P 2 0"

OB8

49

"t"

Keekkarakaa

Aa Krakkerkrerkkek Hox-Zahl in Akku Nach Ascii in x/A

OB8

d8

CLD.

OB8A

a2

30

LDX #$3

"0"

Ob8c

38

Sec

Ob8d

99

OA

SBC #$0A

10 abziehen

OB8F

90

03

BCC $0B9

OB9

E8

Inx

x Enthalt ZehnerziFfer

0b9

bot

F9

bcs $0b8d

OB9

69

3a

ADC #$3A

Akku Enthalt EinerziFfer

OB9

60

RTS

184

a

2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 8;

Initialseren und direktzugriffdatei öffnen

OB9

A9

SELF

lda

#$O

Logische Filenummer

OB9

20

c3

FF

jsr

$FFC3

Close

Objic

A9

SELF

lda

R$O

Logische Filenummer

Ob9ie

a2

08

LDX

#$0

gerätenummer 8

Obao

AQ

SELF

LDY

#$O

Sekkundärdresse

OBS.

20

Baa

FF

jsr

$FFBA

Philepareter Setzen

OBS5

A9

01

lda

#$0

Länge des dateinamens gleich eins

OBS7

a2

88

LDX

#$8

OBA9

AO

Mr.

LDY

#$0B

Zeiger auf "I"

Obab

20

BD

FF

jsr

Obae

20

co.

FF

jsr

$FFBD

$FFCO

Parameter Für Filenamen Setzen

Open 15,8,15,"I"

Obb1

A9

02

lda

#$0

Logische Filenummer

OBB3

20

c3

FF

jsr

$FFC3

Close

OBB6

A9

02

lda

#$0

Logische Filenummer

Obb8

a2

08

LDX

#$0

geratenummer

Obba

AO

02

LDY

#$0

Sekkuradresse 8

OBCBCT

20

Baa

FF

jsr

$FFBA

Philepareter Setzen

OBBF

A9

01

lda

#$0

Lange des Dateinamens gleich eins

OBC1

a2

6f

LDX

R$6f

OBC3

AO

Mr.

LDY

#$0B

Zeiger auf "#"

OBC5

20

BD

FF

jsr

$FFBD

Parameter Für Filenamen Setzen

OBC8

4c

co.

FF

jmp.

$FFCO

Open 2,8,2,"#

OBCB

20

97

Mr jsr $0b9

Diskette initialsieren

le 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2;

Fehlerkanal Lesen

Obce a2 of LDX #$0f

Logische Filenummer

OBDO 20 C6 ff JSR $FFC6

chkin

OBD3 bo F6 bcs $obcb

Fehler, Dann Diskette Erst initialsieren

OBD5 20 CF FF JSR $FFCF

Zeichen vom Fehlerkanal Holen

OBD8 c9 30 cmp #$3

mit "0°" vergleichen

OBda 60 RTS

185

OBDB 20 bi Mr jsr $obbb1

DirektzUgriffskanal neu 6ffne

Esrsssssssssssssssssssss
kk rk rk kk kk kk n

EINGABE AUF DIREKTZUGRIFFSKKANAL Setzen

OBDE A2 02 LDX #$0

Logische Filenummer

Obeo 20 C6 ff jsr $FFC6

chkin

Obe3 bo F6 bcs $obdb

Fehler, Dann neu offenn

Obe5 60 RTS

OBE6 20 bi Mr jsr $obbb1

DirektzUgriffskanal neu 6ffne

Raeaaeaaaaaaraaarararararararararererererarekreke

Ausgabe auf direktzugriffskanal setzen

Obes a2 02 ddx #$0

Logische Filenummer

Obeb 20 C9 ff jSR $FFC9

ckout

Mr. Bo F6 BCS $Obe6

Fehler, Dann Kanal neu öffnen

OBFO 60 RTS

OBF1 20 97 Mr jsr $0b9

Diskette initialsieren

Raraearakaarrekeererrkeeraerkeerkeerke

Ausgabe auf Commandokanal Setzen

OBF4 A2 of LDX #$0f

Logische Filenummer

OBF6 20 C9 ff jsr $FFC9

ckout

OBF9 bo F6 bcs $obf1

OBFB A2 00 LDX #$0

OBFD 60 RTS

Fehler, Dann Diskette Erst initialsieren

Zeiger Auf |

186

7
4

kkkkkKkkrekkekekekekekkKKKKKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEKEEke

0Coo 10 FC 20 FC 30 FC 40 FC

0CO 50 FC 60 FC 70 FC 80 FC

ArkkaakaaAAAAAKEKERRER BELEGUG der Funktionstasten

0c10 44 49 52 od 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 dir

0c20 44 49 52 20 42 3A OD 00 00 00 00 00 00 00 00 00 00 oo

0c30 53 54 41 54 20 2A 2A 2a 2a 2a 2a 2A

0c40 53 54 41 54 20 42 3A 2A 2A 2A 2A 2A 2A 2A

0c50 43 4f 50 59 OD 00 00 00 00 00 00 00 00 00 00 00 00 00 00 Copy

0c60 43 4f 46 49 47 OD 00 00 00 00 00 00 00 00 00 00 00 00 Config

0c70 44 44 54 OD 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ddt

OC80 44 44 54 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ddt

ESSSSSLSSSSSSSSSSSSSSSLASSESEE SSE ss | Tasaturkode Tabelle

Commodore- Normal Shift

Taste C= Ctrl

If 08 08 08 18 Del BS can

0d0o4 OD Od Od Od Cr Cr

0d08 1c 1c 1d 1d curdy right FS GS

ODOC 86 86 87 87 F7, F8 F7 F8

OD10 80 80 81 81 and, F2 and F2

0d14 82 82 83 83 83 F3, F4 F3 F4

0d18 84 84 85 85 85 8, f6 f5 f6

ODI 1E 1F Cursor Down RS us

0d20 33 33 23 33 3 3 3 3 # 3

0d24 77 57 57 17 Www ow

OD28 61 41 41 01 A aa ‘a

OD2C 34 34 24 34 4 4 4 4$

OD30 7A 5A 5A 1A Z 2 2 2

0d34 73 53 53 13 s ss '$

0d38 65 45 45 05 e e e ‘e

OD3C 00 00 00 00 Shift null

0d40 35 35 25 35 5 5 5 5 & §

187

o
o

6 &

BY

1
9

9
4

x

<
k

s
FOR

%

o
c

3

r
s

0
0

e e
b

+ +

o
w w

e e
c

OD4

72

52

12

0d4

64

44

04

OD4C

36

26

36

ODA5

63

43

03

ODA5

66

46

06

0d5

74

54

14

OD5C

78

58

OD6

37

27

37

ODA6

79

59

19

OD6

67

47

07

OD6c

38

28

7b

OD7

62

42

02

OD7

68

48

08

0d7

75

555

15

OD7C

76

56

16

OD8

39

29

7dOD84

69

49

09

OD88

6A

4A

OA

OD8C

30

30

00

OD90

6D

4D

OD

OD94

6B

4B

OB

OD98

6F

ar

OF

ODIC

6E

4E

OE

ODAO

2B

2B

2B

ODA4

70

30

ODA8

6C

4c

OC

ODAC

2D

2D

2D

ODBO

2E

3E

7D

ODB4

3A

5B

7B

ODB8

40

40

60

ODBC

2C

3C

7B

ODCO

5c

SC

TC

ODC4

2A

2A

2A

ODC8

3B

5D

7D

a
n

»

>

9

>

8

x

>

,
m
h
o

>

W
D

>

=

>

G
&
G

=
<

a
D

H
A

e
h

r
o

%

S
S

S
S

a
n

e
s

v

>

2
.
2
4

o
w

P
P

U
O

B
8

F
F

F
O

F
S

+

S
S

9

D

n
n

©

m
H

A

x

2

x

n
a

a
o

°
°

=

~
~

r
u

©

3

s
s

o
z

+

©

s
o

@

W
B

D
O

P
R

N

m

8

—

1

n
U

Z
Z

S

s
<

w
w

r
H

4

°
3

s
s

o
2

+

n
r

t
i
i

v
m

B
B

A

—
-
—

*

d
n
a
L

188

7
1

~

ODCC

TF

Home

ODDO

00

00

00

00

Shift

ODD4

3D

3D

3D

3D

ODD8

SE

SE

ODDC

2F

2F

3F

9C

ODEO

31

31

21

31

a

| ?

1!

ODE4

oF

oF

oF

oF

Pfeil links

ODE8

00

00

00

00

ODEC

32

32

22

32

CTRL

2"

NUL

22" 2

ODFO

20

20

20

20

Leertaste

Leertaste

ODF4

00

00

00

00

Commodore

NUL

ODF8

71

51

51

11

Q

q QQ9

ODFC

03

03

03

03

STOP

"€ *e *c *C

189

6.7.3 Z80-BOOT-ROUTINE

280 BOOT-Routine für den Commodore 64

COPYRIGHT (C) 1982

COMMODORE INTERNATIONAL

Diese Routine wird von Track 1, Sektor 5 der

Commodore 64 CP/M Diskette von einer Routine

im BIOS65 geladen.

Die Ladeadresse ist OOOOH (aus der Sicht des 280

Prozessors). Wenn der 280 eingeschaltet wird, lädt

diese Routine das 280 BIOS sowie den CCP und das

BIOS ins RAM und springt dort hin.

3400

CCP

EQU 3400H ;Offset für 20K CP/M

‚CCP

:CCP

EQU OOOOH =;fur BOOTO.HEX

EQU O100H # ;fur BOOT1.HEX

OO1C

F903

F902

F904

FCFF

4A33

0000

F900

0001

CEOO

F901

F800

4A00

NSECTS

EQU 1CH ;Anzahl der zu ladenden Sektoren

TRACK

EQU OF903H

‚Register fiir Tracknummer

SECTOR

EQU OF902H

‚Register für Sektornummer

DISKNO

EQU OF904H ;Register für Diskettennummer

IOTYPE

EQU OFCFFH ;IO Konfigurationsbyte im BIOS65

KYBDMD

EQU CCP+1633H

;Flag für Großbuchstabenmodus

VICRD

EQU 0 ;Befehlsnummer fiir Sektor lesen

CMD

OFF

EQU OF900H ;Befehlsregister

EQU O1H ;Wert zum Ausschalten des 280

MODESW

EQU OCEOOH

‚Adresse zum Ausschalten des 280

DATA

EQU OF901H

;Ubergaberegister für Daten

BUFFER

EQU OF8OOH ;Diskettenpuffer

BOOT

EQU CCP+1600H ;BOOT-Adresse des BIOS

190

0000

OOOOH ;280 Reset Adresse

0000

00

0001

110034

0004

3EO00

0006

3204F9

0009

2601

OOOB

2E06

000D

TC

LOAD1

OOOE

3203F9

0011

7D

0012

3202F9

0015

3E00

0017

3200F9

OO1A

3E01

OO1C

3200CE

OO1F

00

0020

3AO1F9

0023

B7

0024

C20D00

0027

3E2A

0029

3201F9

002C

3E03

OO2ZE 3200F9

0031

3EO1

0033

3200CE

0036

00

-wird von der Hardware benotigt

D,CCP

-erste Ladeadresse

A,0O

DISKNO

-Laden von Laufwerk A

H, 1 -Start bei Track 1, Sektor 6

L,6

A,H

TRACK

A,L

SECTOR

A,VICRD ;Sektor-Lese-Befehl

CMD

A, OFF

MODESW ;280 abschalten

DATA -ibertragung in Ordnung ?

A

LOAD1 :nochmal falls nicht

von °*° fiir jeden geladenen Sektor

A,’

DATA

A,3 -Ausgabe auf Bildschirm

CMD

A, OFF

MODESW ;an 6510 übergeben

gelesenen Sektor in Speicher übertragen

0037

O100F8

LXI

B,BUFFER ;BC zeigt auf Diskettenpuffer

191

OO3A OA

003B 12

OO03C OC

003D 1C

LOAD2:

LDAX B ‚Byte aus Puffer

STAX D ;in Speicher übertragen

INR C

INR E ‚Zeiger erhöhen

OO3E C23A00

JNZ LOAD2

Track/Sektornummer erhöhen

0041 14

0042 2C

0043 7D

INR D |

INR L ;Sektornummer erhöhen

MOV A,L ‚und in Akku

auf Ende des Tracks prüfen

CPI 17 ‚Sektor 17 schon ereicht ?

JC LOAD3 ;nein

INR H ;‚Tracknummer erhöhen

MVI L,O ;sektornummer auf Null

LOAD3:

MOV A,H ;‚Tracknummer in Akku

Fertig falls H auf Track 3 zeigt

CPI 3

JNZ LOAD 1 ‚weiteren Sektor lesen

LDA IOTYPE ;Groß/Kleinbuchstaben-Modus

ANI 20H

JNZ LOAD4

MVI A,1

STA KYBDMD ;Flag im BIOS setzen

0044 FE11

0046 DA4COO

0049 24

OO4A 2EOO

004C TC

004D FEO3

OO4F C20D00

0052 3AFFFC

0055 E620

0057 C25F00

OO5A 3E01

OO5C 32334A

LOAD4:

‚Sprung zum BOOT-Teil des BIOS

005F C3004A

JMP BOOT

192

6.7.4 BIOS FÜR CP/M 2.2 AUF COMMODORE64

; COPYRIGHT (C) 1982

; COMMODORE INTERNATIONAL

R Diese Version hat die folgenden Eigenschaften:

. 1. Das BIOS ist für ein 52K RAM System

s mit I/O Treibern über BIOS65 aufgesetzt

. 2. Disketten Tabellen und Vektoren für

: 2 Laufwerke sind enthalten

s 3. Das Intel I/O Byte ist nicht implementiert

. 4. Punch und Reader Routinen sind noch

; - nicht implementiert

s 5, Tastatur und Funktionstastenbelegung: are included in BIOS65

. 6. The Commodore 64 can handle a 20K to 48K CP/M

u support (44K with IEEE card)

. 7. The VC-1541 creates a virtual

. Drive B supported

s 8. With IEC bus a real drive B

: supported

0000 = BASE EQU OOOOH ;Start of addressable RAM

193

002C

EQU

44

'Memory size of the CP/M in kilobytes

"BIAS" is the address offset of 3400H for memory

with more than 20 K (referred to as "B" in the text)

6000

EQU

(MSIZE-20) *1024

Note:

To produce MOVCPM you need

The following assignments can be used:

:CCP

:CCP

CCP

BDOS

BIOS

EQU

EQU

EQU

EQU

EQU

OOOOH ;for BIOSO.HEX

0100H ;for BIOS1.HEX

3400H+BIAS 'Base of the CCP

CCP+806H 'Base of the BDOS

CCP+1600H ;Base of BIOS

CDISK

EQU

BASE+0004H 'current disk number

0..15 equals A..P

IOBYTE

EQU

BASE+0003H ; INTEL I/O bytes

TRANS

EQU

ENTRY

EQU

OOOOH ;0 means no translation
0005H ;BDOS entry vector

The following assignments define the common

Memory area for transferring data to and from the

6510 I/O routines

HSTBUF

EQU

OF800H

CMD

DATA

EQU

EQU

OF900H

OF901H

SECTOR

EQU

OF902H

TRACK

EQU

OF903H

DISKNO

EQU

OF904H

KYCHAR

EQU

OF905H

;296 byte disk buffer

;Command register

;data register

;Sector register

;Track register

'Drive number register

'Keyboard code register

9400

9CO6

AAOO

0004

0003

0000

0005

F800

F900

F901

F902

F903

F904

F905

194

FCFF

IOTYPE

EQU

OFCFFH

:IO configuration byte

The Z80 switches on by registering

“OFF’ into the memory cell “MODESW” itself

0001

CEOO

OFF

EQU

1

FASHION SW

EQU

OCEOOH

The following are the commands for the 6510 I/O routines

VICRD

EQU

VICWR

EQU

VICIN

EQU

VICOUT

EQU

VICPST

EQU

VICPRT

EQU

VICFMT

EQU

AUX'

AUX2

EQU

EQU

INDIR

EQU

©
[

Y
N

W

&

w
w

a
S

©

-Reading the specified sector

-Writing the specified sector

-Keyboard query

'Output to the screen

'Get printer status

-Output to printer

‘Format disk

-Jump to 6510 address $EOO

-Jump to 6510 address $FOO

-Indirect Jump Over ($906)

ORG

NSECTS

EQU

BIOS -Start this program
($-CCP) /256 sector counter for warm start

0000

0001

0002

0003

0004

0005

0006

0007

0008

0009

AAOO

0016

Jump vectors to the individual routines

AAOO

C36CAA

JMP

BOAT -Cold start

AAQ3

C31DAB

WBBOATS:

JMP

WBOOT - warm start

AAO6

C39EAB

AAO9

C30AAC

AAOC

C383AC

AAAF

C3C8AC

AA12

C316AD

AA15

C319AD

JMP

JMP

JMP

JMP

JMP

JMP

CONST console status
Get CONIN character from console
CONOUT 'Print characters to console
Output LIST characters to LIST unit
Output PUNCH character to PUNCH unit
Get READER character from READER

195

AA18 C31EAD

AA1B C329AD

AA1E C33DAD

AA21 C343AD

AA24 C348AD

AA27 C351AD

AA2A C365AD

AA2D C3EBAC

AA30 C34EAD

HOME ;Reading head in HOME position

SELDSK 'Select disk

SETTRK ;Set track number

SETSEC ;Set sector number

SETDMA ;Set DMA address

READ 'Read disk

WRITE 'Write disk

LISTST ;Get LIST status

SECTRAN | ;Sector number Translate

JMP

JMP

JMP

JMP

JMP

AA33 00

KYBDMD:

DB

OOH 'Flag for uppercase mode

.
g

°
?

.
?

Fixed table for two drives

Floppy disk parameter header for floppy disk 0

AA34 00000000

DPBASE:

DW

TRANS, OOOOH

AA38 00000000

AA3C 1FAF54AA

AA40 DDAFIFAF

AA44 00000000

AA48 00000000

AAMC 1FAF54AA

AA5O EDAFBEAF

AA54 2200

AA56 03

AA57 07

AA58 00

AA59 8700

AA5B 3F00

AA5D CO

AA5E 00

DW

DW

DW

OOOOH, OOOOH

DIRBF, DPBLK

CHKOO, ALLOO

Floppy disk parameter header for floppy disk 1

DW

DW

DW

DW

TRANS, OOOOH

OOOOH, OOOOH

DIRBF, DPBLK

CHKO1, ALLO1

DPBLK:

;Floppy disk parameter block, common for all floppy disks

DW

DB

DB

DB

DW

DW

DB

DB

34 ;sectors per track

3 ; Block displacement factor

7 ;Block mask

0 ;zero mask

135 ;Disk capacity - 1

63 ;max. Directory entries

192 Allocation O

0 'Allocation 1

196

AASF 1000

AA61 0200

DW16

DW2

-verified entries

'Track offset

End of the fixed table

The following memory area is created at boot time

initialized |

AA63

40

AA64

00

AA65

00

LASTKY:

DB 40H 'Vector of the last pressed key

TOGGLE:

DB OOH 'management for uppercase mode

CSTAT:

DB OOH :Flag ready for characters

AA66

0000

MSGPTR:

DW OOOOH :Pointer to texts of the function keys

AA68

OOFD

TBLPTR:

DW OFDOOH ;Keyboard decoding table |

AA6A

OOFC

MSGTBL:

DW OFCOOH ;Vector for function keysOther keyboard definitions

F28D

FOCC

FOCF

SHFTST

EQU OF28DH ;Control, Commodore and Shift key

FLASH

EQU OFOCCH ;Turn on cursor

CURSOR

EQU OFOCFH ;Cursor character

Individual routines for the individual functions

BOAT:

AA6C

3E20

MVI A, 20H -ASCII spaces

AAGE

32CFFO

STA CURSOR -as a cursor character

AA71

AF

AA72

320300

AA75

320400

AAT8

321EAF

AATB

3210AF

AATE

3212AF

AAB1

3EC3

AA83

320000

AA86

2103AA

XRA A | 'Delete battery

STA IOBYTE -Delete I/O bytes

Select STA CDISK disk zero

STA CURDSK pointer to virtual diskette

STA HSTACT :Host buffer inactive

Clear STA UNACNT counter for Unallocated

MVI A,OC3H -C3 is the opcode for JUMP

STA O+BASE :Jump to WBOOT

LXI H,WBOOTE -WBOOT entry address

197

N
R
E
b

AA89

220100

SHLD

1+BASE ;set

AA8C

320500

AA8F

21069C

AA92

220600

AA95

018000

AA98

CD48AD

AASB

11A6AA

OEO9

CDO500

C38DAB

STA

LXI

5+BASE -Jump to BDOS

H, BDOS ;BDOS entry address

SHLD

6+BASE 'set

LXI

B, 80H+BASE 'Default DMA address

CALL

SETDMA

LXI

CALL

JMP

D, SIGNON ;DE points to switch-on message
C,9 ;String output function

ENTRY 'of the BDOS

GOCPM1 'ready for CCP

OCOA

SIGNON:

OCH, OAH 'Clear screen

2020202043

ODOAOA

2020436F70

2020202020

0A24

DB

DB

DB

DB

DB

COMMODORE 64

20k CP/M vers 2.2°

ODH,OAH,OAH

Copyright (C) 1979, Digital Research’, ODH, OAH
Copyright (C) 1982, Commodore’ , ODH, OAH

4

OAH, $° 'Identifier for end of string

AB1D

318000

AB20

OOOO

AB22

CD29AD

AB25

AF

AB26

3204F9

AB29

CDASAE

AB2C

CD1EAD

AB2F

3EOD

AB31

CDCOAC

WBOOT:

LXI

SP, 80H+BASE 'The memory below the buffer

'is used as a stack

C,Do 'Select disk O0

SELDSK

A 'Drive A

Select DISKNO '

CHGDSK ;if not already done
HOME ;Reading head on track 0

A, ODH ;Carriage return

Output COUT5 '

198

AB34

110094

LXI

D, CCP

-Start charging

AB37

0616

AB39

2601

AB3B

2E06

MVI

MVI

AB3D

T.C

LOAD 1:

MOV

B,NSECTS

H,1

L,6

A,H

-Track number

;Sector number

AB3E

3203F9

STA

TRACK

AB41

7D

AB42

3202F9

AB45

3EO0

AB47

CD94AB

AB4A

3AO1F9

AB4D

B7

AB4E

C23DAB

AB51

E5

AB52

C5

AB53

010001

AB56

2100F8

AB59

ED

AB5A

B.O

AB5B

OE2A

AB5D

CD83AC

AB60

C1

AB61

Egg

AB62

05

AB63

CA73AB

AB66

2C

AB67

7D

AB68

FE11

AB6A

DA3DAB

AB6D

24

AB6E

2E00

MOV

A, ,L

STA

SECTOR

A,VICRD ;Command to read floppy disks

CALL

106510

LDA

ORA

JNZ

PUSH

PUSH

LXI

LXI

DB

DB

DATA

A

LOAD1

:if not null then error

H

b

B, 256

H,HSTBUF ;Disk buffer

OEDH

OBOH

or

:LDIR command of the 280th

'issue a star after each sector

;Demean sector payers

-next sector

CALL

CONOUT

POP

POP

DCR

JZ

INR

MOV

CPI

JC

INR

b

H

b

GOCPM

17

LOAD1

L,O

AB70

C33DAB

JMP

LOAD1

199

End of loading operation; Set parameters and jump to CP/M

AB73

3EC3

AB75

320000

AB78

2103AA

GOCPM:

MVI

STA

LXI

A,OC3H ;C3 is the JUMP command

O+BASE ;Jump to WBOOT

H , WBOOTE -WBOOT entry address

AB7B

220100

SHLD

1+BASE ;Set address field for Jump O

AB7E

320500

FIG1

21069C

AB84

220600

STA

LXI

5+BASE ;Jump to BDOS

H,BDOS ;BDOS entry address

SHLD

6+BASE ;Address field for Jump 5 to BDOS

AB87

018000

LXI

B, 80H+BASE 'Default DMA address 80H

AB8A

CD48AD

CALL

SETDMA

e
U

AB8D

3A0400

GOCPM1:

LDA

CDISK : Get disk number

AB90

4F

ABS1

C30094

MOV

JMP

C,A -zTo CCP for more

Send CCP processing

Main routine for transferring program execution

e
?

to the 6510

AB94

3200F9

106510:

STA CMD

_;Battery content in command register

AB97

3EO1

MVI A,OFF

AB99

3200CE

STA MODESW

:280 off

ABIC

00

AB9ID

C9

NOP

RET.

'required by the hardware

CONST:

'Consol status, FFH if character ready, otherwise OOH

AB9E

2A66AA

LHLD

MSGPTR

;Function key mode?

ABA1

T.C

MOV

A,H

200

ABA2

B5

ABA3

3EFF

ABA5

CO

ABA6

3A65AA

ABA9

A7

ABAA

co

ORA

RNZ

LDA

ANA

RNZ

A, OFFH

-Flag ready for data

'Return if MSGPTR<>0

CSTAT

- already a sign?

-yes if not 0

ABAB

3EO2

MVI

A, VICIN

-Fetch character command

ABAD

CD94AB

CALL

106510

ABBO

3A8DF2

FIG3

E602

FIG5

CAC9AB

FIG8

3A64AA

FIG

Al

ABBC

C2C9AB

FIG

3A33AA

ABC2

EEOt

LDA

ANI

JZ

LDA

ANA

JNZ

LDA

XRI

SHFTST

-Get status of the control keys

O2H

:check for Commodore key

CONSTO

'Jump if not pressed

TOGGLE

-Was the button already pressed?

A

CONSTO

'No, wait until let go

KYBDMD-Get flag for capital letter mode

O18

-Flip mode bit

ABCA

3233AA

STA

KYBDMD

ABC7

3E01

MVI

A,1

ABC9

3264AA

CONSTO:

STA

TOGGLE

ABCC

3AO5F9

ABCF

FE3A

ABD1

CAEOAB

ABD4

FE3D

ABD6

CAEOAB

ABD9I

2163AA

ABDC

BE

LDA

CPI

Jz

CPI

JZ

LXI

CMP

KYCHAR

-get characters

3AH

:invalid control character

CONST1

3DH

-invalid control character

CONST1

H,LASTKY ;compare with last key

-Check data

201

ABDD

C2E5AB

JNZ

CONST2

'if different then new button

e
?

ABEO

AF

CONST1:

XRA

'Flag ready for no data

ABE1

3265AA

ABE4

c9

STA

RET

eN N

CSTAT

;remember for later

ABE5

Q5

CONST2:

PUSH

P.S.W

ABE6

01F401

LXI

B, 500

ABE9

OB

ABEA

19

ABEB

B.O

ABEC

C2E9AB

ABEF

3EO2

ABF1

CD94AB

ABF4

Fi

ABF5

2105F9

ABF8

BE

ABF9

C2EOAB

ABFC

3263AA

ABFF

FE40

ACO1

CAEOAB

ACO4

3EFF

ACO6

3265AA

ACO9

C9

CONST3:

DCX

b

;Delay for keyboard debounce

MOV

ORA

JNZ

A,C

b

CONST3

A,VICIN ;get another sign

CALL

1065 10

POP

LXI

CMP

JNZ

STA

CPI

JZ

MVI

STA

RET

P.S.W

H,KYCHAR

M

CONST1 ;if not O, key has not bounced

LASTKY ;update last key

40H ;40H means no key pressed

CONST1

A,OFFH ;Flag ready for characters

CSTAT ;remember for later

CONIN:

;Get characters from console into register A

ACOA
ACOC

3EO0

32CCFO

MVI

STA

A, O

Turn on cursor

FLASH

ACOF

2A66AA

LHLD

MSGPTR

;Function key mode?

202

AC12

IC

AC13

B5

AC14

C25FAC

MOV

ORA

JNZ

A,H

L

CONINS

AC17

CDIEAB

CONIN1:

CALL

CONST

-Check console status

AC1A

B7

AC1B

CA17AC

ACIE

AF

ACIF

3265AA

ORA

JZ

XRA

STA

A

CONIN1

-wait for new character

A

CSTAT

Clear status

AC22

3A33AA

CONIN2:

LDA

KYBDMD

-without shift=0, capital=1

AC25

47

AC26

3A8DF2

AC29

E601

AC2B

CA30AC

MOV

LDA

ANI

JZ

B,A

SHFTST

-Get status for Shift/Ctrl

O1H

-is the shift key pressed?

CONIN3

Jump if not

AC2E

0602

B,2

-Shift=2

AC30

3A8DF2

CONIN3:

SHFTST

'Get status

AC33

E604

AC35

CA3AAC

04H

-is the control key pressed?

CONIN4

-Jump if not

AC38

0603

MVI

B,3

:Control=3

AC3A

3A63AA

CONIN4:

LDA

LASTKY

-Get key number

AC3D

87

AC3E

87

AC3F

80

ADD

ADD

ADD

A

A

b

'+2

'*4

:Add number

AC40

2A68AA

LHLD

TBLPTR

'Address of the keyboard table

AC43

85

AC44

6F

AC45

3EOO

AC47

8C

AC48

67

AC49

TE

ADD

MOV

MVI

ADC

MOV

MOV

L

L,A

A,0

H

H,A

A,M

:Pointer in table

-Get characters from table

203

AC4A

FE8O

ACAC

DA71AC

AC4F

2AGAAA

AC52

E67F

AC54

87

AC55

85

AC56

6F

AC57

3E00

AC59

8C

ACSA

67

AC5B

TE

AC5C

23

AC5D

66

AC5E

6F

ACSF

46

AC60

23

AC61

7E

AC62

AT

AC63

C269AC

AC66

210000

CPI

JC

80H

'If >7FH then function key

CONIN?

'Jump if ASCII character

LHLD

MSGTBL

-Start the text table

ANI

ADD

ADD

MOV

ADC

MOV

MOV

INX

MOV

MOV

CONINS:

MOV

INX

MOV

ANA

JNZ

TFH

'Delete bit 7

;*2

'Pointer in table

-Lo Byte

-Hi Bytes

'Get signs

'check next character

A

L

L,A

A, O

H

H,A

A,M

H

H,M

L,A

B,M

H

A,M

A

CONIN6

'if O is the last character in B

LXI

H, OOOOH

'End of text mode

AC69

2266AA

CONING:

SHLD

MSGPTR

'Remember pointer to text.

AC6C

78

AC6D

A7

AC6E

CA17AC

MOV

ANA

JZ

A,B

A

'Check sign

'is the first one already 0?

CONIN1

'if O then no character

e
'

AC71

Q5

CONIN?:

AC72

3E01

AC74

32CCFO

AC77

OE20

AC79

CD83AC

ACTIC

3E9D

AC7E

CDCOAC

- remember characters

P.S.W

A,1

FLASH

'Turn off cursor

ce,

'Space

CONOUT

'spend

A,9DH

'Cursor left

COUT5

'Skip filter

204

AC81

Fi

AC82

C9

POP

RET

PSW ;Recover character

'finished

AC83

SAFFFC

AC86

E610

AC88

19

AC89

C2COAC

AC8C

CDF4AC

AC8F

FEOC

AC91

C299AC

AC94

3E93

AC96

C3COAC

CONOUT:

'Print characters from register C to console

LDA

ANI

MOV

JNZ

IOTYPE ;Configuration byte

10H 'Bit 4 = 1 means ignore filter

A,C 'signs in battery

COUT5 'output as received

CALL

SWAP -Swap uppercase and lowercase letters

CPI

JNZ

MVI

JMP

OCH -ASCII character for screen clear?

COUT1 jump if not

A.93H - Commodore code for clear screen

COUT5

AC99

FEO8

COUT1:

CPI

O8H sASCII Backspace

ACIB

C2A3AC

JNZ

COUT2 'Jump if not

ACIE

3E14

A, 14H :Clear commodore code for characters

ACAO

C3COAC

JMP

COUT5

ACA3

FEOA

COUT2:

CPI

OAH 'Line Feed?

ACA5

C2ADAC

JNZ

COUT3

ACA8

3E11

ACAA

C3COACA.17 - Commodore code for line feed

COUT5

ACAD

FEOD |

COUT3:

ODH :Carriage Return?

ACAF

C2BAAC

ACB2

CDCOAC

ACB5

3E91

ACB?

C3COAC

COUT4

COUT5

A,145 'one line up to auto LF to

COUT5 'ignore

205

ACBA

FE20

COUT4:

CPI

20H

ACBC

D8

ACBD

FE8O

ACBF

THURS

RC

CPI

RNC

80H

'Return if other control character

'Return if not an ASCII character

ACCO

3201F9

COUTS:

STA

DATA 'Pass characters in DATA

ACC3

3E03

ACC5

C394AB

MVI

JMP

A, VICOUT ;Command for screen output

106510

LIST:

'Send characters from register C to the LIST unit

ACC8

3AFFC

ACCB

E604

ACCD

19

ACCE

C2E3AC

LDA

ANI

MOV

JNZ

IOTYPE ;Which printer type?

04H °E if 1515, 1 if 4022

A,C 'characters in register A |

LIST2 ;skip if not swapped

ACD1

3AFFC

LDA

IOTYPE

ACD4

E608

ACD6

79

ACD?

C2EOAC

ACDA

CDF4AC

ACDD

C3E3AC

O8H 'what type of swap?

A,C 'get characters

LIST1

CALL

SWAP ;:Swap uppercase and lowercase letters

JMP

LIST2

ACEO

CDO8AD

LIST1:

CALL

SWAP2 ;Swap routine for 4022

ACE3

3201F9

LIST2:

STA

DATA ;character passed

ACE6

3E05

MVI

A, VICPRT ;1515 accept

ACE8

C394AB

LIST3:

JMP

1065 10

ACEB

3EO4

ACED

CD94AB

ACFO

3A01F9

ACF3

C9

LISTS:

;List status (0 if not ready, 1 is ready)

MVI

A,VICPST

'Printer status command

CALL

1065 10

DATA ;DATA is the status

LDA

RET

206

SWAP:

-Swap uppercase and lowercase letters for Commodore 64

ACF4

FE41

ACF6

D8

ACF7

FE5B

ACF9

DAOSAD

ACFC

FE61

ACFE

D8

ACFF

FE/B

ADO1

THURS

ADO2

E65F

ADO4

C9

41H

-smaller than capital “A’?

-Return if yes

5BH

:Capital letter?

SWAP1

-Jump if yes

61H

-smaller than small ‘A’

-Return if yes

7BH

-lowercase letter ?

-Return if not

5FH

-Delete bit 5

CPI

RC

CPI

JC

CPI

RC

CPI

RNC

RET

ADOS

F620

SWAP]:

ORI

20H

-Set bit 5

ADO7

C9

RET

ADO8

FE41

SWAP2:

CPI

41H

-CY if less than capital ‘A’

;CY if 40H < A < 60H

ADOA

D8

ADOB

FE60

ADOD

D213AD

AD10

F680

AD12

c9

RC

CPI

JNC

ORI

RET

60H

SWAP3

80H

e
!

AD13

E65F

SWAP3:

ANI

SFH

AD15

C9

RET

AD16

19

AD17

00

PUNCH:

'Character from register C to the PUNCH unit

MOV A,C

-Characters in register

NOP

207

AD18 C9

RET: Zero routine

AD19 3E1A

AD1B E67F

AD1D C9

0400

0100

0011

0002

0022

0001

0001

0000

0001

0002

READER: ;Character from READER unit to register A

MVI A,IAH ;Return End Of File Kode (CTRL 2).

ANI TFH ;'Delete parity bit

RET

e
8

e
0

22 22 2 2 2 2 2 2 2 2 2 2 2 2 2 222 2 22 2 SEE EEE

e

~X*

le CONSTANTS HOST DISK TO CP/M j

Xx*

2 2 2 2 2 2 2 2 2 2 22 2222222 2222 22 23 2 EEE EGGS tea

°

BLKSIZ EQU 1024 ;CP/M Allocation Size

HSTSIZ EQU 256 ;Host disk sector size

HSTSPT EQU 17 ;Host disk sectors/track

HSTBLK EQU HSTSIZ/128 ;CP/M sectors/host buffers

CPMSPT EQU HSTBLK * HSTSPT ;CP/M sectors/track

SECMSK EQU HSTBLK- 1 ;Sector mask

SECSHF EQU 1 ; LOG2 (HSTBLK)

2.22 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 22 8 EI

a

x:

;* BDOS CONSTANTS AT WRITE JOIN x

%*x

Ana.2.2. 2.2.2.2. 2 2.2 22 2 2 22 222 2222222222222 22 2 EGGS

WRALL EQU 0 ;WRITE to Allocated

WRDIR EQU 1 ;WRITE to Directory

WRUAL EQU 2 ;WRITE to Unallocated

: HOME function of the selected diskette

HOME:

ADIE 3A11AF

LDA HSTWRT ;Check for WRITE

208

AD21

B7

AD22

C228AD

AD25

3210AF

AD28

C9

AD29

210000

AD2C

19

AD2D

3207AF

AD30

FEO2

AD32

THURS

AD33

6F

AD34

29

AD35

29

AD36

29

AD37

29

AD38

1134AA

AD3B

19

AD3C

C9

A

HOMED

Clear HSTACT host active flag

ORA

JNZ

STA

RET

HOMED:

SELDSK:

-Select disk

H , OOOOH error return code

A,C -number of the selected diskette

Remember SEKDSK disk number

2 -must be O or 1

'no carry if bigger!

L,A - diskette number after HL

H emit 16 multiply

4 |

H

H

D, DPBASE -Base of the parameter blocks

D ;HL=DPB

LXI

MOV

STA

CPI

RNC

MOV

DAD

DAD

DAD

DAD

LXI

DAD

RET

SETTRK:

-Set track number from register BC

AD3D

60

AD3E

69

AD3F

2208AF

AD42

C9

MOV

MOV

SHLD

RET

H,B

L,C

SEKTRK -track to search

SETSEC:

-Set sector number from register C

AD43

19

AD44

320AAF

AD47

c9

MOV

STA

RET

SEKSEC - sector to search

209

SETDMA:

;Set DMA address from register BC

AD48 60

AD49 69

AD4A 221BAF

AD4D C9

MOV H,B

MOV L,C

SHLD DMAADR

RET

AD4E 60

AD4F69

AD50C9

SECTRAN:

°
'

;Translate sector number from register BC

MOV H,B

MOV L,C

RETKRKRKKKRKKKK KR KK KK KR KK KK KT KK KK KT TR KK KK TH KK KK KK I |

0

o

;* THE READ JUMP POINT FOLLOWS THE *

;* PREVIOUS BIOS DEFINITION FOR READ x

.%k

etc. 5.5.3.2. 22 2.2 2 2 2 2 2 2 2 2 2 a 2222222 22222222 22 2 22 2 SEE RT

READ:

'Read the selected CP/M sector

XRA A

STA UNACNT

MVI A,1

STA READOP ;'READ operation

STA RSFLAG ;Read data

MVI A, WRUAL

STA WRTYPE ;treat as Unallocated

JMP RWOPER ;Execute READ command

N

ha 5.3.2.2 2 2.2.22 2 2 2 2222 2222 2222222 222 SEE EEE EEE LTE TR

“xx

;* THE WRITE ENTRY POINT FOLLOWS THE t

AD51 AF

AD52 3212AF

AD55 3E01

AD57 3219AF

ADSA 3218AF

AD5D 3E02

ADSF 321AAF

AD62 C3DOAD

210

>

N
I

.%*
a

x
9

PREVIOUS BIOS DEFINTIONS FOR WRITE x

x

a 2.3 2.2.2 2.2.2 22 2 2 2 2 2 2.2 2 2.2 2.2 2 2 2.2 22.2 2.2 2.2.2.2 2.2.2 2 2. 2 2.2. 2.2.2 2.2.2.2. 2.2

WRITE:

AD65

AD66

AF
3219AF

AD69

79

-Write the selected sector

XRA A -O into the battery

STA READOP 'not a READ command

MOV A,C “WRITE Type to C

AD6A

321AAF

STA WRTYPE

AD6D

FEO2

AD6F

C289AD

CPI WRUAL -WRITE Unallocated?

JNZ CHKUNA Check for Unallocated

AD72

3E08

AD74

3212AF

AD77

3AQ7AF

AD7A

3213AF

AD7D

2AO8AF

AD80

2214AF

AD83

3AOAAF

AD86

3216AF

AD89

3A12AF

AD8C

B?

AD8D

CAC8AD

AD90

3D

AD91

3212AF

AD94

3AO7AF

AD97

2113AF

ADIA

BE

WRITE Unallocted, set parameters

MVI A,BLKSIZ/128 'next unallocated record

STA UNACNT

LDA SEKDSK :Floppy disk

STA UNADSK :UNADSK = SEKDSK

LHLD SEKTRK

SHLD UNATRK ;UNATRK = SECTRK

LDA SEKSEC

STA UNASEC :UNASEC = SEKSEC

CHKUNA:

-Check for WRITE to Unallocated sector

LDA UNACNT - still UNALLOC left?

ORA A

JZ ALLOC jump if not

More Unallocated Records remaining

DCR A :UNACNT = UNACNT-1

STA UNACNT

LDA SEKDSK - same disk?

LXI H, UNADSK

CMP M :SEKDSK = UNADSK?

211

ADIB

C2C8AD

JINZ ALLOC :Jump if not

Same disks

LXI H, UNATRK

CALL TRKCMP :SEKTRK = UNATRK?

JNZ ALLOC ;Jump if not

Same tracks

LDA SEKSEC 'same sector?

LXI H, UNASEC

CMP M :SEKSEC = UNASEC?

JNZ ALLOC jump if not

Appropriate, next sector for future access

INR M ;UNASEC = UNASEC+1

MOV A,M -End of track?

CPI CPMSPT ;CP/M sector payer

JC NOOVF 'Jump if no carry

Carry over to next track

MVI M,O 'UNASEC = 0

LHLD UNATRK

INX H

SHLD UNATRK ;UNATRK = UNATRK+1

'Match, mark as unnecessary reading

XRA A :O in battery

STA RSFLAG :RSFLAG = QO

JMP RWOPER :for WRITE

ADIE

2114AF

ADA1

CD6BAE

ADA4

C2C8AD

ADA7

3AOAAF

ADAA

2116AF

ADAD

BE

ADAE

C2C8AD

ADB1

34

ADB2

TE

ADB3

FE22

ADB5

DAC 1AD

ADB8

3600

ADBA

2A14AF

ADBD

23

ADBE

2214AF

ADC1

AF

ADC2

3218AF

ADC5

C3DOAD

NOOVF:

ALLOC:

ADC8

AF

XRA A :O in battery

;no unallocated record, requires prior reading

212

ADCS 3212AF

ADCC

3C

ADCD

3218AF

STA

INR

STA

UNACNT -UNACNT = 0

A :1 in battery

RSFLAG :RSFLAG = 1

na. 2.2. 2.2.2. 2.2.2. 2.2.2. 2.2. 2.2.2 2.2.2. 2.2.2 2 2.2.2 2.2 2.2.2 2.2. 2 2 2.2.2.2. 2. 2 2 2.2.2.2 2 2.2.2.2.

FOLLOWS COMMON CODE FOR READ AND WRITE *

x

To 2.2.5.2. 2.2.2.2. 2.2.2 2 2. 2 2 2 2 2 2.2.2.2 2 2.2. 2.2. 2 2.2 2 2 2 2. 2 2 2 2.2.2 2. 2 2 2 2 2 2 2 2 2 2.2.

*%

y

ADDO

AF

ADD1

3217AF

ADD4

3AOAAF

ADD?

B7

ADD8

IF

ADD9

320FAF

ADDC

2110AF

ADDF

TE

ADEO

3601

ADE2

B7

ADE3

CAOAAE

ADE6

3JAOTAF

ADEY

210BAF

ADEC

BE

ADED

C203AE

ADFO

210CAF

ADF3

CD6BAE

-Entry for READ and WRITE

XRA

STA

LDA

ORA

RARE

STA

A -Delete battery

SUCCESS | 'no errors (so far)

SEKSEC 'calculate host sector

A: Carry = 0

:move to the right

SEKHST Host Sector

More active

Host sector?

LXI

MOV

MVI

ORA

JZ

H,HSTACT -Host Active Flag

A,M |

M, 1 :will always be 1

A | :was it already?

FILHST :Fill host if not

Host buffer active, same as search buffer?

LDA

LXI

CMP

JNZ

SEKDSK

H, HSTDSK -same disk

M 'SEKDSK = HSTDSK?

NOMTCH

Same disk, same track?

LXI

H, HSTTRK

CALL

TRKCMP ;SEKTRK = HSTTRK?

213

ADF6

C203AE

JNZ

NOMTCH

ADF9

JAOFAF

ADFC

210EAF

ADFF

BE

AEOO

CA27AE

AEO3

JA11AF

AEO6

B?

AEO7

C477AE

AEOA

3AO7AF

AEOD

320BAF

AE10

2AO8AF

AE13

220CAF

AE16

3AOFAF

AE19

320EAF

AEIC

3A18AF

AEIF

B7

AE20

C4CAAE

AE23

AF

AE24

3211AF

AE27

3AOAAF

AE2A

E601

AE2C

6F

AE2D

2600

Same disk, same track, same buffer?

LDA

LXI

CMP

JZ

SEKHST

H, HSTSEC ;SEKHST = HSTSEC?

M

MATCH 'Jump if match'Correct disk, but wrong sector

LDA

ORA

CNZ

HSTWRT

A

WRHST

'Host written?

'Clear host buffer

e
e

NOMTCH:

FEEL:

;Fill host buffer

LDA

STA

SEKDSK

HSTDSK

LHLD

SEKTRK

SHLD

HSTTRK

LDA

STA

LDA

ORA

CNZ

XRA

STA

SEKHST

HSTSEC

RSFLAG

A

RDHST

A

HSTWRT

;READ required?

;yes, in 1

'Delete battery

'no WRITE

MATCH:

:Data in or

copy to buffer

LDA

ANI

MOV

MVI

SEKSEC

SECMSK

L,A

H,O

'Mask buffer number

'Isolate lowest bits

;for to move

;2 byte counter

214

'Shift seven to the left

AE2F

29

AE30

29

AE31

29

AE32

29

AE33

29

AE34

29

AE35

29

DAD H

DAD H

DAD H

DAD H

DAD H

DAD H

DAD H

AE36

1100F8

LXI D, HSTBUF

HL contains relative host buffer address

AE39

19

AE3A

E.B

AE3B

2A1BAF

AE3E

OE80

AE40

3A19AF

AE43

B7

AE44

C24DAE

AE47

3EO1

AE49

3211AF

AE4C

E.B

AE4D

1A

AE4E

13

AE4F

77

AE50

23

AE51

O.D

AE52

C24DAE

DAD D

XCHG

-HL = host address

'now in DE

LHLD DMAADR|

'Get/Write CP/M data

MVI C,128

'Number of days above ground

LDA READOP

'which direction

ORA A

JNZ RWMOVE

'skip if reading

Mark WRITE operation and swap direction

A,1

HSTWRT

MVI

STA

XCHG

:HSTWRT = 1

-Swap source/destination

RWMOVE:

;C contains 128, DE is source, HL is destination

LDAX

INX

MOV

INX

DCR

JNZ

D

D

M.A

H

C

RWMOVE

-Characters from source area

-Transfer to target area

7128 times

Data is transferred from/to the host buffer

AE55

3A1AAF

AE58

FEO1

LDA

CPI

WRTYPE

WRDIR

WRITEType?

sins Directory ?

215

AE5A 3A17AF LDA SUCCESS -if error

AE5D CO RNZ 'no further processing

. Host buffer for WRITE in Directory

AE5E B7 ORA A “Error?

AE5F CO RNZ -yes, then done

AE60 AF XRA A :Delete battery

AE61 3211AF STA HSTWRT buffer written

AE64 CD77AE CALL WRHST

AE67 3A17AF LDA SUCCESS

AE6A C9 RET

oe KEKEKKKKKKKKKKERKREKKEKERKEEKKKEKEKKKKKKRKKKEKEKKEKEKKEREKKEKEKEEN
'

. t

-% AUXILIARY ROUTINE FOR 16-BIT COMPARISON *

.* *
f

m 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 5 2 2 5 2 2 2 2 2 5 2 5 2 EEE EEE TFT ES STD SS
'

TRKCMP:

;HL = .UNATRK or .HSTTRK, compare with SEKTRK

AE6B EB XCHG

AE6C 2108AF LXI H, SEKTRK

AE6F 1A LDAX D ;Compare Lo Byte

AE7O BE CMP M ;'same

AE71 CO RNZ | 'Return if not

s Lo Byte equal, test Hi Byte

AE72 13 INX D

AE73 23 INX H

AE74 1A LDAX D

AE75 BE CMP M 'set flags

AE76 C9 RET

216

well 2.2.2.2. 2.2.2.2 2.2. 2.2 2.2 2.2 2.2.2.2 2 2.2 2.2.2 2.2 2 2 2 2 2 2 2 2 2 22 2 22222222222

x
0

~%
e

x
e

.%
e

WRHST writes physically to the host disk *

RDHST physically reads the disk*

x

x

Ana 5.2. 2.2.2.2. 2.2.2.2. 2.2.2.2 2.2.2.2 2 2.2. 2.2.2 2.2 2 2 2 2 2 2 2 2 2.2.2 2 2.2 2 2.2 2 2 2.2.2 2 2.2

WRHST:

'HSTDSK

= host diskettes#, HSTTRK = hosttrack #,

'HSTSEC

= Hostsector#. Writes "HSTSIZ" bytes

'of HSTBUF and returns error flag in ERFLAG

:ERFLAG non-zero if error

AE77

3E01

MVI

A,VICWR

-Disk write command

AE79

321DAF

WRHSTO:

STA

RW

-write to command register

AE7C

3A0BAF

AETF

3204F9

AE82

CDASAE

LDA

STA

HSTDSK

DISKNO

-Get host disk number

-and put

CALL

CHGDSK

-correct virtual disk?

AE85

3AOCAF

WRHST2:

LDA

HSTTRK

-Get host track number

AE88

3C

AE89

FE12

AE8B

DASFAE

AEBE

3c

INR

CPI

JC

INR

A

18

-add one as offset

“We want to skip track 18

WRHST3

'Carry falls Track<18

A

AE8F

3203F9

WRHST3:

STA

TRACK

-write in common area

AE92

3AOEAF

AE95

3202F9

AE98

3A 1DAF

AE9B

CD94AB

AESE

3A01F9

AEA1

AEA4

3217AF
co

LDA

STA

LDA

HSTSEC

SECTOR

RW

CALL

106510

-Get host sector number

-write in common area

'Floppy command

DATA

SUCCESS

-Get disk status

-and save as SUCCESS

LDA

STA

RET

AEA5

67

CHGDSK:

MOV

H,A

- Remember the disk number

AEA6

3AFFC

AEAAY

E601

LDA

ANI

IOTYPE

01

-Bit O=0 for virtual

217

AEAB

CO

AEAC

3204F9

AEAF

T.C

AEBO

211EAF

AEB3

BE

AEB4

CB

AEB5

77

AEB6

C641

AEB8

32DDAE

AEBB

21CFAE

AEBE

CDFAAE

RNZ

STA

MOV

LXI

CMP

RZ

MOV

FDI

STA

LXI

DISKNO

A,H

'not O if 2 drives

“Set drive A

'Get the disk number back

H, CURDSK

'is this our disk?

M

M.A

7X

;Return if yes

'set new diskette number

'Create ASCII characters

DSKMNT

'insert in message

; Insert Disk’ message

CALL

PMSG

'spend

AEC1

CDOAAC

CHGD1:

CALL

CONIN

'wait for return

AEC4

FEOD

AEC6

C2C1AE

AEC

C9ODH

CHGD1

CPI

JNZ

NECESSARY

RDHST:

HSTDSK = Hostdisk #, HSTTRK = Hosttrack #,

;HSSEC = Hostsector #. Lesses "HSHSSIZ" Bytes

‚in HSTBUF and seven

MVI

JMP

A, VICRD

WRHSTO

‚DET-Befehl

‚Rest sees DISK WRITTER

AECA

3EOO

AECC

C379AE

U
'

AECF

ODOA496E7 3MMNTMSG:

DB

ODH,OAH, ‘Di Insert °

AEDD

41

DSKMNT:

DB

aX

AEDE

20696F

AEF9

1000

AEFA

TEA

AEFB

Help

AEFC

C8

DB

DB

“ into drive O0, press return’

OOH

PMSG:

MOV

ANA

RZ

218

AEFD E5 PUSH H

AEFE 4F HAVE C,A

AEFF CD83AC CALL

AFO2 Ei POP H

AFO3 23 INX H

AFO4 C3FAAE JMP PMSG

The RKEKKETEKEEREKRE KER AND EERE KERR IN THE REAREREAEREER

x
°

~ Xx
in

x
in

NINITIALITY RAM DATE-BEREICH x

x

x

a2 2.2.2. 2.2. 2.2. 2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2. 2.2 2.2. 2.2.2.2. 2.2.2.2. 2.2.2.2. 2.2.2.2.

.
?

ESECDSK:

DS

1 -SEEK Discrete

SECTRK:

DS

2 -SEEK Tracknumer

SECTION:

DS

SEEK Sector

HSTDSK:

DS

1 ;‚HOT Desktop

HSTTRK:

DS

2 ;HERTY Tracknumer

HSTSEC:

DS

1 :HOT HOT Sectory

in
0

SECHST:

DS

1 Ä :SEEK SECSHF Shift

HSTACT:

DS

1 -HOTHERSOURFAL

HSTWRT:

DS

1 -HOTHERS

in
0

UNECNT:

DS

1 -UNALLOC Record

UNEASK:

DS

1 -Let, UNELLO Diskate

UNATRK:

DS

2 -Letter UNELLOC Track

UNEACE:

DS

1 -Letter UNELLC Sector

ERFLAG:

DS

RSFLAG:

DS

READOP:

DS

WRTYPE:

DS

>
=
=

whose

h
whose

whose

-Fir-Flag

:READ Sector Flag

-1 with DEATH Operation
-WRITY Operation

AFO7

AFO8

AFOA

AFOB

AFOC

AFOE

AFOF

AF 10

AF 11

AF 12

AF 13

AF 14

AF 16

AF 17

AF18

AF19

AF1A

219

AF1B

AF1D

AFIE

AF iF

AF 1F

AF9F

AFBE

AFDD

AFED

AFFD

OUDE

AFFD

DEATH:

DS 2

‚DMA Adresse List

RW:

DS 1

-Bephehlsregister

CURDSK:

DS 1

Virtualler

BDOS Für RAM

BEGDAT

EQU $

‚Bishing of Danish

DIRBF:

DS 128

‚Washing Directory

ALLOO:

DS 31

‚Vector Allocation O

ALLO1:

DS 31

‚Allocation Vector 1

CHKOO:

DS 16

-Check Vector O

CHKO1:

DS 16

:Some Vector 1

ENDAT

EQU $

-End of Dentres

DATSIZ

EQU

$-BEGDAT;GroBe of Date

END

in
m

y's
whose

220

6.8 IMPLATION EIGENER EIN-/AUSGABEFUNCCTIONS INS BISH

This is the BIOS-Listing one in the Chapter,

so friendly feststellen, two of Routinen PUNCH and

THE READER of Sprungvectors exister, and twenty-

Routinen was born in the Return-Bephehen.

Twenty Routin-Routin 2 zurück, from Ken-

zeichen fur Ende of Textdatei. Here can be true
Birthy row. T.B. one Druk-
dear Centronics
auch in Chapter 7.1 weskrieben. Treiberoutine Die
selbst can in 6510-Code formulated. Ansprechung Zur
the Rotinen keths are a blessing one Bephehlskodes
under 8 beauties, day 6510 Redeem $EOO bzw. $FOO versus-

gene. The Affrom Afruf z.B. so aussehen:

PUNCH: ;Seach PUN: Centronic-Drucker

MOV A,C ;C;

DATA -in Ubergishist

MVI A,7 -Code for Rotine

STA CMD

CALL I06510 ;6510

NECESSARY

Unsees 6510-Aussaveroutine I have given ab Address $EOO steel;
256 Being the darkness of Verfügung. To the ledge of Rou-
but the Ausgabe of the Dath is the Handshake
you have a good blessed Ihnen Ihnen Big Serves Spearplatz

Verfügung.

Ähnlich sich to the READER-Routine employment.

221

READER:;

MVI A,8 ;Code clever Rotine

STA CMD

CALL I06510 ;6510

LDA DATA ‚Salt Salt

ANI 7FH

NECESSARY

Der Befehlskode
$FOO; and yesterday Ihnen 256 Bytes to Verfügung.

Als RDR: This is always a blessing of
finer, z.B. the Casssetrekrekr is a Discender
green Schnitttle
zur Übertrangung and Date anderen Rechern. Rotine Die
READER on the Textdates in ASCII-Format Standard. das
I was in the middle of the world with Control Z.
Das PIP-Program z.B. ten Code of my Dateiende.

If you have a Belt Belieb.
vom CP/Ma to pray, falls See the Rotinen
fishing ins BISH implement.

222

6.9 ON CP/M PROGRAMMMIN INS INS

COMMODORE-BASIC UND UMGEKEHRT

Word with the Commodore 64 CP/More, hat manUsually there is no possibility of programs or data, e.g.

Text files, later in the normal BASIC mode of the Commodore 64

to use. These files can only be accessed in CP/M mode.

However, this is possible with a small change in BIOS65.

You can output data to the printer in the CP/M. This one

Output occurs in BIOS65 via corresponding OPEN and

PRINT# commands. We can now intervene here and in

OPEN command simply change the device number. You sit here

the number one, all output that would otherwise go to

Printer goes to the cassette recorder. As a secondary address

we also have to specify one so that the tape file can be used

Write is opened. We can make these changes from CP/M

Simply do it with the DDT program. Add to it

Enter the following commands (your entries are underlined

shown):

223

Now make an output with “P or PIP LST:=” and this will be the case

no longer the printer, but the cassette drive.

spoke. The first time it appears on the screen

the request “press record & play on tape” and the image

screen goes dark. If all text is output, so

please press Control C and then during warm boot

STOP and RESTORE at the same time. The computer now reports

with “ready” again in Commodore mode. Now you have to

close the tape file with CLOSE 4. You can now after

You have switched the computer off and on again

Read tape file:

100 OPEN 1

110 GET#1, A$

200 IF ST<>64 THEN 110

210 CLOSE 1

The program fetches the file character by character in A$ and you can

Edit the data in Commodore mode.

If you want to transfer data from the CP/M more often, you can

There is a small one with the editor (ED) and the assembler (ASM).

Write a program that makes the change so that you

you don't always have to work with DDT. Create with

the editor the following small assembler program,

ED BAND.ASM

ORG 100H

MVI A,1

STA OFAC7H

STA OFADFH

STA OFAE6H

JMP O

224

and assemble it

ASM BAND.AAX

Then make it a .COM file

LOAD BAND

Now you can easily make the switch by

You can call up the BAND program by entering the name.

The opposite approach, the transfer of data from Commo-

Dore mode to the CP/M is possible with a trick. Do you want?

For example, if you want to transfer a text or a program, you must

From this first a program file with a load address of

Make $1100. This is Z80 address 100H, the start of the

Transient Program Area (TPA). Do you want a text from a

You can transfer a sequential file as follows

proceed:

100 INPUT "FILE NAME ";N$

110 OPEN 2,8,2, N$

120 OPEN 1,8,1, N$+".CPM": OPEN REM PROGRAM FILE

130 PRINT#1, CHR$(O)CHR$(17);:REM START ADDRESS $1100

140 GET#2, A$:IF ST=64 THEN CLOSE 1:CLOSE 2: END

150 PRINT#1, A$;: GOTO 140

Before we can load the program, we have to
Know size. To do this, download the table of contents

floppy disk. You get e.g

25 NAME.CPM PRG

225

We have to remember the number 25. Now let's load it

program file.

LOAD "NAME.CPM",8.1

Now insert the CP/M disk and start like this
usual. When the CP/M is loaded, we can use the file

Save under CP/M.

SAVE 25 NAME.TXT

The number 25 indicates the number to be saved
256-byte blocks and is with the block number in
Commodore directory identical. Now we have the file
available under CP/M and can use them. At
Text files may cause problems
Lowercase/uppercase letters come. If this is the case, you must
an eventual conversion of A$ on line 140 of the above
Run the program to get the standard ASCII code
received.

7
-
4

r
i

226

CHAPTER 7 CONNECTION AND EXPANSION OPTIONS OF THE

COMMODORE 64

7.1 A MEANINGFUL APPLICATION OF THE USER PORT: INTERFACE

FOR A CENTRONICS PRINTER

The Commodore 64 has an interface that normally
is not used by the operating system, and you for
own applications are available. This interface
consists of an 8-bit port and two handshake lines.
The 8-bit port can be used for both output and input
be switched independently for each bit.

This interface is ideal for implementation
a printer interface. Since most printers are serial
moderately have a Centronics interface (e.g.Epson printer, Centronics printer), we want this cutting
realize the position. In addition, this interface can be
particularly easy to handle. Here is the procedure in brief:

The 8 bits of a byte are paralleled over eight at the same time
Transmit data lines. So that during the transfer no
If data is lost, two so-called handshake
Cables’ used. Before the computer sends a byte of data to the
Printer sends, it checks whether the printer is ready to send data
received. This is done via the BUSY line. Is that
BUSY line high, the printer is busy and the
Computer has to wait. When the printer is ready, it will print
The computer transfers the data to the port and signals this to it
Printer via the STROBE line. The printer takes care of that
data and sets the BUSY line high until the data
processed (saved or printed). Now you can
next data byte is transferred. Through this procedure
This ensures that the printer also reads every byte of data

227

receives that the computer sends.

Now to program the interface. So that the data with

PRINT# can be sent to the printer, the software must be used

be integrated into the operating system. In addition, it results

However, another problem:

Most printers have a Centronics interface

an ASCII character set that differs from the character set of the Commo

dore 64 differs. We therefore need a code conversion

so that the printer receives the ASCII character

corresponds to the symbol of the Commodore 64. This transformation is

designed so that the characters as they appear in uppercase/lowercase

mode appear on the screen, as well as on the printer

be played back. In addition, however, sometimes it is

required to transmit the characters as required by law.

ner sends. This is necessary if, for example, data for individual

point graphics can be transferred. In the program below

this was solved like this:

If you do not specify a secondary address in the OPEN command,

the data is converted so that the capitalization is correct

appears. With a secondary address of one the

Transfer data without conversion. The device address was 2

selected, which is usually the RS 232 interface. There

However, this interface does not work together with ours

can be operated, so there are no problems.

For example, if you want a program listing via this interface

output, the commands look like this:

OPEN 1,2 : CMD 1 : LIST

After the cursor appears again, enter

228

PRINT#1 : CLOSE 1

to cancel CMD mode and close the channel

close. If you want to transfer graphic data, it will see it

Programming like this:

OPEN 1,2,1

PRINT# 1,

CLOSE 1

For the hardware connection we only need a cable

with USER port connector on one side and one

Centronics connector on the other. The pin assignment of the

Cable is specified at the end of the assembler listing. At
To connect the printer, proceed by connecting the printer first

Connect the Commodore 64 to the printer using the cable, then
turn on the computer and then the printer. Load
now the machine program and initialize it with SYS

12*4096. |

- Centronics interface for CBM 64

: Connection to USER port

- Definition of the I/O vectors

200: 031a t= $31a

210: O31c | openv t= *4+2

220: O31e closev *= *+2

230: 0320 chkinv *= *+2

240: 0322 chkoutv *= *+2

260: 0326 t= +4

270: 0328 bsoutv *= *+2
280: 0328 xreg = $97 - Storage for registers

229

284:

dd0o

285:

dd01

286:

dd02

287:

ddQ3

288:

dd0d

289:

dd0e

290:

dd0e

291:

dd0e

292:

dd0e

293:

dd0e

294:

dd0e

295:

dd0e

296:

dd0e

297:

dd0e

- Definition of ports

$dd00

CIA2

e
0

Port

e
0

Data direction

Interrupt control registers

porta

portb

drra

drrb

icr

lf

sat

fa

nmbfiles

lftab

fatab

satab

srchfil

e
e

+4

t+4

+4

*+10

+4

$b8

$b9

$ba

$98

$259

$263

$26d

$f£30f

; Initialization

e
?

init

330:

340:

350:

360:

370:

380:

390:

400:

410:
420:

430:

440:

450:

460:

470:

c000

c000

a9

58

c002

a0

cO

c004

8d

1a

03

c007

8c

1b

03

c00a

a9

8b

c00c

aQ

cO

c00e

8d

1c

03

c011

8c

1d

03

c014

a9

a3

c016

a0

cO

c018

8d

1e

03

CO1b

8c

£1

03

cole

a9

c020

a0

co

=

$c000

lda

#< open

ldy

#> open

sta

openv

sty

openv+1

lda

#<close

ldy

#> close

sta

closev

sty

closev+1

lda

#< chkin

ldy

#> chkin

sta

chkinv

sty

chkinv+1

lda

#< chkout

ldy

#> chkout230

480:

c022

8d

03

sta

chkoutv

490:

c025

8c

21

03

sty

chkoutv+1

540:

c028

a9

d1

550:

CO2a

a0

cO

lda

#< bsout

ldy

#> bsout

560:

CO2c

8d

26

03

sta

bsoutv

570:

CO2f

8c

27

03

sty

bsoutv+1

580:

c032

a9

ff

lda

H$££

590:

c034

8d

03

dd

sta

drrb

- Port B on output

600:

c037

ad

00

dd

lda

porta,

610:

cO3a

09

04

ora

#%100

- Strobe hi

610:

cO3c

8d

00

dd

sta

porta

620:

cO3f

60

rts

- Output with handshake

- Data on port B

- Strobe on PA2

- BUSY via FLAG to ICR

0)
e

795:

c040

8d

01

dd edition sta

portb

: Output data

800:

c043

a9

lda

#% 10000

- Mask for FLAG’ bit

810:

c045

2c

Od

dd

testbusy

bit

icr

820:

c048

f0

fb

beq

testbusy

830:

cO4a

ad

00

dd

lda

porta

840:

c04d

29

fb

and

#%11111011 ; Strobe lo

850:

cO04f

8d

00

dd

sta

porta

860:

c052

09

04

ora

#%100

- Strobe hi

870:

c054

8d

00

dd

sta

porta

880:

c057

60

rts

900:

c058

off

b8

open

1dx

lf

- logical file number

910:

c05a

£0

05

beq

openerr

930:

cO5c

20

Of

f3

jsr

srchfil

- looks for file number

940:

cO5f

dO

03

bne

*%+5

950:

c061

4c

fe

f6 openerr

jmp

$f6fe

- “file open error”

231

960:

c064

a6

98

970:

c066

e0

Oa

c068

90

03

980:

990:

ldx

nmbfiles

; Number of open files

CPX

#10

bcc

*+5

cO6a

4c

fb

f6

jmp

$f6fb

“too many files error”

1000:

cO6d

e6

98

inc

nmbfiles

1010:

cO6f

a5

b8

lda

lf

1020:

c071

9d

59

02

sta

lftab,x

1030:

c074

a5

b9

1040:

c076

09

60

lda

Sat

ora

#$6

0

1050:

c078

9d

6d

02

sta

satab,x

1060:

CO7b

a5

ba

lda

fa

1070:

cO7d

9d

63

02

sta

fatab,x

1080:

c080

c9

02

1090:

c082

dO

02

1100:

c084

1100:

c085

60

cmp

#2

bne

*+4

clc

rts

finished

1110:

c086

c9

00

cmp

#0

1120:

c088

4c

77

f3

Jmp

$f3

77

continue as usual

1300:

cO8b

20

14

£3 close

jsr

$£3

14

looks for logical file number

1310:

cOße

£0

02

beq

t+4

1320:

c090

1320:

c091

60

cle

rts

finished

1330:

c092

20

£3

jsr

$£3

1f

sets file parameters

1340:

c095

8a

1340:

c096

48

1350:

c097

a5

ba

1360:

c099

c9

02

1370:

cO9b

£O

03

1380:

c09d

4c

9d

f2

1390:

c0a0

4c

f1

£2

txa

pha

lda

fa

cmp

#2

beq

*%+5

Jmp

mp

$f2

9d

$£2

f1

continue normally

e
e

Delete entry in table

1400:

c0a3

20

Of

£3 chkin

jsr

srchfil

: looks for file number

1410:

c0a6

beq

245

232.

1420:

c0a8

4c

01

f7

1430:

cOab

20

£1

£3

1440:

cOae

as

ba

1450:

cObO

c9

02

1460:

cOb2

dQ

03

1470:

cOb4

4c

Oa

f7

1480:

cOb7

4c

19

£2

jmp

jsr

$£701

$£31f

lda

fa

cmp

#2

bne

45

jmp

jmp

$£70a

$£219

“file not open error”

sets file parameters

?

; “not input file error”

1500:

cOba

20

Of

f3

chkout

jsrx

srchfil

looks for file number

1510:

cObd

£0

03

1520:

cObf

4c

01

{7

1530:

cOc2

20

£1

£3

1540:

cOc5

a5

ba

1550:

cOc7

c9

02

1560:

cOc9

dQ

03

1570:

cOcb

4c

75

£2

1580:

— cOce

4c

5b

£2

beq

¥4+5

Jmp

jsr

$£701

$£31f

lda

fa

cmp

#2

bne

%+5

jmp

jmp

$£275

$£25b

“file not open error”

sets file parameters

e
?

1600:

cOd1

48

bsout

pha

1610:

cOd2

a5

9a

lda

$9a

Output device

1620:

c0d4

c9

02

1630:

cOd6

£0

03

1640:

1641:

c0d8
cOdb

4c

cd

f1

a5

b9

cmp

#2

beq

%+5

Jmp

$f1cd

continue normally

lda

sat

Secondary address

1641:

cOdd

29

Of

and

#%1111

1642:

cOdf

do

Oa

bne

out

not equal to zero

1642:

c0e1

86

97

stx

xreg

1643:

c0e3

68

1643:

c0e4

aa

pla

tax

1643:

c0e5

bd

£3

cO

lda

table,x

Get code from table

1643:

c0e8

off

97

1643:

cOea

24

1650:

cOeb

68

out

1655:

cOec

48

1dx

xreg

.byt $24

pla

pha

233

1660:

cOed 20 40 cO jsr edition ;

Output characters

1660:

cOfO 68 pla

1660:

cOf1 18 cle

1660:

cOf2 60 rts

1665:

cOf3 table = x

cOf3 00 01 02 03 04 05 06 07 08 09 Oa

Whether

Oc

Od

Oe

Of

c103 10 11 12 13 14 15 16 17 18 19 1a

1b

1c

1d

£1

c113 20 21 22 23 24 25 26 27 28 29 2a

2b

2c

2d

2e

2f

c123 30 31 32 33 34 35 36 37 38 39 3a

3b

3c

3d

3e

3f

c133 40 61 62 63 64 65 66 67 68 69 6a

6b

6c

6d

6e

6f

c143 70 71 72 73 74 75 76 77 78 79 7a

7b

Tc

7a

Te

5f

c153 60 61 62 63 64 65 66 67 68 69 6a

6b

6c

6d

be

6f

c163 70 71 72 73 74 75 76 77 78 79 7a

7b

Tc

7d

Te

£1

c173 80 81 82 83 84 85 86 87 88 89 8a

8b

8c

8d

Be

8f

c183 90 91 92 93 94 95 96 97 98 99 9a

9b

9c

9d

Je

9f

c193 a0 al a2 a3 a4 a5 a6 a7 a8 a9 aa

off

ac

ad

ae

afcia3 bO bi b2 b3 b4 b5 b6 b7 b8 b9 ba

bb

be

bd

be

bf

c1b3 cO 41 42 43 44 45 46 47 48 49 4a

4b

4c

4d

de

4f

cic3 50 51 52 53 54 55 56 57 58 59 5a

5b

5c

5d

de

df

c1d3 eO ei e2 e3 e4 e5 e6 e7 e8 e9 ea

eb

ec

ed

ee

ef

cie3 fO £1 f2 £3 £f4 £5 £6 f7 £8 £9 fa

fb

fc

fd

fe

ff

Hier

wieder ein Ladeprogramm in BASIC

100

for i = 49152 to 49650

110

120

130

140

150

160

170

read x : poke i,x : S=S+x : next

data 169, 88,160,192,141, 26, 3,140, 27,

3,169,139

data 160,192,141, 28, 3,140, 29,

3, 169,163,160,192

data 141, 30, 3,140, 31, 3,169,186,160,192,141, 32

data 3,140, 33, 3,169,209,160,192,141, 38, 3,140

data 39, 3,169,255,141, 3,221,173,

0,221, 9, 4

data 141, 0,221, 96,141, 1,221,169,

16, 44, 13,221

234

180

data

240,251,173,

0,221, 41,251,141,

0,221,

9,

4

190

data

141,

0,221,

96,166,184,240,

Ir

32,

15,243,208

200

data

3,

166, 152,224,
76,254,246,

10,144,

3,

76,251.

210

data

165, 184,157,
246,230,152,

89,

2,165,185,

9,

96

220

data

157,109,

2,165,186, 157,

99,

2,201,

2,208,

230

data

24,

96,201,

0,

76,119,243,

32,

20,243,240,

2

2

240

data

24,

96,

32,

31,243,138,

72,165,186,201,

2,240

250

data

3,

76,157,242,

76,241,242,

32,

15,243,240,

260

data

76,

1,247,

32,

31,243,165, 186,201,

2,208,

270

data

76,

10,247,

76,

25,242,

32,

15, 243,240,

280

data

1,247,

32,

31,243,165, 186,201,

2,208,

3,

3;

3

3

76

76

290

data

117,242,

76,

91,242,

72,165,154,201,

2,240,

3

300

data

76,205,241,165,185,

41,

15,208,

10,134,151,104

310

data

170, 189,243,192,166,151,

36,104,

72,

32,

64,192

320

data

104,

24,

96,

O,

1,

2,

3,

4,

Ir

6,

7,

8

330

data

9,

10,

11,

12,

13,

14,

15,

16,

17,

18,

19,

20

340

data

21,

22,

23,

24,

25,

26,

27,

28,

29,

30,

31,

32

350

data

33,

34,

35,

36,

37,

38,

39,

40,

41,

42,

43,

44

360

data

45,

46,

47,

48,

49,

90,

51,

52,

53,

54,

55,

56

370

data

57,

58,

59,

60,

61,

62,

63,

64,

97,

98,

99,100

380

data

101,102,103, 104,105,106, 107, 108, 109,110,111,112

390

data

113,114,115,116,117,118,119,120,121,122,123,124

400

data

125,

94,

95,

96,

97,

98,

99,100, 101,102, 103, 104

410

data

105, 106,107,108, 109,110,111,112,113,114,115,116

420

data

117,118,119,120,121,122,123,124,125,126,127,128

430

data

129, 130,131,132,133,134,135,136,
137,138,139, 140

440

data

148, 149, 150,151,152
141,142,143,144,145,146,147,

450

data

160,161, 162,163, 164
153,154,155,156,157,158,159,

460

data

169, 170,171,172,173,174,175,176
165, 166,167,168,

470

data

177,178,179, 180,181,182, 183,184,185, 186, 187, 188

480

data

189,190,191,192,

65,

66,

67,

68,

69, 70,

71,

72

490

data

73,

74,

75,

76,

TT,

78,

79,

80, 81,

82,

83,

84

500

data

85,

86,

87,

88,

89,

90,

91,

92,

93,222,223,224

510

data

225,226,227,228,229,
230, 231,232,233, 234,235,236

235

920 data 237,238,239,240,241,242,243,244,245,246,247,248

530 data 249,250,251,252,253,254,255

540 if s <> 58498 then print "fehler in datas !!" : end

950 sys 49152 : print "ok !"

Das Verbindungskabel zwischen Userport und Druckerschnitt-

stelle hat folgende Belegung:

USER PORT - CENTRONICS

A GND 16

B FLAG - BUSY 11

C DO 2

D D 1 3

E D2 4

F D3 I)

H D4 6

J D5 7

K D6 8

L D7 9

M PA2 - STROBE 1

4
a

236

MITTELS
7.2 DATENUBERTRAGUNG VON UND ZU ANDEREN RECHNERN

DES USER-PORT

Nehmen wir einmal folgenden Fall an:

Sie besitzen außer Ihrem CBM64, den Sie sich wegen der

Möglichkeiten in Farbe und Ton zugelegt haben, noch einen

CBM8032. Wie schön wäre es doch, wenn Sie Daten, die aus dem

8032 stammen, Zwecks farbiger Anzeige auf den CBM64

transferieren könnten, und zwar in dem Augenblick, wo sie

auch anfallen.

Sie könnten wohl die Daten mittels Kassette austauschen,

falls Sie ein solches Gerät besitzen, aber das ist ein

umständliches und langwieriges Unterfangen.

Um Ihnen den Nutzen des Userport einmal aufzuzeigen (die

wenigsten wissen damit etwas anzufangen), haben wir eben
dieses Beispiel gewählt und dazu auch gleich ein kleines

Programm geschrieben, welches es erlaubt, Daten von und zu

Ihrem C64 zu übertragen. In unserem Falle ist der Partner

ein CBM8032. Es ist jedoch durchaus denkbar, dieses

Verfahren auch mit anderen Rechnern zu versuchen, die über

eine ähnliche Einrichtung wie den Userport verfügen.

Einzige Voraussetzung ist eben, daß diese Einrichtung überhas eight data lines and two handshake lines.

A Centronics interface, for example, would also be suitable

which is also said in Section 7.1.

The program that will be discussed below

Of course, it needs a connection to run smoothly

between the two computers.

Instructions on how such a line should be designed,

can be found behind the program listing.

First we will introduce you to the program. First of all

Variables and memory locations used in this

In this case, they do not represent real memory, but rather addresses

237

are by means of which the user port is handled, and

then a step-by-step explanation of the program.

First the variables:

X ASC value of a byte to be sent or received

TI operating system clock; counts in steps of 1/60 sec.

D$ complete string to be sent or received

Memory addresses used in the CBM8032:

99457 Userport data register

99459 Userport data direction register. Like you

perhaps known, the userport can contain data both

send as well as receive. That's why it has to be here

Data direction can be set, which even applies to each

individual bit is possible.

99468 Bit 5 of this address controls line CB2 of the

User port.

This determines the validity of the data during transmission

displayed on the line.

In reception mode it serves as an acknowledgment signal

for the data to be accepted. This represents
ensure that no data is lost.

39469 Bit 1 indicates the status of the CA1 line of the user port

again.

During transmission mode, the acknowledgment signal is used here
waited while in reception mode for the

Validity message from the transmitter is waiting.

Memory addresses in the CBM64

238

r
j

N
“

I

56576 Bit 2 controls the line PA2 of the user port.

Use as described under 59468.

56577 Userport data register

56579 Userport data direction register

56589 Bit 4 indicates the status of the FLAG line of the user port

again.

Use as described under 59469.

Now the program in detail:

1000-1080

1000

Send routine
The data direction register is set to output

set.

1010

The length of the transmission loop corresponds to the number

of the bytes to be transferred.

1020

The byte indexed by I in D$ is converted into the

Data register written.
to sign that the data is on the line now

1030

are valid, the corresponding signal becomes =0

set.

1040

This loop waits until...

Recipient acknowledges receipt of the byte.

1050-1060

The validity signal then becomes =1 again

set and pass the next byte if still

more are available.

1070-1080

Now the user port will go back to sleep

shifted and exit the sending routine.

2000-2090

Reception routine

2000

Here we wait for the first byte.

2020-2030

The clock is set =O and subsequently
waited for either a byte to be received
or two seconds went around. Is that
The latter is the case, so it can be assumed that

239

the transmission is over. The time limit in 2020

can be changed as needed.

In our case, we asked in 2020 whether ti

contains more than 120 time units, which is 2sec

corresponds, namely 120*1/60sec. That would be for 3 seconds

corresponding value 180.

2040-2050 First we wait for the validity report.

Once this has arrived, what was won in

Byte appended to D$.

2060-2080 The corresponding line will be the receipt for this

temporarily set to =O and then to that

Waited for the next character to arrive.

Using these routines is very simple.

After you have made an appropriate cable and installed it

Question coming computer connected to it, it can

actually already starting.

The program described actually only consists of two

Subprograms: One for sending and one for receiving.

You should include these subprograms in your own program

incorporate. If you want to send signals, create them

to D$ and say GOSUB1000.

If you want to receive, say GOSUB2000 and follow

Returning the characters available in D$ is so easy

is that.

Below you will find two program listings: one for the

C64 and one for the CBM8032. Both are in the structure

the same, but the user port addresses are mandatory

others.

They also differ in the 2010 line.

Here we have to take into account the different type of building blockin the C64 handles the user port, a jump must be inserted.

240

995 rem subroutine collection for transfer

of data via the user port

996 rem version for 6522 at address 59456 of CBM8032

998 rem

999 rem send a string

1000 poke 59459,255:rem data direction output

1005 poke 59468,peek(59468) or 224:rem cb2 high

1010 for i=1 to len(d$):rem send loop for d$

1020 x=asc(mid$(d$,i,1)):poke 59457,x:rem output data

1030 poke 59468, peek(59468) and 223:rem cb2 low

1040 wait 59469.2:

rem wait until data is received

1050 poke 59468,peek(59468) or 224:rem cb2 high

1060 next

1070 poke 59457,0:poke 59459,0:reset rem port

1080 returns

1996 rem

1997 rem received from d$

1998 rem

1999 rem

2000 wait 59469.2:

Wait until the transmission begins

2010 d$="":rem d$ prepare

2020 ti$="000000"

2030 if ti>120 then 2090

2040 if (peek(59469) and 2)=O then 2030:

rem waiting for data byte

2050 x=peek (59457) :d$=d$+chr$(x)

2060 poke 59468, peek(59468) and 223:rem cb2 low

2070 poke 59468,peek(59468) or 224:

rem cb2 high = confirmation of receipt

2080 goto 2020

2090 returns

241

995

rem subroutine collection for transfer

of data via the user port

996

rem version for 6526 at address 56576 of the CBM64

998

rem

999

rem sending a string

1000

1010

1020

poke 56579,255:rem data direction output

for i=1 to len(d$):rem send loop for d$

x=asc(mid$(d$,i,1)):poke 56577,x:

output rem data

1030

poke 56576,147:rem pa2 low

1040

wait 56589, 16:

rem wait until data is received

1050

poke 56576,151:rem pa2 high

1060

next

1070

poke 56577,0:poke 56579,0:reset rem port

1080

return

1996

rem

1997

rem received from d$

1998

rem

1999

rem

2000

wait 56589.16:

Wait until the transmission begins

2010

d$="":goto 2050:rem prepare d$

2020

ti$="000000"

2030

if ti>120 then 2090

2040

if (peek(56589) and 16)=O then 2030:

rem waiting for data byte

2050

2060

2070

x=peek (56577) :d$=d$+chr$(x)

poke 56576,147:rem pa2 low

poke 56576,151:rem pa2 high:

rem confirmation of receipt

2080

goto 2020

2090

return

242

A small example is the application of the routines

clarify:

Assuming you have them on both computers

The corresponding routine is loaded, just add it to the transmitter

the line

10 d$="test" :gosub1000: end

one, and in the receiver the line

10 gosub2000:print d$:end

Now start both programs and see what happens

happens.

The connecting line is according to the diagram below

to make.
We recommend a 10-wire, shielded cable

Cable with a cross section of the individual wires of
0.14-0.35mm”.

The shielding is closed on both sides with the GND pin

connect.
In our experiments, the arrangement worked for one
Cable length of 5m error-free. Whether much larger
Lengths that are still possible cannot be predicted.
This also depends, among other things, on the environment and its interference fields
off. For example, electric motors (washing machines, dust collectors)
vacuum cleaner) strong interference that leads to errors in the transmission

can lead.
A cable length of 3m can be considered completely harmless

be viewed.

243

0-54 ee) EM 8082

129345678 9 10 11 12

FLAG2 B — oe —B CAT
PA2 M-Ps —4 002
PB2C— | , — C PAO
1o0— — — D 1
2 E — | — £2
3 F — —F 3
4H — — —H 4
9 Jo’T — J 5
6K — | — K6
7’ L— iJ — L 7
GNON ---—-—-—-— — el —- - -- N GND

SHIELDING

244

AT THE EXPANSION PORT
7.3 THE CP/M CARTRIDGE

A CASE STUDY

This section describes how to use a

sophisticated additional hardware optimal use of the

Expansion slot of the C64 is made. For the better

Understanding the processes described here is the

Knowledge of the relevant chapters of our book 64

internally is an advantage.

First: What is the CP/M cartridge?

The CP/M cartridge is a cartridge developed by Commodore

Plug-in module, which is essentially a type processor

280 and some necessary for communication with the C64

Includes logic modules.

This module enables the widely used

CP/M operating system and the various options available for this purpose

Running software on the C64.

How to do it in this case, two processors
We want to run the same hardware

Bring it closer to you here.
You will find a block diagram at the end of the section
the CP/M cartridge, which focuses on the essentials
limited in order not to complicate the presentation unnecessarily

do.The following description of the individual processes
refers to this illustration and those contained in it

Names of the functional groups.
We want to try to present the processes in such a way that you...
You don't necessarily have to be a hardware expert to use this

to understand.

First, a short one to get you in the mood for the topic

245

Description of the lines of the expansion port, as far as they are included

play a role in this context:

CDO-7 data lines of the system bus.

These can only be done by the processor 6510 in the C64

can be controlled as long as DMA=1 and BA=1.

You should remember this fact because it is important for you

further course is essential.

CAO-15 address lines of the system bus.

The above also applies to these.

1/01 This line is =O if any activity
in the address range $DEOO-DEFF (56832-57087)

take place.

RES When this line becomes =O (usually only when
Switching on the case), everything connected will be

Hardware returned to default state.

DMA This line is an input. If you set it =O, like this
the processor 6510 is shut down, which causes the

System bus releases for external control.

BA The video controller signals on this line
in the C64 that it accesses the memory (BA=0).
During this time, no access to the system bus is allowed
6510, still accessed from outside via expansion port
become.

502 This is the system clock that controls all processes in the
C64 controls. | |

To keep all activities synchronous with those in the C64
In our case, the 280 of the
CP/M module controlled by this clock.

To describe the further processes, we start on
best with the hibernation state, i.e. the state that occurs after
when the device is switched on.

246

First of all, the explanation of a line on the Z80, namely BUSREQ.

This signal has a similar effect to AEC

(caused by DMA=O) on 6510. If BUSREQ=O,

so the 280 stops all activities and gives its

System bus free.

So if the device is switched on, the line is RES

=O for a short time, which means that the 280 on the module goes into the

Initial state goes and the flip-flop FF is reset

(9=0, -Q=1).

This means that the output of gate & also becomes =0,

independent of BA.

This in turn means that the buffers Al, A2 and D

locked and therefore cannot control the system bus

can.

Furthermore, the signal BUSREQ =0, i.e. the 280th

remains in the basic state.

You can already see that it works

of the entire module only depends on the state of the flip-flop FF in

Connection with the signal BA (link through the

AND gate &) depends.

Only if FF is set (Q=1, -Q=0) and BA=1 at the same time,

BUSREQ becomes =1 so that the Z8O can work.

You can now work with your C64 as usual, as long as

You are not executing a specific command, namely POKE

56832.1.

As you can see from the block circuit and the description of the

Expansion slot can be removed by this POKE

Line I/O1 activated. Since we also have that of all people

Poke value 1, this command becomes our flip-flop FF

set, and the 280 starts running, because BA is the most

Time =1.

At the same time the 6510 is switched off by DMA=O and your

Computer crashes because it has no program in memory

247

have to decide which of the 280 should now be carried out sensibly

could, which brings us to the next topic, namely:

Where does a program have to be located so that the Z8O can execute it?

To do this we need to go a little further.

In contrast to the 6510, the 280 starts after the reset (RES=O)

with the execution of its program at the memory address

QO.

This is where the first case of conflict arises, because with O it has

6510 has its I/O port and is located at the following addresses

is the zero page, an area that the processor uses

Operation is absolutely necessary, as there are also important ones here

Operating system parameters are stored. In this one

It is therefore impossible for the 280 to provide a program in the address space

be made available. On the other hand, you can too

not cause its operation at a different address

to be recorded as O.

This dilemma is solved very elegantly on the CP/M module.

If you look at the block diagram you will find one

Function block that we have labeled ADD. Behind it

hides a 4-bit full adder. This one takes his
A 4-bit word on each input, adds the two and

makes the sum available at its output.In our case, this adder is in the highest value

four address bits looped in. They enter an entrance

Address lines from the 280, the other input is permanently on
wired to the value 1. As a result, the appears at the output
Value of the upper four address bits increased by 1.

Viewed across the board, this corresponds to an increase

around $1000 (4096), since there is one with the highest digit

2-byte address 4k steps can be counted.

So if now, to stick with our example, the Z80

outputs the address O when starting to get from there

fetching the first command corresponds to this by addition

an effective address of $1000 (4096).

248

There you can easily find a program that can be used for the 280

be stored without disturbing the operating system of the 6510.

From the method described it also follows that one

280 address of $FOOO (61440) an effective address of O0

corresponds, since the addition involves a carryover to the next

position is not taken into account.

As described above, the

Real work with the module: After switching on

of the computer, a small startup program is stored in memory

loaded (of course from $1000), and after setting the flip-flop

FF the 280 begins to process its program there, which

usually consists of installing the CP/M operating system

load and then follow the instructions given by the user

to carry out.

You should also use this procedure if you have your own

want to run 280 programs. That of you

Simply store the written program at 4096 ($1000).

and switch on the cartridge as described.

Since such a program is certainly not an end in itself,

but also some output should emerge, be it

on the screen or a printer, of course

Precise knowledge of the C64 hardware addresses is essential

You perform the correct actions from the Z80 program.

However, always take the one on the module into account

offset made to the address. For example, do you want data?

bring to the userport, the address in your

Z80 program $CDO1 (52481) because the user port is from 6510

is addressed with $DDO1 (56577). So pull from

the desired addresses in your program always $1000
(4096).
But how do you get out of the Z80 operating mode?

Nothing is easier than that: If you have the Basicinterpreter

loaded, say POKE 52736.0 at FF again

reset. This has the further consequences that BUSREQ again

249

=O, so the 280 stops operating, and

At the same time DMA =1, whereupon the 6510 takes its place

continues where he previously left off.

The poke address must of course be 4096 lower than

Seen from the 6510, since this value is returned by ADD

is added. However, it is not recommended

to proceed in this way, since the 6510 will restart its operation

There is no suitable program in the company, because in
There are still program parts in memory that are for the

280 operation were intended, and with these the 6510 can
don't start anything. The computer crashes.

For the sake of completeness, it should be mentioned that the 280th
Of course, on all hardware built into the C64
can access because it has the entire address space of 64k
painted over.

So far, the BA management has been a little neglected. That should now
be made up for.

In and of itself, BA is just an auxiliary signal that...
Traffic on the data bus regulates. It has it on the CP/M module
However, a serious influence, as can be seen from the
Link with & emerges, because regardless of the
In the FF position, the 280 definitely stops at BA=O.
If we examine the origin of BA more closely, it becomes clear
why it has to be that way.

BA is generated by the video controller in the C64. Since the
Screen memory is in the usual address space and the
Video controller cyclically refreshes the image
must access it is allowed during this access time
no one else can use the system bus. |

Normally that's not the case either, because...
Controller cleverly uses the gaps for its access
from where the processor doesn't have the system bus anyway
needed. However, there are some exceptions. One of them
is the case when working with sprites. to

250

The above-mentioned gaps are sufficient for the representation of sprites

not out, because it hits the memory several times in a row

must be accessed.The video controller signals this fact with BA=O and

The Z80 must then also enable the system bus.

We are aware of the block diagram on the following page

kept simple, although the processes in the area of

Data bus buffer D are significantly more complex. For understanding

However, the interactions between 6510 and Z80 are

completely sufficient.

251

Z-80

CA 0-7

EN

L|

CA 8-15 T A 8-11

A 12-15

CDs 0-7

<x> > D 0-7

EN |-4 susrau DH

|

| RES

CD O FF

1701 Q

> >

_-a
__ REG
RES

> y

_ Gm |

< |

B.A

SN
oo”

_She

252

7.4 SYNTHESIZER IN STEREO

If you often use the synthesizer on your C64

If you have worked, you will probably already know about it

have been annoyed by the poor sound coming from your television

produced. This may also depend on the quality of the sound part

Hang out the TV.

A stereo system that may be present is a real challenge

out to remedy this and create a slightly fuller one

to produce sound.

We would like to tell you how to do this in detail

Show you now.

As is well known, a stereo system has two channels,

We first have to think about how we can do it

single-channel output of the synthesizer to these two

Split channels.

Unfortunately, the individual voices on the device are not on

separate connections available, otherwise there would be a division

already given.

So we went and got the sound signal in two

Frequency ranges divided. The division into lower and

upper range happens at 300 Hz.

This covers the area covered by the synthesizer

Correctly divided in the middle, namely into three octaves
below (up to 36 Hz) and four octaves above (up to 4800

Hz) 300 Hz.
This is achieved with two double-T filters with one
Slope of 6dB/octave and a cutoff frequency of

300 Hz (low pass) or 3 kHz (high pass).

You can of course adjust the cutoff frequencies to suit your taste
change by using other capacitors, however
you should keep the resistance values as they are
the impedance of the connected devices are matched.

253

N

s
a

Given a limit frequency F, the required one is calculated

Capacitor value with C=1/(3300*F).

Do you have any capacitors in your craft box?

and want to know what cutoff frequency results from this,

then the formula F=1/(3300*C) should be applied.

However, you can assume that the circuit with
The values given represent an optimum, which we can see in

in our laboratory through extensive measurements and hearing tests

have achieved.

A slope of the filter of is sufficient for you
3dB/octave, so you can also use the components R2, C2, C4, R6
omit. The sound is spread over a wider area
stand acoustically between the speakers.

As you can see, the filter circuit is extremely simple. You
is conveniently placed on a small piece of perforated board

installed and into the connecting line to the stereo system
looped in. If you want to do the rest, you can
Arrangement including the connected cable ends
Pour in silicone rubber. This will give you a solution,
which is also visually flawless.

We would now like to introduce you to a short program that...
produces a “sweep” with the triangle oscillation.
Here you can clearly hear the sound of one
speaker moves to the other.

We chose the triangle oscillation because it
has relatively few overtones and therefore the effect is better
can observe.

For more complex sounds rich in overtones, e.g.
Sawtooth oscillation, the overtones appear on one
channel while you get the fundamental from the other
Listen to loudspeakers as long as they do not exceed 300 Hz.
But you will definitely notice one thing:
The sound has become much more voluminous.

254

Here is the program:

10s1=54272

20s2=54279

30s3=54286

60rs=54295

70pl=54296

80 poke s1+4.0:poke s2+4.0:poke s3+4.0

100 a=9:d=9:s=9:r=9:h=30

110 poke rs,O:poke pl,15

120 poke s3+5,16*atd:poke s3+6,16*str

130 poke s3+4.17

140 for i=O to h:poke s3+1,peek(54300):next 1

150 poke s3+4, 16

160 for i=O to r*4:poke s3+1,peek(54300):next 1

We will focus on the circuit below for its simplicity

because of no further details. The stereo side pin assignment is

intended for connection to the phono input.

R1 R2. R3
=-—— + ++ -7—_ 1... =
3 3K3 220 2K2 3

C 64 C1==w C2= 1a STEREO

a /T\L —
2 2

R47

R5 R6

C3C4R7
(—— ng EEE
0. 14 0.1 3K3

5255

CHAPTER 8: FILE MANAGEMENT: NOT A SEALED BOOK

Introduction

Who hasn't been faced with the task of collecting different data more often?

to record and use them again at a later date

to call? But this task is very often that

most complicated topic in programming. Regardless of whether BASIC,

FORTRAN, PASCAL or other languages - file management, and everything

Everything that has to do with processing data is everywhere

more or less complex problem. One should expect that

at least the computer or programming manuals

spoke to provide more detailed information on this topic. But unfortunately

the file management becomes too short, or not at all

discussed.

In this chapter we want to give you an insight into the

Give file management on the Commodore 64. Not only will we

convey dry theory, but also give examples. So
You too can understand the Commodore 64 even better

apply. But first you need to know a few basic terms

from the area of file management can be explained.

FILE

Everyone is talking about file management and files - but what are they?

actually files? The term is easiest to define

explain if we replace it with a term that everyone

knows: CARDEI. As you know, a card index consists of, for example, one

Library, made up of several index cards. It says on these cards

All the information about a specific item

or a person. So you know at any time, using our example

to stay, which reader is currently reading which book, or which one

Book is awarded. These flashcards are designed for you

arranged in certain patterns. The most common method is this

alphabetical sorting. Another possibility is this

256

Sorting by item number or date. All cards

together now form a card index. It's similar with a file

(in the IT sense). A file consists of several data records
(Records see below). These data sets now contain the

individual pieces of information - like on an index card.

The big advantage of a FILE over a CARD (like us

you just explained) is the incredible flexibility of the

FILE. Above all, this includes saving time when searching

and sorting all data; but space saving also plays a role

a big role today. On the storage media used

Small computers can often find more than 1 million characters
Place! Can you imagine how many flashcards

would be needed to absorb this amount of information?

DATASET

As we discussed above, you can use a data set well
compare with an index card from a large index. In
This data set contains all the data that would otherwise be on one
index card would stand, divided into one or more

FIELDS.

FIELDS

Here too you can use the example of the index card.
If you can imagine a data set as an index card, SO
The fields are the individual pieces of information on the card. The
You can imagine the connection between the three terms like this:

FILE -> DATASET -> FIELD

So if I have certain information about a thing or
If a person wants to have a name, for example, they must first click on that
corresponding file can be accessed, then from this file the
data set and finally the corresponding one from the data set
field can be read. Graphically it can be done like this:

257

are shown:

FILE: ADDRESS FILE

FIELD FIELD FIELD FIELD

NAME FIRST NAME STREET ZIP CODE OF RESIDENCE

REC.: 1 METER HEINZ A-STR. 1 1234 BITDORF

REC.: 2 MULLER EGON B-STR. 5 6502 CBMSTADT

REC.: 3 SCHULZE HANS C-STR. 2 4711 DUFTDORF

This example of a file shows quite clearly

Differences and relationships between file, record and field

see. You should already understand these terms beforehand

you start with the actual programming of programs

Managing files can begin. We will continue to do so

represent different access and storage methods - the

In any case, the basis is the understanding of the above

discussed.

3

?
'
i

258

8.1 CASSETTE - DISK

After this somewhat more detailed introduction, let us now

with the actual programming of file management systems

employ programs. To do this, we should first look at the

Devices that we use for storage in the Commodore 64Available: Datasette and floppy drive.

What is the difference between these two devices and their data carriers?

Cassette and floppy disk? What can they be used for? About this

To clarify questions, we first want to take a trip to the beginning

the computer do.

Just a few years ago, terms like “floppy” or

“Magnetic disk” is virtually unknown. But even then you could

Of course not on a data carrier, i.e. a device that contains data

can save and read again. For this purpose

the punch cards were developed. With them you had one

Found a simple and inexpensive way to share data with everyone

at any time and feed it back to the computer.

However, a huge disadvantage was recognized quite early on

Equipment necessary to work with the punch card, namely the

Punch card punch (for outputting information on punch cards) and

of the punch card reader. Both were considered purely mechanical devices

way too slow. But as you get more and more over time

If you needed rapid and secure data storage, you had to

develop something better. The result: the magnetic tape. And

So we can start with today's cassette

deal with the working principle of which is mainly used in large-scale IT

is very similar to the magnetic tape that is still quite commonly used.

The principle of the cassette as a data carrier is quite simple (if
you only look at the basic features at first). Let's see each other
First, start data storage. The Commodore 64 has for them
Storage on cassette has a special device allocation: The

Device number is 1. The command for writing is also 1.

If you want to open a file on the cassette recorder, do so

259

The entire command for this is:

OPEN 1, 1, 1, "CBM 64 FILE"

The first °1° is the file number for the Commodore 64. Want

So if you open several files in the Commodore 64, you have to

Select other file numbers for printer, cassette or floppy.

Overall, all numbers from 1 to 255 are permitted. If the

If the cassette recorder is set to RECORD & PLAY, the

Commodore 64 write a special opening credit on the tape.

For a file, this header only contains the file name.

For a program, the start address is also included
saved. This so-called program header or the file header

is saved twice in a row. After that it stops

Band. Now the data can be saved (or that

program).

There is an additional option for saving a file

in the sequence:

OPEN 1, 1, 2, "CBM 64 FILE"

With this command you write another file after the file

additional information on the tape. This information, also EOT

(End Of Tape) or "end of the tape", says the Commodor

when reading later that the tape ends here - so it can

not be described further.

Data that was saved at some point should

of course also be read again. The corresponding command

for this is:

OPEN 1, 1, O, "CBM 64 FILE"

The Commodore 64 is now looking for one. corresponding

File until he either finds it or he clicks on one

EOT has been encountered.

260

IMPORTANT: The Commodore 64 does not search for one when writing

File with the specified name. He writes “without regard

Losses" exactly where the tape is currently located.

Therefore, if possible, you should not have more than one file per

Save the cassette to avoid accidentally destroying the stored cassette

Prevent data and programs.

After these magnetic tapes were no longer sufficient (why,

We'll get to that in a moment), the technology was refined.

Magnetic disks were now used. The Commodore 64 can also

use a similar method. Here you can have one or

Connect several so-called floppy drives. The

The associated data storage medium, the floppy disks, is the easiest way to use it

Compare records. There are different tracks here too.

However, the material of the floppy disks is magnetic. So can

These “records” were not only read but also written about

become. The syntax (notation) of the commands for reading or

Writing data looks like this:

OPEN 2, 8, 2, "O:CBM 64 FILE,S,W"

or

OPEN 2, 8, 2, "O:CBM 64 FILE,S,R"

The first “2° is again the Commodore internal file number, 8°
is usually the device number for a floppy (but cancan also be set to °9°, for example) and the second °2°

Channel number. But the most interesting thing is the name part. Here

First we find the drive information (O or 1), then the
File name, then a °S’ for “Sequential File” (more on that later

more) and then either a °W’ for ‘Write’ or ‘R’

for ‘Read’. So we can now also store files on one

Open disk.

The main differences between floppy disks and cassettes

261

consist of:

- Costs

In terms of purchase costs, the cassette recorder is

clearly the cheapest storage medium, even if

Floppy drives have increased considerably in recent times

have become cheaper, and you can get a VC-1541 floppy

you can get it for under 1000 DM. Things are different with them

Costs for the actual data carriers. For example,

Store 170,000 characters on a floppy disk

To fit the Commodore drive VC-1541, you need about 4 C-60

Cassettes. The cassette recorder doesn't offer any here

Price advantage more.

- Access time

This is where the advantages of the floppy disk become clear. So

For example, it takes time to read in a 10K program

Cassette recorder 200 seconds, with the Floppy VC-1541

but only 20 seconds. It's a similar situation when browsing

a sequential file. For example, a file

consisting of 50 addresses, each 100 characters long,

To read it, you need 180 on a cassette recorder

Seconds, with the floppy disk drive only 18 seconds.

- Access types and programming convenience

While with the cassette recorder only program files and

sequential files are permitted, the diskette provides

significantly more with relative files and direct access

possibilities.

This makes it clear that the cassette recorder is just a

inexpensive device for beginners. Whoever is more with his

Commodore 64 or even use it for commercial purposes

If you want to, you can't avoid a floppy disk drive. In

In the following we will first deal with the technical aspects

Basics of data storage on cassette and then contact us

the individual access types and file formats.

262

The Datasette - or HOW DO THE BITS GET ON THE TAPE?

Now that we have explained the principle of files (and you
hopefully you also understood), we want to do this at this point
nor explain how the individual information is actually available
Band reach. We have to get a little technical now, but
Who knows when which information will be needed?
can. And since this topic also seemed very important to us,
We think that you should also receive this information.

The method used by Commodore to record the
We call information (bits) on the cassette tape PPM. PPM
means PULSE POSITION MODULATION. This means that the
Commodore 64, just like its other Commodore brothers,
the digital signals directly, and not in the form of two
audio frequencies, writes on the tape. These digital signals are in
transmitted in three different times: K (Short), L (Long) and M
(Medium). These three times now become 3 different ones
Combinations are formed that have the following meaning:

LLMM = BYTE ; This combination goes to every BYTE MMKK (=1), KKMM
(=0) ahead.

This means that, for example, the letter "A" on the tape in
is saved in this form:

LLMM MMKK KKMM KKMM KKMM KKMM KKMM MMKK KKMM MMKK
BYTE 1 O O 6) O O 1 6) 1
BIT# O 1 2 3 4 5 6 7 Parity ODD

The entire storage looks like this:

Programs files

Program header File header
Start-end address, name name
Program header (repeat) File header (repeat)

263

Program (one block) Data block (one block)

Program (repeat) Data block (repeat)

End block End block

The head is structured like this:

Programs files

Start address (xxxx) Start address (0000)

End address (xxxx) End address (0000)

Program name (16 characters) File name (16 characters)

Fill character (for prg. name) Fill character (for data name)

A block consists of: (programs and files)

approx. 2.00 seconds of opening credits

9 BYTES Count Down ($89 $88 $87 $86 $85 $84 $83 $82 $81)

at the first block

($09 $08 $07 $06 $05 $04 $03 $02 $01)

in the repetitions

Data

Checksum (EXOR checksum over the entire data)

End mark (LLKK KKKK KKKK KKKK KKKK)

approx. 0.16 seconds of credits

As already mentioned, the recording procedure is the same for everyone
Commodore devices the same. The problem with data exchangebetween Commodore 64 and VC-20 is only in the
different frequencies. The clock speed of the VC-20 is over
that of the CBM, and the cycle number of the CBM is again above that of the
Commodore 64. What this means for you is that you are on the big one
Commodore devices the programs of the VC-20 and the Commodore 64

264

can run, but not a VC-20 program directly

the Commodore 64 and vice versa. But if you have cassettes between

If you want to exchange the two computers, you have to take the detour

make over a large CBM. The process could be like this

appearance:

You have a cassette with one or more VC-20s on it

Programs (or files) are included. These programs

(files) you want to transfer to your Commodore 64. To that

take a normal datasette, connect it to a large one

CBM calculator and load the first program (or the first

file) as usual. Then take a new cassette and

exchange these with the VC-20 cassette in the recorder. Well

save your program (or file) again with the

usual commands again. If you have several more

have programs (or data), start again from the beginning.

After all programs are transferred, or say how better

converted, you have a cassette that is both on the

VC-20 as well as on the Commodore 64 can be loaded. Under

Circumstances require a few changes to the program

can be made, such as screen adjustment, various POKEs

and the like, but that goes without saying.

Unfortunately, we don't have a software solution at the moment

the problem of program conversion between VC-20 and

Commodore 64 is known, but maybe you already have one

idea. We are always very happy about such suggestions.

But a consolation at the end. Programs that...

Example on the Commodore computers of the 3000 or 4000 series
written can be loaded directly - and which one
other computers can then handle such an amount

Use software?

265

8.2 THE PRINCIPLE OF FILE MANAGEMENT: SEQUENTIAL FILES

We have just looked in detail at the “history” of the

Disk busy. Let us turn our considerations

now only the last two data carriers mentioned, i.e. magnetic tape

and plate too. Using these two devices you can easily

Explain the different methods of file access. In

In this chapter we now only want to focus on the sequential

Apply method.

Sequential means something like “one after the other”.

The individual data sets are located in exactly the same way, one after the other

in the file. This can be compared to taking a photo

piece of music using a cassette recorder. You rewind that

Tape to a certain point and then press the

Recorder buttons. Then the piece of music becomes

recorded. When you play a specific piece of music again

If you want to play it, you usually have to go all the way to it first

Wind the tape at the beginning and then, when fast-forwarding, use the counter

to be able to read which piece of music you are currently “passing through”.

This is roughly how you can view the recording of data from
Introduce computers on tape. So when you record data

which you want later based on a specific counter position

If you want to find it again, you must first find the exact meter position

determine. Of course, this is only true if you have the tape

rewound beforehand and then the counter reset button

have operated. Only then can you start with the actual thing

Start recording. This somewhat cumbersome procedure

at least allows you to use the quick steps later

and return buttons to get to your data faster.

However, it still becomes problematic if you are within

Search for a specific record in a file. If you

have a file full of addresses and you search for the name

MÜLLER, it can of course happen that you have several MÜLLER in

of the same file. However, you can often do this when saving

of the data, do not note the counter reading every time (also

266

we especially want to avoid such manual work,

otherwise we can just use index cards). So we have to

proceed a little differently. To do this, we wind the tape all the way again

go back to the beginning, open the file to read (see above) and go

Now go through sentence by sentence until we read the correct MÜLLERhave. Of course, that means a certain amount of effort - at 2000

You can perhaps change records in a file from time to time

Go for a leisurely coffee. But you can still come along

Something as simple as a cassette recorder is definitely one

small file management, especially since this cassette recorder

is a really inexpensive option.

If you only have a cassette recorder, it's still fast

and want to manage data efficiently, you should do the following

Apply procedure: Design your files so that these
basically fit into the free memory of the Commodore 64.

Before you change, delete, add, or edit data in your file

If you just want to display it on the screen, download it

complete file into memory. Now you're at
File access no longer depends on the low speed of the

Recorder dependent, but can use the full

Take advantage of your Commodore's computing speed. After work

With your file you save the entire file again

Cassette off. You can do this simple and practical procedure

Of course, you can also use it for larger files. Columns

Simply divide your data into several small files. So

For example, you can also copy an extensive address file

Split names into A-C, D-F etc., and get files that

fit into the memory of the Commodore 64. With a little skill and

Organization can also be achieved with a recorder

Achieve a lot of comfort in file management.

If you imagine the process of data storage

imagine, you will easily see why on one

Cassette recorders only allow sequential data storage

is. All data is saved one after the other and also

read back into the computer one after the other.

Pen

267

The sequential file is also the file type on the diskette
available, but here are the options available

Handling is larger than with a cassette recorder. On sequential

Files can be accessed quickly and directly without searching.

About the diskette table of contents, where everything is on one

programs and data located on the diskette are listed,

the Commodore 64 immediately gets the location where the file is

located. This eliminates the hassle of searching, as is the case with

Cassette recorder is necessary.

Now how do we handle a sequential file on the Commodore

64? First the file must be opened (see above). These are for this

File number, device number, channel number and name required. If

This file was opened in this way, you can enter the file with a command

can be written or read from it, but never both

once!

However, it cannot easily be added to an existing file

be written. For example, if you include the file “CBM 64 FILE”.

the command

OPEN 2, 8, 2, "O:CBM 64 FILE,S,W"

open and a file with that name was already there

the disk, then you will get a FILE EXISTS error message.

The command must therefore be modified by preceding the

Drive number is set with the character "@" (in technical language

also known as a “spider monkey”). The command is then:

OPEN 2, 8, 2, "®O:CBM 64 FILE,S,W"

and causes the file in question to be overwritten. There

the ones previously saved in this file on the diskette go

Data lost!

It is therefore important: Even with a floppy disk, you can use one

existing, sequential, file no data is changed.

268

To change data, the sequential file must always be completely in

the memory is read and again after the change has been made

be saved again on diskette. Who despite the possibility

of direct access its file management with the diskette

If you want to build sequential files, you should do this above

Use the procedures described for cassette recorders.

However, sequential files on the disk offer opposite

the cassette recorder in addition to the significantly higher speed

another advantage, namely the ability to connect (APPEND).

a file. This tethering has one big advantage: you have to

not read all the data back into the Commodore 64 and then

write away, but you can simply change the OPEN

Command causes the Commodore 64 to store all data that is now on

the disk is to be written to an existing file

to connect. The OPEN command is then:

OPEN 2, 8, 2, "O:CBM 64 FILE,S,A"Now all the data that is still entered will be sent to the

File attached. This allows you, for example, to create an existing one

Easily expand the address file without changing the other data

overwrite or first copy it into a new file.

With a cassette recorder it is possible to connect it

Unfortunately there is no sequential file. So you have to

Always read all the data into the Commodore 64 first, then

modify or expand and then go back to the

Save cassette. Now understand why we said that

File management with a floppy disk makes far more sense than

on cassette?

Below you will find a small one using sample programs

File management with sequential files for cassette recorders

and floppy drive. You can easily use the individual programs

Modify for your individual application. First of all, this

Version for cassette recorders.

269

1. Writing the data

10

20

REM KKKKKKKKKKKKKKKKKKKKKKEKKKEKEKEKEKEKEKEKKEKKEER

REM WRITING NAME AND FIRST NAME ON TAPE

30

REM VERSION FOR DATASETTE / COMMODORE 64

40

REM KKKEKKKKKEKKKKEKKKEKRKEKEKKKKKKKEKEKEKEKKEKEKERE

5O

PRINT CHR$(147): CLEAR SCREEN

52

PRINT "OPEN FILE TO WRITE"

54

PRINT

56

OPEN 1,1,1,"CBM 64 FILE"

60

INPUT "NAME : ";NA$

70

INPUT "FIRST NAME : ";VN$

80

PRINT

90

PRINT "WRITE - NAME = ";NA$

100

PRINT " - FIRST NAME = ";,VN$

110

PRINT

120

PRINT#1,NA$

130

PRINT#1,VN$

140

PRINT

150

INPUT "CONTINUE (Y/N) ";JIN$

155

PRINT

160

IF JN$="J" THEN GOTO 60

170

IF JN$="N" THEN GOTO 200

180

PRINT "WRONG ENTRY!"

190

GOTO 140

200

CLOSE 1

210

END

This Pro

gram is intended to contain any number of

Names and V

Save ornaments to tape. It doesn't need it

pointed out

to be that this program only with one

Cassette recorder

corder can be applied. Next program

follows now

the "counterpart" to the previous one. This program

reads that

Enter data into the Commodore 64 and display it on the

screen

(or printer). But first you need the tape

Back on

rewind the beginning. When this has happened,

you can

apply the program.

270

2. Reading the data

10 REM RRR E KERR KEK RE EEE EU I ©

20 REM READING NAME AND FIRST NAME FROM TAPE

30 REM VERSION FOR DATASETTE / COMMODORE 64

AO REM XE XRKKKK KKK KEKE REU X

50 PRINT CHR$(147): CLEAR SCREEN

52 PRINT "OPEN FILE FOR READING"

54 PRINT

56 OPEN 1,1,0,"CBM 64 FILE"

60 INPUT#1,NA$

70 INPUT#1,VN$

80 IF ST AND 64 THEN GOTO 130: REM END OF FILE?

90 PRINT "READ - NAME = ";NA$

100 PRINT " - FIRST NAME = ";VN$

110 PRINTS

120 GOTO 60

130 PRINT "END OF FILE - NAME = ",NA$

140 PRINT " - FIRST NAME = ";VN$

150 CLOSE 1

160 END

This program now reads all the data that came with the first program

were written on cassette and are shown on the screen

out. On the other hand, if you want your data on the screen instead of on it

to a printer, you have to change a few lines:

58 OPEN 4.4

90 PRINT#4, "READ - NAME = ";NA$

100 PRINT#4," - FIRST NAME = ";VN$

110 PRINT#4

130 PRINT#4, "END OF FILE - NAME = ";NA$

140 PRINT#4," - FIRST NAME = ";VN$

155 CLOSE 4

The other lines remain unchanged. Now there is another one

271

possibility,

namely the appending of data.

Same as above

discussed,

you can when using the

cassette recorder

Disk

Do not simply append additional data.

must first be completely in the

Storage

read in

Then rewind the tape

open them

File to write and write the data just read again

on tape.

Finally, append the new data.

After that

Of course, procedures can also be used

individual

Change or delete data.

3. Appending data

10

20

30

40

REM 2.2 2 2 2 2 2 2 2 22 2 2 2 2 22 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2

REM ADD NAME AND FIRST NAME TO TAPE

REM VERSION FOR DATASETTE / COMMODORE 64

REM KKKKKEKEKEKEKKKKEKKEKKKKKEKKEKEKKEKKEKEKEKEKKEKEKEKE

90

PRINT CHR$(147): CLEAR SCREEN

52

54

PRINT "OPEN FILE TO READ"
PRINT

56

OPEN 1,1,0,"CBM 64 FILE"

60

DIM NA$(100),VN$(100): I=1:

REM MAXIMUM 100 NAMES

70

INPUT#1,NA$: NA$(I)=NA$

80

INPUT#1,VN$: VN$(I)=VN$

90

IF STAND AND 64 THEN GOTO 130

100

IF I=100 THEN GOTO 130

110

I=I+1

120

GOTO 70

130

END=I

135

PRINT

140

PRINT "REWIND THE TAPE!"

150

PRINT

160INPUT "DONE (Y/N) ";JN$

170

IF JN$="N" THEN GOTO 130

180

IF JN$="J" THEN 210

190

PRINT "INCORRECT ENTRY

200

GOTO 150

210

PRINT "OPEN FILE TO ATTACH"

212

220

PRINT

230

OPEN 1,1,1, "CBM 64 FILE"

240

FOR I=1 TO END

250

PRINT#1,NA$(I)

260

PRINT#1,VN$(I)

270

NEXT I

280

PRINT "APPEND DATA:"

290

PRINT |

300

INPUT "NAME ";NA$

310

INPUT “FIRST NAME ":VN$

320

PRINT

330

PRINT "WRITE - NAME = ";NA$

340

PRINT " - FIRST NAME = ";VN$

350

PRINT

360

PRINT#1,NA$

370

PRINT#1,VN$

380

PRINT

390

INPUT “CONTINUE (Y/N) “;JN$

400

IF JN$="J" THEN GOTO 300

410

IF JN$="N" THEN GOTO 440

420

PRINT "WRONG ENTRY!"

430

GOTO 380

440

CLOSE 1

450

END

Have now

You already have your own small address management system. It

missing though

nor the information about the addresses, but everyone who

a little

If you have experience in programming, you should

Expand the file with the relevant information or the program

can change.

Now let's look at the sequential in more detail

Deal with file management on the floppy. Here too we want

again the three examples we already used with the datasette

have discussed apply. This will help you quickly

Difference, but also similarities in application

clearly.

273

1. Writing the data

This routine is of course similar to the routine we already have with the

Learn how to use the cassette recorder. This is yes

also quite understandable, since the principle of the sequential file

it's the same on the floppy too. So the routine is:

10 REM KEEKKKKKKKKKKKKKTKIK IKK IK KK. TI IK. KK IK IK KK KK IK KK IK II KK IK N I

20 REM WRITING NAME AND FIRST NAME ON DISK

30 REM VERSION FOR FLOPPY 1541 / COMMODORE 64

40 REM KKKKKKKKEKKKKEKKEKKKEKKKKKKKKKKEKKEKEKEKEKEKKKRKE

50 PRINT CHR$(147): CLEAR SCREEN

52 PRINT "OPENING THE FILE TO WRITE"

54 PRINT

56 OPEN 2,8,2,"CBM 64 FILE,S,W"

60 INPUT "NAME ".NA$

70 INPUT "FIRST NAME : ";VN$

80 PRINTS

90 PRINT "WRITING - NAME = ";NA$

100 PRINT " - FIRST NAME = ";VN$

110 PRINTS

120 PRINT#2,NA$

130 PRINT#2,VN$

140 PRINTS

150 INPUT "CONTINUE (Y/N) ";JN$

155 PRINTS

160 IF JN$="J" THEN GOTO 60

170 IF JN$="N" THEN GOTO 200

180 PRINT "WRONG ENTRY!"

190 GOTO 140

200 CLOSE 2

210 END

Just like the writing program discussed above

the cassette recorder, this program writes any

Number of last names and first names on the and that in

floppy disk,

sequential form. until the

Of course that's just possible

274

Floppy disk, or rather the space for a file is full. Um
You do need to write a full disk like this

a whole lot of data, but you should still be there

When programming, make sure that there are no errors, or even

Program crash occurs because the disk is suddenly full.

So that you have some idea of the capacity of the disk

get, we want a small one at this point

Show calculation example:

The Floppy 1541 has a total of space for 174,848 bytes (characters).

These can be used for the files:

Sequential files: 168,656 characters

Relative files: 167,132 characters

A maximum of 144 programs (files) can be saved.

Now imagine you want a complete one
Program address management. For this you need, for example

the following data:

DESCRIPTION | LENGTH

number | 3

First name 20

Last name 20

Street, No. 25

ZIP code 4

Place of residence 25

Country 3

Telephone 16

Note 50

Total 166

So your record is 166 characters long. Add to that now
the terminating characters (CHR$(13)). So we have to for everyone

275

Add one more character to the designation. That's what happens then

175 characters in total. How many data sets can we now have on the

Save disk?

The calculation we need for this looks like this:

from:

MAX: BYTES FOR SEQUENTIAL FILE / LENGTH OF A RECORD

or in our example:

168,656 / 175 = 963, 74857

But since we can't easily create 963.74857 records, and a

A little space on the disk never hurts, we would in this

In this case, you can create 950 data records. This number is enough for them

Normal applications also normally work. But if you

If you still want to create more data records, you must

either rewrite the program in such a way that you have several

You can use data disks or a larger floppyuse. For example, the capacity increases

Using a Commodore 8250 Floppy by a factor of 6 per

drive. So that would mean that with the Commodore 8250

Floppy could store more than 5500 addresses.

And you even have this option with your Commodore 64.

All you need is the floppy itself and the

necessary IEC bus. Together with the DATA BECKER IEC bus have

At the same time you also have the BASIC-4 diskette commands

of BASIC, which the big Commodore speakers also speak.

2. Reading the data

Now to read the data. Here, too, the program is quasi

identical to the cassette version. For the sake of clarity, want

but we also present this program again:

276

10 REM 2.2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2

20 REM READING NAME AND FIRST NAME FROM DISK

30 REM VERSION FOR FLOPPY 1541 / COMMODORE 64

AO REM BERK RRR KKK KKK KK KKK KKKEKK

50 PRINT CHR$(147): CLEAR SCREEN

52 PRINT “OPEN THE FILE TO READ”

54 PRINT

56 OPEN 2,8,2,"CBM 64 FILE,S,R"

60 INPUT#2,NA$

70 INPUT#2,VN$

80 IF ST AND 64 THEN GOTO 130: REM FILE END ?

90 PRINT "READ - NAME = ",NA$

100 PRINT " - FIRST NAME = ";VN$

110 PRINTS

120 GOTO 60

130 PRINT "END OF FILE - NAME = ";NA$

140 PRINT “ - FIRST NAME = ";VN$

150 CLOSE 2

160 END

As you can see, there are no significant ones in this program either

Differences to the cassette version. We already said that

There are no larger ones when editing files sequentially

There are deviations in the programming. The only difference

consists only of appending data. This can be done with a floppy

significantly easier than with the cassette.

3. Appending data

10 REM KAKKKKAKKKAKKKKKKKKKTKTK IKK KK KK TI IK KK KK KK KK N NK

20 REM ADD NAME AND FIRST NAME TO FILE

30 REM VERSION FOR FLOPPY 1541 / COMMODORE 64

AO REM KER RRR KER KEKE KERR KER UK KK KK I KK

50 PRINT CHR$(147): CLEAR SCREEN

52 PRINT "OPEN FILE TO ATTACH"

54 PRINT

56 OPEN 2,8,2,"CBM 64 FILE,S,A"

277

60 INPUT "NAME : ";NA$

70 INPUT " : ",VN$

80 PRINTS

90 PRINT "WRITING - NAME = ";NA$

100 PRINT " - FIRST NAME = ",VN$

110 PRINTS

120 PRINT#2,NA$

130 PRINT#2,VN$

140 PRINTS

150 INPUT "CONTINUE (Y/N) ";JIN$

155 PRINTS

160 IF JN$="J" THEN GOTO 60

170 IF JN$="N" THEN GOTO 200

180 PRINT "WRONG ENTRY!"

190 GOTO 140

200 CLOSE 2

210 END

As you've probably already noticed, it's similar to this one

Program is very similar to the program for writing the data - with

one exception: the OPEN command was issued by.

OPEN 2,8,2,"CBM 64 FILE,S,W"

on

OPEN 2,8,2,"CBM 64 FILE,S,A"

changed. This causes all data that is now with PRINT#2 in

the file is written, not the other data

overwritten, but appended to the existing file

become. This special feature makes it relatively convenient

Handling sequential files.

Let us conclude this chapter meaningfully

Show areas of application for sequential files. For one

They are file managers when it comes to quick access and

278

The ability to easily change data is only possible to a very limited extent
suitable. That's why sequential files are used in computers
mainly when a file is for a specific person
The purpose is to be created in a very specific form.
An example would be exchanging data media with others
computers. Sequential files can be used as long as they are in
are saved in the same recording format (ASCII), in principle
Easily read from any other computer. With relative or
This is often the case because of the direct access files of the operating system
The structure of such files varies depending on the operating system
usually not possible. Another example is log files,
which are created continuously and in which changes do not occur
may or may not even occur, e.g. this
Booking journal for financial accounting.

279

8.3 COPYING SINGLE AND DUAL DRIVE FILES

As described above, there are various options,

to expand or expand existing sequential files

change/delete. Sequential file management can be easy

be - but should not only be seen as a primitive possibility,

Save data and read it in again.

In addition, it is often very useful or even necessary data

or duplicate files, even after editingAll data in the corresponding file is still in its original state
exists, or in the event of data loss

Copy is available.

Let's first look at copying files. In

In our example we assume that it is a file

which was saved sequentially. To this file now

There are several ways to copy.

First, we could copy the entire file into memory

Commodore 64 read these records and then add them to the new file

copy. However, this normally requires a lot of effort

large RAM (the floppy disk, as is well known, is approx.

170,000 characters, the Commodore 64, on the other hand, under BASIC + program

just cva. 30,000) or is limited to smaller files.

In addition, a “middle ground” would be conceivable, in which the data sets in

Blocks are read in a certain number and then

can also be saved again in these blocks. We

But we want to stick to the simple method and every sentence

Read in and write down individually.

To do this we need to create a second file after the

Copying process is identical to the original file. The only one

The problem that arises here is that we know from the beginning

must know how many fields each data record has. About the program
To make it a little more convenient, we also want to show

which record we are currently reading and what the fields are.

280

50000 AD$="ORGINAL FILE": REM NAME OF THE FILE (ANY CHOICE)

50010 ND$="NEW FILE": REM NAME OF NEW FILE ( " )
50011 ND$=" :"+ND$+",S,W": REM NEW FILE TO WRITE
50020 INPUT "HOW MANY FIELDS PER RECORD ";AF$

50030 AF=VAL(AF$)
50040 DIM FB$(AF): REM DIMENSIONING OF THE FIELD NAMES
50045 DIM DF$(AF): REM . “ DATA FIELDS

50050 FOR I=1 TO AF: REM ENTER ALL FIELD TITLES

50060 INPUT FB$(I)

50070 NEXT I
50080 PRINT

50090 PRINT "COPYING IN PROCESS!"

50100 OPEN 1,8,2,AD$: OPEN REM FILE FOR READING

50110

OPEN 2,8,3,ND$: OPEN REM FILE FOR WRITE

50112

50115

50120

DS=1: REM START WITH DATA SET 1
PRINT "READ RECORD NO.";DS: PRINT
FOR I=1 TO AF: REM READ ALL DATA FIELDS

50130

INPUT#1,DF$(I)

50140

PRINT FB$(I);" ";DF$(I)

50145

DZ=ST: REM DZ = FILE STATUS

50150

NEXT I

50160

50170

50180

PRINT
PRINT "WRITE RECORD NO.";DS: PRINT
FOR I=1 TO AF: REM WRITE ALL DATA FIELDS

50190

PRINT#2,DF$(I)

50200

NEXT I

50210

50220

50230

50240

51000

51010

51020

PRINT
IF DZ AND 64 THEN 51000: REM END OF FILE?
DS=DS+1: REM NEXT DATA RECORD

GOTO 50115
PRINT "ALL DATA SETS TRANSFERRED!"

PRINT
CLOSE 2: REM CLOSE THE FILES

51030

CLOSE 1

51040

PRINT "END."

51050

END

281

With this program you can now easily use your existing

copy sequential files, provided you structure them - more precisely

In other words, the number of data fields per data record.

But this routine does have one problem. Namely, if you have one

If you want to copy a very large file, you will have to do so very soon

reach the limits of the floppy. You will see that you

Files that are, for example, 100,000 characters long (approx. 100 KB).

You can't copy it so easily with this program because you have one
Create a target file that not only has the same structure

original file, but also exactly the same size.

But in order to be able to copy larger files, you have to

Either work with 2 drives, or with 2 different ones

Floppy disks.

The easiest and safest way to do this type of duplication is with 2

drives. This requires one of your drives

be defined as unit 8 and the other as unit 9. This

This can be done both through software and through one

small intervention in one of the floppys, which the technician did easily

can carry out.

Now if you have a floppy as device 9, you can

Modify the program specified above in such a way that even large files

can be copied.

50110 OPEN 2,9,3,ND$: OPEN REM FILE FOR WRITE

Now data from drive 8 is read on the screen

displayed and saved again on drive 9.

Another tip on the side. A lot of programmers use

your files the record O (or 1) or a second file,

as a special record (or file) with information about the

Structure of the file. For example, it would be very useful if you

The first information is the number of fields and the number of data records

282would have saved. This would then require manual entry

omitted. In addition, you would now know at any time

how many data records are still to be read or how large the data is

is at all. If you have saved these two variables

(in the ORGINAL FILE) you must of course have the program

change something else.

50012 OPEN 1,8,2,AD$: OPEN REM ORGINAL FILE FOR READING

50013 INPUT#1,AF$: REM NUMBER OF FIELDS

50014 INPUT#1,AD$: REM NUMBER OF DATA RECORDS

50015 CLOSE 1

Delete line 50020.

50035 AD=VAL(AD$)

50111 INPUT#1,AF$: INPUT#2,AD$: PRINT#2,AF$: PRINT#2,AD$

50112 FOR DS=1 TO AD

Delete lines 50145 and 50220.

50230 NEXT DS

Delete line 50240.

A file parameterized in this way is much lighter and

to be processed more clearly.

Appending records follows the same principle as that

Copy. First, the file is created using the program shown above

copied, then file 2, i.e. the new file, is not closed,

but described further with the usual PRINT# commands. If

This file has been expanded so you can access it again

original file can be copied back.

283

8.4 HOW TO WORK FASTER: RELATIVE FILES

The larger Commodore computers with their BASIC 4.0 and all those

on your Commodore 64 MAXI or the DATA BECKER IEC-BUS

use, have an essential aspect with the relative files

more comfortable and powerful file type for the

Data storage available. In the case of a relative file

Each record has a number that simultaneously takes its place

of the diskette relative to the beginning of the file. Here's how you can

e.g. with a relative file, a file management with

To build direct access, there are basically two

Possibilities:

1.) You use the relative file ordering criterion,

namely the consecutively assigned number, analogous to

Zaccess key for your file. So you can, for example, in

of an invoice file the record number with the invoice number

equate. This would always be via the invoice number

Fast, direct access to the respective invoice

possible. The same applies to article numbers and

other keys that can be assigned arbitrarily.

2.) You build a corresponding table in which

Record number and key are compared. You have

for example your address file organized by name and want

Find the address with the name MÜLLER, this is how you search

First, select the record number from the table that corresponds to

Heard the name MÜLLER and then go straight to it

record. This procedure is significantly faster and

more elegant than reading a sequential file to

Finding the name.

Unfortunately, the owner of a standard Commodore 64,

which is not available, for example, via MAXI 64, IEC-BUS 64 or MASTER 64

Floppy disk commands from BASIC 4.0 were supplemented, usually with

the powerful relative files do not work. The

Floppy VC-1541 knows its operating system, DOS,

284

the relative files, but the necessary commands are in BASIC

of the standard Commodore 64 not included.

We would like to show you how to do this anyway

relative files can be used with the Commodore 64.

There is the possibility of following the computer through various CHR$
to tell you which data set you want to read or write.
So the whole process consists of two different parts:

1.) open the relative file with the usual OPEN command:

OPEN file number, device address, channel number, "Name,L,"+CHR$(length)

We already know the first part of this OPEN command
Sequential file known. After specifying the name follows
but now an ‘L’. This °L’ stands for LENGTH - Jie Floppy
1541 now knows that a relative file should be opened.
This is followed by a very important CHR$ command. This command gives
now the length of a data record. If you still subscribe to our
remember sequential file management with which we have a
If we wanted to edit address management, we would have to do this here
Specify length 175. The Commodore 64, or rather the operating system
Floppys allow a maximum record length of 254 characters.
If a data record is to have more than 254 characters, it must
either another file is opened and the one record is in
two data sets can be divided, or you can write to them
same file, and consider every other record as thefirst part of the °large data set.

2.) The positioning of the data record pointer:

PRINT # Channel number, "P"+CHR$(channel number)+CHR$(low)+CHR$(high)

The special feature of this command actually begins after the
Specifying the file number. The 'P' here means POSITION, and says
the operating system that the following CHR$ sequence

285

Set record pointer to the record marked by LOW and

HIGH is specified (show how LOW and HIGH are calculated

we'll tell you later).

The command can even be expanded. If you go to the

At the end of the CHR$ sequence, set another CHR$ command, like this

This indicates where within the data set

should be positioned. So you can specifically search for one

search for specific characters or words.

Another special feature that is very important is...

Programming both sequential and realative

File should be taken into account:

There must be a. after each FIELD written into the data record

Terminating characters (CHR$(13)) must be set. Otherwise it will

Computers do not distinguish between different fields

can differentiate. That's why we always have them

PRINT# commands are placed on two lines, as this is done automatically

Carriage Return, i.e. CHR$(13), is saved with.

With a concrete example it is of course easier to see what we are doing

try to explain here. That's why we started afterwards

This chapter is a fully functional warehouse management program

added. This makes it easier for you to use all the functions of this

chapter applied in a program. We believe that

It's worth the effort to enter this program, considering

that even small changes to this program result in this

address management, video cassette management and the like

lets do.

Now something about the HIGH and LOW mentioned above

Addresses. These HIGH and LOW addresses together make up the

actual data record number. The formula for this is:

Record number = HIGH * 256 + LOW

286

,
+
f

r
i

n
i

This means we can also read records whose address is greater than

255 is. If, for example, the 78th sentence is to be read, then it must

LOW and HIGH are initially calculated:

HIGH = INT (record number / 256)

LOW = record number - HIGH * 256

or using a concrete example:

HIGH=INT(78/256): LB=78-HB*256

and as a result for HIGH and LOW:

HIGH = O, LOW = 78

This calculation in itself is quite pointless, since we are like

want to read a data record that is smaller than 256. But

Nevertheless, this example shows how such a calculation can be done

'must look like.

This result must now be included in the formula for positioning the

Pointers can be used. This formula then reads like this:

PRINT # channel number, "P" ;CHR$(channel number)+CHR$(O)+CHR$(78)

For example, see our warehouse management program

the following structure:

PRINT#15, "P"+CHR$(3)+CHR$(231)+CHR$(3)+CHR$(1)

This now means that the pointer is set to the 999 record

should be, specifically to the first character.

However, before you can use the file, you must first use it for

the relative application must be prepared. This is done by

287

first the pointer in the command channel (15) is opened (see above), and
then this data record is described with the character 255 (CHR$(255)).

will. This character tells the operating system that this

There is a data record that already exists, but in which

nothing is saved yet. So in our example everyone will

999 records marked with this 255.

Now the data records can be written to this file -

of course no more than when opening the file

were specified. On the other hand, if you try to create a data set

write that is outside the permitted range

the computer displays the error message RECORD NOT PRESENT -

so this data set does not exist.

But now something about our program. After you run it through RUN

have started, the question appears as to whether the floppy disk device

is ready. This message will appear until you do so

Press the “J” key. You will then be asked whether you want a new one

want to use diskette. In this case, new doesn't just mean that

the disk may be unformatted, but also that no

file exists. But be careful, the disk will be in everyone

Case formatted. So don't use your program or yourData disk for this. When the process is finished, appears
the. main menu. Here you can now choose one of the 6 possible

Call functions.

If you want to design a data set, remember:

that the input must not be longer than in the DATA lines

(30-82) is set. These lines are structured in such a way that

First the name and then the length of the description are listed

will. Do you want a record that has already been entered again?

delete, go to the CHANGE routine and write as

The first character of the name WARENART is a spider monkey (®).

This sentence is therefore marked as deleted.

If you are asked in any subprogram for a

To enter the article number, you can do so by entering

288

"END" to return to the main or main menu.

Lines 11 to 14 represent today's VAT rate.

ME(1) and ME(2) are the two old rates of 6.5% and 13%. The

next two are the new rates of 7% and 14%. Will you

So when asked for the VAT rate, just enter it

a °~1° for 6.5%, a °2° for 13%, a °3° for 7% and a “4°

for 14%. The computer then calculates this from this

respective VAT rate.

289

However, there is one special feature that needs to be taken into account with this program.

Item numbers that range from 800 to 999 (999 is the largest

possible number), are not presented as an article but as

various expenses or income are evaluated. Here's how you can

At the same time, you can also add yours to the various articles

Monitor personal accounts, bank accounts, etc. Entering this
Accounts is done in the RECEIPT ENTRY subprogram. If

the first entry, i.e. the first “receipt”, more precisely

the calculation was a number larger than 799, so he expected

Computer accepts more inputs of this kind. That means you don't

can alternately enter items and invoices, but only

Each separately.

It is also important to ensure that when working with this

Program printer and floppy are always switched on. You have

but no printer, so you have to rewrite the program. You

You can see from the Print#4 commands in which lines there is output

on the printer.

If you have other branches or people with this program

It is advisable to support each branch or person

create a new diskette. Then you know about it at all times

Know your financial situation.

We hope that with the help of this program you will gain an insight into

data processing, and especially in data processing

relative files. It looks at first glance

more difficult than it is. With a little practice you will too

can quickly design such programs themselves.

290

4
“

10

CLR

15

20

30

ME(1)=1.065: ME(2)=1.13: ME(3)=1.07 :ME(4)=1.14

FOR I=1 TO 7: READ TD$(I),TD(I): NEXT I

DATA "1) ARTICLE NO. "3

32

DATA "2) TYPE OF GOODS :",20

34

DATA "3) NUMBER :",3

36

DATA "4) UNIT PRICE EK:",7

38

DATA "5) TOTAL PRICE EK:",8

40

DATA "6) UNIT PRICE Sales:",7

42

DATA "7) TOTAL PRICE Sales:",8

50

FOR I=1 TO 3: READ TI$(I),TI(I): NEXT I

96

58

60

70

76

78

80

DATA "1) ITEM NO. :"13

DATA "2) TYPE OF GOODS :",20

DATA "3) VAT GROUP :",1

FOR I=1 TO 4: READ TT$(I),TT(I): NEXT I

DATA "1) BRANCH NO. "4

DATA "2) DATE :",8

DATA "3) INVOICE NO. :",8

82

DATA "4) DOCUMENT NO. :",8

100

PRINT CHR$(147)

110

120

130

PRINT uni 5. 2.2.2.2. 2.2.2. 2.2.2.2 2. 2.2.2.2. 2.2 2 2.2. 2. 2. 2. 2.2.2.2 2 2 2 2.2.2.2. 2.2 202

PRINT "* FILE MANAGEMENT PROGRAM 1.0 eu,

PRINT and 2.5.2.2.2.2. 2.2.2. 2.2.2.2. 2.2.2.2. 2.2.2 2 2.2. 2 2 2 2. 2 2 2.2. 2 2 2. 2.2.2.2 2.2020

140

PRINT: PRINT

150

PRINT "DISKET DEVICE CONNECTED (Y/N)? ";

160

GET A$: IF A$="" THEN 160

170

IF A$<>"J" THEN 160

180

PRINT A$

190

OPEN 15,8,15,"I0": CLOSE 15

200

PRINT "CREATE NEW DATA DISK (Y/N)? ";

210

GET A$: IF A$="" THEN 210

220

IF A$<>"J" THEN 300

222

PRINT A$

230

OPEN 15,8,15,"N:DATA DISK,AH"

240

OPEN 1,8,3,"0:ARTDAT,L, "+CHR$(64)

250

PRINT#15, "P"+CHR$(3)+CHR$(231)+CHR$(3)+CHR$(1)

260

PRINT#1,CHR$(255);

291

270

RM=INT(167132/64)

280

CLOSE 1: CLOSE 15

300

PRINT CHR$(147)

310

PRINT "Mr. EEEKEN

320

PRINT "*FILE MANAGEMENT PROGRAM 1.0 x";

330

PRINT "8 RRR RIK EK RR KR RIK RRR RE RR KIM,

340

PRINT: PRINT

345

PRINT TAB(15);"MAIN MENU": PRINT: PRINT

350

PRINT "1) ENTER ITEM FILE": PRINT

355PRINT “ 2) CHANGE THE ARTICLE FILE": PRINT

360

PRINT " 3) ENTERING THE RECEIPTS": PRINT

365

PRINT " 4) PRINTING THE ITEM LIST": PRINT

370

PRINT "5) PRINTING THE EVALUATION": PRINT

375

PRINT “ 6) END OF PROGRAM": PRINT: PRINT

380

PRINT "PLEASE SELECT (1-6) : ";

390

GET A$: IF A$="" THEN 390

400

A=VAL(A$): IF A<1 OR A>6 THEN 390

410

PRINT A$

420

FOR I=1 TO 1000: NEXT

430

ON A GOTO 1000, 2000, 3000, 4000, 5000, 6000

1000

OPEN 15,8,15: OPEN 8,8,8,"0:ARTDAT"

1002

GOSUB

12000

1005

PRINT

CHR$ (147)

1010

PRINT

ie 2 2 2 2 22 2 2 2 2 2 2 2 2 22 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 To
'

1020

PRINT

"x FILE MANAGEMENT PROGRAM 1.0 “N;

1030

PRINT

ie 2 22 2 22 2 2 2 2 2 2 2 2 22 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 to
'

1040

PRINT:

PRINT

1050

PRINT

TAB(7); "ENTER ITEM FILE": PRINT: PRINT

1060

FOR I=1 TO 3

1065

TE$(I)=""

1070

PRINT TI$(I);

1080

INPUT TE$(I)

1090

PRINT

1092

IF TE$(1)="END" THEN 1200

1095

IF LEN(TE$(I))>TI(I) THEN 1065

1100

NEXT

1102

FOR I=4 TO 8: TE$(I)="": NEXT

292

1
7

i

1110

RN=VAL(TE$(1))

1120

IF RN<1 OR RN>999 THEN 1005

1130

GOSUB

10000

1140

GOSUB

10070

1150

GOTO 1005

1200

CLOSE 8: CLOSE 15

1220

GOTO 300

2000

OPEN 15,8, 15:

OPEN 8,8,8,"0:ARTDAT"

2002

GOSUB

12000

2005

PRINT

CHR$ (147)

2010

PRINT

WHR 2.2 2 2.2 2 2 2 2 2 2 2 22 2 2 2 2 2 2 2 2 2 2 2 2 2.2 2 2 2 2 2 REM,

2020

PRINT

wk FILE MANAGEMENT PROGRAM 1.0 “N

2030

PRINT

IB 2 2 2 2 2 2 2 2 2 2 2 2.2.2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 22 2 2 202

2040

PRINT:

PRINT

2050

PRINT

TAB(8) ;"CHANGING THE ARTICLE FILE": PRINT: PRINT

2055

2060

PRINT

TI$(1);

2070

INPUT

TE$(1)

2080

PRINT

2090

IF TE$(1)="END"

THEN 2400

2100

IF LEN(TE$(1))>TI(1) THEN 2055

2110

RN=VAL(TE$(1))

2120

IF RN<1 OR RN>999 THEN 2005

2130

GOSUB

10000

2140

GOSUB

10030

2142

IF VAL(TE$(1))<>RN THEN 2005

2150

PRINT

CHR$ (147)

2160

PRINT

HKKKKKKKEKKKKKKEKEKEKKKKKEKKKEKKKEKKKKEKKKEEKEEKN,

2170

PRINT

x

FILE MANAGEMENT PROGRAM 1.0 ;

gu

2180

PRINT

uu.2.2. 2.2. 2.2.2 2.2 2 2 2 2.2. 2 2 2.2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2. 2.2 2.2.2.2 2.0

2190

PRINT:

PRINT

2200

PRINT

TAB(8)

; "CHANGE ITEM FILE":

PRINT: PRINT

2210

FOR I=

1 TO 3

2220

PRINT

TI$(I);"? ";

2230

PRINT

TE$(I)

2240

PRINT

CHR$(145);

2250

PRINT

TI$(I);

293

2260

INPUT TE$(I)

2270

PRINT

2280

IF TE$(1)="END" THEN 2400

2290

IF LEN(TE$(I))>TI(I) THEN 2250

2300

NEXT

2310

RN=VAL(TE$ (1) )

2320

IF RN<1 OR RN>999 THEN 2005

2330

GOSUB 10000

2340

GOSUB 10070

2400

CLOSE 4: CLOSE 8: CLOSE 15

2430

GOTO 300

2530

GOTO 3005

3000

OPEN 15,8,15: OPEN 8,8,8, "0:ARTDAT"

3002

GOSUB 12000

3005

PRINT CHR$(147)

3010

PRINT E22 2 2 2 2.22 2 22.2 2.2 2.2.2 2.22 22.2.2 2.2.2.2 2 2.2 2. 2 2.2. 2. 2.2.2 2022

3020

PRINT "*FILE MANAGEMENT PROGRAM 1.0 x".

3030

PRINT BE 2 2 2 2 2 222 2 22 2.2 2 2 2 2 2 2 2 2 2 2.2 2.2 22 2.2 2 2 2.2 2 2.2.2 200

3040

PRINT: PRINT

3050

PRINT TAB(7): "ENTERING THE RECEIPTS": PRINT: PRINT

3060

TE$(1)=""

3070

PRINT TE$(1);

3080

INPUT TE$(1)

3090

PRINT

3100

IF TE$(1)="END" THEN 3700

3110

IF LEN(TE$(1))>TI(1) THEN 3060

3120

( TE$ (1) )
RN=VAL

3130

IF RN<1 OR RN>999 THEN 3005

3132

IF DW=1 AND RN>799 THEN 3005

3134

IF DW=2 AND RN<800 THEN 3000

3140

GOSUB 10000

3150

GOSUB 10030

3152

IF VAL(TE$(1))<>RN THEN 3005

3154

IF LEFT$(TE$(2),1)="@" THEN 3005

3160

PRINT CHR$(147)

3170

PRINT WKKKKKKKKEKKEKKKEKKEKKEKKKKKKEKKKKKKEKKKEKEKKKKKKEKEKN

3180

PRINT "* FILE MANAGEMENT PROGRAM 1.0 xu.

294

3290 PRINT E22 2 2 2 2 2 2 22 22 2 2.2 2 2.2 2 2 2 2 2.2 2 2.2 2.2.2.2 2 2 2 2.2 2.2.2 2002
3200 PRINT: PRINT |
3210 PRINT TAB(7);"ENTERING THE RECEIPTS": PRINT: PRINT

3212 FOR I=1 TO 5

3214 TH$(I)=TE$(I+3)

3216 NEXT

3220 FOR I=1 TO 2

3230 PRINT TD$(I);"? ";TE$(I)

3235 TX$(I)=TE$(I)

3240 PRINT

7 3250 NEXT

3255 TX$(3)=TE$(3)

3260 PRINT TD$(3);

3270 INPUT TX$(4)

3275 TE$(4)=TX$(4) .

- 3280 PRINTS

3285 IF VAL(TE$(4))<-999 OR VAL(TE$(4))>999 THEN 3260
3287 IF LEN(TE$(4))>TD(3) THEN 3260

3290 PRINT TD$(4);

3295 TE$(5)=""

3300 INPUT TX$(5)

3305 TE$(5)=TX$(5)

3310 PRINT

3315 IF LEN(TE$(5))>TD(4) THEN 3290

3320 PRINT TD$(6);

3325 TE$(7)=""

3330 INPUT TX$(7)

3335 TE$(7)=TX$(7)

3340 PRINT

3345 IF LEN(TE$(7))>TD(6) THEN 3320

3350 TH=VAL(TE$(5)) *VAL(TES$ (4) )

3351 TX$(6)=STR$(TH)

( TH$(3) )
3352 TH=TH+VAL

3355 TE$(6)=STR$(TH)3360 TH=VAL(TE$(7))*VAL(TE$(4))

3361 TX$(8)=STR$(TH)

3362 TH=TH+VAL (TH$(5) )

295

3365

TE$(8)=STR$(TH)

3370

TH=VAL(TE$(5))

3371

IF VAL(TE$(4))<1 THEN TH=-TH

3372

TH=TH+VAL(TH$(2))

3375

TE$(5)=STR$(TH)

3380

TH=VAL(TE$(7))

3381

IF VAL(TE$(4))<1 THEN TH=-TH

3382

TH=TH+VAL(TH$(4))

3385

TE$(7)=STR$(TH)

3390

TH=VAL(TE$ (4) )

3392

TH=TH+VAL
( TH$(1) }

3395

TE$ (4) =STR$(TH)

3460

RN=VAL (TE$(1) )

3470

GOSUB 10000

3480

GOSUB 10070

3485

3490

3500

3510

FOR I=1 TO 8: TE$(I)=TX$(I): TX$(I)="":

NEXT

IF DW=0 AND VAL(TE$(1))<800 THEN DW=1:

GOSUB 5360:

GOTO 3510

IF DW=O AND VAL(TE$(1))>799 THEN DW=2:

GOSUB 7005:

GOTO 3520

IF DW=1 THEN GOSUB 5520: GOTO 3530

3520

IF DW=2 THEN GOSUB 7120

3530

GOTO 3005

3700

IF DW=1 THEN GOSUB 5590: GOTO 3800

3710

IF DW=2 THEN GOSUB 7190

3800

DW=0: DV=O

3999

4000

CLOSE 4: CLOSE 8: CLOSE 15: GOTO 300

OPEN 15,8,15: OPEN 8,8,8, "0O:ARTDAT"

4002

GOSUB 12000

4005

PRINT CHR$(147)

4010

4020

4030

PRINT Bu 5 5.5. 2.2.2.2. 2.2.2.2. 2.2.2.2. 2.2.2. 2.2.2.2 2.2. 2. 2 2 2.2.2.2 2.2.2.2 2 2 2.222

PRINT "* DATEIVERWALTUNGS PROGRAMM 1.0 x"

PRINT Bisieieä. 5.5. 5.5.2.2. 2.2.2. 2.2.2. 2.2.2. 2.2. 2.2.2.2 2.2.2.2 2.2.2.2 2.2 2 2 2.2. 2 202

4040

PRINT: PRINT

4050

PRINT TAB(8)

; "DRUCKEN DER ARTIKELLISTE": PRINT: PRINT

4060

FOR I=1 TO 2

4070

4080

PRINT TT$(I);

4090

INPUT TE$(I)

296

4100 PRINT

4110 IF TE$(1)="ENDE" THEN 4999

4120 IF LEN(TE$(I))>TT(I) THEN 4070

4130 NEXT

4135 TE$(3)="": TE$(4)=""

4140 IF DV=1 THEN RETURN

4200 PRINT CHR$(147)

4210 PRINT uu.2.2. 2.2.2.2. 2.2 2.2.2 2 2.2.2 22.2.2 2.2 2 2 2 2 2 2 2. 22 2 2 2 2.2 2 2.2 2. 2000

4220 PRINT "* DATEIVERWALTUNGS PROGRAMM 1.0 x“

4230 PRINT un.2. 2.2 2.2.2. 2.2.2.2 2.2 2.2.2.2 2.2 2 2 2.2 2 2.2.2 2.2 2. 2.2 2.2.2.2. 2.2.2.2 2020

4240 PRINT: PRINT

4250 PRINT TAB(8); "DRUCKEN DER ARTIKELLISTE": PRINT: PRINT

4260 PRINT "IST DER DRUCKER EINGESCHALTET (J/N)? ";

4270 GET A$: IF A$="" THEN 4270

4280 IF A$<>"J" THEN 4270

4290 PRINT A$

4300 OPEN 4,4

4310 PRINT#4, "FILIALE NR. ";TE$(1);

4330 PRINT#4,CHR$(16)

; "20"; "DATUM ";TE$(2);

4340 PRINT#4,CHR$(16);

"40"; "RECHNUNGS NR. ";TE$(3);

4345 PRINT#4,CHR$(16);"60";"BELEG NR. ";TE$(4)

4350 PRINT#4

4360 PRINT#4, "ARTIKEL NR.";

"20"; "WARENART";
4375 PRINT#4,CHR$(16);

4385 PRINT#4,CHR$(16);

"60"; "MWST GRUPPE"

4390 PRINT#4, "----------- "

4405 PRINT#4, CHR$(16); "20"; "-------- ur

4415 PRINT#4,CHR$

(16) ; "60" ;"----------- "

4420 FOR RN=1 TO 999

4430 GOSUB 10000

4440 GOSUB 10030

4442 IF VAL(TE$(1))<>RN THEN 4480

4444 IF LEFT$(TE$(2),1)="©" THEN 4480

4450 PRINT#4,TE$(1);

4460 PRINT#4,CHR$(16);"20";TE$(2);

4470 PRINT#4, CHR$(16) ; "60"; TE$(3)

4480 NEXT

297

4490

FOR I=1 TO 3

4492

PRINT#4 |

4494

NEXT

4999

CLOSE 4:

CLOSE 8: CLOSE 15: GOTO 300

5000

OPEN 15,8,15:

OPEN 8,8,8,"0:ARTDAT"

9002

GOSUB 12000

5005

PRINT CHR$( 147)

5010

PRINT "rArHHR II ITO IO IOI IORI RII IR EM

9020

PRINT "* DATEIVERWALTUNGS PROGRAMM 1.0 “N.

5030

PRINT "rar RRR TEEN

5040

PRINT: PRINT

9050

PRINT TAB(9); "DRUCKEN DER AUSWERTUNG": PRINT: PRINT

5060

FOR I=1 TO 4

5070

TE$(I)=""

5080

PRINT TT$(I);

9090

INPUT TE$(I) |

5100

PRINT

9110

IF TE$(1)="ENDE" THEN 5999

5120

IF LEN(TE$(I))>TT(I) THEN 5070

5125

IF DV=0 AND I=2 THEN I=4 -

5130

NEXT

5140

IF DV=1 THEN RETURN

9200

PRINT CHR$(147)

5210

5220

5230

5240

9250

PRINT "Rn RR III TORII IIR EIEN

PRINT "* DATEIVERWALTUNGS PROGRAMM 1.0 “N.

PRINT "#4 RRR RRR EUERERR ERK |

PRINT: PRINT | |

PRINT TAB(9); "DRUCKEN DER AUSWERTUNG": PRINT: PRINT

5252

SA=0: SE=O: SG=0: SF=0: SH=0O

9255

FOR I=1 TO 4: M1(I)=O: M2(I)=O: NEXT

5260

PRINT "IST DER DRUCKER EINGESCHALTET (J/N)? ";

5270

GET A$: IF A$="" THEN 5270

5280

IF A$<>"J" THEN 5270

5290

PRINT A$

3300

OPEN 4,4

5310

PRINT#4, "FILIALE NR. ";TE$(1);

5330

PRINT#4,CHR$(16)

; "20"; "DATUM ";TE$(2);

298

5335

IF DV=0 THEN PRINT#4: GOTO 5350

5340

PRINT#4,CHR$(16);

"40"; "RECHNUNGS NR.

";TE$(3);

5345

PRINT#4,CHR$(16);"60";

"BELEG NR.

";TE$(4)

5350

PRINT#4

5355

IF DV=1 THEN RETURN

5360

PRINT#4, "ART. NR.

5370

PRINT#4, CHR$(16) ;

ee 10" . "ANZ . ee ;

9375

PRINT#4, CHR$(16) ;

"15"; “WARENART" ;

5380

PRINT#4, CHR$(16) ;

"40"; "EINZ.

EK";

5390

5400

PRINT#4, CHR$(16) ;
PRINT#4
, CHR$(16) ;

"50"; "GESA.

EK";

"60"; "EINZ.

VK":

5410

PRINT#4, CHR$(16) ;

"70"; "GESA.

VK"

5420

PRINT#4,"

5425

PRINT#4
, CHR$(16);

.10r;°

5430

PRINT#4, CHR$(16) ;

5440

PRINT#4, CHR$(16);

.40*

9450

PRINT#4, CHR$(16) ;

"50%;

5460

PRINT#4, CHR$(16);

.g0r

5470

PRINT#4, CHR$(16);

.70*

5475

IF DV=1 THE RETUREN

5480

FOR RN=1 TO 799

5490

GOSUB 10000

5500

GOSUB 10030

5510

5515

IF VAL(TE$(1))<>RN THIN
IF LIFT$(TE$(2),1

)=" © u

5580

THEN 5580

5520

PRINT#4, THE$1);

5525

PRINT#4 , CHR$(16);"10";TE$(4);

5530

PRINT#4, CHR$(16);"15";TE$(2) ;

5540

PRINT#4, CHR$(16);"40";TE$(5) ;

5550

PRINT#4,CHR$(16);"50";TE$(6);

5560

, "60" ;TE$(7) ;
PRINT#4,CHR$(16)

5570

, "70" ;TE$(8)
PRINT#4,CHR$(16)

5571

SA=SA+VAL(TE$4))

5572

SE=SE+VAL(TE$5))

5573

(TE$ (6)
SG=SG+VAL

5574

SF=SF+VAL(TE$7))

5575

(TE$ (8)
SH=SH+VAL

299

5576 IF VAL(TE$(3)<1 OR VAL(TE$(3)>4 THEN 5579

) *ME(VAL(TE$(3) ) )
5577 M1(VAL(TE$(3) )=M1(VAL(TE$(3))+(VAL(TE$ (6)

-VAL(TE$(6)))

5578 M2(VAL(TE$(3))=M2(VAL(TE$(3))+(VAL(TE$8(8)-VAL(TE$)/ME(8)/ME(8)

VAL(TE$(3))))

5579 IF DV=1 THEN RETUREN

5580 NEXT

5590 PRINT#4, "-------- ";

5600 PRINT#4,CHR$(16);"10";"----";

5605 PRINT#4,CHR$(16);"15";""------- nG

5610 PRINT#4,CHR$(16);"40";"-------- "4

5620 PRINT#4, CHR$(16);"50";""-------- "

5630 PRINT#4,CHR$(16)

;"60" ;"-------- ";

5640 PRINT#4, CHR$(16);"70";"-------- " "

5650 PRINT#4, "SUMMEN: ";

5660 PRINT#4, CHR$(16);"09";SA;

5670 PRINT#4, CHR$(16);"39";SE;

5680 PRINT#4, CHR$(16);"49";SG;

5690 PRINT#4, CHR$(16);"59";SF;

5700 PRINT#4,CHR$(16);"69";SH;SH;

5710 FOR I=1 TO 3: PRINT#4: NEXT

9720 PRINT#4,"MWST. EK 6.5 % = ";M1(1);

9725 PRINT#4,CHR$(16);"40";"MWST. EK 7% = ";M1(3

59730 PRINT#4,"MWST. EK 13.0 % = ";M1(2);

9735 PRINT#4, CHR$(16);"40

9740 PRINT#4,"MWST. VK 6.5 % = ";M2(1);

9745 PRINT#4,CHR$(16);"40";"MWST. VK 7% = ";M2(3)

9750 PRINT#4, "MWST. VK 13.0 % = ";M2(2);

9755 PRINT#4,CHR$(16);"40";"MWST. VK 14 % = ";M2(4)

9756 FOR I=1 TO 3: PRINT#4: NEXT

2760 PRIND

9770 PRINT#4,"GESAMT VK. = ";SH-M2(1)-M2(2)-M2(3)-M2(4)

59775 FOR I=1 TO 3: PRINT#4: NEXT

9777 IF DV=1 THEN RETUREN

9780 GOSUB 7000

9999 CLOSE 4: CLOSE 8: CLOSE 15: GOD 300

6000 CLOSE 4: CLOSE 8: CLOSE 15

300

6030

PRINT CHR$(147)

6040

END

7000

S$1=0: S2=0

7005

PRINT#4, "ART. NR.";

7010

"15"; "ART";
PRINT#4,CHR$(16);

7020

;"40" ; "USGABEN";
PRINT#4,CHR$(16)

7030

PRINT#4,CHR$(16)
, "60" ; "EINNAHMEN" ;

7040

PRINT#4,"-------- ";

7050

PRINT#4,CHR$(16) ;"15";"---";

7060

PRINT#4, CHR$(16); "40"; "--------- " G

7070

PRINT#4

, CHR$(16) ; "60"; “----------- "i

7075

IF DV=1 THE RETUREN

7080

FOR RN=800 TO

7090

GOSUB 10000

7100

GOSUB 10030

710

7120

7130

7140

7150

IF VAL(TE$(1))<>RN THEN 7180

PRINT#4, THE$1);
PRINT#4, CHR$(16); "15"; TE$2) ;
PRINT#4,CHR$(16)
, "40"; TE$5);
(16); "60"; TE$7)
PRINT#4,CHR$

7160

S1=S1+VAL(TE$(5))

7170

7171

7172

S2=S2+VAL(TE$7))
IF VAL(TE$(3))<1 OR VAL(TE$)>4 THEN 7175
M2(VAL(TE$(3))=M2(VAL(TE$3))+(VAL(TE$7)-VAL(TE$7))/ME(7)

VAL(TE$(3))))
M1(VAL(TE$(3))=M1(VAL(TE$3))+(VAL(TE$5)-VAL(TE$S(5))/ME(5)/ME(5)

7173

VAL(TE$(3))))

7175

IF DV=1 THE RETUREN

7180

NOT

7190

PRINT#4, "-------- "|

7200

7210

7220

PRINT#4,CHR$(16) ;"15";"---";

PRINT#4,CHR$
PRINT#4, CHR$(16) ; "60" ;"--------- " "

(16) ; "40" ;"--------- " "

7230

PRINT#4, "SUMMEN: ";

7240

7250

7260

PRINT#4, CHR$(16);"39";S1;
PRINT#4, CHR$(16);"59";S2
FOR I=1 TO 3: PRINT#4: NEXT

301

7270 PRINT#4,"MWST. EK 6.5 % = ";M1(1);

7280 PRINT#4,CHR$(16);"40";"MWST. EK 7% = ";M1(3)

7290 PRINT#4, "MWST. EK 13.0 % = ";M1(2);

7300 PRINT#4,CHR$(16);"40";"MWST. EK 14 % = ";M1(4)

7310 PRINT#4, "MWST. VK 6.5 % = ";M2(1);

7320 PRINT#4,CHR$(16);"40";"MWST. VK 7% = ";M2(3)

7330 PRINT#4, "MWST. VK 13.0 % = ";M2(2);

7340 PRINT#4,CHR$(16);"40";"MWST. VK 14 % = ",M2(4)

7350 FOR I=1 TO 3: PRINT#4: NEXT

7360 PRINT#4, "USGABEN = ";S1-M1(1)-M1(2)-M1(3)-M1(4)

7370 PRINT#4, "AINNAHMEN " ";S2-M2(1)-M2(2)-M2(3)-M2(4)

7380 FOR I=1 TO 3: PRINT#4: NEXT

7999 RETURN

8000 PRINT CHR$(147)

8010 PRINT "“KRRKKKKKKKKKKKKKKKKeACKKKKKKKKhaK .

hall,

8020 PRINT “* DETEIVERVILATION PROGRAMM 1.0 x"

?

8030 PRINT Bu. 5. 5.5.2.2. 2.2 2.2.2.2. 2.2.2. 2.2.2. 2. 2.2.2.2. 2. 2.2

8040 PRINT: PRINT

8050 PRINT TAB(7); "EINGEBEN DO CHASSENCETEL": PRINT: PRINT

8060 SA=0: SE=O: SG=0: SF=0: SH=0: S1=0: S2=0

8070 FOR I=1 TO

8072 M1(1I)=0

8074 M2(I)=O

8076 NEXT

8080 PRINT "ISTD DRUCKER EINGESCHALD (J/N)? "-

8090 GET A$: IF A$=" THEN 8090

8100 IF A$>"J" THEN 8090

8110 PRINT A$8120 OPEN 4.4

8130 RETURN

8500 PRINT CHR$(147)

8510 PRINT NERRRRRCHER CARRR 2.2.2. 2.2 2.2 2.2.2.2.2 2 2 2 2 2 2 2 2 2 2 2 202

8520 PRINT "* DATEIVERVILATION PROGRAMM 1.0 piece.

8530 PRINT no 5.5.5.5. 5.2.2. 2.2.2.2. 2.2.2.2. 2.2.2.2. 2.2.2 2.2.2 2 2 2 2 2 2 2 2 20 202

8540 PRINT: PRINT

8550 PRINT TAB(7); "EINGEBEN DO CHASSENCETEL": PRINT: PRINT

8560 GOSUB 5060

302

8570 GOSUB 5310

8580 RETURN

100000

HB=INT(RN/256): LB=RN-HB*256

10010

PRINT#15, "P"+CHR$ (8) +CHR$ (LB) +CHR$ (HB) +CHR$ (1)

10015

GOSUB 12000

10020

RETURN

10030

INPUT#8 , THE$)

$(8)

10060

RETURN

10070

TE$=TE$ (1)+CHR$(13)+TE$(2)+CHR$(13)+TE$(3)+CHR$(13)+TE$(4)+

CHR$ (13)

10072

TE$S=TE$+TE (5 )+CHR$(13)+TE$(6)+CHR$(13)+TE$(7)+CHR$(13)+TE$

(8)

10080

PRINT#8, TE$8

10110

RETURN

12000

INPUT#15,X,X$,Y$.2$.2

12010

IF X=0 OR X=50 THEN RETUREN

12020

PRINT "FEHLER: ";X,X$;Y$;Z$

12030

CLOY 8: CLOSE 15

12040

FOR I=1 TO 6000: NEXT

12060

GOD 100

Many Spat with this Program

303

2

Dissees Art of Zugriffs on Dath

questionable. Zwar is also very very complicated and

depending on, but also only very interesting Aspects. What

lends itself with the Directive all of the ?

1.) Defroce on Data - Random data

Dissees Methods had some of

to you, or to have the Nighty, and simples with the

relative Dateiveness.

2.) Defross on a Subsection of Survey

Using this Fifth Stage Ihnen Possib

the See bisher still not you, and the two

significantly not yet noting. More there’s still bacon.

1. Random data

In the Support to the sequencing and relative Data, is
here's a 256 Bytes long - on a disketter

go a total of 664 should Bloods. Nevertheless can you
little Datassis absorbs. It’s pespitable thinking,

there are in a Block overall 4 Datass a’ 64 Byte.
spearer. If you just have dare eighteen eight.
a slice of Blocks to the Satz, the See, the See
Damnly displaced want. If you might want a

sequenced Data Offs
the teenaged dates have been discussed. Overall.
See so 3 Data: |

1.) Sequential data for the Zeiger

2.) Command data

3.) Date-Datei to direct Speaking

304

D
A
N
I
I

10 OPEN 4.8.4,"CBM 64 DATEI,W": REM SEQUENT. DETEI

20 OPEN

30 OPEN

40 TE$="DATE ​​BECER GMBH"

50 PRINT#5,TE$;";1: REM TEXT, RECORD#

60 T=1: S=1: REM TRACK=1, SECTOR=1

70 PRINT#15,"B-A:";0,T,S: REM DRIVE, TRACK, SECTOR

80 IN PUT

90 IF ER=65 THEN T=TR: S=BL: GOTO 70

100 PRIND

110 PRINT#4,T;";S";S

120 CLOSE 5

130 CLOSE 15

140 CLOSE 4

150 END

What do this Programming ? At least the 3 necessary
Data bossed, then defining a Text, the direct
absorbed should be. Dieer Tex
Tuesday. Now it's Betry system on this
Looking for a freebolt Block on the diskeeping. The Look for
be Track 1, Sector 1, so the Start of the diskeeping. Dazu we are
‚Zeil 70 beds. "B-A:" Horse BLOCK-ALLOCATE or surpassed
even as BLOCK-SURE. It will thus
nonetheless, yet not at all days, bzw. anywhere
freaking. In order
muB of the Commandance. Have the Firecode would be
65, so prefer it, that this Block not free is and the
Computer runs with its Search fort. Had he jeal a stranger
Block fucking, so he screws the Tex
bearing us to, with the fussed blockades, on the
Disketes. Danach will still
Datei absorbs, the sacrifice of the sake of how we will be.
Luckily sperrge the Betry system this Spur automatically,
that it's not inappropriately overseeing. Die Data
be slotted and the programme is ended.

305

lo
A

:
hang
_
hang

:
4
7
.
4

hang

Genauso interesting is the Wirelands of the data:

10 OPEN 4.8.4,"CBM 64 DATE"

20 OPEN 15.8, 15

30 OPEN 5.8,5,"#"

40 INPUD50 PRINT#15, “B-R:";5,0,T,S

60 INPUT#5,TE$,RE

70 PRINT#15,"B-F:";0,T,S

80 CLOSE 5

90 CLOSE 4

100 PRINT#15,"S:CBM 64 FILE"

110 CLOSE 15

And also a short explanation about this program: After the

files have been opened, the address of the block is entered,

in which the actual data, in our case the text,

are saved. After this is done, this block

released again by the PBLOCK-FREE command. This is allowed

Of course this only happens if the block is deleted

can. Afterwards the sequential and data files are restored

closed, the sequential file was deleted again and also the

Command channel closed again.

2. Direct disk access

This access, as its name suggests, allows direct

Access to any TRACKS and SECTORS, i.e. reading from

Information directly from disk without opening files first. So

For example, you can easily read the table of contents without

having to use the LOAD "$",8 command and thus a program,

perhaps destroying what is in memory. Or you can

change a program on disk without having to load it -

Even destroyed programs can be restored under certain circumstances

be repaired.

306

But these accesses are so dangerous that we...

programmers would like to warn against using them without precise knowledge about them

the structure of the diskette, the directory, BAM or the program

apply yourself. Entire files and

Diskette contents are lost. So read about that too

Read the manual for the Commodore Floppy 1541 carefully. You

will understand that we are not at this point

in detail about the entire structure of the directory, BAM etc.

can enter. That would go beyond the scope of this book.

But if you like to experiment with these possibilities

If you want to, we recommend working with a test disk -

then at least no “vital” data can be lost

| go.

To clarify the commands used, here is a list

of the commands that can access a block directly:

Application name

BLOCK READING "B-R:";Channel;Drive;Track;Block

BLOCK WRITING "B-W:",channel; Drive; track; block

track; block
BLOCK OCCUPY "B-A:";:drive;

track; block
BLOCK-RELEASE "B-F:";drive;

BUFFER POINTER "B-P:";Channel; position

These are the most important commands for direct access. Allen

What is common is that they go directly to the floppy controller

access. So you have options that you can choose from with one

will never have normal access.

307

8.6 SAVING AN IMPROPERLY CLOSED FILE

Admittedly, it doesn't happen often. But when it happens, it is

the associated hassle and workload is even greater.

What is “it”? |

By "it" we mean the following process:

You have put a lot of effort into organizing your record collection

and you would like to find specific titles quickly

immortalize on a diskette.

The most common way to do this is simply:

in that you have the record name and what is on it

Tracks on one or more sequential files

saved.

So you are well on your way to getting the data you want

to enter on the keyboard and are almost finished (500 titles

you have already recorded), the fuse will blow out

or your wife (or husband) trips over the power plug.

Never mind, just think about the data you have entered so far

I'm sure it's on the disk.

You go back to your program and change the OPEN command
for your sequential file for APPEND (A instead of W)

and want to continue.

The shock wears off, the error light on the floppy disk station
lights up.

A subsequent query of the error channel brings up this
Puzzle solution: WRITE FILE OPEN.

If you now look at the table of contents of the diskette
If you look at it, you will find it in front of the type label
File a °*’. |

This means that the file is still open for writing,
i.e. no CLOSE occurred after a write access, and
That's exactly what happened with the power outage. The same

Incidentally, this also happens when you remove the diskette

308

a

et,

1

N
|
Sg

.
m

a
d
A

3

e
L

+

.
r
U

Remove the drive without first issuing a CLOSE

have.

With ordinary methods you no longer have a chance

to access your data. It's a shame about the record collection.Since this has happened to us often enough, we have...

Not made a virtue and developed a small program,

which makes it possible to at least remove such disturbed files

to make it readable again.

If you look at it again parallel to what follows

If you read Section 8.1, you will also understand

what exactly is done in this program.

Of course we will be back every step of the program

explain exactly.

First, the variables used are introduced to you:

E Position of filename within the directory sector

S Sector number for the direct commands

T Track number for the direct commands

TY file type (derived from T$)

X running variable to determine the actual

Filenames

A$ Interim variable to build S$

F$ desired file name

S$ full sector

T$ file type

x$ Read from the directory, expanded to 16 characters

Filename, later real filename |

x1$ duplicate of X$

309

n
a
r
U

I
A

L
A

a
t

n
a

4

'
2

i
L

Now this

Program step by step:

70

Opening a data channel for direct access

80

Open the command channel

100

Enter the file name to be treated

110

Assignment of track and sector numbers.

This starts with the Floppy VC-1541 and the CBM4040

Table of contents on track 18, sector 1.

With the floppy CBM8050, which you can use with existing

Can also handle the IEC bus, it is on

Track 39. In this case this line must

be changed accordingly.

120

In this line the specified by T and S

Sector from the floppy disk (Drive 0) first into the
floppy internal buffer read.

150

The buffer contents are brought to S$ via A$.

160

A sector can hold eight directory entries.

This is initially searched for the desired file name

scanned before reading the next sector

will.

170

Here the file name is isolated from the entry,

namely in the full length of 16 bytes, and after

x$ brought.

200-210

The end criterion for the real length of the file name

is CHR$(160) (shifted space). After this the

File name searched and then in the real length

brought back to X$.

220-230

If the name you were looking for was found, it goes to 300

continue, otherwise the rest will be in this one

Entries contained in the sector are examined.

240-260

At the beginning of each sector there is the track and

Sector address of the following block, if there is one.

If there is none, i.e. the directory is over, so

the track number is =O.

310

300-310 The file type (this is the byte from which the file type

generated for the screen) is isolated and

brought to T$, or as a numerical value to T.

320 T=O indicates an empty entry in the directory.

360 The bit that is set here is the author

of all the evil. This bit indicates that

whether a file is open for writing or not.

This bit also becomes the °*" for the screen

derived.

370 Now the entire sector is assigned the identifier for one

closed file reassembled.

390-410 Now the buffer pointer is in the floppy again

reset, the sector brought into the buffer and

the buffer contents are written back to the diskette.

420-490 These lines are intended as a reminder

serve as to how to proceed.

Using the program is quite simple:

You load the program, insert the diskette to be treated

into the drive (for double drives it must be drive O),

start it and enter the file name to be treated.
If the file is on the diskette, you can

expect a successful outcome of the campaign.

However, there is one limitation:

Unfortunately, this procedure is not possible for relative files

applicable because their structure differs from that of the other file types

completely different. Organizing relative files can

can only be reconstructed with much greater effort,

whereby intimate knowledge of their structure is essential

are prerequisites.

So now that you have saved your file, you should

Read sentence by sentence and each one belonging to this file

311

Transfer entry to a new file.

This is necessary because the data is saved

are, but the logical end can no longer be recognized

can, i.e. after your data there may be more

appear that no longer have anything to do with your file.

At this point you should cancel the process and theBe sure to close the new file and the defective file

delete.

Only now can you feel confident about recording yours

Record collection continue.

We hope you find this program useful

To have provided the tool you need

Hopefully you won't have to use it too often.

10 print chr$(147);"

20 print chr$(5);

70 open 2,8,2,"#":rem direct access

80 open 15,8,15:rem command channel

90 print:print

100 input “filename ";f$:print:print

110 t=18:s=1:rem 1541 directory ** t=39 at cbm8050

120 print#15,"u1l 2 O"t;s:rem read

130 s$="":rem variable for read

140 : :rem sector

150 for i=1 to 255:get#2,a$:s$=s$+left$(a$+chr$(0),1):next

160 for i=O to 7:rem 8 entries

170 x$=mid$(s$,i*32+6,
16) :x1$=x$

Isolate 180 rem filenames

190x=1 |

200 if mid$(x$,x,1)<>chr$(160) then x=x+1:if x<17 then 200

210 x$=left$(x$,x-1)

312

220 if x$=f$ then e=i:goto 300

230 next i

240 t=asc(s$):s=asc(mid$(s$,2,1))

250 rem read next sector

260 if t<>O then 120

270 rem end
280 print"file "f$" not on this disk"

290 close 2:close 15:end

300 t$=mid$(s$,e*32+3)

310 ty=asc(t$) and 15

320 if ty=O then next i:goto 240

330 if ty<>4 then 340 |

335 print "relative files cannot be processed"

337 goto 290

340 ty$="delsegprgusrrel"

350 print"file "x1$" “mid$(ty$,ty*3+1,3):print

360 t$=chr$(asc(t$) or 128)

370 s$=left$(s$, e*32+1)+t$+mid$(s$,e*32+3)

380 rem * delete and write back
390 print#15,"b-p 2 O"t;s

400 print#2,s$;

410 print#15,"u2 2 O"t;s

420 close 2:close 15

425 print"File data can now be read."

430 print "after copying the valid data"

440 print "the following commands should be given"

450 print"become "print

460 print"open 15.8, 15" |

470 print chr$(17)"print#15,"chr$(34)"s:"f$chr$(34)

480 print chr$(17)"print#15,"chr$(34)"vO"chr$(34)

490 print chr$(17)"close 15"

500 end

313

8.7 - THE BLOCK CHASER -

Haven't you always had the desire to have one?
Building your disk and organizing each one
View files? Do you want to know how long a program

is accurate? You might want to take a look at those
Examine stored data to determine why
own file management always with a "String too long
Error"? That and a few other functions are
with

possible with the block tracker.

This

The program is largely modular. So leave it

Additional functions can be added without much effort

additionally

implement.

Hx$="Q1 234567 SSRABCDEF": DIMKS¢ 75>: FOR
166I=1T075: READS? 19° NEXT
116 REM tekstas
tesa desea bea teak ake ab oo abe ok ak
126
136 REM eelalskaetsspshaksskastelelstaisiniettohtnksttfk
146

REM BLOCK TRACKING

136

166

178

ise
138
za

210

PRINT CHR$¢147>
PRINT" «1 DIRECTORY "
PRINT"“2> BLOCK CONCANATION "
PRINT"<3> BLOCK OUTPUT ASC"
PRINT" €4> BLOCK ISSUE TOKENS"
PRINT" <S> ERROR CHANNEL"
PRINT: PRINT "MAKE YOUR CHOICE"
GOSUB 396
IF A <1 O0R A > 5 THEN GOTO 21

260
236 ON A GOSUB 256.456,.546,716.8e8R
246 GOTO 146
256 REM DIRECTORY eiseeioiinokinksokaoiie
266 T=18 : S=1
era OPEN1.8.15 : OPEN2.8.2,"#"
258 PRINTCHR$<C147>; "ENTRY TR

SE66

r
a

S
P

N
n

f

~

)
u

“

|
'

,
a

N

i
a

N
o

a

4

236 PRINT#1."U1:"2:9;1:5
308
316

GOSUB 1838 : T = TK: S$ = Sx
FOR I = @TO?
PRINT#1
."B-P: "2; IX32+2
GET#2 .AS: IFAS="" THEHAS=CHRS$68>
IFASCCAS> < 128 THEN 414
GOSUB143¢
FOR U = 1T016
GET#2 .AS: IFAS=""THENAS="— "
IF ASCCAS> =166 THENAS=" "
NS = N + AS : NEXT U

328

330

348
358

368
3°@

386

398

314

31

NEXT U

Fea

PRINT NE:N$=""

Se

NEXT I

sia

PRINT: PRINT" PLEASE ONE BUTTON OR FO

LEG BLOCK WITH “F7”

bes GOSUB 394 : IF AS <> "F" THEN CLOSE!

‘CLOSES: RETURN

268) T=TH: S=SeH :IF T=@ THEN CLOSE1: CLOSE
2: RETURN

l
vk
~

GOTO 728

i
m

aati ab aok ited
REM ERROR CANRL seieksoioiiitok

i
b
0

0
0

0
1

O
G

OPEN ..15

8

©

&

JAS oD OF
INPUT#1

o
l

&

PRINT CHR$«147)

w
W

a
h
W

@
G

Q
O

PRINT"ERROR NUMBER = "GA

PRINT: PRINT"TYPE: "GS#

f I c
s

&

PRINT: PRINT"BLOCK :";D

9356

PRINT:PRINT" SECTOR : "iF

966

CLOSE1

978

PRINT: PRINT "ONE BUTTON PLEASE"

986

GOSUB 390 : RETURN

990

REM GET CHARACTERS kalkakskkselalsslaliik

1940

GET A$ : IF A$ = "" THEN GOTO 1006

1416

A = VALCAS>

1020

RETURN

1436

1646

REM FETCH 2 BYTE aktaklöksskslsslekstekk
GET#2 ,A$: IFAS=""THENAS=CHRE(O> |

1450

TH = ASCCAS?

1666

GET#2 ,A$: IFAS=""THENA$=CHR$<@>

lure

35% = ASCCASD

14us6

RETURN

16396

1100

REM INPUT TRACK SECTOR rkPRINT CHR$¢147>

1110

INPUT"SPUR <TRACK> "iT

1124

113e

INPUT" SEKTOR "iS
OPENI .8.15:OPEN2 .8,2."#"

1140

RETURN

1156

1156

REM BLOCK LESEN kakaakikakaksekgagekikskiikik
PRINT#1

"U1: "2;8;T3S _

1170

."B-P: "2:4
GOSUB103@:PRINT#1

lise

RETURN

1196

REM HEXMANDEL

1266

121

1220

A=ASCCAS>
Al=INT<A16)
A2=A-A1#16

1234

-AL+1 21>
HS=MIDSCHX$

1246

1256

-AZ+1 12
H$=H$+MIDSCHX$
RETURN

315

+00

TH: Sk: N$=""
PRINTNF:

416

NEXT I

IF T<> @ GOTO 296

PRINT: PRINT"BITTE EINE TASTE"

CLOSE1 : CLOSE2 : GOSUBS9@ : RETURN

REM VERKETTUNG FREEEFEFEREFEFERFEFEIee:

GOSUB 1696:C=1

PRINT" BLOCK NR.";C5"

TRI Us Ts" SE

420

436

440

456

460

+70

Een

450 PRINT#1."U1:"259;5T55
436 GOSUB 1638: T=TX: S=Sk:C=C+1: IFT=@THEN
GOTOS1O
~86 GOTO 476
S16 PRINT"LETZTER BLOCK HAT :";S: "BYTES"

>28 CLOSE1:CLOSE2:PRINT:

PRINT" BITTE EINE

TASTE"

230 GOSUB 9396 RETURN
"46 REM AUS ASC EEE
>58 GOSUB 1896
>60 GOSUB 1150
~r@ FOR I = @6 TO 31
>88 FOR U = 8 TO 7?
~26 GET#2 .AS: IFAS=""THENAS=CHRS$¢o>
660

GOSUB 1196
IFASC CAS) <SZ0RASC CAS 2 >127ANDASCCAS ><

610
166THENAS="."
620

630

646

630

660

67a

N$=N$+A$
PRINTH$;" ";
NEXT U
PRINT N$:N$=""
NEXT I
PRINT:PRINT"BITTE EINE TASTE ODER FO

u

GOSUB 990 THEN CLOSE1
IF As <> "F"

LGEBLOCK MIT
680
:CLOSE2 RETURN
630 T=T%8: S=S54 :IF T=@ THEN CLÜSE1:CLOSE
2:RETURN

GOTO 568
REM AUS TOKEN Eee
GOSUB 1994
GOSUB 1156
FOR I = @ TO 31
FOR U = a TO 7
GET#Z.AF: IFAS=""THENAS=CHR$¢ >
GOSUB 1199
IF ASCCAS><C32THENAS="."
IFASC CAS>> 127° ANDASC CAS >< 2Q3THENAS=KS

CASCCARS 9-127
Sou NS=NS+AS:> PRINTHS;" ";

316

1260 DATREND FOR NEXT .DATA. INPUT# INPUT.
-GOTO ,RUN,IF.,RESTORE .GOSUB
nIM.READ.LET
1276 DATARETURN.REM.STOP .ON.WAIT.LOAD.SA
VE VERIFY. DEF .POKE .-PRINT# -PRINT .CONT
128@ DATALIST.CLR.CMD.SYS-.OPEN.CLOSE‚GET
.THEN-NOT STEP
»NEW. TABS. TO.FM.SPC*
1290 DATA+>—..-¢ T-AND.OR.>»=.<¢.SGN-INT-
ABS USP .FRE.POS.SGR.RND-LOG.EXP.CoS.SIN
.LEN STR .VAL ASC.
1306 DATATAN.ATN.PEEK
HRS .LEFTS -RIGHTS-MIDS. .

Erklarung zum Listing

String zur Hexadezimalumwandlung und Aufbau der

Basic-Schlusselworte

110-200

Ausgabe des Menues

210-240

Aufruf des gewahlten Unterprogramms mit

anschlieBendem Rucksprung zum Menue

250-300

Vorlauf zum Lesen der Direktory

310-330

Positionierung auf einen Eintrag

340

Prüfung auf "file scratched"

350-410

Aufbau und Ausgabe eines Eintrags

420

Folgeblock der Direktory auslesen

430-440

Nachlauf

450-460

Vorlauf der Blockverkettung

470

Ausgabe der Blocknummer mit den zugehörigen

Werten

480-500

Folgeblock holen

510-530

Nachlauf

540-580

Vorlauf ASC Ausgabe

590

600

6 10

Ein Byte holen

In hexadezimales Format wandeln

Prüfung auf druckbaren ASC Wert

620-660

Ausgabe der Hexwerte und Aufbau des ASC Strings

6 70-700

Nachlauf

710-750

Vorlauf Token Ausgabe

760

770

Ein Byte holen

In hexadezimales Format wandeln

317

780-790

Prüfen ob Token oder ASC Wert

800-830

Ausgabe der Hexwerte und des ASC/Token Strings

840-870

Nachlauf

880-980

Fehlerkanal lesen, ausgeben und Nachlauf

990-1020

Unterprogramm 1 - Warten auf eine Taste und deren

numerischen Wert ermitteln

1030-1080

1. und 2. Byte eines Blocks holen und in die

Adresse des Folgeblocks umrechnen

1090-1140

Einfache Input Abfrage für den frei wählbaren

Startpunkt der Blockverfolgung

1150-1180

1190-1250

Einen Block lesen und den Pufferzeiger rücksetzen
Umwandlung eines 4 Byte Dezimalwertes in hexadezi-

male Form

1260-1300

Bezeichnung der Basic-Schlüsselwerte

318

KAPITEL 9 POKE’S UND ANDERE NÜTZLICHE ROUTINEN

9.1 DER KASSETTENPUFFERALS PROGRAMMSPEICHER

will man kleine Maschinenprogramme zusammen mit BASIC

verwenden, stellt sich immer die Frage in welchem

Speicherbereich man solche Programme ablegt.
Bei der Auswahl muß beachtet werden, daß dieser Bereich nicht
von BASIC-Programmen oder Variablen überschrieben werden
darf. Unter diesem Gesichtspunkt gibt es zwei grundsätzliche
Möglichkeiten zum Ablegen von Maschinenprogrammen.
Zum ersten kann man Speicherbereiche auswählen, die vom
BASIC-Interpreter nicht benutzt werden, zum zweiten ist das
Verlegen des BASIC-Programmstarts oder des Endes des

BASIC-Speichers möglich.
Unbenutzt von BASIC sind wieder drei Bereiche. Als erstes
bietet sich der Kassettenpuffer an. Er liegt von Adresse 828
bis 1019 ($033C bis $03FB). Dieser Bereich wird vom Programm
nur dann benutzt, wenn Sie Daten mit dem Kassettenrekorder
abspeichern oder laden. Ansonsten ist dieser Bereich unbe-
nutzt. Er eignet sich damit hervoragend zur SpeicherungSmall machine programs up to 192 bytes long. If you have the
Sprites 13, 14 or 15 use is the cassette buffer
evidenced by the sprites. Another small area stands
Available to you from addresses 704 to 767 ($02CO to $02FF).
(64 bytes). However, this area is occupied by Sprite 11.
You have a large area of 4 KBytes in the RAM above
of the BASIC interpreter from address 49152 to 53247 ($COOO to
$CFFF), which is sufficient for even the longest machine programs

should.

Do you only need a few memory cells, e.g.

319

Store variable value that can also be used after a CLR or
NEW command should still be retained, you have 16
Bytes behind the screen memory are available. The 64

has 1K bytes = 1024 bytes available for the screen memory

disposition; However, for the video RAM only 25*40 = 1000

Bytes needed. So 24 bytes are left. However, there will be
the last 8 bytes are used as pointers for the sprites. It
So there are 16 bytes left that you can use for your purposes
can. These are the addresses 2024 to 2039 (hexadecimal
$O7E9 to $07F8).

Are the areas described above occupied or do you need them?
more storage space, it makes sense to use the area for
BASIC programs to be restricted and thus for machine

to make programs usable. Here you can
Lower BASIC end (the common method) or.
move the BASIC start up. Now let's see how
you do this.

The BASIC interpreter has two pointers, each pointing to start
and show end of BASIC memory. The BASIC start is in
43/44 ($2B/$2C), ending in 55/56 ($37/$38). With

PRINT PEEK(43)+256*PEEK(44) or

PRINT PEEK(55)+256*PEEK(56)

get the values; Normally it says 2049
or 40960. Do we want space for a 1000 byte long
Create machine program, we can end BASIC at 1000
put down. So the end should now be at 39960.
Now we can set the new value using POKE.

HB = INT (39960/256) : LB = 39960 - HB*256

POKE 55,LB : POKE 56,HB : CLR

320

N
M

The CLR command is absolutely necessary, otherwise you

incorrect variable values can be obtained. Let's get started

to 3049, the following commands are required:

HB = INT (3049/256): LB = 3049 - HB*256

POKE 43, LB : POKE 44,HB : POKE 3049-1.0 : NEW

Here the NEW command is required to all others

To set BASIC pointers correctly.

321

9.2 SORTING STRINGS

A task that every programmer often encounters

is sorting any data. This can be, for example, names,

Be addresses and series of numbers. There is something for sorting
various well-known algorithms, but all very
are time-consuming as soon as a large number of data are collected

are sorted. The simplest procedures are generally

even the slowest. You definitely need faster ones

sorting procedure, so you don't have to write the algorithms in BASIC,

but formulate it in machine language. With tasks like this
Solutions in machine language are a good 100 times faster
a BASIC routine. The following program is for sorting
of a string array. To keep the program as short as possible
to hold, the following conditions were assumed:

1. The field to be sorted must first be marked with DIM
be dimensioned.

2. There must be a. after the last array element to be sorted
Follow empty string. |

Point 2 also has the advantage that only a partial
filled array can be sorted without removing all
Empty strings are at the beginning of the array after sorting.
With these agreements the program will be so short that it
has space in the cassette buffer. It will be easy with SYS 828
called. The program checks whether the first array is a
is a one-dimensional string array. If this is not the case,
the machine program is ended immediately.

322

100:

O33c

105:

033c

110:

033c

120:

033e

130:

0340

135:

0342

140:

0343

150:

0345

160:

0347

170:

0349

180:

034b

190:

034d

200:

034£f

210:

0350

220:

0351

230:

0353

240:

0355

250:

0357

260:

0359

270:

035b

280:

035d

290:

035f

300:

0361

310:

0363

00

2f

Od

2f

08

04

2f

01

01

2f

07

be

30

00

6f

00

be

ec

22

828

.opt

p.i

ldy

#0

lda

($2f),y ;

first letter

bmi

11

iny

lda

($2£),y

- second character

bpl

11

ldy

#4

lda

($2£),y

: Dimensions

#1

12

cmp

beq

rts

cle

11

12

lda

$2f

- Array start

adc

#7 - plus 7

sta

$6e

lda

$30

adc

#0

sta$6f

13

ldy

#0

dwell

($6),y

tongue

11 - Null, little

$22

position

iny

320:

0365

14

330:

0366

be

dwell

($6),y

340:

0368

22

1000

position

$22,y

- String Auf Ziger

350:

036b

360:

036d

370:

O36f

380:

0371

390:

0373

400:

0375

02

£6

be

71

6f

72

410:

0377

15

Cpy

bne

#2

14

dwell

$6th

position

$71

$6f

$72

dwell

position

lc

323

420:

430:

440:

450:

460:

470:

480:

490:

500:

510:

520:

530:

540:

550:

560:

570:

80:

590:

600:

610:

620:

630:

640:

650:

660:

0378

a5

71

037a

69

03

O37c

85

71

O37e

90

02

0380

e6

72

0382

a0

1000

16

dwell

$71

adc

#3

position

$71

bc

16

inc

$72

ldy

#0

three Addresses

0384

or

71

0386

fO

3rd

0388

85

4d

038a

c5

22

038c

90

02

038am

a5

22

0390

85

95

0392

c8

0393

b 1

71

17

18

dwell

($71),y

tongue

113

position

$4d

; Länge

mti berster

; Vergestry

m

$22

bc

17

dwell

$22

position

$55

iny

dwell

($71),y

0395

99

4d

1000

position

$4d,y

0398

cO

02

039a

in

£6

039c

a0

1000

Cpy

#2

bne

18

ldy

#0

039am

or

23

19

dwell

($23),y

; Stringer

03a

a1

of

03a

140)

04

03a

bO

Ob

03a

90

cf

m

($4),y

tongue

110

bcs

111

bc

15

in
@

0

clean

Tausch

clerk dan dnächsten String

03a

c8

110

iny

670:

03a9

c4

95

680:

690:

700:

710:

720:

730:

740:

750:

O3a

in

f1

O3ad

c4

22

O3af

bO

man

03b1

a0

02

0353

or

6am

03b5

aa

03b6

or

71

03b8

91

6am

Cpy

$55

bne

19

cy

$22

bcs

15

ldy

#2

alle Zeichen ice ?

Langer String String

nein dann ok

dwell

($6),y

; Vertauschen License

111

112

tax

dwell

position

($71),y

($6e),y —

324

760: O3ba 99 22 00 this $22,y

770: O3bd 8th txa
780: OQO3be 91 71: $71),y
790: 03c0 88
800: 03c1 £OU bpl 112
810: 03c3 30 b2 bmi 15
820:
830: O3c6 to $6th
840: 03c8 69 03 adc #3
850: O3ca 85 bets $6am
860: O3cc 90 Bf
870: O3ce e6 6f in $6f
880: 03d0 dO 8b 13

There is a Lade neither on Lade neither in BASIC.

100 for i = 828 to 977
110 rows x : poke 1,x s=s=stx : nex
120 data 160, 0.177, 47, 48, 13,200,177, 47, 16, 8,160
130 data 4,177, 47,201, 1,240, 1, 96, 24,165, 47,105
140 data 7.133,110, 165, 48,105, 0.133,111,160, 0.177
150 data 110,240,236,133, 34,200,177,153, 34, 0.192
160 data 2.208,246,165,110,133,113,165,111,114, 24
170 data
180 data
190 data
200 data 160, 0.177, 35,209, 78,240, 4,176, 11,144,207
210 data 200,196, 85,208,241,196, 34,176,160,
220 data 110, 170,177,113,145,153, 34, 0.138, 145,113
230 data 136, 16,240, 48,178, 24,165,110,105, 3,133,110.
240 data 144,143,230,111,208,139
250 if s <> 17663 end
260 prints "ok!"

325

Die Testing of Maschinen Programs

cleinen cleinen testprogram demonstreren.

Das Programme of Anzahl von String

Sufferbroads, with a single maximal blessing

Shib is a twelve, exit

sieves with my Sortienen wieder to the Sortier.

100 "anzahl, Language" inputs;a,l

110 days of a$(a=a=1

120 for i=0O

130 for j=1 to rnd(1)*1

140 a$(i) = a$(i)+chr$(1)26+65)

150 next:next

160 for i=O to : print a$(i)

170 t=ti : sys 828 : t=ti-t

180 shorts "sortierzeit " t/60"

190 for i%

Lassen See Das Empty with verses
Anzahl von Strings laufen, and a beach.
100 Strings wets one-one About Subsequent. Engine
BASIC-Programme to Minnuts.

Wenn is the Furnace Program Ihre Zwecke was born,
beachten Sie bite, dast lets Element (Bes to me
outsourced greens) a Leerstring sew more and das
Array those dimensions web wet.

326

9.3 MINIMUM MAXIMUM WITH FELDVARY

Been Berechnungen with Varables Blessed

the cleinst cleinst smell of the Feldes. Die Belech-

no läßt is my one with a clergyman BASIC-Schleife lösen,

daert will be made of great Feldern relative lange. Sleep

a typewriter of the Maschinen Das Pro-

grams of the Algorithm

BASIC-Variant.

100 DIM A(N)

200 GOSP 1000

1000 MIN = A(O)

1010 FOR I=1 TON u1020 IF A(I) < MIN THEN MIN = A(I)

1030 NEXT

1040 RETURN

A field A is dimensioned from O to N. By calling the

Subprogram from line 1000 the minimum is calculated and in
the variable MIN is returned. If the maximum is sought,

just replace line 1020 with

1020 IF A(I) > MAX THEN MAX = A(I)

MAX = A(O) is written accordingly in line 1000.

The machine program is different from the BASIC program above
still has the advantage that it is not limited to variable A

327

is,

but that the

Variable name

as a parameter of the

USR function is passed. The program can do both

real

Process numbers (A) as well as integer arrays (A%) and is in

free RAM area starting at address $C800.

120:

c800

130:

c800

140:

c800

150:

c800

160:

c800

170:

c800

180:

c800

190:

c800

200:

c800

210:

c800

220:

c800

230:

c800

240:

c800

- Min/Max function

intflg

store

arrtab

Arrend

varnan

temp

setarr

memfac

compare

errout

int

intfloat

Flag for integer variable

Pointer to array table

Pointer to end of array

Variable name

e
a

)
X

0

e
=

Pointer to first array element

Get constant in FAC

Compare constant with FAC

Storage for integer variables

Integer after FAC

14

$26

$2f

$31

$45

$5f

$b196

$bba2

$bc5b

$a445

$14

$b391

$c800

c800

a6

2f

minmax

arrtab

c802

a5

30

c804

86

of

13

c806

85

60

340:

c808

c5

32

c80a

do

04

c80c

e4

31

c80e

£0

arrtabt1

; Pointer to the start of the array table

temp

tempt1

arrend+1

11

Arrend

notfound

e
!

e
?

running pointer

End of array table?

c810

a0

00

11

#0

c812

b1

of

c814

c8

c815

c5

45

c817

dO

06

c819

a5

46

(temp),y

' first letter of the name

varnam

compare with searched name

e
0

12

varnant1

328

300:

310:

320:

330:

350:

360:

370:

380:

390:

400:

410:

420:

430:

440:

c81b

450:

c81d

of

17

cmp

(temp),y ; compare second character

beq

found - found?

460:

c8if

12

470:

c820

of

480:

c822

iny

lda

cle

(temp),y

490:

c823

of

adc

temp - Add offset for next array

500:

c825

510:

c826

520:

c827

530:

c829

540:

c82b

Sf

60

d7

tax

iny

lda

(temp),y

adc

temp+1

bcc

13

550:

c82d

b8 notfound

lda

#<errmsg

- Pointer to error message

560:

c82f

570:

c831

22

c8

580:

c833

45 a4

590:

c836

found

600:

c837

600:

c838

610:

c83a

620:

c83c

630:

c83e

640:

c83f

650:

c841

660:

c843

670:

c845

680:

c846

sta

$22

lda

#) errmsg

erout ; Output error message

Jmp

iny

clc

lda

(temp) ,y

adc

temp

sta

store

iny

lda

(temp),y

adc

temp+1

sta

store+ti ; Pointer to end of array

iny

lda

(temp),y ; Number of dimensions

690:

c848 |

96 bi

jsr

setarr ; Pointer to first array element

700:

c84b

710:

c84d

720:

c84f

730:

c851

740:

c853

sta

temp

sty

temp+1 ; Remember pointers

bit

intflg

- Test type

bmi

integer

bpl

ip

710:

c855

5b be 15

jsr

compare

- Compare array element

785:

c858

07

bpl

loop

329

790:

800:

810:

c85a

a5

Sf

c85c

a4

60

lda

temp

ldy

temp+1

c85e

20

a2

bb 1p1

jsr

memfac

; Remember array element as min/max

820:

c861

loop

cle

c862

a5

Sf

c864

69

05

c866

85

5f

c868

90

02

c86a

e6

60

Ida

temp

adc

#5

; Pointer to next element

sta

temp

bcc

14

inc

temp+1

c86c

a4

60

14

ldy

temp+1

c86e

c5

26

c870

dQ

e3

c872

c4

27

c874

do

df

c876

60

cmp

store

; End of array

bne

15

Cpy

store+]

bne

15

rts

c877

a0

00

integer

ldy

#0

; int array

830:

840:

850:

860:

870:

880:

890:

900:

910:

920:

930:

950:

960:

970:

980:

980:

990:

; get first value after int

; Pointer to next element

c879

b1

of

c87b

aa

c87c

c8

c87d

b1

c87f

85

1000:

c881

86

1010:

c883

18

112

cle

1020:

c884

a5

of

1030:

c886

69

02

1040:

c888

85

of

1050:

c88a

90

02

1060:

c88c

e6

60

1070:

c88e

c5

26

110

1080:

c890

do

Od

1090:

—- C892

a5

60

1100:

c894

c5

27

1110:

c896

dO

07

1120:

c898

a5

14

(temp),y

lda

tax

iny

lda©

(temp) ,y

sta

int+1

stx

int

lda

temp

adc

#2

sta

temp

bcc

110

inc

temp+1

cmp

store

bne

111

lda

temp+1

cmp

storet1 ; Already reached the end?

bne

111

lda

int

; Get integer value

330

1130:

c89a

a4

15ldy int+1

1140:

c89c

4c

91 b3 jmp intfloat ; convert to FAC

1150:

c89f

a0

00 111 ldy #0

1160:

c8at

b1

5f Ilda (temp),y

1180:

c8a3

c514 cmp int - compare high byte

1180:

c8a5

do

07 bne 114

1190:

c8a7

c8

iny

1190:

c8a8

b1

Sf lda (temp),y

1200:

c8aa

e5

15 sbc int+1 - compare lo bytes

1210:

c8ac

£0

d5 beq 112

1220:

c8ae

a9

01 114 lda #1 : Flag for larger

1230:

c8b0

90

02 bec 113

1230:

c8b2

a9

ff lda #$ff : Flag for smaller

1240:

c8b4

30

c1 113 bmi integer

1245:

c8b6

10

cb bpl 112

1250:

c8b8

41

52 52 errmsg .asc “array not found"

1260:

c8bb

41

59 20 4£ 54 20 46 50 55 4£ c4

Here

again that, BASIC loader program:

100

FOR I

51200 TO 51398

110

READ

x

POKE I,X S=S+X : NEXT

120

DATA

166, 47,165, 48,134, 95,133, 96,197, 50,208, 4

130

DATA

228,

49,240, 29,160,

0.177, 95,200,197, 69,208

140

DATA

6,165,

70,209,

95,240, 23,200,177,

95, 24,101

150

DATA

95,170,200,177,

95,101,

169, 184, 133
96,144,215,

160

DATA

34,169,200, 76,

69,164,200,

24,177, 95,101, 95

170

DATA

13

3,

38,200,177,

95,101,

96,133, 39,200,177, 95

180

DATA

32,150,177,133,

95,132,

96, 36, 14, 48, 36, 16

190

DATA

9, 32, 91,188, 16, 7,165, 95,164, 96, 32,162

200

DATA

18

7, 24,165, 95,105, 5,133, 95,144, 2,230, 96

210

DATA

16

220

DATA

230

DATA

16

4, 96,197, 38,208,227,196, 39,208,223, 96,160
0.177, 95,170,200,177, 95,133, 21,134, 20, 24
5, 95,105, 2,133, 95,144, 2,230, 96,197,

38

331

240 DATA 208, 13,165, 96,197, 39,208, 7,165, 20,164, 21
250 DATA 76,145,179,160, 0.177, 95,197, 20,208, 7,200
260 DATA 177, 95,229, 21,240,213,169, 1,144, 2,169,255
270 DATA 48,193, 16,203, 65, 82, 82, 65, 89, 32, 78, 79

280 DATA 84, 32, 70, 79, 85, 78,196

290 IF S <> 22908 THEN PRINT "ERROR IN DATAS!!". END

300 PRINT "OK!"

The printed version calculates the maximum of an array.

If you want to calculate the minimum, you have to

Reverse branching logic after comparisons. To do this we have to

You can turn BMI commands into a BPL and vice versa. Following

You need to change addresses:

C858 from $10 becomes $30

C8B4 $30 becomes $10

C8B6 $10 becomes $30

If you want to use the function, you must first

Set address for the USR function:

POKE 785.0 : POKE 786,200

You can then call the function with PRINT USR(A),

where A is the name of the array. Integer arrays are too

allowed. The USR function can be used like any other function
can be called, e.g. X = USR(A%)*SIN(3). |

The following small program can be used to test the function.

100 POKE 785.0 : POKE 786,200

110 INPUT "ARRAY SIZE";N

120 DIM A(N)

130 FOR I=O TO N

332

140 A(I) = RND (1)*1000

150 PRINT A(I)

160 NEXT

170 PRINTS

180 PRINT USR(A)

Switching from MAX to MIN function can be done by changing

The three values above can be done using POKE:

POKE 51288.48 or 16

POKE 51380.16 or 48

POKE 51382.48 or 16

Also try these POKEs for the MIN function and

also use integer arrays. Please also note this

Time difference (only noticeable with very large arrays, e.g.

DIM A%(5000)).

333

9.4 DUMP COMMAND FOR VARIABLE OUTPUT

That useful

The following machine program is very useful

Testing BASIC programs. It all

gives

BASIC variables with the associated values. This

program

is in the cassette buffer and is called with SYS 828.

100: 033c t= 828 ; Cassette buffer

110: 033c a5 2d lda $2d

120: 033e a4 2e ldy $2e ; Pointer to variable start

130: 0340 85 14 10 sta $14 ; remember

140: 0342 84 15 sty $15

150: 0344 c4 30 cpy $30 ; Compare with end of variable

160: 0346 dO 02 bne 11

170: 0348 c5 2f cmp $2f

180: 034a bO 18 11 bes 13 ; over, then done

190: 034c 69 02 adc #2 ; Pointer to variable value

200: 034e 90 01 bec 12

210: 0350 c8 iny

220: 0351 85 22 12 sta $22

230: 0353 84 23 sty $23

240: 0355 20 82 03 jssr 17 ; Output name

250: 0358 20 b6 03 jsr 112 ; "=" output

260: 035b 8a txa

270: 035c 10 07 bpl 14

280: 035e 20 bf 03 jstr 113 ; Output intger variable

290: 0361 4c 71 03 jmp 16 ; to the main loop

300: 0364 60 13 rts

310: 0365 98 14 tya

320: 0366 30 06 bmi 15

330: 0368 20 cf 03 jsr 114 ; Output floating point number
340: 036b 4c 71 03 jmp 16

334

350:

O36e

20

dg 03 15 jsr 116

Output string variable

360:

0371

a9

Od 16 lda #13

carriage return

370:

0373

d2 ff jsr $ffd2

output

380:

0376

a5

14lda $14

390:

0378

a4

15ldy $15

400:

037a

cle

410:

037b

69

07 adc #7

Add 7 for next variable

420:

037d

90

c1 bcc 10

430:

O37f

c8

iny

440:

0380

bO

be bcs 10

to the main loop

450:

0382

a0

00 17 ldy #0460:

0384

b1

14 Ida ($14),y

9

first letter of the name

470:

0386

aa

tax

480:

0387

29

Tf and #$7f

490:

0389

20

d2 ff jsx $ffd2

output

500:

038c

c8

iny

510:

038d

b1

14 lda ($14),y

e
r

second character

520:

O38f

a8

tay

530:

0390

29

£7 and #$7f

540:

0392

£0

03 beq 18

550:

0394

20

d2 ff sr $ffd2

output

560:

0397

8a

18 txa

570:

0398

11 bpl 110

Test type

580:

039a

98

tya

590:

039b

30

0a bmi 19

600:

039d

a9

21 lda #"!"

Function, "!" output

610:

£039

20

d2 ff jsx $ffd2

620:

03a2

630:

03a3

68

pla

pla

640:

650:

0344

4c

71 03 jmp 16

Return to main loop

0

0347

a9

25 19 lda #"%"

Integer variable

660:

03a9

do

670:

O3ab

98

4e bne 119
110 tya

680:

O3ac

04 bpl 111

335

690:

700:

710:

720:

730:

740:

750:

760:

770:

780:

790:

800:

810:

820:

830:

840:

850:

860:

870:

880:

890:

900:

910:

920:

930:

940:

950:

960:

970:

980:

990:

O3ae

a9

24

03b0

dQ

47

Ida

#°$*

bne

119

03b2

60

111

rts

String variable

03b3

20

d2 ff

jsr

$ffd2

; Output characters

0

O3b6

a9

20

112

lda

0358

20

d2 ff

O3bb

a9

3d

O3bd

do

3a

O3bf

a0

00

113

jsr

$ffd2

lda

#°="

bne

119

ldy

#0

; Output blank space

output

0

Integer variable

03c1

b1

22

03c3

aa

03c4

c8

03c5

b1

22

03c7

ad

03c8

Ba

03c9

20

95 b3

O3cc

4c

d2 03

O3cf

20

from bb

114

03d2

20

dd bd

115

0345

4c

le off

0348

20

f7 03

116

O3db

aQ

02

O3dd

b1

22

O3df

85

25

O3e1

88

O3e2

b1

22

O3e4

85

O3e6

88

O3e7

b1

22

03e9

26

O3eb

f0

Oa

lda

($22),y'

Lo Byte

tax

iny

lda

tay

txa

($22),y'

Hi Byte

jsx

$b395

jmp

Jr

115

$bba6

jJsr

$bddd

jmp

Sabie

jsr

118

ldy

#2

0

e
@

e
S

convert to floating point

and spend

Get floating point variable

convert to ASCII string

and spend

String, output apostrophe

lda

($22),y

Address high

sta

$25

dey

lda

($22),y ;

Address low

sta

$24

dey

lda

($22),y ;

Length

sta

$26

beq

118

1000:

O3ed

b1

24

117

1010:

O3ef

20

d2 ff

lda

($24),y ;

Character of the string

jsr

$ffd2

output

1020:

03£2

c8

iny

336

1030:

O3f3 c4 26

1040:

O3f5 dO £6

Cpy

$26

bne

117

- String over?

1050:

O3f7 a9 22

118

lda

#$22

- Quotation

1060:

03£9 4c d2 f£119

jmp

$ffd2

- spend

Here again the BASIC program

to

Entering the machine

program.

100

for i

= 828 to 1019

110

read

x

poke 1,xX

S=Stx

next

120

data

165,

45,164, 46,133,

20,132,

21,196,

48,208, 2

130

data

197,

47,176, 24,105,

2,144,

1,200,133,

34,132

140

data

35,

32,130,

150

data

3,

76,113,

3,

3,

32,182,

3,138, 16, 7, 32,191

96,152,

48, 6, 32,207, 3, 76

160

data

113,

32,216,

3,169,

13, 32,210,255,165, 20

170

data

164,

24,105,

7,144,193,200,176,190,160, O

180

data

177,

20,170, 41,127,

32,210,255, 200,177,

20,168

190

data

41,127,240,

3,

32,210,255,138,

16,

17,152, 48

200

data

10,169, 33,

32,210,255,104,104, 76,113,

3,169

210

data

37,208, 78,152, 16, 4,169, 36,208, 71, 96, 32

220

data

210,255,169,

32,

32,210,255,169,

61,208, 58,160

230

data

0.177,

34,170,200,177,

34,168,138, 32,149,179

240

data

76,210,

32,166,187,

32,221,189, 76, 30,171

250

data

32,247,

3,160,

2,177,

34,133, 37,136,177, 34

260

data

133,

36, 136,177,

34,133,

38,240, 10,177, 36, 32

270

data

210,255,200,196,

38,208, 246,169,

34, 76,210,255

280

if s <> 20988 then print "error in datas

io end

290

print "ok

If you run the following small program,

received

you the following expression:

337

100 a=5

110 def fnx (y) = sin(y) * cos(y)

120 c$ = "program"

130b% = -101

140 sys 828

a=5

x!

y = 0

c$="program"

b% =-101

You can use the DUMP function both from the program and

in direct mode with SYS 828. Have a program

interrupted, you can view the current variable contents

View it with DUMP and then continue the program with CONT.

As you saw in the example above, defined

User functions with a "!" marked.

338

9.5 MODIFIED PEEK FUNCTION

The following small machine program allows you to

elegant way to use the additional RAM memory of the Commodore

64 to use. At the same time it is also possible to read out the

Character generator possible from BASIC. Plus a few more

Explanations:

The memory areas $AO0OO to $BFFF (40960 to 49151) and$EOOO to $FFFF (57344 to 65535) are each double

Occupied: Once by 8K BASIC or operating system ROM

as well as two additional 8K RAM. These 16 KBytes

However, they cannot be easily used by BASIC.

Every POKE command writes to this memory area

directly into the RAM, but a read attempt with PEEK reads

always the ROM switched on. Here we now replace the PEEK

Function through a self-written USR function. The

Function must perform the following tasks: Before the value

a memory cell is read, the memory configuration must first be

guration can be made that addresses the RAM. Now

the value can be read. Then the old one has to

configuration can be restored. In addition, in

The range from $DOOO to $DFFF is the character

generator can be read out. It is therefore examined

whether the PEEK address is between $DOOO and $DFFF. If so

the memory configuration is set so that the

Character generator can be read out. Now the value is read

and switched back to the old memory configuration.

110: 033C ADR = $14 ; Integer address

; USR - PEEK

120: 033C FACADR = $B7F7

130: 033C YFAC = $B3A2

339

190:

033C

828

Cassette buffer

033C

AS

033E

48

033F

AS

0341

48

LDA

ADDR

PHA

LDA

ADR+1

PHA

Save integer address

0342

20

F7 B7

JSR

FACADR

e
m

Convert FAC to address format

200:

210:

220:

230:

240:

250:

260:

261:

262:

262:

263:

263:

270:

270:

275:

280:

280:

290:

300:

310:

320:

330:

330:

340:

350:

360:

0345

AS

01

0347

48

0348

034A

AS
C9

THURS

034C

90

07

034E

cg

EO

0350

B.O

03

0352

A9

31

0354

Xe

0355

A9

34

RAM

0357

78

0358

85

01

035A

AO

00

035C

Bt

035E

A8

035F

68

0360

85

01

0362

58

0363

68

0364

85

0366

68

370:

0367

380:

0369

AC

LDA

1

PHA

LDA

ADR+1

CMP

#$DO

BCC

RAM

CMP

#$EO

BCS

RAM

LDA

#531

. BYT

$2C

LDA

#534

BE

STA

LDY

#0

e
@

0

e
m

0

0

Remember configuration

smaller $DO00 ?

greater than $E000?

Read character generator

Read RAM

Set memory configuration

LDA

(ADR),Y

Read byte

and according to Y

Retrieve configuration

TAY

PLA

STA

CLI

PLA

STA

ADR+1

PLA

' Get the address back

STA

ADDR

JMP

YFAC

Convert Y to FAC

The small program has in the cassette buffer

from address 828

place. Once you have entered the program, you must

You first

the USR vector

on

lay.

This

happens with two

340

POKE commands.

POKE 785, 828 AND 255

POKE 786, 828 / 256

For the “non-machine programmers” here’s another loader

program in BASIC that initializes the USR vector directly.

100 FOR I = 828 TO 875

110 READ X : POKE I,X : S=S+X : NEXT

120 DATA 165, 20, 72,165, 21, 72, 32,247,183,165, 1, 72

130 DATA 165, 21,201,208,144, 7,201,224,176, 3,169, 49

140 DATA 44,169, 52,120,133, 1,160, 0.177, 20,168, 104

150 DATA 133, 1, 88,104,133, 21,104,133, 20, 76,162,179

160 IF S <> 5085 THEN PRINT "ERROR IN DATAS!!" :END

170 POKE 785, 828 AND 255 : POKE 786, 828/256

180 PRINT "OK!"

If you now want to read out the RAM or the character generator, SO

just replace the PEEK function with that

USR function. For example, if you want the character matrix of a

character, you can use the following small program:

100CG=13*4096

110A = (PEEK(53248+24)AND 2) * 1024
120 INPUT "SCREEN CODE OF CHARACTER";B

120 FOR I=O TO 7

130 PRINT I, USR(CG+A+8*B+I) : NEXT

140 GOTO 110

Line 110 selects the lower or upper half of the

Character generators, depending on whether large/graphics or

Lowercase/uppercase is selected.

341

You can easily determine the screen code like this: Set

Place the character in the top left corner of the screen and

then query the code with PEEK(1024).

Now you have an additional 16K of RAM, which you can use for example

You can use data storage from BASIC.

342

9.6 MULTI-TASKING ON THE COMMODORE 64

Multi-tasking is a term that originally comes from

Large-scale IT is coming and the simultaneous processing of several

Programs on a computer means. How "works like that

something?

Strictly speaking, even a mainframe can only work on one thing at a time

The program works, but there is a trick here:

For example, if the computer is supposed to run 5 programs at the same time, so

you proceed as follows: The calculator first starts with

the processing of the first program, after a certaintime (fractions of a second) he stops work

it, saves all current variables and starts with the

Editing the next program. This program will also

after a short time interrupted again to start with

to continue next. All programs are on once

been, the variables of the first program are returned

brought in and continued this program. The computing time of the

The computer is divided into small “time slices” for each individual

Programs are divided, hence the one used more often

Expression “timeshare.

Such an approach is also limited

possible on your Commodore 64. Running in your computer

actually running two programs at the same time: once your BASIC

program and secondly the so-called interrupt or

Interrupt program that runs 60 times per second

Timer controlled is called and executed. During

the execution of the execution of the interrupt program is

Your BASIC program interrupted. The interruption program

For example, ensures that the keyboard is switched off regularly

343

s
a
m

La
I

S
C

a

Y
b

2
e
a

E,
b
E
b
E
S

y
S
n
A

l
e

:
o
M
r
u
N

r
_

S
A
_
Z
n
A

e
n

"
?
r
u

A

a

a

a

t
r
a
w

.
&
”
2

+

h
t
w

.
L
U

.

is asked and that you do anything at all using the keyboard

can enter.

Here we can now ‘clean up’ and during the

Interrupts allow the computer to perform additional tasks

let.

One application for this would be, for example, outputting a text

the printer. For each interrupt, for example, a character can be output

sent to the printer in a text buffer. The

The user would not notice this in his BASIC program

disturbed; the program would run as usual.

As an example of such an application we have one

little treat for you: a program that you can use all the time

the current time to the tenth of a second on the
screen displays. The program uses the built-in
Hardware clock of the Commodore 64. The current time is
entered once and then automatically always in the right

top corner of the screen. The program is in

Written in machine language, but can also be used with a

Loading program must be entered in BASIC.

100: CB8O0 'OPT P1

- TIME, SHOW TIME

; SYS AD, "HHMMSS", COLOR

9

140: C800 FRMEVL = $ADIE ; FETCH BASIC EXPRESSION

150: C800 FRESTR = $B6A3

160: C800 CHKCOM = $AEFD ; CHECK FOR COMMA

170: C800 CHRGOT = $79

180: C800 GETBYT = $B79E ; FET BYTA EXPRESSION

344

190:

C800

ILLQUAN

$B248 ; “ILLEGAL QUANTITY”

200:

C800

210:

C800

220:

C800

230:

C800

240:

C800

250:

C800

ADDR

= $22

COLOR

= $2A7 . MEMORY FOR COLOR VALUE

VIDEO

= $288 ; HI-BYTE VIDEO RAM

TEMP

= $FB

IRQ

PNT

= $314 ' IRQ VECTOR

= $FB
= $EA31 ; NORMAL IRQ ROUTINE

260:

C800

IRQVEC

270:

C800

280:

C800

290:

C800

COLOR

= $D800 ; COLOR RAM

TENTH

= $DCO8 ; REAL TIME CLOCK CIA 1

SECOND

= TENTH +1

300:

C800

MINUTE

= SECOND +1

310:

C800

320:

C800

330:

C800

340:

C800

HOUR

= MINUTE+1

TRIGGER

= HOUR +3 ; 50/60HZ

SET

= TRIGGER +1 ; SET TIME/ALARM

*= $C800

350:

C800

O.E

DC

LDA TRIGGER

360:

C803

ORA #%10000000 ; 50 HZ MODE

370:

C805

O.E

DC

STA TRIGGER

380:

C808

OF

DC

LDA SET

390:

C80B

TF

AND #%1111111 ; SET TIME

400:

C80D

OF

DC

STA SET

410:

C810

19

00

JSR CHRGOT ; ANOTHER CODE?

420:

C813

65

BEQ CHGIRQ ; TURN CLOCK

430:

C815

FD

AE

JSR CHKCOM

440:

C818

EVER

AD

JSR FRMEVL ; GET STRING

450:

C81B

A3

B6

JSR FRESTR ; PARAMETERS

460:

C81E

470:

C820

480:

C822

490:

C824

500:

C826

510:

C827

520:

C829

06

6B

00

22

30

03

CMP #6 '6 CHARACTERS?

GNI ILL ; ILLEGAL QUANTITY

LDY #0

LDA (ADR),Y ; HOUR TEN

SEC

SBC #"0" ; TO HEX

CMP #3

345

BCS

ILL

ASL

ASL

ASL

ASL

STA

TEMP

INY

LDA

(ADR) ,Y ;

STD-ONE

SEC

SBC

#"0"

CMP

#10

BCS

ILL

ORA

TEMP

ESD

NOTZERO

LDA

#%10000000 + $12 -

12 PM

ESD

SET HOURS

530:

540:

C82B

B.O

60

C82D

O.A

540:

C82E

O.A

C82F

O.A

C830

O.A

C831

85

FB

C833

C8

C834

Bi

22

C836

38

C837

E9

30

C839

C9

O.A

C83B

B.O

C83D

05

FB

C83F

THURS

04

C841

A9

92

C843

THURS

OF

540:

540:

550:

560:

570:

580:

590:

600:

610:

620:

630:

640:

650:

660:

670:

680:

690:

700:

700:

710:

710:

720:

730:

140:

750:

760:

770:

780:

790:

800:

810:

C845

C9

24 NOTZERO

CMP

#$24

C847

B.O

44

C849

C9

13

C84B

90

07

C84D

38

C84E

Q8

C84F

E9

12C851

D8

C852

09

80

BCS

ALL

CMP

#$13

BCC-

SETSTD

SEC

SED

SBC

#$12

CLD

ORA

%10000000_ ;

PM SETZEN

C854

8D

OB DC SETSTD

STA

STUND

C857

20

FD C8

C85A

8D

OA DC

C85D

20

FD C8

C860

8D

09 DC

C863
C865

A9

1000

8D

08 DC

C868

20

79 00

C86B

FO

OD

JSR

GET59

; HOLEN'S MINUTEN

STA

MINUTE

JSR

GET59

STA

SECUND

LDA

#0

STA

ZEHNTEL

; UHR STARTY

JSR

CHRGOT

BEQ

CHGIRQ

346

820:

C86D

20

830:

C870

20

840:

C873

IS

850:

C875

BO

AE

B/

JSR

CHKCOM

JSR

GETBYT ;

FARBE

CPX

#16

BCS

ALL

860:

C877

B

02

STX

COLOR ; WORK FARBKOD

870:

C87A

CHGIRQ

SEI

; IRTAUS IRTAUS

870:

C87B

AD

14

03

880:

C87E

49

Ai

890:

C880

8D

03

900:

C883

AD

15

03

910:

C886

49

22

LDA

ANCHOR

STA

LDA

ANCHOR

IRQ
TIMIRQ TIMIRQ

IRQ |

IRQ + 1
#> TTIMIRT IRQVEC

920:

C888

8D

15

03

STA

IRQ + 1

930:

C88B

98

940:

C88C

60

CLI

RTS

950:

C88D

4c

48

B2

ALL

JMP

ILLQUAN

ANZEIGE-ROUTING

970:

C890

FB

TIMIRQ

LDA

CD

970:

C892

PHA

970:

C893

FC

LDA

PNT+1 ; RETTING

970:

C895

PHA

970:

C896

88

02

LDA

VIDEO ;

BIDEO-RAM HIGHBYT

980:

C899

990:

C89B

1000:

C89D

1010:

C89F

FC

1000

FB

STA

PNT+1

LDA

STA

#0
PNT ;

BIDEORAM SIGE

LDY

#3

30. SPALTE

1020:

C8A1

OB

DC

LDA

STUND

1020:

C8A4

1020:

C8A6

1020:

C8A8

1020:

C8AA

1030:

C8AC

1030:

C8AE

12

11

80

OF

IF

CMP

#$12

BEQ

NULLUHR

CMP

#$8

BCC

STDOUT ; AM

AND

#%11111

CMP

#$12

1030:

C8BO

09

BEQ

STDOUT

1040:

C8B2

SED

347

1040:

C8B3

18

1040:

C8B4

69

1040:

C8B6

D8

CLC

ADC

#$12

CLD

1040:

C8B7

DO

02

BNE

STDOUT

1050:

C8B9

AY

1000

NULLUHR

LDA

#0

1060:

C8BB

20

DB

C8

STDOUT

JSR

PRINT ;

STUND ANZEIGEN

1070:

C8BE

AD

WAS

DC

LDA

MINUTE

1080:

C8C1

20

DB

C8

JSR

PRINT ;

MINUTEN ANZEIGEN

1090:

C8C4

AD

09

DC

LDA

SECUND

1100:

C8C7

20

DB

C8

JSR

PRINT;

SEVENTH ANZEIEN

1110:

C8CA

AD

08

DC

LDA

ZEHNTEL

1120:

C8CD

09

30

ORA

#"0

1130:

C8CF

20

F3

C8

JSR

PRINT1 ;

ZEHNTAN ANZEIGEN

1140:

C8D2

68

PLA

1140:

C8D3

85

FC

STA

PNT+1

1140:

C8D5

68

PLA

ZEIGER ZURÜCKHOL

1140:

C8D6

85

FB

STA

CD

1140:

C8D8

4c

31

EA

JMP

IRQVEC ; IRT WITH IRQ

1150:

C8DB

48

PRINT

PHA

; ANZEIGE

1160:

C8DC

29

FO

AND

#% 11110000

1160:

C8DE

4A

1160:

C8DF

4A

1160:

C8EO

4A

1160:

CBE1

4A

1170:

C8E2

18

LSR

LSR

LSR

LSR

CLC

1170:

C8E3

69

30

1180:

C8E5

20

F3

C8

ADC

#"0

JSR

PRIT1

1190:

C8E8

68

PLA

1200:

C8E9

29

OF

AND

#%111

1210:

C8EB

18

1210:

C8EC

69

30

CLC

ADC

£°QO”

1220:

C8EE

20

F3

C8

JSR

PRIT1

1230:

C8F1

A9

3A

LDA

whose . whose

1240:

C8F3

91

FB

PRIT1

STA

(PNT), Y ; THEY

348

1250:

C8F5

AD

A7 02

LDA

COLOR

1260:

C8F8

99

OO D8

STA

FARBE,Y

FARBE UND

1270:

C8FB

C8

1270:

C8FC

60

1280:

C8FD

C8

GET59

INY

RTS

INY

1290:

C8FE

Bi

22

LDA

(ADR) ,Y

ZEHNER

!

1300:

C900

38

1310:

C901

EI

30

1320:

C903

C9

06

SEC

SBC

#"0

CMP

#6

1330:

C905

BO

86

ILL1

BCS

ALL

1340:

C907

WAS

1340:

C908

WAS

1340:

C909

WAS

1340:

C9IOA

WAS

ASL

ASL

ASL

ASL

1350:

C9OB

FB

STA

TEMP

1360:

COD

C8

INY

1370:

COU

Bi

22

LDA

(ADR), Y

EINER

in
'

1380:

C910

38

1390:

C911

E9

30

1400:

C913

C9

WAS

1410:

C915

BO

EE

1420:

C917

05

FB

1420:

C919

60

SEC

SBC

#"0

CMP

#10

BCS

ILL1

TEMP

ORA

RTS

Hab Sie is not assembly

Ihren

Verfügung,

is the end of the time

in BASIC.

100 FOR I

51200 TO 51481

110 READ

X

POKE I,X

S=S+X

120 DATA 173,

14,220,

9.128.141,

14,220.173,

130 DATA 127,141,

15,220,

32,121,

0.240, 101,

32,253.174

349

140

DATA

32.158.173,

32.163.201,

6.208.107.160,

THEIR

150

DATA

177, 34, 96,233,

48.201, 3,176,

96,

10, 10,

10

160

DATA

10.133,251, 200,177,

34,

96,233,

48,201,

10,

176

170

DATA

80,

9.291,208,

4.169.208,208, 1

9.201,

36,

176

180

DATA

68,201,

19:144, 7,

96,248.233, 1

8,216,

9,

128

190

DATA

141,

11,220,

32,253,200,141,

10.220,

32,253,

200

200

DATA

141,

9.220.169,

0.141,

8,220,

32,121,

THEIR,

240

210

DATA

13,

32,253.174,

32.158.183.224, 1

6.176,

22,

142

220

DATA

167,

2.120,173,

20,

3,

73.161.141,

20, 3,

173

230

DATA

21,

3,

73, 34,141,

21,

3,

88,

96,

76, 72,

178

240

DATA

165,251,

72.165.252,

72.173.136,

2.133,252,

169

250

DATA0,133,251,160, 30,173, 11,220,201, 18,240, 17

260

DATA

201,128, 144,

15,

41,127,201,

18,240,

9,248,

24

270

DATA

105, 18,216,208,

2,169,

Oh,

32,219,200,173,

10

280

DATA

220,

32,219,200,173,

9,220,

32,219, 200,173,

8

290

DATA

220,

9, 48, 32,243,200, 104,133,252, 104,133,251

300

DATA

76,

49,234, 72,

41,240, 74,

74,

74,

74, 24,

105

310

DATA

48,

32,243,200,104, 41,

15,

24,105,

48, 32,

243

320

DATA

200,169,

98,145,251,173,167,

2.15

3, 0.216,

200

330

DATA

96,200,177,

34,

56,233,

48,201,

6,176,134,

10

340

DATA

10, 10, 10,133,251,200,177, 34, 56,233, 48,201

350

DATA

10,176,238,

9,291,

96

360

IF S <> 32970 THEN PRINT

“ERROR IN DATA

END

370

PRINT ee OK

This

program

to

constant display

the

Time

will

applied as follows:

Do you want to enter the time and the display

turn on,

so enter the following command:

SYS 51200, “HHMMSS”, COLOR

350

“HHMMSS” means the time (hour, minute, second)

and COLOR the color code of the displayed time (from O to 15).

For example, if you want to set the clock to 2 p.m., 30 minutes and 3 p.m

Seconds set and the display should be in yellow color

appear, you would enter the following SYS command:

SYS 51200, "143015",7

The current time now appears in the top right corner

with hours, minutes, seconds and tenths of a second.

You can switch off the display by entering

SYS 51200

Only the display is switched off; the time is running

internally. By entering again

SYS 51200

)

the current time appears again.

And now here are some tips on how to create your own

Multitasking applications:

There are basically two methods for inserting one

second "jobs":

The first option is to exploit the system inter-

rupt routine that is called every sixtieth of a second.

This alternative was also displayed in our routine

the time used. To do this, proceed as follows: Man

changes the interrupt vector so that it applies to its own routine

shows. Your own routine must then be completed

a jump to the original interrupt routine, so

the computer continues to query the keyboard, for example.

351

In the other alternative, the routine to be integrated solves the problem

itself triggers an interrupt. This could be done, for example, with:
Output to printer. Here you could, for example,
Use the printer's busy line as an interrupt trigger.
Every time the printer is ready to accept a character,
it triggers an interrupt. The interrupt routine now
a character is sent to the printer and then in
normal program continued. Does the printer have the symbol?
processed, it triggers another interrupt in which then
the next character can be sent. The user of the

The computer doesn't notice anything.

Of course you need to program your own applications
Knowledge about the operating system of the Commodore 64 that you

in °64 internal’.

352

9.7 POKEs AND THE ZEROPAGE

As you have probably already noticed, there are different ones

Addresses used when programming in both BASIC and

Machine language can be useful. Here's a small one

Excerpt from different addresses:

Address: (possible) application:

0000-000 1 By POKE in one or both of these

Addresses can be a specific memory area

be switched off and on again

0043-0044 This address points to the beginning of the

User memory, i.e. at the start of the

BASIC program. You can start with

get this line: PEEK(43)+256*PEEK(44).

On the other hand, you can through POKE

also set the beginning higher and so on

lower storage area for the remaining ones

Use sprites.

0045-0046 At this address you will find the start of the

Storage space where the numeric

Variables begin. This address is for

usually right after the BASIC

Program memory.

0047-0048 This is the start address for the array

Storage space. All fields (arrays) are in

stored in this area.

0049-0050 This address points to the end of the array

Storage space.

0051-0052 The text variables start at this address

353

(Strings) of the BASIC program.

0055-0056 Pointer to the end of BASIC RAM. Through

moving this address it is possible

a specific memory area in the RAM

To protect Commodore 64 from overwriting.

This is how you can protect thisMemory area for machine programs

reserve, and still have the area

from $COOO to $CFFF free for other purposes.

for example: POKE 55.0: POKE 56.64. This one

POKEs set the BASIC RAM end after $4000.

0115-0138 The CHRGET routine is at this point,

which contain the characters from the individual BASIC

gets lines. To create a BASIC extension

write, this routine must be changed

become.

0203 This address contains the current code

button pressed. Is the value of this address

equals 64, that means no key

is pressed.

Do you want to take a closer look at the inside of the Commodore 64?

We recommend that you read DATA BECKER

BOOK 64 internally. There you will find out more about the

Programming in machine language and the structure of the Commodore

RAM and ROM. Why not experiment with them yourself?

different addresses of the Commodore 64. There's a lot in yours

64 - You just have to get it out of him.

354

9.8 CONTROL OF TEXT ENTRY USING THE KEYBOARD

A very common problem in data processing is

querying and checking inputs via the keyboard. Off

This is why we would like to take a closer look at this point

address this problem.

The most common method of entering

Information about keyboard is the INPUT command. This command is

Although very easy to use, its disadvantage is that

insufficient possibility of checking what has been entered

sign. When you apply this command you should get this

generally, even when entering numbers, with a text input

(i.e. $) do. This will at least ensure that

The program will fail if the input is incorrect, e.g. text

an input that required a number, not one

?REDO FROM START

Error disrupts the program flow. Opt against it

Text input and if you want to enter a number, you must

Of course, this text first with the VAL function

convert a number. Nevertheless, this application is safer than

read a number directly. But there are some special features

that you need to consider. This is how the result of the function is:

A$="123D4": PRINT VAL(A$)

the value 123. On the other hand, results in

A$="123E2": PRINT VAL(A$)

the value 12300. Here the character "E" has the meaning as

EXPONENT, i.e. 101x. In our example: 123 x 10 T 2. We see

So that in the "normal case" the value of a text only up to

next letter is output unless it is

around an "E". But here too there is an exception. The function:

355

A$="123EE2": PRINT VAL(A$)

again results in the value 123. If you enter the

Embarrassment should come from a text about input

was entered to form a number and you want all of them

If you ignore letters, the following routine will work for you

be useful:

(We assume that the variable A$ contains the text

is stored. You can of course use the program to do this

change it so that you can also check other variables.)

50000 IF LEN(A$)=O THEN RETURN: REM NO TEXT AVAILABLE

50005 B$="": DELETE REM TEXT

50010 FOR I=1 TO LEN(A$): TEST REM WHOLE TEXT

50020 TS$=MID$(A$,I,1): REM CHARACTER AT POSITION X

50030 IF TS$<"0" OR TS$>"9" THEN 50050: REM A NUMBER?

50040 B$=B$+TS$: FORM REM NEW TEXT

50050 NEXT I: REM NEXT CHARACTER

50060 A=VAL(B$): FORM REM VALUE

50070 RETURN: REM BACK TO THE MAIN PROGRAM

If you use this routine from your main program with the

If you call the passed value A$="123DD4" (GOSUB 50000), the

Value 1234 in variable A returned to the main program.

However, the variable A$ remains unchanged. But you have to
Remember that the exponential information now has no effect.

If you want to fix this little problem, you can

Modify the program as follows:

50025 IF TS$="E" THEN 50040

Now even with the value A$="123E2" the correct result is 12300

delivered.

Another problem that occurs when inputting using INPUT

can occur is the distinction between small and

356

Capital letters, provided you have the Commodore 64 with PRINT CHR$(14)

have switched to upper/lower case. These distinctions

are often very useful when searching for terms

within a text or any other information

which you don't know exactly whether they are in capital orUppercase/lowercase letters were entered. This is how the Commodore 64 appears

This problem occurs more often because there are two options

There are uppercase/lowercase letters or uppercase/graphics.

Imagine searching within one

Address file contains the address with the name Meier. Not just that

This name occurs frequently, it can also be different

The spelling is available, i.e. MEIER or Meier. To all of these

To find names, we have to write a little routine again,

which allows us to find both MEIER and Meier.

we have in our first routine for picking out

Letters in numbers have a similar problem. There we have

the entire text (new German STRING) is examined for numbers.

Now we need to make the text either uppercase or lowercase

investigate. Since the Commodore usually has the small ones

Letters located at the bottom of the character table
we check for capital letters, as these are after the switch

on capital letters/graphics can be converted into graphic characters - and

This doesn't look special in normal text display

beautiful.

As just mentioned, the capital letters are in the top

Range of the character set. The difference between "a" and "A"

is exactly 128. "a" is encoded as CHR$ 65 and "A" as CHR$

193. Represented in binary is 65 01000001 and 193 11000001. Like you

The only difference between the two numbers is the first "1".

If you know a little bit about Boolean algebra

you will know how to convert this "1" into a "0",

so that the 193, i.e. "A", becomes a 65 and thus "a".

But even if you are not familiar with this calculation method

357

If you are familiar with it, you will immediately understand how this number conversion works

is going on.

01000001 65 a

11000001 193 A

O1171171119 127

the result should be:

0100000 1 65 a

To get this result you have to enter the number 65 with the

number 127 UNDER (AND). Each number only becomes "1" if

if both digits compared are "1". So we see that so

the first "1" is simply hidden. Here is the program,

that turns A$="Meier" into A$="meier".

50000 IF LEN(A$)=O THEN RETURN: REM NO TEXT AVAILABLE

50002 B$="": REM DELETE THE INTERMEDIATE TEXT

50005 FOR I=1 TO LEN(A$): REM WHOLE TEXT

50010 T$=MID$(A$,I,1): REM CHECK EACH CHARACTER

50020 T=ASC(T$): REM WHAT CODE DOES THIS CHARACTER HAVE?

50030 T=T AND 127: REM HIDE THE FIRST BIT (1)

50040 T$=CHR$(T): FORM CHARACTERS WITH NEW CODE

50050 B$=B$+T$: FORM REM NEW TEXT

50060 NEXT I: REM NEXT CHARACTER

50070 RETURN: REM BACK TO THE MAIN PROGRAM

With this little routine you can easily do all your input

control. Theoretically, the same change would also be possible

Uppercase/lowercase to uppercase. To do this you then have to use the AND

Replace 127 with an OR 128. This OR does exactly that

reverse what AND does. Each BIT is then set to "1".

if a digit is "1". 128 is represented as 1000000.

358

9.9 - FORMATTED PROGRAM LISTING -

The following small program was originally

created to help you type programs

facilitate. All programs new for this 4th expanded

Book editions were written using this routine

been put on paper.

With this program you have a tool at hand that

Allows you to customize your program listings (from Basic

programs) can be freely designed in the print width. This is what it is

it simply requires that you do so after doing this

routine loaded, the name of the one to be printed

program and the desired number of characters per line

specify. The listing is then created using the source code

Byte by byte is fetched from the floppy disk and stored in it

print format is translated. Of course, too

Cursor control characters are also printed out. This will happen if that

program encounters a quotation mark, the variable "M"

set to "1". After that, all ASC codes that come from

from the diskette indicates a control format

checked. If it is a tax stamp, it will be

corresponding inverse print characters added to the listing.

d
e
e
f

e
e

e
e

t
n
eA
D

I
T
O

o
P

o
P

a
P

l
m

S
a

FEN S85 3h: 9p 2p: SE phe 2 9 a a SE a a a ea oe EEE OH OE
REM FORMATTED EXPRESSION

e
G

a
M

m
M

T
m

o
C

m
M

i
M

i
G

i
G

i
f

&

m
M

a

l
O
“
i
y

d
G

h
b

FEN 385396 Sb: 3h 2h 2 af pe ae a ae a a he a a a Oe OR OEREADKS¢ 19>NEXTI
DIMKS Pr So > FORT=17TORS:

FRIHNTEHRFE

"LH": INPUT "PROGRAMMAME" ;

J: IF J=@0RJ>7
IHPUT"ZEICHEN JEZEILE";

EH158

OPEN1.8.4,P$:0PENd.4 a

GOSUB 48@: REM START

GOSUB 46@: REM FOLGE

IF F = @ THEN CLOSE4:CLOSE1: ENE

GOSUB 484: REM ZEILENNR

2$=F$+" "

GET#1 .AS: IFAS=""THENAS=CHRS>
Sa: GOTO1S8
A=ASCCAS> : [FA=@THENGOSUBS

: GOTOZ6
IFM=1 THENGOSUB29@

CA-127>
IFA>127ANDASZO2THENZ$=Z$+kK$

)
P
o
P

m
W

M
G

m
M

IFA>31ANDA<128THENZ$=2$+CHRSCAD

: [FM=2THENM=@
IFA=34 THENM=NM+1

359

GOTO 226
IFA=5 THENZ$=Z2$+"9"
IFA=17 THENZ#=Z2$+"'3)"
IFA=18 THENZ$=Z7$+"9"
IFA=16@THENZ$=Z7e+" "
IFA=145THENZ$=2$+"9)" |
IFA=19 THENZ$=Z2$+"gy"
IFR=28 THENZ$=Z$+"pg"
IFA=28 THENZF=ZE+"4"
IFA=29 THENZ$=Z$+"py"
IFA=3@THEN$=2$+"Gg"
IFA=31 THENZF=ZE+"8"
IFA=144THENZ$=2$+"g"
IFA=145THENZ$=2$+"mi"
IFA=147THENZ$=Z$+"3"
IFA=156THENZ$=Z$+"8"
IFA=157THENZ$=Z2$+"gy"
IFA=158THENZ$=2$+"7"
IFA=159THENZ$=2$+"p,"
RETURN
GET#1 JAS: IFAS=""THENAS=CHRS<a>
FL=ASCCAS>
GET#1 JAS: IFAS=""THENAS=CHRE CG > |
FH =ASCCAS> | --
F=FHR2SE+FL :F$=STREÄF) :FE=RIGHT$CR |

Se

$.LENSFEI—-1H
oe

RETURN
IATREND.FÜR
.NEXT . DATA. INFUT# » IMPUT I

ei 16
IM.-READ LET.GOTO.RUN.
IF .RESTORE .GOSUE
and DATARETURN
.REM.STOP OH WAIT »LOAD . SAY
E VERIFY. DEF,POKE.FRINT#.PRIHT.COHT
Sb

DATALIST CLR CMD. SYS OFFEN. CLOSE.GET.

HEM. TABS.TO.FN.SPC*. THEN HOT. STEP -
2° DATA+.—.#.¢
oT OAND OR > = 60. SGH. INT.
BS -USR FRE .POS .SGR END .LOG EXP .COS .SIN
SSG DATATAN-ATN.PEER
.LEN.STR# .YAL ASC .CH
R$ .LEFT# .RIGHTS . MIDS
326 IFLEN¢ 2$9<.3+1THEHPRINT#4
.2%: RETURN
606 PRINT#4 .LEFTS¢2%.J>:2$=RIGHT$¢2$.LEN
($2-Jo: GOTOS3a

Erklarung zum Listing

100-120 Programmkopf

130 Erstellen der Strings fiir die Basic-Schltisselworte
140-150 Benutzereingabe der Parameter
160 These channels appear in the programs

360

This is also available to us. All of them

Druckerkanals

170-210 Aufbereitung der Folgeadresse und der Zeilennummer

220-260 There are many programs in this Token

Normalen Charakterwert

270 Prüfen auf Fuhrungszeichen

280 Schleifenende für ächstes Programmbyte

290-470 Texterzeugung für Cursor Steuerzeichen

480-530 Unprogrammed from the 2-byte address

540-580 String for Tokens

590-600 Druckausgabeiner aufbereiteten Zeile

Diesel Programm mag Ihnen als Grundgerüst für weitere

This is why nothing happens. So

It is the most important thing in the world, especially in your home

There's more to this topic than the other one

berücksichtigen. This is relevant to the real world, this

This is why we are in the right place

Implementation werden muß. We can also do this

For the color of the orange curd, there are 3 inches in it

nicht erzeugt. The price is next to the Platz in Zeilen

460 bis 470 reserve.

This problem can be found in a String in a Quelltext

There is no need to worry about this situation. Das

This is the beginning of the day and the rest of the time. Zeile 180

If you want to know more about this, please contact us

180 GOSUB 480 : M = O : REM Folge

361

UND WARMSTART
9.10 RETTEN VON VARIABLEN

What's the difference between 64 and 64 interns? Do you have any questions?

We will be able to use the AddressManager Map in the Programme

Zur Filterung der redundanten Combinationen etliche Wochen

“am stuck” lief.

This may be the case if something is wrong with you,

This is very useful, this program is unbeaufsichtigt

Love and love.

There is a lot of information about this:

See this program now and then die

more and more, and what's in the middle of the day

There is no need to change the title with different options.

inhalten fortsetzen.

Falls Sie in Ihrem Programm keinen festen Warmstartpunkt vor-

If you have anything, then this size is 7 in

7 STOP

This new routine is often used. Die Zeilen 10

140 You can see the demonstration and use it here

“Ernst fall’ nicht benötigt.

There are many different types of items, including 63050 ... 63070

Redundant seein! This is where your home is located

Read more. Auf die Hintergründe inzugehen, würde an

Diesel still zu weit führen.

This information is available in the following:

We are here, this program is full of content,

Drücken Sie einfach die STOP-Taste. This may happen

Zeilennr. der °BREAK’-Meldung!

362

Tragen Sie unbedingt dafür Sorge, daß der Abbruch Nicht

mitten in other words

Still more)!Then enter: GOTO 63000

That's all.

If you use all string variables as literals in the program

anchored yourself like in the example, you can do that

Question whether the strings should also be saved, with N’

answer. These variables are back after the warm start

available.

If you didn't answer with “N°, it will take a while

to the DONE message, because the entire area from

End of program saved up to memory upper limit.

To warm start, load your program and enter:

RUN2

Now it may take some time until the BREAK message

dung comes (or not, depending on how line 7

looks).

The program itself may not have been changed in the meantime

otherwise the variable area will shift!

Now enter (after °“BREAK’):

GOTO line no.

Line number must be the one next to the one that

You remembered when you aborted and it's done

further.

There is a catch:

Files that may be open when you cancel are now not open!

You may have to do this by hand after the “BREAK”. ES
In such cases, it is recommended to use the program for
Warm start should be designed specifically, i.e. that it only works in those places

363

can be interrupted where all files are closed.

By the way, the cold start must be done with:

RUN 10 (or another line number)

take place.

il aota 3

= load"varı",.&,.1

Te]EI TS 9 . 153

4 pokedail cpokeda, zo

nb prtabec ged St, ee paKee. z4
B pokeSl, ciicpokeSo, re
r variety Lon
Jo ==1:b=7:c=H}
ott ea -kht="kh' :c$="cc"
ea dry"ed SCL Hee" HE"
43 fori=Gtosedivei rest
St cq hoe lake

134 erirta,b,c
116 erintaf,kf,c#

Lett printdt
(Go, JE. dc)
1s Fori=dto9:erintdli>,
2cmext
144 erıd

SHE cHa=Sor : Fe" Vari"
Esl input" also strings Jer" sre
E2020 zl=peekcd?7> -ze=peekC4e
Eat 2it=peeki
doo -z4o=peek CSG»
add 2sh=peel (51> -ze=peek¢ S23
Stns zilzpeekc4?>s-re=peekt 4S
Ese zaspeelc45) -zd=speel:C50)
Eat ZOnreek IS) :Re= reeli( 52%
Esse openis,a,15, "sO:vari":closel5

SSS rem filename after cassette putftfer:
all fori=lto lent#E> :pokecati, asctmidE(4$,1,1>239-next
BsL1IG if retie"n"thenéd31is56
Blem rem end address
Btls zis=peaekchhs -ze=peek Se 3 s,
aldi pokepal. prewles499: roker’32,peelkcS) -»goatos3 led
old poke rol, peekcSio:poke’S2,peek(Se)
Bslew rem start address U. Zeiwer zuf ztartadr.
esl pokes), peek 4h) :poke2s2, peek Cds :poke7Sa, 251
ala rem versteadr.. zeiser on filename and laernae fi leneme
a1 pakelSée, S:pokelSsr,66-pokelSa,
S-pokei_ St, learnc+#s>
BSH syushidye -crem save

moe lit perimt” Seber tia"

364

THAT'S IT.

The professional database for

Anyone who has been jealous of the performance

~ Commodore 64 and Apple Ile/llc features expensive databases for larger
Bere computer has squinted, which can
now keep up without getting a new one
Having to buy a computer: with
SUPERBASE, the professional data
bench for COMMODORE 64 and APPLE Ile/
lic. Here are some of the features-
This 'super' database:
@ maximum record length 1108 characters, spread over up to
to 4 screen pages |
@ up to 127 fields per record, with text fields up to
can be up to 255 characters long _
@ a total of 15 individual files can create a SUPER

The professional database BASE database can be linked

® Storage capacity limited only by floppy disk
| @ extensive evaluation options and comprehensive

fortable report generator
@ Calculation options and arithmetic
@ Import (reading in external data) and export
(Output of SUPERBASE files as sequential files)
Functions enable data exchange with others
programs
@ through powerful database language also as

A DATA BECKER PROGRAM @ German screen dialogs and extensive German

. Complete application generator can be used

PRECISION SOFTWARE manual

SUPERBASE is available for COMMODORE 64 (DM 398,-
recommended retail price) and from around mid-November
for APPLE lle/lic (DM 498, recommended retail price).

The expert system

6 for your computer

~ For COMMODORE 64, IBM PC and APPLE

The future already exists for lle/lic users

~ started. From the end of November you can

we give them for these computers
| Deliver expert system XPER. XPER is

N a database based on the principles

Ä is based on artificial intelligence.

The principle of an expert system like XPER is simple
and captivating at the same time. They “feed” XPER yours
know, e.g. as a doctor, about diseases and symptoms. XPERXPER will then help you diagnose later
XPER asks questions and based on your answers
continues to process the search tree until one is satisfied. The expert system for
solution or narrowing down possible solutions your computer
is found. The possible applications of a |
Expert systems are practically unlimited and remain so
left to the user's imagination. The XPER version
nen for the individual computers differ
only in the data volumes: |

Objects Criteria Properties

IBM PC
APPLE lie/lic 90 30 200

300 50 250

The COMMODORE 64 and APPLE versions cost
each DM 298,- and the IBM version DM 498,-
(recommended retail price).

re

and

Machine language programming- _
introduced... Back to that
many example programs, come
complete machine routines and
important tips & tricks for machining
internal programming and for
Working with the operating system.
THE MACHINE LANGUAGE BOOK FOR
ADVANCED, approx. 200 parts
th, DM 39,-

3

With the important PEEK and POKE
Commands can also be given by
BASIC from do many things for that
otherwise complicated machine routine
would be necessary. This book
explains it easily
Handling PEEKs and POKES. With
a huge number of important ones
POKEs and their possible applications
abilities. This is what the structure is for
of the C-64 is well explained: operating
system, interpreter, zero page,
Pointers and stacks, character
Generator, sprite register, pro
programming of interfaces,
Disabling the interrupt. To that
a first introduction to the
Machine language. Many examples
programs. PEEKS & POKES FOR
THE COMMODORE 64, approx. 170 pieces
th, DM 29,-

The best-selling product, which has been sold over 40,000 times
seller who makes you easy to understand
and comprehensive into the machine
introduces language. You learn structure
and how the 6510 micro-
Know the processor and find out how
you enter machine programs
and start and learn it
Working with monitor, assembler
and disassembly. assembler and
Disassemblers are included in the book as pro-

gram as well as a
Single step simulator that allows you

2

Not in machine language
be difficult. THE MACHINE

LANGUAGE BOOK FOR THE COMMODORE

64, approx. 200 pages, DM 39,-

You have the entry point
mastered machine language?
Then the .new English will show you
Learn how to become a professional now
the. From problem analysis to
to the machine language algorithm
mus you will be comprehensively introduced
Basics of professional

know more = _ —
program better

Poems from the computer, invitations
information about the party, advertising letters,
car cost calculation,
Recipe card, health care
chiv, handicraft aids and
even more. For every 64
We strongly recommend that users
lens worth! THE IDEAS BOOK FOR
COMMODORE 64, 1984, about
200 pages, DM 29...

9
User-friendly and successful
rich Program in BASIC
is not just for professionals.
They tell you how to do it
Software authors from the
Home DATA BECKER: Menu
control, mask structure,

for professionals

in

for advanced users

Parameterization and documentation
mentation are the key words.
In addition, the powerful data
administration QUISAM with running
finished example programs.
64 FOR PROFESSIONALS, 2. A e
1984, approx. 300 pages, DM 49...

access works or something
you can create a complete file
Management program created
(in the book as detailed
The listing described contains
ten), he needs this new one
Super book. ALL ABOUT FILES
ADMINISTRATION AND DATABASE
KEN, approx. 200 pages, DM 39,-

THAT

TO

FM DA BECKER Bucy

6
Almost everything you can do with it
64 can do. Easy to use
understandable and exciting
written. With programs
for use and learning:

The bestseller for graphics programming
mation of the C64 by the author of
famous super graphics. For entry
gers, advanced users and professionals.
Brings everything Uber sprites, high-res

Graphics and multicolor up to \
3D and CAD. Countless superpro-
programs and routines for typing
pen. THE GRAPHICS BOOK FOR COM
MODORE 64, 1984, 295 pages, DM 39,-

4

Compilers are one of the most important
most working resources of a program
mierers at all. in this book
a successful compi-
learner author look at the cards. He
not only explains the basics, functionality
tional and correct use
from compiers, but shows on
Example of your own language
also, how a complier developed
will. This involves lexical
analysis, syntactic analysis,
semantic analysis and coding
generation is described in detail.
Lots of useful programs round out
this on the COMMODORE 64
tailored book that is toRequired reading for every serious person
should belong to the programmer.
UNDERSTAND - USE COMPILERS
- DEVELOP, approx. 200 pages,
DM 49,-

Release date: December '84

5.

A comprehensive, practical
ted introduction to the important
current topic of file management
and databases specifically for
COMMODORE 64 users.
data management, database
ken, database languages and
Become expert systems
just as explained as logical
and physical data structure
ren as well as sequential and
Direct access. Anyone who wants to know
how to deal with data sets larger
Over 255 characters works,
like a hashing data

Ns is how the direct

A lot of tips & tricks

-

11 THE BESTSELLER - VOLUME 1

64 Tips & Tricks, which is the most popular with over 70,000 copies.
bought DATA BECKER BOOK, is a very interesting collection
of suggestions for advanced programming of the
COMMODORE 64, POKE's and other useful routines, interesting
sant programs. From the content: 3D graphics in BASIC - color
bige bar graph - definition of your own character set -
Keyboard layout - simulation of the mouse with a joystick -
BASIC for advanced users - C-64 speaks German - CP/M
the COMMODORE 64 - printer connection via the USER port -
Data transfer from and to other computers - synthesizers
In Stereo - Saving an improperly closed one
Datel - Creating a BASIC line in BASIC - Cassette buffer
as data storage - multitasking on the COMMODORE 64-
POKE's and the zeropage - GOTO, GOSUB and RESTORE with
calculated cell numbers, INSTR and STRING function -
Repeat function for all buttons. All machine programs included
BASIC loading programs. 64 Tips & Tricks is a real find

rube for every COMMODORE 64 user.
4 TIPS & TRICKS, 1984, over 300 pages, DM 49,-

12 NOW EVEN MORE TIPS & TRICKS - VOLUME 2

The second volume of 64 Tips & Tricks should also come very quickly
become a bestseller. The book contains a wealth of high-quality
ger programs, suggestions and routines: an extensive one
Chapter on software protection - command extensions and how
how to make them - tips & tricks for programming super
play - pointers and their manipulation - more about the internet
rupt handling with many examples - extended hardware
Options - copy operating system to RAM and there
manipulate - as well as many other programs, command systems
tations and useful routines. Anyone who likes programming
and wants to know more about the COMMODORE 64 that needs
this new book.
64 TIPS & TRICKS Volume 2, approx. 250 pages, DM 39,-

uuhsuchuchuuhautd

oe ae

CPC 464
ji
GRAPHICS & SOUND| |

T|
I
D

|
E
E
R
R
U
S

!

|;

n
a
e
s
e
a
a
s
j

l
i
T

8
With the music book you use the
Sound possibilities of the C64! Besides
a short introduction to the Com-
computer music you can find information

programming, synchronization and
Ring modulation. Numerous supplements
games for sound and song pro-
programming and important routine
round off the content. THAT
MUSIC BOOK FOR THE COMMODORE 64,
over 200 pages, DM 39...

The Schneider CPC 464 (10
not only has an excellent
outstanding price/performance
relationship, but also
exceptional graphics
and sound capabilities. In
this book will
Possibilities of the CPC 464
comprehensive and easy to use
clearly presented. Many
useful example programs
grams round the text
off. CPC 464 GRAPHICS &
SOUND, approx. 200 pages, DM 39,-

Release date: December '84

A treasure trove for him

APPLEII users

A DATA BECKER BOOK

13
Lots of tips and tricks all around
the CPC 464.
From the hardware structure,
Operating system, basic tokens,
Drawing with the joystick,
Applications of the Window
technology and very many
interesting programs like
an extensive file system
management, sound editor, comfortable
tablen character generator up to
complete listings -
The book offers many games
Suggestions and important help
fen. This huge treasure trove
Every CPC 464 owner should
have! CPC 464 TIPS & TRICKS,
1984, over 250 pages, DM 39,-

14
Particularly important: The APPLE
I TIPS & TRICKS book lying
Experience working with
the It, Ile and the new one
super compact lic based.
Useful PEEKs and POKES,
Basics of ASSEMBLER
programming, color graphics,
Structure of screen masks
are just excerpts from the
Variety of topics. An overview
about the use of important
Software for the APPLE lirun
det this new book, this
every Apple |i owner has
solite. APPLE II TIPS & TRICKS,
1984, over 400 pages, DM 49,-

15
A book with utilities, tricks andmany programs. definition
new data structures:
List, stack, queue. radio
tion programs: permutation
nen, combinations, factorials
et al. Games, number conversion.
Graphics: CAD/CAM and 3 Ora

PASCAL 64! PASCAL 64 TIPS &
re 1984, approx. 250 pages,
DM 39...

16
By more than a hundred pages
this has become more valuable
legendary book for the VC 20.
In addition to the fir every user
important basic information
the book has a wealth of first-class
ger Programmiistings: Pro-
programming the function key
sten, autostart, command extension
ments and user programs
grams. in this waltz
every vc 20 owner always
find something new! vc-20
TIPS & TRICKS, 3rd advanced
and revised edition,
1984, 324 pages, DM 49...

without picture:
A real treasure trove for him
TI-99 User Is the book
TI-99 Tips & Tricks. $00 pages,
DM 49,- u;

4

Because of the game
The super team

General German manual with practice lessons
, complete only DM 99,- (recommended price)
ung).
Many DATA BECKER authors use TEXTOMAT
because of its versatility and ease of use
tion Even for creating entire books.

DATAMAT

The data automaton for the

COMMODORE 64

ATA BECKER PROGRAM

ee ee eas

rt,

AAO

eo.

ern

5

OO NEG

DATAMAT

Germany's best-selling file management offers
some things that were previously unimaginable in this price range
seemed: Ä
menu-controlled diskette program, thereby
extremely easy to use - for any type of data -
Completely freely designable input mask - 50 fields per
Record - 253 characters per record - up to 2000
Data sets per file depending on the scope - interface
TEXTOMAT - runs with 1 or 2 floppies - completely in
Machine language - extremely fast - German. CON TOMAT
Character set also on COMMODORE printers - almost every one. .
Printer can be connected - print out via RS 232 - dupli- ScnuB program according to sacs) Esto with caseonbach sank:
decorating the data disk ~ good user guidance - account monitoring, automatic tax posting,
Main program completely in memory (no floppy disk "FA table creation, account sheets, determination of the
change) - integrated mini word processing - German - st .yo registration values and monthly and year >
Manual with exercise sections. |
You can: |
Search every record in 2-3 seconds - as desired
Select from all fields - all fields at the same time.
sort - print lists in a completely free format - es|
Print labels. Completely only DM 99,-. (unrelated price)
recommendation)

TEXTMAT

Germany's best-selling word processor offers
Professional performance at a hobby price:
TEXTOMAT in keywords:
Floppy disk program - menu-driven throughout -
German character set also on COMMODORE printers -
Calculation functions for all basic arithmetic operations —- 24,000
Characters per text in memory - texts of any length
by linking - horizontal scrolling for 80 characters
chen per line - runs with 1 or 2 floppies - freely pro-
grammable control characters - form control for
Margin adjustment etc. - complete block processing
tung - block operations, search and replace - serial :
letter writing with DATAMAT - formatted output

Team - adaptable to almost any printer - executable

N

billing. The new KONTOMAT is fully parameterized
sized and can therefore be adapted to your needs.
For all traders who are not required to book according to the HGB
are obliged to lead. ACCOUNT ATM is for you
commercial use, but also as a learning program or
suitable for household accounting.
ACCOUNT ATM in keywords:
Floppy program - maximum 120 accounts - amounts
with up to 6 places before and 2 after the decimal point - 4 added value
and input tax rates - interval document entry - 4
Booking types (DEBIT, CREDIT, DEBIT/CREDIT and CREDIT/
DEBIT) - Display of the debit and credit sum for multiple
multiple booking records - convenient receipt entry
Date, booking text, tax code and amount -
Printing the journal during receipt entry - Print
of extensive account sheets - printing of a sum
men and balance list with monthly and annual sales
Totals - business evaluation with
Print output - determination and print output of the
VAT payment burden - storage of assets
and automatic depreciation at the end of the year - over-
visible depreciation list - works with 1 or 2 drives -
extensive German manual. DM 148,—
recommended retail price

data or a purpose - expression of a
Collective transfer list - correction optionindividual payment files - works with one or
two floppies - extensive German manual.
DM 148,— recommended retail price

CALCUMATE

The KALKUMAT software package sets new standards for
Calculation programs on the Commodore 64. All
proven performance features of such programs
were adopted, new ones were added and the whole thing
with an unusually comfortable user interface
provided. With the KALKUMAT you can create tables with up to
to create 255 rows in 63 columns. Anyone can
Column width can be freely chosen. Values are over
an edit line can be entered just as easily as in
BASIC programs, all options are available via menus

PAYMENT
TRAFFIC

Extensive payment transactions
can become a nuisance. The soft |
goods package PAYMENT TRANSACTIONS via-
takes up most of this
work. Except the necessary ones
Skills for completing and
List transfers and
Checks are PAYMENT TRANSACTIONS in —
able, collection lists, collection lists
etc. to put together independently.
PAYMENT TRANSACTIONS in keywords:
Floppy disk program - max. 100 numbers
lung receivers per disk - three
Definable sender banks - 25 numbers
development files - 14 freely definable formats
mulare - control printing when receipts are entered
possible - input of invoice details

reach. If you are ever unsure, you can
call up one of the many help texts. All texts are in

issued in German, as well
can choose between the American and one
German character set (with the Umiauts)
be chosen. A special treat
sen represents the integrated graphics package.
Read values from an edited worksheet
can be represented graphically in a variety of ways.
len: pie graphics, curves, minimum
Maximum graph or column charts. The
You can use the resulting graphics with various
different font sizes. in the gra-
phik program can also define 8 windows
be ned. The KALKUMAT is a problem
léser for tasks in both business
as well as in the private sector. Every 64 owner
Zer will have his individual area of application for the
Find KALKUMAT.
KALKUMAT, on diskette and with executable
technical manual DM 198,-

recommended retail price

All programs on diskette

/

‘Programs from a good source.

HOUSE MANAGEMENT In keywords:
Floppy disk program - management of 50 units per object
possible - master data management for houses and tenants -
recording rent, additional costs and garage rent - rental
account display - house and tenant list - reminders -
Recording the costs incurred - cost comparison
- Year-end billing with automatic annual carryover -
extensive German manual. a

FAK
With FAKTUMAT, writing invoices is no nightmare
more. Immediate invoicing with integrated warehouse accounting
tion. Individual adjustment of tax rates and units of measurement
and company data. Customer and item base can be fully maintained.
Fast access to customer and item data via freely defined
adjustable, 6-digit key. Automatic update
of item and customer data, can be used individually. All in
Above all, the work and time savings that you have always wanted
have desired.

FAKTUMAT In keywords:
fully menu-controlled - runs with one or two floppies - dis-
chain change (a floppy) only when changing from the main
menue Into the subprogram and vice versa - with exception
switching off the floppy during processing.
which all errors are intercepted (e.g. printer not switched on -
works with 1525, 1526 _MPS$S 801, EPSON printer and DATA
BECKER Interface - fully parameterized: company header, VAT. and
Discount rates, file size selectable - 5 cells for
Company header 30 characters each (first cell appears on the right
nung In wide font - 4 VAT rates; during the
Items with different invoices can therefore be
be charged at the applicable VAT rate - 10 discount
rates (discount rate 1 defaulted to 0%), when writing the invoice
Each item can be assigned a discount rate -
maximum 1900 items for 50 customers or 950 customers for 100
Items (max. items = [1000-customers!*2; max. customers = [2000-
Iteml/2) - manual entry of items and/or customer
during invoice writing - i.e. more items can be
kel are charged as even fitting into the data (at
Waiver of inventory accounting) or invoices can be issued
written to customers who were not recorded - integratedstructured warehouse accounting with issuing an inventory list -
Invoice amounts and dates are recorded in the customer file.
held - printing of: invoice (with debit from warehouse),
Invoice (without debiting from warehouse), delivery note - German
detailed manual with training and application instructions
German user guidance within the program (e.g. .Arti-
Kel not present’ instead of ‘RECORD NOT PRESENT’).

ae r

)

HOUSE MANAGEMENT
Now all homeowners can breathe a sigh of relief: the HOUSE program
ADMINISTRATION offers you very convenient administration
of rental apartments with the COMMODORE 64.
All you need is a COMMODORE 64, a floppy disk
1541 drive, a plug-in printer and the above
mentioned program HOUSE MANAGEMENT. The following ones
and many other powerful features make it possible
Extremely efficient management of your rental apartments.

The new FINANZGENIE software package turns your 64 into a...
Housekeeper. Whether fixed income and expenses, loans and
Savings items or variable amounts, you can feed anything.
The FINANZGENIE provides you with the prepared data
Screen or black on white for filing. In doing so, work-
The program is “date-oriented”. All data is based on
found when due. So it is also self-evident that
the FINANZGENIE has various useful calendar functions
nen has. Fixed appointments are monitored and on one
Personal appointment planner printed out. The FINANCIAL GENIUS takes care of
Of course, we also take care of your banking matter: Oberwel-
Solutions are prepared and account balances are automatically updated
updated. But you can also get advice from the program
get. A separate section revolves around the topic
Loans and savings. For example, you can apply for loans
calculate and compare or calculate with each other
how much interest your savings account will bring per year. With
With the FINANCIAL GENIUS you can do a lot of things, just don't make mistakes:
The operational safety was unusual
Level raised. It's virtually impossible to do meaningless or
making inappropriate entries. Every attempt leads to one
Error message. Your 64s with the FINANCIAL GENIUS are the team
for your private finances and appointments!
FINANCIAL GENIUS, DM 69,- *

THE DISK FOR THE BOOK

Load, start - Kiar! To follow
The following books are now available
Disk for the book with all of them
important programs:
64 INTERNAL
64 TIPS & TRICKS
64 FOR PROFESSIONALS
PRINTER BOOK
FLOPPY BOOK
MACHINE LANGUAGE BOOK
MACHINE LANGUAGE FOR
ADVANCED
GRAPHIC BOOK
VC-20 TIPS & TRICKS
TRAINING BOOK DATAMAT
UNDERSTANDING USING COMPILER
THE DEVELOPMENT
APPLE II TIPS & TRICKS
PASCAL 64 TIPS & TRICKS ren
Price DM 39 each *

Floppy disk for the SCHOOLBOOK FOR
COMMODORE 64 with 14 wide
programs and 70 pages

according to the manual DM 49,-*

N The prices for programs are recommended retail prices

All programs on diskette

The C64 doesn't just talk
Basic...

PROFIMAT

ADA

This programming language of the future that the Pentagon is in
DATA BECKER will now also do this
C-64 users made accessible through the TRAINING COURSE
to ADA, which is a very good introduction to this super language
offers. The compiler supplied provides a comprehensive
Subset of language.

ADA in keywords:
Block-structured programs - modular structure of the programs
programs- enables the handling of exceptional states-
den- error checking during compilation and at runtime -
enables easy integration of machine programs
- very easy to work with program libraries
gram disk contains editor, translator, assembler and dis-
assempblet - extensive German manual.

If you want to delve deeper into the innards of the computer, DM 198*
does not work without special tools. On the one hand,
full insight into all memory areas is possible,
on the other hand, dealing with machine programs should be SO _
designed to be as comfortable as possible
PROFIMAT has solutions for both problems: The machine |
language monitor PROFI-MON offers all the tools needed to deal with it
with machine programs; PROFI-ASS is a macro assembler,
which makes writing machine programs almost as easy
is like programming in BASIC. 7
PROFIMAT in keywords: “ |
Show register contents and flags - Show memory contents i
- Load, execute and save machine programs - Storage
Browse, compare, fill and move areas | on the Data BECHER POE- true single step mode - setting of interruption
score - fast trace mode - return to BASIC - format-
free input - linking any number of source programs -
generated object code can go into memory or on disk
- formatted assembler listing - loadable symbology labels -
redefinable symbols operators = support the
Floating point arithmetic - conditional assembly - assembly
oe MACROS with constant parameters. STRUCTO 64

MA STER 64 structured programming with the C-64 and for all programs
programmers who want to use the C-64 as an all-round computer

STRUKTO 64 is a fantastic new programming language for

| set and easily create sophisticated programs

want to create.

STRUKTO 64 In keywords:
interpreter language that has the advantages of BASIC and PASCAL
combined - structured programming - clear
Programs - easy to learn - easy to use -
Built-in toolkit makes it easy to enter and improve
of programs - easier work with the floppy sprite
Editor allows you to read sprite shapes directly from
On-screen graphic operation is well thought out
Commands supported - Playing music is independent
possible from the program sequence - approx. 80 new commands - available
als.Diskegtenprogramm -- detailed German manual.

MASTER 64 Is a professional program development tool
system for the C-64 that allows you to program the
development time to a fraction of the usual time
reduce. MASTER 64 offers program comfort that you
use solites.

MASTER 64 In keywords:
70 additional commands- screen mask generator- define-
ren of screen zone input from zone formatted
Output storage of screen content work
with multiple screen masks - ISAM file management, in
the data records can be addressed via an access key.
The records can contain up to 254 character key lengths
Up to 30 characters file size only from floppy disk capacity
dependent- access via key and selection mask- image-
screen and print mask generator == creation of any a —
Forms and output mask extensions - Too! - on DIS
kit functions - multiple precision arithmetic (calculating with 22 all programs
Set accuracy). * The prices for programs are
DM 198,-° recommended retail price

offers interfaces to monitor and assembler -
generates very fast programs in pure machine
code - supports relative file management, graphics
and Sound - offers the data types REAL, INTEGER, CHAR
and BOOLEAN as well as enumeration types and pointers that too
RECORD, SET, ARRAY and PACKED ARRAY data structures
can be combined - allows premature
Completion of procedures with EXIT, unrestricted
Recursions and convenient processing of Telifel
dern (Strings) - Is a mature German product
and comes with a detailed manual.
DM 99,- (without obligation a

For many people, dealing with floppy drives is still a problem
burdened with secrets. Others don't mind much
convenient diskette commands from BASIC V2. DISCOMAT
brings relief; All BASIC 4.0 diskette commands are available
available. You can also use the SUPERTWIN program
two 1541 drives can be managed as one dual drive
the. For users who want to fully appreciate the capabilities of the Floppy 1541
If you want to access it, the DISK-MONITOR is available; he does it
finally possible to provide direct access to individual blocks
easy and convenient to do.
DISKOMAT in keywords: 7
Floppy disk program - DISK BASIC supports floppy disk commands
of BASIC 4.0 (CONCAT, HEADER, APPEND, RENAME, OPEN, COL-
LECT, DSAVE, SCRATCH, DCLOSE, BACKUP, DLOAD, DIRECTORY,
RECORD, COPY, CATALOG, DS & DSS) - SUPER TWIN covers 2
Drives 1541 like a double drive - DISK MONITOR enables
light direct analysis and manipulation of floppy disks (direct
Reading and writing individual blocks, changing blocks with
partly screen editor, display of diskette status, direct download
sending diskette commands) - detailed German manual
book describes each of the 3 parts of the program. DM 99,-
unrecommended price recommendation

Brush up your English!

Can you imagine a more patient teacher than your computer?
ter? Hardly. The new learning program .BRUSH UP YOUR ENGLISH!"
always has time for you, helps you and knows what you have already learnedhave. The prerequisite is English language skills of the same quality.
The program asks you various questions, which you answer
can. Dabel draws “BRUSH UP...” from a vocabulary of 1500
Vocabulary with which over 700 tasks can be formulated.
If you don't know what to do, select the HELP function and
You will get a hint of the solution. Isn't that enough?
the answer appears. There is also the option to ask a question
to skip or delete from the current lesson completely. This
everything takes place in a simulated course. You determine the difficulty
level of difficulty and speed, the computer evaluates your performance,
monitors your daily workload and alerts you to any gaps.
With the new learning program 'BRUSH UP YOUR ENGLISH' you can
Brush up on your lost language skills again!
The complete course consists of three parts, which are divided into different
which word fields differ. Each disk can work on its own
be used.
BRUSH UP YOUR ENGLISH, parts 1, 2 and 3 each DM 49,- recommended retail price

The Compller BASIC 64 offers the possibility of BASIC programs
programs either in machine language or in one
to translate so-called speed code. Both variants
ensure that your programs run 4 to 14 times faster
run. Edit all programs with BASIC 64
have always been too slow for you. With the compact
With the speed code you can see the storage space requirements
of your program by 25% while the saved
more space-intensive machine code additionally
brings an increase in speed. BASIC 64 can do anything
Process program that is in COMMODORE 64 BASIC
was written (exception: individual POKE commands)
and partially also supports the well-known command
extensions. You can also use BASIC 64
Expand data storage space by 24K. By the way
BASIC 64 does some work for you: forming
mathematical expressions, preferably economic ones
Memory utilization and integer arithmetic. Through
a completely changed string treatment shrinks it
dreaded garbage collection in just a few seconds.
All options are called up via menu and input
ben checked for correctness. With BASIC 64 have
You have a tool in your hand that supports your BASIC pro-
gram faster than you previously thought possible
have held. DM 99,- (recommended retail price)

PASCAL 64

PASCAL 64 is a PASCAL compiler for the COMMODORE
64 with the following properties: very extensive
Command set - allows interrupt programming and

This is what learning does

PN x and

w" fi ial ; aa
de Pa u ie ee 2 4

yews.

IB ng, an >

a “>

r = %
's and a nasty, .

aeuk ¥ Y » -

a ¥ ;

x’ . ae z N
TM LA “fe’”
» v * ad
TM » ” Os 4
. mae a “

Pas “VUN
u

[N~

-

4

\ All programs on diskette

\

Rules and laws are developed gradually. Bel receives needs
you can get additional explanations using the question button.
The computer provides an unlimited number of exercises. Everyone
The task can be calculated in detail upon request. You can too
Take tests and have them graded by the computer

The program part “Help with homework” enables the user
in turn, to set the task that the computer (i.e.
Each diskette for C-64 only DM 49,-* Now available:
ALGEBRA i (Introduction to the theory of equations), ALGEBRA Il (Linear Cl-
equation systems of two equations with two variables), ALGEBRA Ill
(Quadratic Equations), ALGEBRA IV (Powers, Exponential Functions)
nen, logarithms).

Learning while playing This is not the case with the new JUNIOR MATHEMAT learning program
Keyword.Without dogged seriousness or excessive demands
Lower school students (up to 4th grade) can practice arithmetic. Entered
The tasks are embedded in a small video game that serves as a reward
and motivation functions. The exercises are suitable for all levels of difficulty
just adapted to the official curricula. The grading is also correct
follows this standard. Your child can use the JUNIOR MATH
Learn and play MAT completely independently. However, you have the Még
ability to check the level of performance. All tasks will be
clearly presented and can be solved in several attempts.
the. If it doesn't work the first time, the program gives careful advice
Helps and - depending on the task type - evaluates an answer only afterward
the third failed attempt as a minus point. This method helps children
also deal with failures. In addition, the individual training sessions areactivities so limited that the child actually lives in the intended way
can stay focused for a while. Try tasks too
to solve from the set theory! Maybe you need tutoring then
take. The JUNIOR MATHEMAT is the right program for parents
of primary school children. With the easy-to-understand MATHEMAT manual. Bel simple mathematical calculations
Adults and children can start immediately. JUNIOR MATHEMAT, turn your computer into a calculator with this program
M 69,-* all basic arithmetic operations and exponentiation, root extraction, pro-
centering and logarithms. The arithmetic inadequacies
features of the C-64 have been ironed out and the calculation accuracy
speed is 10 decimal places externally. Almost all algebra
ical tasks can be calculated using the MATHEMAT.
the. MATH is also important in differential and integral calculus.
MAT at home. The integrated program is a chapter in itself
for graphical representation. Every function graph can
be drawn on the screen; depending on the monitor
Also multi-colored if desired. They belong to the same topic
Skills of the MATHEMAT in the field of geometry. All

Whether at school, at university or at work: you can finally use logarith
Leave mentafein and formula collections in the drawer.
This tool and much more replaces the software package

A new series of easy-to-understand tutorials developed by
experienced educators and programmers, among the central ones
Topics in mathematics in secondary schools.
Each building block has an introductory point that describes the subject area
clarifies and the necessary terms, technical terms and symbols
explained. The graphics possibilities of the C-64 are fully exploited,
to provide a clear understanding of mathematical relationships
to wake people up.

VOLTAGE,
GAME and

They look for the best ones possible
Play for as little as possible
Money? Here you go! SUPER 4 offers
for a whopping only 49
Mark four absolute top games:
STAR CHRASH - a fascinating
of the space adventure.
SPUK - a great climbing and
Ladder game with 29 different
a pictures.
PANCHO - an action game with
a little Mexican.
CROWN - a slot machine
best variety with risk button
and golden series.
All games so far are in the SUPER 4 disk with the
Germany unpublished four super games are now available:
and were sent by us to your dealer for only
100 games selected for you. DM 49,-*

All programs on diskette
* The prices for programs are recommended retail prices

. The MATHEMAT has a handle on all conceivable surfaces and bodies.

Even before the vector geometry, the MATHEMAT does not have to understand
tule, all variants are implemented. Additionally offers
The software package includes a complete mathematics lexicon
the most important terms, formulas and solution approaches. With
Every mathematical problem can be solved using MATHEMAT.
There are no limits to the applications!
MATHEMAT, DM 99,-*

Already today the Bundesliga
know tomorrow's table,
This can be done with UNI-TAB. All legal
things that you can do without this
program would never do,
can be done in seconds
carry out. Anyone who wants can come along
simulated game results
the world champion '86 ahead-
calculate. But not just football
ball leagues can be tabulated
are recorded, almost all sports
species are UNI-TAB capable. Gag
on the sidelines: for many sports
the well-known pictos are
grams available.
UNI-TAB In keywords:
Menu control via the
Function keys with easily
clear selection possible
features - user-friendly
(Teams will be over
key figures controlled) - leagues
with 3 to 20 teams can
managed (3 to 38
Match days possible) - nonsensical
leagues (2.8.13 teams should be
complete 5 game days)
are excluded - favored
qualified team can choose
end of the program flow

. through reverse representation
be marked -
Table can be changed

(important in case of game cancellations)
- three different tables-
species can be saved
and read in later
(the current table depends on the lunar
gigantic of completeness
of a game dayi who comes
complete match day [completeness
and game day number
are automatically calculated
net], the simulated table {the
Users can do this themselves
Playing fate and his tip
later with the actual one
Compare events) - two
different types of seasonal
overview (the statistical overview
view shows which tableLenplatz the respective team
which points and goalscoring
relationship to the individual game
days; the graphic one
Overview shows the performance
curve of each team) - all
Tables and graphics are as
Hard copy on a printer
displayable - in the event of incorrect operation
(2.e.g. desired print output
when not switched on
printer) appear slightly different
understandable German error messages
dungs y
DM 69,-.

4
8
'

r
e
b
m
e
e.g
e
D

4
8
'

r
e
b
m
e
e.g
e
D

n
i
m
r
e
t
s
g
n
u
n
i
e
h
c
s
r
E

n
i
m
r
e
t
s
g
n
u
n
i
e
h
c
s
r
E

SS

YT

A DATA BECKER BOOK

THE TRAINING BOOK FOR | THE TRAINING BOOK FOR FORTH, THE TRAINING BOOK FOR LOGO,
TURBO PASCAL, approx. 220 pages, approx. 250 pages, DM 39, - approx. 200 pages, DM 39, -
DM 39 |

Software Training|

Szczepsnowski plenge

'

Using software correctly is not difficult - if you know BASIC
how to do it. Unfortunately, very few people still come -

'] Users of the highly praised standard programs with
I the supplied manuals from the manufacturers alone The training book for
right. This is not just due to the manuals, but SIMON's BASIC
also because software users often have this too
necessary basic knowledge is missing.

A DATA BECKER BOOK DATA BECKER has therefore created the extremely popular and successful A DATA BECKER BOOK

Rich series of software training books created.
These books not only provide an easy-to-understand introduction to Ä
WORD START MAILER. respective program, but also convey the basic 00 suites Eu SIMONS

approx. 270 pages, DM 39, - agile tools to make the programs useful and rn

to be used successfully. Even the advanced one
Users will find many important things in the training books
Tips & Tricks. The authors of this book series have not
only extensive experience with the correct use of the
programs, but generally know the concerns and
wishes of their readers, also based on intensive seminars
experience as a speaker.

THE TRAINING BOOK FOR TEXTOMATE,
200 pages, DM 39,-

Froitzhe!

A DATA BECKER BOOK

THE TRAINING BOOK FOR PASCAL,
250 pages, DM 39 |

— === —

A DATA BECKER BOOK

THE TRAINING BOOK FOR dBASE,
250 pages, DM 49,-

DATAMAT |

EINDATA BECKER BOOK

A DATA BECKER BOOK

THE TRAINING BOOK TO

\ MULTIPLAN, 250 pages, DM 49,- DATAMAT, 200 pages, DM 39,-

THE TRAINING BOOK TO

THIS IS WHAT IT STANDS:

64 Tips & Tricks Vol. 1, with well over 70,000 sold
copies of a bestseller from DATA
BECKER, is a real treasure trove for every COMMO
DORE 64 users. With POKEs and other useful
chen routines, interesting programs as well
important programming tips and tricks.

From the content:
— Definition of your own character set
— Keyboard layout and its changes
— Data entry with comfort

— Simulation of the mouse with a joystick
— BASIC for advanced users
— CP/M on the COMMODORE 64
— Printer connection via the USER port
— Data transfer from and to other computers
— Expansion port
— Stereo synthesizer
— Saving an improperly closed one

file

— Creating a BASIC line in BASIC
— Cassette buffer as data storage
— Sorting string fields
— Multitasking on the COMMODORE 64
— POKE’s and the Zeropage
— Repeat function for all buttons
and much more...

AND THIS BOOK WAS WRITTEN:

The proven DATA-BECKER team of authors with
chael Angerhausen, Lothar English, Klaus Gerits and
Frank Thrun. Not only are they all enthusiastic program-

people who know their 64 inside and out, but
but also well-known authors of many other books.

ISBN 3-89011-001-0