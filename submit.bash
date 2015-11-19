#$ -S /bin/bash
#$ -e /home/carlin/bagel/logs
#$ -o /home/carlin/bagel/logs
#$ -cwd
#$ -N excellent

export PATH=$PATH:/home/carlin/rosetta/source/bin/
export ROSETTA3_DB=/home/carlin/rosetta/database
T=$( awk 'NR=="'${SGE_TASK_ID}'" { print $1 }' list.txt )
N=$( awk 'NR=="'${SGE_TASK_ID}'" { print $2 }' list.txt )
rosetta_scripts.linuxgccrelease @ flags -parser:script_vars target=$T new=$N