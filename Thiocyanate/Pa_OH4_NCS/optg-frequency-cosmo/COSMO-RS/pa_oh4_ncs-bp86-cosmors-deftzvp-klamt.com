%mem=16Gb
%NProc=8
%chk=pa_oh4_ncs-bp86-cosmors-deftzvp-klamt.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   SCRF=(COSMORS)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pa_oh4_ncs-bp86-cosmors-deftzvp-klamt.com SGP in PCM calculation

 0  1
 Pa      -0.11844336696818       0.06456773733363      -0.38416333025732
 N        0.85849149080803       1.67532005960497      -1.86448352695394
 H       -1.41082295335156       1.86178673065401       1.47439379402854
 O       -1.11131545869238       1.64838397503579       0.58114907896538
 H        2.34776216347389      -0.25869046841424       1.09777275083149
 O        0.77704983309502      -1.42925733104456      -1.54037133154038
 H        1.13602707052161      -2.32521539252663      -1.51797980205151
 O       -1.06845139836922      -1.36762988142881       0.81548810523454
 H       -1.02111413732722      -2.16725427446415       1.35116116949855
 O        1.54519698537340       0.22436632861712       0.87025667469883
 C        1.53796067503022       2.44713249244607      -2.44501635130430
 S        2.45871662774946       3.49990906843837      -3.24052633940183

!input file for basis set of Pa
@/home/shaaban/basis.gaussian/Pa-def-TZVP/N
****
O  0
Def2TZVP
****
H 0
Def2TZVP
****
S 0
Def2TZVP
****
C 0
Def2TZVP
****
N 0
Def2TZVP
****

!input file for ECP for Pa
@/home/shaaban/basis.gaussian/Pa-ECP60MWB/N

pa_oh4_ncs-bp86-cosmors-deftzvp-klamt.cosmo

