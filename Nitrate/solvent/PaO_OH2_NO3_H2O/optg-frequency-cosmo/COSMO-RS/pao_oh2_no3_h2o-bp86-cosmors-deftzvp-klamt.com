%mem=16Gb
%NProc=8
%chk=pao_oh2_no3_h2o-bp86-cosmors-deftzvp-klamt.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   SCRF=(COSMORS)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pao_oh2_no3_h2o-bp86-cosmors-deftzvp-klamt.com SGP in PCM calculation

 0  1
 Pa      -0.19475430100151       0.45627696075377       0.05331231474428
 O        1.32791167111477       1.15904278001466      -1.18979751387494
 H       -1.39729240616619       0.71602280426901      -2.52013182053969
 O       -1.41396618575270      -0.27395489268329       1.25268680726409
 O       -1.53276375134054       0.37629991659748      -1.62775375814686
 O        0.79499597083818      -1.79840816827348      -0.28156999727822
 H        1.50236661048810      -2.02258819429377      -0.90050325032163
 H        0.43563830831645      -2.62863400131726       0.05760257807611
 H        1.47946197106379       1.45431004071624      -2.09744840413384
 O        0.40171105685501       2.35006844616238       1.66431702448579
 O       -1.14771586643710       2.79983720536475       0.23108973224997
 N       -0.42905862556538       3.20393671291242       1.20796457282895
 O       -0.53084056722810       4.32146958456464       1.66668998751852

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

pao_oh2_no3_h2o-bp86-cosmors-deftzvp-klamt.cosmo

