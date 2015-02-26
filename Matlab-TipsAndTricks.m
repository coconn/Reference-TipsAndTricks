- how to get just one crop mapped

>> [Lat,Long,Crop]=OpenNetCDF('~/Library/IonE/data/Crops2000/crops/coconut_5min.nc');
>> coconut_ha=Crop(:,:,1);
>> coconut_yield=Crop(:,:,2);
>> badindices=find(coconut_ha > 9e9);
>> length(badindices)

ans =

     7123007

>> coconut_ha(badindices)=NaN;
>> max(max(coconut_ha))

ans =

    0.5616

>> whateversurfyouwant(coconut_ha)



- how to get ag land and pasture land for all crops in SA

>> iddstring

ans =

~/Library/IonE/data/

>> ls ~/Library/IonE/data/Crops2000/
CropGroups		Cropland2000_5min.nc	Pasture2000_5min.nc	crops

>> CropData=OpenNetCDF('~/Library/IonE/data/Crops2000/Cropland2000_5min.nc');
>> PastData=OpenNetCDF('~/Library/IonE/data/Crops2000/Pasture2000_5min.nc');
>> PastData

PastData = 

             Data: [4320x2160 single]
             Long: [4320x1 single]
              Lat: [2160x1 single]
            units: '                                                                                '
            Title: 'farea'
       add_offset: 0
     scale_factor: 1
    missing_value: 9.0000e+20

>> crop=CropData.Data;
>> past=PastData.Data;
>> agriculture=past+crop;
>> NiceSurfGeneral(crop)
>> NiceSurfGeneral(agriculture,'fastplot','on')

to put the option bars into the map window:

>> showui
>> cf

to take out the large ocean values:

>> max(max(agriculture))

ans =

  1.8000e+21

>> max(max(crop))

ans =

  9.0000e+20

>> badindices=find(crop > 9e9);
>> length(badindices)

ans =

     7260531

>> crop(badindices)=NaN;
>> fastsurf(crop)

Difference bewteen the mapping commands:
- nicesurf will find the NaNs, the large ocean numbers and modify
them in the map (but not in the workspace)
- fastsurf won't do that so will have a wonky scale if you don't remove the ocean vals 




what if i want to figure out svn/ione/jamie code stuff?

iddstring
path
help (whatever path here)
    i.e. path shows that there is a folder called "ionefile"
         then i can write "help ionefile" and it'll show all the commands in ionefile
how to update svn
    getsvnstatus
    then paste in the last line in full "!svn update /Users/oconn568/source/matlab/"
    if i had changed something, then use the "!svn commit" not "update" line




how to find bugs after an error is found:
dbstop error
then you can set a break point before the error (button up top in the editor)
then to move past the break point, either click the green play button
	or type dbstep
break points are NOT a part of the function file!  (e.g. zen will clear them)
youtube debugger tutorial that I watched: http://www.youtube.com/watch?v=9iTj--Q6ZRE

