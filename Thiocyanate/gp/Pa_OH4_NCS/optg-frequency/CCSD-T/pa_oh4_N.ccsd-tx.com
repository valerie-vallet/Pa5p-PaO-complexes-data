***, Pa(OH)4(NCS) - MP2 and CCSD(T)
memory,2500, m;
file, 1, pa_oh4_N.ccsd-tx.int, new;
file, 2, pa_oh4_N.ccsd-tx.wfu, new;

gprint, basis;
gprint, orbital=10;

nosym;

geomtyp=xyz;

geometry={
include, pa_oh4_N-B22-gp.xyz
}

charge=0;

! Select X2C SR Hamiltonian
SET,DKHO=101

! Calculation with VTZ basis set
basis={
Pa=cc-pVTZ-X2C;
O=aug-cc-pVTZ-X2C;
H=aug-cc-pVTZ-X2C;
N=aug-cc-pVTZ-X2C;
C=aug-cc-pVTZ-X2C;
S=aug-cc-pVTZ-X2C;
}

! Hartree-Fock calculation
{hf;}

! MP2 and CCSD(T) calculation
{ccsd(t), maxit=100, thrvar=1.0d-07, thrden=1.0d-06;}

! Save HF energy and CCSD(T) correlation energy for VTZ basis set
energy_hf(1) = energr(1);
corr_mp2(1) = EMP2-energr(1);
corr_ccsdt(1) = ENERGT(1)-energr(1);

