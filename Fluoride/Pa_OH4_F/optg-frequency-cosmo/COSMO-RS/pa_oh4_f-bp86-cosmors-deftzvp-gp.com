%mem=16Gb
%NProc=8
%chk=pa_oh4_f-bp86-cosmors-deftzvp-gp.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint 
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pa_oh4_f-bp86-cosmors-deftzvp-gp.com SGP in PCM calculation 

 0  1
 Pa       0.53232815683988       0.05164307588073       0.26728800636332
 O        1.40166693257122       1.70133693159651      -0.74662536055748
 H        1.06236452721363       2.35628692480475      -1.36976051923400
 O       -1.36935279661616       0.94005408020066       0.17127451568789
 H       -2.07478944847439       1.32575634553554      -0.36025360158417
 O        0.30294912549381      -1.03212056694561      -1.53443657226560
 H       -0.11046922575561      -1.86589972408034      -1.78508253373042
 O       -0.20722341948096      -1.51218387385826       1.49637206220418
 H       -1.10688075473290      -1.78133831007004       1.72185428508256
 F        2.51492764552416      -0.65833215348446       0.66295143362478

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




