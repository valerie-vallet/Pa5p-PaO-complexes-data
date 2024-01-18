%mem=16Gb
%NProc=8
%chk=paoh5-bp86-cosmors-deftzvp-klamt.chk
#p BP86/GEN Pseudo=Read
   GFInput GFPrint 
   IOP(6/7=3)
   Symm=(Loose) Int=(UltraFine)
   Guess=(Harris)
   SCRF=(COSMORS)
   Scf=(NoVarAcc,MaxCycle=100,conver=8)

paoh5-bp86-cosmors-deftzvp-klamt.com SGP in PCM calculation 

 0  1
Pa       0.57344626121113      -0.17580292945438      -0.01849520229042
O        1.51312286802941       1.42559039885683      -1.06292268033321
H        1.46260531892516       1.73255431757629      -1.97669350548407
O       -1.20124876921368       0.92808927584005       0.41824846095544
H       -1.48926976942901       1.81975857530928       0.19364994149038
O       -0.08650562547724      -0.96820224624876      -1.88867057391525
H       -0.67447629797054      -1.68364954113485      -2.15900934426271
O       -0.13325750338504      -1.93793077467023       0.95586233386211
H       -0.15771786444811      -2.20506061435610       1.88297859500377
O        1.64596756357775       0.37025754688311       1.74561635604396
H        2.10696165590530       1.16677575811008       2.03525201278747

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

paoh5-bp86-cosmors-deftzvp-klamt.cosmo


