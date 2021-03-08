#!/bin/bash

################################################################################### CHJ #####
## 
## Usage: Copy reflectiviy files from hpss and convert them to python-readable grib2 files
## Machine: Hera
## 
## NOAA/NWS/NCEP/EMC
## Developer: Chan-Hoo Jeon
## History
## 0000/00/00: Eric Aligo    : Preliminary version
## 2020/07/27: Chan-Hoo Jeon : Modified
################################################################################### CHJ #####

module purge
module load hpss
module list

set -x

cycle=2019070100

case="mrms_${cycle}"

path="/scratch2/NCEPDEV/fv3-cam/$LOGNAME/00_DATA/MRMS/${case}"

if [ ! -d ${path} ];then
  mkdir -p ${path}
fi
cd ${path}

yr=`echo $cycle | cut -c1-4`
mo=`echo $cycle | cut -c5-6`
dy=`echo $cycle | cut -c7-8`
hr=`echo $cycle | cut -c9-10`

echo 

hrlist=("03" "06")
#hrlist=("06")
for i in "${hrlist[@]}"
do
   fname0="${yr}${mo}${dy}${i}"
   fname1="${yr}${mo}${dy}${i}00"

   hsi get /BMC/fdr/Permanent/${yr}/${mo}/${dy}/data/radar/mrms/${fname1}.zip

   sleep 10

   mv ${fname1}.zip ${fname0}.zip

   unzip ${fname0}.zip ${fname1}.zip
   unzip ${fname1}.zip -d ${fname1}

   cd ${fname1}
   cat *MRMS_MergedReflectivityQC_00.50_* *MRMS_MergedReflectivityQC_00.75_* *MRMS_MergedReflectivityQC_01.00_* *MRMS_MergedReflectivityQC_01.25_* *MRMS_MergedReflectivityQC_01.50_* *MRMS_MergedReflectivityQC_01.75_* *MRMS_MergedReflectivityQC_02.00_* *MRMS_MergedReflectivityQC_02.25_* *MRMS_MergedReflectivityQC_02.50_* *MRMS_MergedReflectivityQC_02.75_* *MRMS_MergedReflectivityQC_03.00_* *MRMS_MergedReflectivityQC_03.50_* *MRMS_MergedReflectivityQC_04.00_* *MRMS_MergedReflectivityQC_04.50_* *MRMS_MergedReflectivityQC_05.00_* *MRMS_MergedReflectivityQC_05.50_* *MRMS_MergedReflectivityQC_06.00_* *MRMS_MergedReflectivityQC_06.50_* *MRMS_MergedReflectivityQC_07.00_* *MRMS_MergedReflectivityQC_07.50_* *MRMS_MergedReflectivityQC_08.00_* *MRMS_MergedReflectivityQC_08.50_* *MRMS_MergedReflectivityQC_09.00_* *MRMS_MergedReflectivityQC_10.00_* *MRMS_MergedReflectivityQC_11.00_* *MRMS_MergedReflectivityQC_12.00_* > ../ref3D_${fname1}.grib2

   cat *MRMS_MergedReflectivityQCComposite_00.50* *MRMS_Reflectivity_-15C* *MRMS_Reflectivity_-10C* *MRMS_Reflectivity_-5C* *MRMS_Reflectivity_0C* > ../ref2D_${fname1}.grib2

   cp *MRMS_MergedReflectivityQCComposite_00.50* ../QCComposite_00.50_${fname1}.grib2
   cp *MRMS_SeamlessHSR_* ../seamlessHSR_${fname1}.grib2
   cp *MRMS_PrecipRate_00.00* ../prate_${fname1}.grib2

   cd ..
   rm -rf ${fname1}
   rm -f ${fname1}.zip
done

exit
