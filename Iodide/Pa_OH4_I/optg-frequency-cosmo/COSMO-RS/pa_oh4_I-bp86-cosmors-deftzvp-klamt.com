%mem=16Gb
%NProc=8
%chk=pa_oh4_I-bp86-cosmors-deftzvp-klamt.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint 
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   SCRF=(COSMORS,Read)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

pa_oh4_c2o4-bp86-cosmors-deftzvp-klamt.com SGP in PCM calculation 

 0  1
 Pa       0.70381949261997      -0.36614004749150       0.04746692304347
 I        2.16910080191392       1.59693522081097      -1.90204638392601
 H       -1.74029757587748       1.20855646331637       0.38181103193501
 O       -0.80627342424965       0.99092741739883       0.47751908440828
 H        1.93498548964547       1.07215828283987       2.25011064728069
 O       -0.34320949430016      -1.11061360112850      -1.57926714258312
 H       -1.13215520361219      -1.19640666298974      -2.12867406771631
 O        0.06987787453003      -1.99414945510925       1.23508226046414
 H       -0.57156230484277      -2.68987357788490       1.04247671505516
 O        1.89977129584202       0.35456948950460       1.60486068217306

!input file for basis set of Pa
@/home/shaaban/basis.gaussian/Pa-def-TZVP/N
****
O  0
Def2TZVP
****
H 0
Def2TZVP
****
I 0
Def2TZVP
****

!input file for ECP for Pa
@/home/shaaban/basis.gaussian/Pa-ECP60MWB/N
!input file for ECP for I
@/home/shaaban/basis.gaussian/I-ECP28oldMDF/N


pa_oh4_I-bp86-cosmors-deftzvp-klamt.cosmo





