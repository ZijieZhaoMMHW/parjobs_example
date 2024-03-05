Examples for parallel jobs submission in Gadi
==================================================================

<font size='7'> **Codes presented here may result in huge memory cost, please do not abuse it!!!** </font>

This piece of codes is provided to show a simple example for parallel jobs submission in Gadi.

Why do we need to submit parallel jobs?
-------------
Parallel computation in many programming languages reserves space corresponding to the full dataset in each node, resulting in a massive amount of memory cost. In that condition, submitting parallel jobs is recommended.

Reading OI SST during 1982-2020 in a parallel way
-------------
The primary objective of this example is to read NOAA OI SST data and calculate its annual mean for each year. While this can certainly be achieved using a simple for loop, this example demonstrates how to accomplish it through parallel job submissions. Each submission corresponds to the calculation and storage of data for a specific year in the period 1982-2020.

The code to run the job for one year is stored in `reading_oisst.m`
```MATLAB
d = year_here ;
file_here=['/g/data/ia39/aus-ref-clim-data-nci/oisst/data/yearly/oisst-avhrr-v02r01_' num2str(d) '.nc'];
sst=nanmean(ncread(file_here,'sst'),4);
save(['sst' num2str(d)],'sst');
```
Here, the year of the data we wish to extract is indicated by `year_here`. We aim to loop through the years 1982-2020 by combining two shell scripts: `subreading_oisst.sh` and `reading_oisstanalysis.sh`. The first script is used to submit the job for a specific year, while the second one is employed to loop through the years. 

We execute the loop by a simple line of code
```
sh reading_oisstanalysis.sh
```

Then something like this will jump out.

![Image text](https://github.com/ZijieZhaoMMHW/parjobs_example/blob/main/snapshot.png)
