%mem=16Gb
%NProc=8
%chk=pa_oh4_cl-bp86-cosmors-deftzvp-gp.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pa_oh4_cl-bp86-cosmors-deftzvp-gp.com SGP in PCM calculation

 0  1
 Pa       0.44896980474075       0.08479518284932       0.30927344568382
 O        1.18548059885519       1.76104883634694      -0.70107180614635
 H        1.22976958985167       2.16926082290967      -1.57517706801258
 O       -1.50852488510412       0.84223543019808       0.19780832902020
 H       -2.00900096915802       1.51804867204401      -0.27481736689595
 O        0.38922292120346      -1.02794276858635      -1.45756241002409
 H       -0.00810034421371      -1.81745834438010      -1.84192573740983
 O       -0.24445852447402      -1.49108007417941       1.50689011230615
 H       -1.09994776327058      -1.88604584037280       1.72038813135242
 Cl       2.98719755365342      -0.61199296252450       0.94104298371000

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

