%mem=16Gb
%NProc=8
%chk=pao_oh2_f_h2o-bp86-cosmors-deftzvp-klamt.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   SCRF=(COSMORS)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pao_oh2_f_h2o-bp86-cosmors-deftzvp-klamt.com SGP in PCM calculation

 0  1
 Pa      -0.19696929012934       0.06054023525837       0.82872572902059
 O        1.11258835877826       1.46961294071562      -0.14218011201730
 O       -1.79432074463903       0.80735024367187      -0.34577189674208
 F       -0.72991312416909       1.35145050363047       2.50441428309761
 H       -1.93978191627088       1.62812553319829      -0.83441570043101
 O        0.05930024375173      -1.64719568023176      -1.00859676878368
 H       -0.36448825994101      -1.61424860419024      -1.87613363947292
 H        0.76748298627295      -2.30185692040810      -1.06225282503808
 H        2.06441769333862       1.55221236738945      -0.01218807792528
 O        1.14039642956983      -0.88479193371099       1.73322064710452

!input file for basis set of Pa
@/home/shaaban/basis.gaussian/Pa-def-TZVP/N
****
O  0
Def2TZVP
****
H 0
Def2TZVP
****
F 0
Def2TZVP
****

!input file for ECP for Pa
@/home/shaaban/basis.gaussian/Pa-ECP60MWB/N

pao_oh2_f_h2o-bp86-cosmors-deftzvp-klamt.cosmo

