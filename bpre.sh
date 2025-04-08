#!/bin/bash
pdbfile="ligand.pdb"
##########################################################################
end1=`tail lig.log -n 1 |awk '{print $1}'`
if [ $end1 = "Normal" ]; then
  echo $end1 ' in 1' >> nohup.out
  antechamber -fi gout -fo mol2 -i lig.log -o MOL.mol2 -c resp -rn MOL
  parmchk2 -f mol2 -i MOL.mol2 -o MOL.frcmod
  antechamber -i ligand.gjf -fi gcrt -o MOL.pdb -fo pdb -rn MOL
else
  echo " Error in 1 " >> nohup.out
fi
#####
