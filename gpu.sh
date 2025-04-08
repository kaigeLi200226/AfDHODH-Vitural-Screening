pmemd.cuda -O -i $PWD/min1.in -o min1.out -p pep.top -c pep.crd  -r min1.rst -ref pep.crd 
pmemd.cuda -O -i $PWD/min2.in -o min2.out -p pep.top -c min1.rst -r min2.rst 
pmemd.cuda -O -i $PWD/md0.in  -o md0.out  -p pep.top -c min2.rst -r md0.rst  -ref min2.rst -x md0.nc 
pmemd.cuda -O -i $PWD/den.in -o den.out -p pep.top -c md0.rst -r den.rst -ref md0.rst -x den.nc 
pmemd.cuda -O -i $PWD/eq.in -o eq.out -p pep.top -c den.rst -r eq.rst -ref den.rst -x eq.nc 
pmemd.cuda -O -i $PWD/md1.in  -o md1.out  -p pep.top -c eq.rst  -r md1.rst  -x md1.nc 
