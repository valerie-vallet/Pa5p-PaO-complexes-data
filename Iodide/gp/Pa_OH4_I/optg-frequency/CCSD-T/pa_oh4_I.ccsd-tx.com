***, Pa(OH)4(I)- MP2 and CCSD(T)
memory,2500, m;
file, 1, pa_oh4_I.ccsd-tx.int, new;
file, 2, pa_oh4_I.ccsd-tx.wfu, new;

gprint, basis;
gprint, orbital=10;

nosym;

geomtyp=xyz;

geometry={
include, pa_oh4_I-B22-gp.xyz
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

