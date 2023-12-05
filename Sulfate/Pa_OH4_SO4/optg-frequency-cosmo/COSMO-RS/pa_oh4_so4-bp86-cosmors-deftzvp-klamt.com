%mem=16Gb
%NProc=8
%chk=pa_oh4_so4-bp86-cosmors-deftzvp-klamt.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   SCRF=(COSMORS)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pa_oh4_so4-bp86-cosmors-deftzvp-klamt.com SGP in PCM calculation

 -1  1
 Pa       0.41989549915612      -0.14753771362221      -0.21981681867465
 O        1.02536731193126       1.36274636585576      -1.56785608865747
 H        1.45341868201782       2.22701234092181      -1.53144668434639
 O       -1.08674480041312       1.12529908192945       0.60755909158595
 H       -1.35855388965824       2.02056962130882       0.37275460825464
 O       -0.41964307861665      -1.22577966229403      -1.85819641494076
 H       -0.85480626658365      -2.08287560435476      -1.93523578391518
 O       -0.16527977284287      -1.65341401435261       1.14298842427176
 H        0.02802060548391      -2.58375786612127       1.31217251689322
 O        2.32502220139523       0.32946753190243       1.13787529661646
 O        2.51256531799608      -1.29779026930105      -0.54999148856801
 S        3.36155245615646      -0.63643845933294       0.54202458756127
 O        4.46789021039926       0.10531679087469      -0.04683768745158
 O        3.77325233474021      -1.61723952440833       1.53679997494594

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

pa_oh4_so4-bp86-cosmors-deftzvp-klamt.cosmo

