pdb4amber -i protein.pdb -o protein_h.pdb -d -y
tleap -f leap.in
mkdir md
cd ./md
cp ../com_solv.prmtop ./
cp ../com_solv.pdb ./
cp ../com_solv.inpcrd ./
cp ../com.pdb ./
cp ../../den.in ./
cp ../../eq.in ./
cp ../../min1.in ./
cp ../../min2.in ./
cp ../../md1.in ./
cp ../../md0.in ./
cp ../../run_gpu.sh ./
mv ./com_solv.prmtop pep.top
mv ./com_solv.inpcrd pep.crd
mv ./com_solv.pdb pep.pdb

