%mem=16Gb
%NProc=8
%chk=pa_oh4_no3-bp86-cosmors-deftzvp-gp.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pa_oh4_no3-bp86-cosmors-deftzvp-gp.com SGP in PCM calculation

 0  1
 Pa       0.41671244459764      -0.06905023184005       0.07734602862718
 O        1.23496565090018       1.54894593682743      -0.96557248911592
 H        1.34686931978843       1.90379110109198      -1.85675292209244
 O       -1.40444361413035       0.94125687683457       0.41341849589017
 H       -1.82265034281650       1.76946191299929       0.15025238644742
 O        0.00099964087107      -1.09254407281448      -1.69081530650285
 H       -0.24906503089769      -1.90043835930251      -2.15126085423980
 O       -0.14291703045997      -1.66843605852051       1.29715716339174
 H       -0.88791364573413      -2.16568114817906       1.65719436375376
 O        2.48142117038368       0.09937569914694       1.51692504225176
 O        2.66343961996407      -1.20611143655964      -0.19368120417295
 N        3.22125200418281      -0.69334267919696       0.83643466099232
 O        4.36350320743290      -0.93795274342346       1.14522834074256

!input file for basis set of Pa
@/home/shaaban/basis.gaussian/Pa-def-TZVP/N
****
O  0
Def2TZVP
****
H 0
Def2TZVP
****
N 0
Def2TZVP
****

!input file for ECP for Pa
@/home/shaaban/basis.gaussian/Pa-ECP60MWB/N

