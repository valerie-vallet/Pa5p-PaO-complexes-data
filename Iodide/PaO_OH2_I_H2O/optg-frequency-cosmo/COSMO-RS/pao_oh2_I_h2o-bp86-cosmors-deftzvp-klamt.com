%mem=16Gb
%NProc=8
%chk=pao_oh2_I_h2o-bp86-cosmors-deftzvp-klamt.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint 
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   SCRF=(COSMORS,Read)
   Scf=(NoVarAcc,MaxCycle=200,conver=8)

pao_oh2_I_h2o-bp86-cosmors-deftzvp-klamt.com SGP in PCM calculation 

 0  1
 Pa      -0.35914957891509      -0.03150560501209       0.70071153746322
 O        1.04508935689237       1.45768512599990       0.10751314775026
 O       -1.70816564381724       0.79208374045653      -0.66850525345011
 I       -1.58130729755345       1.56911830117087       3.10986502570550
 H       -1.69015320018218       1.57815241258058      -1.23204024701199
 O        0.16144307400103      -1.60616086557923      -1.15194270566554
 H       -0.18969562734542      -1.56757163132302      -2.05133094982081
 H        0.81821655019021      -2.31423934395078      -1.12643162141634
 H        1.96698509366706       1.55005548275998       0.37627759430722
 O        0.81573037354924      -1.01787728586077       1.73915079430122

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


pao_oh2_I_h2o-bp86-cosmors-deftzvp-klamt.cosmo


