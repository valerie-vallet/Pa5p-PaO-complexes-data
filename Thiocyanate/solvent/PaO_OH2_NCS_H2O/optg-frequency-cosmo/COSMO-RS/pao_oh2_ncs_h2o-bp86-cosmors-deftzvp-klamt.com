%mem=16Gb
%NProc=8
%chk=pao_oh2_ncs_h2o-bp86-cosmors-deftzvp-klamt.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   SCRF=(COSMORS)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pao_oh2_ncs_h2o-bp86-cosmors-deftzvp-klamt.com SGP in PCM calculation

 0  1
 Pa      -0.61745480147357      -0.08848297569337       0.62598738849667
 O        0.71164200498585       1.46837799654047       0.01410508835646
 O       -1.93373255711659       0.53355889748464      -0.88706278771967
 N       -1.66628791850021       1.37033770452152       2.24972936920886
 H       -1.93756969792609       1.29927157364156      -1.47804171095677
 O        0.35268227023248      -1.65348691315038      -1.07203117107990
 H        0.20075081929397      -1.61965725804873      -2.02566027839532
 H        1.14955069280821      -2.18107078772469      -0.93010536513077
 H        1.58332832955199       1.67670668671205       0.37071782264271
 O        0.52954741072991      -0.86712263426002       1.86334418041288
 S       -2.52674292498037       3.33615203122241       4.03843602716287
 C       -2.02862191333768       2.19971040279409       3.00440580931176

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

pao_oh2_ncs_h2o-bp86-cosmors-deftzvp-klamt.cosmo

