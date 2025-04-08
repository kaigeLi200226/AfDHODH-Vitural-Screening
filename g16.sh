#PBS -N g16
#PBS -j eo
#PBS -q workq
#PBS -V
#PBS -l nodes=1:ppn=28
#PBS -l mem=20gb

export WORKDIR=/scratch/${PBS_JOBID}
echo $WORKDIR
echo $PBS_O_WORKDIR
mkdir -p $WORKDIR
cd $WORKDIR
export g16root=/share/home/kgli/software
source $g16root/g16/bsd/g16.profile
cp $PBS_O_WORKDIR/*.gjf .
g16 lig.gjf
mv * $PBS_O_WORKDIR
rm -r $WORKDI
