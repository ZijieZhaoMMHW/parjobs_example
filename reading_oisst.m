d = year_here ;
file_here=['/g/data/ia39/aus-ref-clim-data-nci/oisst/data/yearly/oisst-avhrr-v02r01_' num2str(d) '.nc'];
sst=nanmean(ncread(file_here,'sst'),4);
save(['sst' num2str(d)],'sst');
