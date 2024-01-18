%mem=16Gb
%NProc=8
%chk=pao_oh2_br_h2o-bp86-cosmors-deftzvp-klamt.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   SCRF=(COSMORS)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pao_oh2_br_h2o-bp86-cosmors-deftzvp-klamt.com SGP in PCM calculation

 0  1
 Pa      -0.16098492711437       0.07361912527518       0.80252242042915
 O        1.10866546679034       1.52552245209424      -0.11013593564624
 O       -1.74013905199005       0.80804221779312      -0.35974684183841
 Br      -0.92894850921985       1.64836864499148       3.10835867801087
 H       -1.82840042055054       1.55174982239165      -0.97179095246003
 O        0.03138922006315      -1.63455270863225      -1.00304235247366
 H       -0.47026657175769      -1.65284211353062      -1.82874564387844
 H        0.71280394127792      -2.31681660481340      -1.06398386569463
 H        2.06358918695354       1.62056959593120      -0.01163832947002
 O        1.18719477462841      -0.85412323816295       1.67519132835969

!input file for basis set of Pa
@/home/shaaban/basis.gaussian/Pa-def-TZVP/N
****
O  0
Def2TZVP
****
H 0
Def2TZVP
****
Br 0
Def2TZVP
****

!input file for ECP for Pa
@/home/shaaban/basis.gaussian/Pa-ECP60MWB/N

pao_oh2_br_h2o-bp86-cosmors-deftzvp-klamt.cosmo
