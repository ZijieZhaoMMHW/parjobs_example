# your path to run jobs
Directory="/scratch/v45/zz6006/example"

for ((loop=1982; loop<=2020; loop=loop+1)); do
    # change year_here in reading_oisst.m to loop
    sed "s/year_here/$loop/g" reading_oisst.m > reading_oisst$loop.m
    # change files in subreading_oisst.sh to loop in subreading_oisstloop.m
    sed "s/files/$loop/g" subreading_oisst.sh   > subreading_oisst$loop.sh
    qsub subreading_oisst$loop.sh
done