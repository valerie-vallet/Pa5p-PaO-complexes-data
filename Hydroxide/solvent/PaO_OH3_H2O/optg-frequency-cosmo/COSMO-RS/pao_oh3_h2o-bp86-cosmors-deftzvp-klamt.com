%mem=16Gb
%NProc=8
%chk=pao_oh3_h2o-bp86-cosmors-deftzvp-klamt.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   SCRF=(COSMORS,Read)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pao_oh3_h2o-bp86-cosmors-deftzvp-kalmt. SGP in PCM calculation

 0  1
 Pa      -0.13463364137820       0.14011450626114       0.82097074474275
 O        1.19937638807005       1.47324218081162      -0.24655782317707
 O       -1.74678268517652       0.90122135072273      -0.34131120019359
 O       -0.59684134317881       1.43344492923448       2.53423547702457
 H       -1.85336998147715       1.66880929308182      -0.91780974709802
 O        0.01380526132271      -1.66880809417213      -0.97057660433546
 H       -0.42100962261267      -1.64557601624317      -1.83287780992850
 H        0.70631358104659      -2.34003678286937      -1.02277743774678
 H        2.15413840893133       1.53578905074891      -0.12951284353045
 O        1.19811683841697      -0.82245899959705       1.73183550564149
 H       -1.26157075897065       2.13184570677719       2.52395399828735

!input file for basis set of Pa
@/home/shaaban/basis.gaussian/Pa-def-TZVP/N
****
O  0
Def2TZVP
****
H 0
Def2TZVP
****

!input file for ECP for Pa
@/home/shaaban/basis.gaussian/Pa-ECP60MWB/N

RADII=klamt

pao_oh3_h2o-bp86-cosmors-deftzvp-klamt.cosmo


