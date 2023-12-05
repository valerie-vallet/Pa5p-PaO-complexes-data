***, Pa(OH)4(SO4) - MP2 and CCSD(T)
memory,5000, m;
file, 1, pa_oh4_so4.ccsd-tx.int, new;
file, 2, pa_oh4_so4.ccsd-tx.wfu, new;

gprint, basis;
gprint, orbital=10;

nosym;

geomtyp=xyz;

geometry={
include, pa_oh4_so4-B21-solvent.xyz
}

charge=-1;

! Select X2C SR Hamiltonian
SET,DKHO=101

! Calculation with VTZ basis set
basis={
Pa=cc-pVTZ-X2C;
O=aug-cc-pVTZ-X2C;
H=aug-cc-pVTZ-X2C;
S=aug-cc-pVTZ-X2C;
}

! Hartree-Fock calculation
{hf;}

! MP2 and CCSD(T) calculation
{ccsd(t);}

! Save HF energy and CCSD(T) correlation energy for VTZ basis set
energy_hf(1) = energr(1);
corr_mp2(1) = EMP2-energr(1);
corr_ccsdt(1) = ENERGT(1)-energr(1);

