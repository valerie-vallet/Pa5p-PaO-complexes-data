%mem=16Gb
%NProc=8
%chk=pao_oh2_cl_h2o-bp86-cosmors-deftzvp-gp.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pao_oh2_cl_h2o-bp86-cosmors-deftzvp-gp.com SGP in PCM calculation

 0  1
 Pa      -0.16805297231078       0.07135028767248       0.81068248000415
 O        1.10686575302567       1.51546423029051      -0.11303609549152
 O       -1.75086093753666       0.80616095330939      -0.35250619310923
 Cl      -0.87891656593566       1.57242626073997       2.97679827645700
 H       -1.83990535324804       1.55156513495300      -0.96219790064123
 O        0.03590000199645      -1.63181221157683      -1.00530776483377
 H       -0.45401561798573      -1.64013079003519      -1.83816096572675
 H        0.72095418835439      -2.31026388259884      -1.06748160497441
 H        2.06180046089792       1.60775921700939      -0.01269779974914
 O        1.17778143168220      -0.86174999069793       1.68566924559261

!input file for basis set of Pa
@/home/shaaban/basis.gaussian/Pa-def-TZVP/N
****
O  0
Def2TZVP
****
H 0
Def2TZVP
****
Cl 0
Def2TZVP
****

!input file for ECP for Pa
@/home/shaaban/basis.gaussian/Pa-ECP60MWB/N

