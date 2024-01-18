%mem=16Gb
%NProc=8
%chk=pa_oh4_br-bp86-cosmors-deftzvp-klamt.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   SCRF=(COSMORS)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pa_oh4_br-bp86-cosmors-deftzvp-klamt.com SGP in PCM calculation

 0  1
 Pa       0.43469569874505       0.09267862786800       0.31352304363461
 O        1.16786725530690       1.76559128302594      -0.69826225724511
 H        1.23458465456837       2.17154218732241      -1.57201398901593
 O       -1.52396569749826       0.83920140944016       0.18782224864257
 H       -2.00815020282730       1.52657023997665      -0.28531766043957
 O        0.40114513428603      -1.03053127732963      -1.44389336600113
 H        0.01133908687110      -1.81831030866904      -1.83943522297100
 O       -0.25714295169989      -1.47872280331462       1.51118936634019
 H       -1.09949622666361      -1.90025121590196       1.72593760222341
 Br       3.13205741971872      -0.62239096163126       1.01199359703250

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

pa_oh4_br-bp86-cosmors-deftzvp-klamt.cosmo
