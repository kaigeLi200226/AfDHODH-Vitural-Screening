#!/bin/bash
pdbfile="ligand.pdb"
##########################################################################
#pretreatment of ligand
antechamber -i ${pdbfile} -fi pdb -o ligand.gjf -fo gcrt
##
echo '%chk=lig.chk
%nproc=32
%mem=16GB

#HF/6-31G* SCF=tight Test Pop=MK iop(6/33=2) iop(6/42=6) opt

remark line goes here

0  1' > head.gjf
cat head.gjf ligand.gjf > lig.gjf
rm head.gjf -f
sed -i '10,16d' lig.gjf
#####
