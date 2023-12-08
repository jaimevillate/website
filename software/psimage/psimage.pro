%!
% PostScript prologue psimage.pro
% $Id: psimage.pro,v 1.2 2000/01/29 21:38:07 villate Exp $
%
% Home-page: http://www.fe.up.pt/~villate/psimage.html
/in {72 mul} def /cm {28.3465 mul} def /pi 3.141592 def /Graylevels 50 def
/Landscape {595 0 translate 90 rotate}def
/Box{2 copy 0 exch rlineto 0 rlineto 0 exch neg rlineto neg 0 rlineto}def
/Circle{3 copy add moveto 90 450 arc}def
/Ellipse  {matrix currentmatrix 7 1 roll 6 4 roll translate 4 2 roll scale
  0 0 1 5 3 roll arc setmatrix} def
/Ellipsen {matrix currentmatrix 7 1 roll 6 4 roll translate 4 2 roll scale
  0 0 1 5 3 roll arcn setmatrix} def
/Sphere {/Sphdict 3 dict def Sphdict begin 4 1 roll gsave currentpoint
   translate Cartesian /Y exch def /X exch def X Y translate /R exch def end
   {Sphdict begin X neg Y neg R Circle end} exch 0.95 Shrinkgrad
   grestore} def
/Cylinder {/Cyldict 4 dict def Cyldict begin /G exch def /Z exch def
   /Y exch def /R exch def currentpoint
   gsave newpath 2 copy R Y 180 360 Ellipse 2 copy Z add R Y 360 180 Ellipsen
   closepath 1 setgray fill grestore R neg 0 rmoveto
  {Cyldict begin 0 Z rlineto end}{Cyldict begin currentpoint exch
  R add exch R Y 180 360 Ellipse end} G 0.6 Gradient moveto currentpoint
  R 0 rmoveto {Cyldict begin 0 Z rlineto end}{Cyldict begin
  currentpoint exch R sub exch R Y 360 180 Ellipsen end} G 0.6 Gradient
  newpath 2 copy Z add R Y 0 360 Ellipse gsave Currentgray G add 2 div
  Setgray fill grestore stroke moveto currentpoint R neg Z rmoveto
  2 copy R Y 180 360 Ellipse 0 Z rlineto stroke moveto end} def
/Block {8 dict begin /Ay exch def /Ax exch def
   /G3 exch def /G2 exch def /G1 exch def
   /Z exch def /Y exch def /X exch def currentpoint
   0 Z rlineto Y 180 Ay sub Cartesian rlineto 0 Z neg rlineto
   closepath gsave G1 Setgray fill grestore stroke moveto currentpoint
   0 Z rlineto X Ax Cartesian rlineto 0 Z neg rlineto closepath
   gsave G2 Setgray fill grestore stroke moveto currentpoint
   0 Z rmoveto X Ax Cartesian rlineto Y 180 Ay sub Cartesian rlineto
   X Ax 180 add Cartesian rlineto closepath gsave G3 Setgray fill grestore
   stroke moveto end} def
/Boost{3 copy 3 1 roll translate rotate}def
/Unboost{neg rotate neg exch neg exch translate}def
/Boostmid {sub 2 div dup 2 index Cartesian rlineto currentpoint} def
/Succ{Boost currentlinewidth dup -2 mul 1 index 10 mul dup 270 215 arcn
   0 0 moveto dup -2 mul exch -10 mul dup neg 90 145 arc 0 0 moveto Unboost}def
/Tip{Boost currentlinewidth dup 0 0 moveto 0 exch  7 mul dup 270 220 arcn 0 0
   moveto 0 exch -7 mul dup neg 90 140 arc 0 0 moveto Unboost}def
/ArrowB{exch 1 index Cartesian rlineto currentpoint 3 2 roll Succ}def
/Arrow{exch 1 index Cartesian rlineto currentpoint 3 2 roll Tip}def
/Vector{2 copy gsave currentpoint translate rotate 10 sub 1 moveto
   -1  2 rlineto 11 -3 rlineto -11 -3 rlineto 1 2 rlineto 0 0 1 270 90 arcn
   closepath fill grestore Cartesian rmoveto}def
/Cartesian{2 copy cos mul 3 1 roll sin mul}def
/Rcartesian{Cartesian currentpoint 4 -1 roll 3 2 roll add 3 1 roll add}def
/Displacement{dup 0 eq{pop abs}{exch dup 0 eq{pop abs}{dup mul exch dup mul add
	sqrt}ifelse}ifelse}def
/Polar{2 copy Displacement 3 1 roll exch atan}def
/Rpolar{currentpoint 4 -1 roll 3 2 roll sub 3 1 roll sub 2 copy displacement
   3 1 roll exch atan}def
/Resistor {exch 24 Boostmid 3 index Boost Wigly Unboost exch Cartesian rlineto}
 def 
/Openswitch {exch 20 Boostmid 3 index Boost 1.5 0 2 Circle 3.73 1 moveto 15.84
 8 lineto 18 0 2 Circle 20 0 moveto Unboost exch Cartesian rlineto} def 
/Closedswitch {exch 20 Boostmid 3 index Boost 1.5 0 2 Circle 3.5 0 moveto 16
 0 lineto 18 0 2 Circle 20 0 moveto Unboost exch Cartesian rlineto} def 
/Femp {exch 5 Boostmid 3 index Boost 8 Tick 4 0 rmoveto 4 Tick 1 0 rmoveto
 4 Tick Unboost exch Cartesian rlineto} def 
/Femn {exch 5 Boostmid 3 index Boost 4 Tick 1 0 rmoveto 4 Tick 4 0 rmoveto
 8 Tick Unboost exch Cartesian rlineto} def 
/Condenser {exch 4 Boostmid 3 index Boost 6 Tick 4 0 rmoveto 6 Tick Unboost
 exch Cartesian rlineto} def 
/Diode {exch 7 Boostmid 3 index Boost 7 0 rmoveto -7 -4 rlineto 0 8
rlineto 7 -4 rlineto 4 Tick Unboost exch Cartesian rlineto} def 
/Ground {currentpoint 2 copy 4 index Boost 10 Tick -3 0 rmoveto 7 Tick
   -3 0 rmoveto 4 Tick Unboost moveto pop}def 
/Inductor {exch 32 Boostmid 3 index Boost 4 {currentpoint exch 4 add exch 4
   180 0 arcn currentpoint exch 1 sub exch 1 360 180 arcn} repeat currentpoint
   exch 4 add exch 4 180 0 arcn Unboost exch Cartesian rlineto} def 
/Wigly {4 {1.5 3 rlineto 3 -6 rlineto 1.5 3 rlineto} repeat} def
/Tick  {0 exch 2 copy 2 copy rmoveto 2 mul neg rlineto rmoveto} def
/Setgray {1 exch sub currentcmykcolor pop 4 3 roll setcmykcolor} def
/Currentgray {currentcmykcolor 4 1 roll pop pop pop 1 exch sub} def
/Center {dup Stringwidth 2 div neg 0 rmoveto} def
/Font {findfont dup length dict begin {1 index /FID ne {def} {pop pop} 
  ifelse} forall /Encoding ISOLatin1Encoding def currentdict end /Currentfont
  exch definefont exch dup /Currentfontscale exch def scalefont setfont} def
/Resetfont {/Currentfont findfont Currentfontscale scalefont setfont} def
/Show {/Line exch def  /Indexflag 1 def 1 1 Line length
  {Line exch 1 sub 1 getinterval
   /Char exch def /Showflag true def
   Char ({) eq {/Showflag false def} if
   Char ([) eq {/Symbol findfont Currentfontscale scalefont setfont
        /Showflag false def} if
   Char (]) eq {Resetfont /Showflag false def} if
   Char (_) eq {/Currentfontscale Currentfontscale 0.7 mul def Resetfont
        0 0.18 Currentfontscale mul neg rmoveto /Showflag false def
        /Indexflag Indexflag 2 mul def} if
   Char (^) eq {/Currentfontscale Currentfontscale 0.7 mul def Resetfont
        0 0.68 Currentfontscale mul rmoveto /Showflag false def
        /Indexflag Indexflag 2 mul 1 add def} if
   Char (}) eq {Indexflag 2 mod 0 eq {0 0.18 Currentfontscale mul rmoveto}
        {0 -0.68 Currentfontscale mul rmoveto} ifelse
        /Currentfontscale Currentfontscale 0.7 div def Resetfont
        /Showflag false def /Indexflag Indexflag 2 idiv def} if
   Showflag {Char show} if} for} def
/Stringwidth {/Line exch def /Indexlevel 0 def /Width 0 def 1 1 Line length
  {Line exch 1 sub 1 getinterval /Char exch def /Showflag true def
   Char ({) eq {/Showflag false def} if
   Char ([) eq {/Symbol findfont Currentfontscale scalefont setfont
        /Showflag false def} if
   Char (]) eq {Resetfont /Showflag false def} if
   Char (_) eq Char (^) eq or {/Indexlevel Indexlevel 1 add def
        /Showflag false def} if
   Char (}) eq {/Indexlevel Indexlevel 1 sub def /Showflag false def} if
   Showflag {Char stringwidth pop 0.7 Indexlevel exp mul Width add
        /Width exch def} if
  } for
 Width} def
/Plotreset {/Oflag true def /Aflag false def /Bflag true def
  245 530 385 670 Plotbox /XYscale 1 def /Currentfontscale 10 def
  /Currentboldfont /Times-Bold def /Currentfont /Times-Roman def
  /Lines [[] [5 5] [20 6 6 6] [2 2] [10 2 2 2 2 2] []] def
  /Objects [(k)(L)(F)(d)(R)(V)(J)(S)(G)(I)(B)(A)(t)(K) (Q)(b)(C)(l)(O)(Z)(e)
  (s)] def} def
/Setframe {/Bflag true def /Aflag false def} def
/Setaxes {/Aflag true def /Bflag false def} def
/Plotbox {/Pymax exch def /Pxmax exch def /Pymin exch def /Pxmin exch def
   /Lowermargin Pymin currentlinewidth 3 mul sub def /Leftmargin Pxmin
   currentlinewidth 3 mul sub def} def
/Domain {/Ymax exch def /Xmax exch def /Ymin exch def /Xmin exch def
   /Xscale Pxmax Pxmin sub Xmax Xmin sub div def
   /Yscale Pymax Pymin sub Ymax Ymin sub div def
   Currentfontscale /Currentfont Font Aflag {Showaxes} if Bflag {Showbox} if
} def
/Showaxes {/Bflag false def Pxmin 0 Yunits moveto Pxmax Pxmin sub 0 ArrowB
   0 Xunits Pymin moveto Pymax Pymin sub 90 ArrowB stroke
   Oflag {(0) dup stringwidth pop Currentfontscale 0.84 mul add 0 Xunits
   exch sub 0 Yunits Currentfontscale 2.1 mul sub moveto show} if} def
/Showbox {/Bflag true def gsave Pxmin Pymin moveto Pxmax Pxmin sub
   Pymax Pymin sub Box currentlinewidth 2 mul setlinewidth stroke grestore
   Xmin dup 20 string cvs exch Xmark Xmax dup 20 string cvs exch Xmark
   Ymin dup 20 string cvs exch Ymark Ymax dup 20 string cvs exch Ymark}def
/Xunits {Xmin sub Xscale mul Pxmin add} def
/Yunits {Ymin sub Yscale mul Pymin add} def
/Xmark {Xunits dup dup Bflag {Pymin} {0 Yunits} ifelse
   moveto 0  2.5 currentlinewidth mul rlineto stroke Bflag {Pymax}
   {0 Yunits} ifelse moveto 0 -2.5 currentlinewidth mul rlineto stroke
   exch dup 3 1 roll Stringwidth 2 div sub Bflag {Pymin} {0 Yunits} ifelse
   Currentfontscale 2.1 mul sub moveto Show} def
/Ymark {Yunits dup dup Bflag {Pxmin} {0 Xunits} ifelse
   exch moveto  2.5 currentlinewidth mul 0 rlineto stroke
   Bflag {Pxmax} {0 Xunits} ifelse exch moveto -2.5 currentlinewidth mul
   0 rlineto stroke exch dup 3 1 roll Stringwidth Currentfontscale 0.84 mul
   add Bflag {Pxmin} {0 Xunits} ifelse exch sub dup Leftmargin lt
   {dup /Leftmargin exch def} if exch Currentfontscale 0.56 mul sub moveto
   Show} def
/Xintervals {/Number exch def Bflag {currentlinewidth 2 mul setlinewidth} if
   Xmax Xmin sub Number div /Delta exch def 1 1 Number 1 sub
   {Delta mul Xmin add dup 0 ne Bflag or {dup 20 string cvs exch Xmark}{pop}
   ifelse} for Bflag {currentlinewidth 2 div setlinewidth} if} def
/Xsubintervals {/Number exch def Xmax Xmin sub Number div /Delta exch def
   1 1 Number 1 sub {Delta mul Xmin add () exch Xmark} for} def
/Yintervals {/Number exch def Bflag {currentlinewidth 2 mul setlinewidth} if
   Ymax Ymin sub Number div /Delta exch def 1 1 Number 1 sub
   {Delta mul Ymin add dup 0 ne Bflag or {dup 20 string cvs exch Ymark}{pop}
   ifelse} for Bflag {currentlinewidth 2 div setlinewidth} if} def
/Ysubintervals {/Number exch def Ymax Ymin sub Number div /Delta exch def
   1 1 Number 1 sub {Delta mul Ymin add () exch Ymark} for} def
/Xlabel {Bflag {/Lowermargin Lowermargin Currentfontscale 4 mul sub def Pxmax
   Pxmin add 2 div Lowermargin}{Pxmax Currentfontscale 0.7 mul sub 0 Yunits
   Currentfontscale 2.1 mul sub} ifelse moveto Center Show} def
/Ylabel {dup Stringwidth Bflag {pop gsave Leftmargin Pymin translate 90 rotate
   Pymax Pymin sub 2 div Currentfontscale 0.7 mul moveto Center Show grestore}
   {0 Xunits Currentfontscale 1.5 mul sub exch sub Pymax Currentfontscale sub
   moveto Show} ifelse} def
/Plotline {/Data exch def Data 0 get Xunits Data 1 get Yunits moveto
   1 1 Data length 2 idiv 1 sub {2 mul dup Data exch get Xunits exch 1 add
     Data exch get Yunits lineto} for} def
/Dashplot {gsave Lines exch get 0 setdash newpath Plotline stroke grestore} def
/Plot {gsave newpath Plotline stroke grestore} def
/Points {/Number exch def /Data exch def gsave /ZapfDingbats findfont
   Currentfontscale scalefont setfont /Object Objects Number get def
   1 1 Data length 2 idiv
   {1 sub 2 mul dup Data exch get Xunits exch 1 add Data exch get Yunits moveto
   Object dup stringwidth pop 2 div neg dup rmoveto show} for grestore} def
/Legend {/Yleg exch def /Xleg exch def gsave
   /ZapfDingbats findfont Currentfontscale scalefont setfont
   counttomark 2 idiv {exch /Number exch def /Object Objects Number get def
     newpath Xleg Yleg moveto Object dup stringwidth pop 2 div neg dup
     rmoveto show Xleg Yleg moveto Currentfontscale dup 1.2 mul exch -0.6 mul
     rmoveto gsave Show grestore /Yleg Yleg Currentfontscale 2.1 mul sub def}
   repeat pop grestore} def
/Dashlegend
   {/Yleg exch def /Xleg exch def newpath counttomark 2 idiv
     {exch /Number exch def Lines Number get 0 setdash Xleg Yleg moveto
     70 currentlinewidth mul 0 rlineto stroke Xleg Yleg moveto
     76 currentlinewidth mul Currentfontscale -0.42 mul rmoveto Show
     /Yleg Yleg Currentfontscale 2.1 mul sub def} repeat pop} def
/Plotbox3d {/Zaxis exch def /Yaxis exch def /Xaxis exch def
         /Yorig exch def /Xorig exch def} def
/Region3d {/Zmax exch def /Ymax exch def /Xmax exch def} def
/Domain3d {Region3d Showaxes3d Currentfontscale /Currentfont Font} def
/Showaxes3d {Xorig Yorig moveto currentpoint Xaxis 210 ArrowB
	moveto currentpoint Yaxis 330 ArrowB moveto Zaxis 90 ArrowB stroke}def
/Project2d {Zaxis mul Zmax div exch Yaxis mul Ymax div 2 div dup
   4 3 roll Xaxis mul Xmax div 2 div dup 3 1 roll sub 3 sqrt mul Xorig add
   4 1 roll add sub Yorig add} def
/Ylabel3d {0 Ymax 0 Project2d exch Currentfontscale 0.6 mul sub exch
   Currentfontscale add moveto Show} def
/Zlabel3d {dup Stringwidth 0 0 Zmax Project2d 3 1 roll Currentfontscale sub
   exch sub exch Currentfontscale 0.6 mul sub moveto Show} def
/Xlabel3d {dup Stringwidth Xmax 0 0 Project2d 3 1 roll Currentfontscale 0.6
   mul add exch sub exch Currentfontscale add moveto Show} def
/Plotline3d {/Data exch def Data 0 get Data 1 get Data 2 get Project2d moveto
   1 1 Data length 3 idiv 1 sub {3 mul dup Data exch get exch dup 1 add
     Data exch get exch 2 add Data exch get Project2d lineto} for} def
/Plot3d {gsave newpath Plotline3d stroke grestore} def
/Shrinkgrad {6 dict begin /R exch def /G2 exch def /G1 Currentgray def
   /N G2 G1 sub abs Graylevels mul ceiling def /Y R N 0 ne{N div}if def
   /S 1 def G1 G2 G1 sub dup 0 eq{1 add}{N div}ifelse G2 {gsave Setgray matrix
   currentmatrix S dup scale exch dup exec exch setmatrix /S S Y sub def
   S 0 gt {S dup scale dup exec eofill}{fill}ifelse grestore}for gsave
   S Y add dup scale exec G2 Setgray fill grestore end}def
/Pathlength{1 dict begin /l 0 def flattenpath {moveto}{ currentpoint 2 index
   sub exch 3 index sub Displacement l add /l exch def moveto}{ }{ }pathforall
   l end}def
/Gradient{8 dict begin 2 index xcheck{gsave 3 1 roll /G2 exch def
   /G1 Currentgray def gsave dup exec Pathlength 3 2 roll mul G2 G1 sub
   exch div /Conv exch def grestore exec flattenpath{newpath moveto}
   {currentpoint 4 3 roll 3 2 roll sub 3 1 roll sub 2 copy Displacement
   Conv mul dup G1 add /G1 exch def 3 index 4 1 roll G1 G2 gt{G2 exch
   G1 G2 sub exch div 1 exch sub}{pop G1 1}ifelse Gradient G1 G2 ge
   {exit}{G1 Setgray}ifelse}{ }{ }pathforall pop grestore}
   {3 1 roll /G4 exch def /G3 currentgray def /N G4 G3 sub abs Graylevels
   mul ceiling def N 1 add div 1 index mul /Y exch def N 1 add div mul
   /X exch def G3 G4 G3 sub dup 0 eq{1 add}{N div}ifelse G4
   {gsave Setgray dup X Y Tile fill grestore X Y rmoveto}for pop}
 ifelse end}def
/Tile{dup xcheck{currentpoint moveto 2 copy exch exec exec reversepath exec 
   exec}{currentpoint moveto 2 copy 4 index exec rlineto reversepath  
   rlineto exec}ifelse}def
/Bump {3 dict begin gsave /N exch def dup Currentgray sub N div /Dg exch def
  Setgray currentlinewidth dup /Dw exch def N 1 add mul setlinewidth dup
  exec clip newpath dup exec fill 1 1 N {pop Currentgray Dg sub Setgray
  currentlinewidth Dw sub setlinewidth dup exec stroke}for pop grestore end}def
/Bezier {3 dict begin /S {D exch N add get}def /D exch def D 0 get D 1 get
  moveto 0 1 D length 4 idiv 2 sub {4 mul /N exch def 0 S 2 S add 1 S 3 S
  add 4 S 6 S sub 5 S 7 S sub 4 S 5 S curveto} for 4 S 6 S add 5 S 7 S add
  D 0 get D 2 get sub D 1 get D 3 get sub D 0 get D 1 get curveto end} def
/Polygon {1 dict begin /D exch def D 0 get D 1 get moveto 1 1 D length 2 idiv
  1 sub {2 mul dup D exch get exch 1 add D exch get lineto} for closepath
  end} def
