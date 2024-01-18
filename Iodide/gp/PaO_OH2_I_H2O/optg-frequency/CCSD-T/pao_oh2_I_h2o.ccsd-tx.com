***, PaO(OH)2(I)(H2O)- MP2 and CCSD(T)
memory,2500, m;
file, 1, pao_oh2_I_h2o.ccsd-tx.int, new;
file, 2, pao_oh2_I_h2o.ccsd-tx.wfu, new;

gprint, basis;
gprint, orbital=10;

nosym;

geomtyp=xyz;

geometry={
include, pao_oh2_I_h2o-A1-gp.xyz
}

charge=0;

! Select X2C SR Hamiltonian
SET,DKROLL=1

! Calculation with VTZ basis set
basis={
Pa=cc-pVTZ-DK;
O=aug-cc-pVTZ-DK;
H=aug-cc-pVTZ-DK;
I=aug-cc-pVTZ-DK;
}


! Hartree-Fock calculation
{hf;}

! MP2 and CCSD(T) calculation
{ccsd(t);
 core, 61;}

! Save HF energy and CCSD(T) correlation energy for VTZ basis set
energy_hf(1) = energr(1);
corr_mp2(1) = EMP2-energr(1);
corr_ccsdt(1) = ENERGT(1)-energr(1);

