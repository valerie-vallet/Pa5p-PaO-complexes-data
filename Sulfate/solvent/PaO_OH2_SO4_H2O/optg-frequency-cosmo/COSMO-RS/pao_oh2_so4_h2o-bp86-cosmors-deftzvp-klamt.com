%mem=16Gb
%NProc=8
%chk=pao_oh2_so4_h2o-bp86-cosmors-deftzvp-klamt.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   SCRF=(COSMORS)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pao_oh2_so4_h2o-bp86-cosmors-deftzvp-klamt.com SGP in PCM calculation

 -1  1
Pa        0.52808162233884      -0.22194420206441      -0.19297363359525
O         0.88173584181032       0.98900918981889      -1.57746514348504
O         3.99190724144475      -1.35385575190112       1.72566449823405
O        -0.79417768856482       1.12062675167390       0.89131552235819
H        -0.96813700187570       2.03891436968535       0.65343777491746
O        -1.07818302118630      -1.30079645259995      -1.78827748613660
H        -1.62484499866609      -2.08010410302938      -1.62486157844478
O        -0.07645569726908      -1.76948836909040       1.12855317724486
H         0.28154814930629      -2.65093635516133       1.29865389099607
O         2.40312311118036       0.44672431454887       1.20829471787635
O         2.73097690740477      -1.26587753046929      -0.38069422062455
S         3.50234399141829      -0.47001913634761       0.67072376256479
O         4.56156532603144       0.31642673319476       0.04268797452265
H        -1.24966830661872      -1.01348463399147      -2.69432927025712

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

!input file for ECP for Pa
@/home/shaaban/basis.gaussian/Pa-ECP60MWB/N

pao_oh2_so4_h2o-bp86-cosmors-deftzvp-klamt.cosmo

