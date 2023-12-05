***, Pa(OH)5 - MP2 and CCSD(T)
memory,2500, m;
file, 1, pa_oh5.-B21-solventccsd-tx.int, new;
file, 2, pa_oh5-B21-solvent.ccsd-tx.wfu, new;

gprint, basis;
gprint, orbital=10;

nosym;

geomtyp=xyz;

geometry={
include, pa_oh5-B21-solvent.xyz
}

charge=0;

! Select X2C SR Hamiltonian
SET,DKHO=101

! Calculation with VTZ basis set
basis={
Pa=cc-pVTZ-X2C;
O=aug-cc-pVTZ-X2C;
H=aug-cc-pVTZ-X2C;
}

! Hartree-Fock calculation
{hf;}

! MP2 and CCSD(T) calculation
{ccsd(t);}

! Save HF energy and CCSD(T) correlation energy for VTZ basis set
energy_hf(1) = energr(1);
corr_mp2(1) = EMP2-energr(1);
corr_ccsdt(1) = ENERGT(1)-energr(1);

! Calculation with VQZ basis set
basis={
Pa=cc-pVQZ-X2C;
O=aug-cc-pVQZ-X2C;
H=aug-cc-pVQZ-X2C;
}

! Hartree-Fock calculation
{hf;}

! MP2 and CCSD(T) calculation
{ccsd(t);}

! Save HF energy and CCSD(T) correlation energy for VQZ basis set
energy_hf(2) = energr(1);
corr_mp2(2) = EMP2-energr(1);
corr_ccsdt(2) = ENERGT(1)-energr(1);

! Basis set extrapolation for MP2 with KM method for Hartree-Fock energy and L3 method for correlation
extrapolate, basis=avtz:avqz, eref=energy_hf, ecorr=corr_mp2, method_r=km, method_c=l3, npc=2;

! Basis set extrapolation for CCSD(T) with KM method for Hartree-Fock energy and L3 method for correlation
extrapolate, basis=avtz:avqz, eref=energy_hf, ecorr=corr_ccsdt, method_r=km, method_c=l3, npc=2;
