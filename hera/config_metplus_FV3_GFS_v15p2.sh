MACHINE="hera"
ACCOUNT="fv3-cam"
EXPT_SUBDIR="test_metplus_FV3_GFS_v15p2"

VERBOSE="TRUE"

RUN_ENVIR="community"
PREEXISTING_DIR_METHOD="rename"

USE_CRON_TO_RELAUNCH="TRUE"
CRON_RELAUNCH_INTVL_MNTS="5"

PREDEF_GRID_NAME="RRFS_CONUS_25km"
QUILTING="TRUE"

CCPP_PHYS_SUITE="FV3_GFS_v15p2"
FCST_LEN_HRS="48"
LBC_SPEC_INTVL_HRS="6"

DATE_FIRST_CYCL="20190615"
DATE_LAST_CYCL="20190615"
CYCL_HRS=( "00" )

EXTRN_MDL_NAME_ICS="FV3GFS"
EXTRN_MDL_NAME_LBCS="FV3GFS"

FV3GFS_FILE_FMT_ICS="grib2"
FV3GFS_FILE_FMT_LBCS="grib2"

WTIME_RUN_FCST="01:00:00"

MODEL="FV3_GFS_v15p2_CONUS_25km"
METPLUS_PATH="/contrib/METplus/METplus-3.0"
MET_INSTALL_DIR="/contrib/met/9.0.2"
CCPA_OBS_DIR="/scratch2/BMC/det/UFS_SRW_app/v1p0/obs_data/ccpa/proc"
MRMS_OBS_DIR="/scratch2/BMC/det/UFS_SRW_app/v1p0/obs_data/mrms/proc"
NDAS_OBS_DIR="/scratch2/BMC/det/UFS_SRW_app/v1p0/obs_data/ndas/proc"

RUN_TASK_MAKE_GRID="TRUE"
RUN_TASK_MAKE_OROG="TRUE"
RUN_TASK_MAKE_SFC_CLIMO="TRUE"
RUN_TASK_GET_OBS_CCPA="FALSE"
RUN_TASK_GET_OBS_MRMS="FALSE"
RUN_TASK_GET_OBS_NDAS="FALSE"
RUN_TASK_VX_GRIDSTAT="TRUE"
RUN_TASK_VX_POINTSTAT="TRUE"

#
# Uncomment the following line in order to use user-staged external model 
# files with locations and names as specified by EXTRN_MDL_SOURCE_BASEDIR_ICS/
# LBCS and EXTRN_MDL_FILES_ICS/LBCS.
#
USE_USER_STAGED_EXTRN_FILES="TRUE"
#
# The following is specifically for Hera.  It will have to be modified
# if on another platform, using other dates, other external models, etc.
#
EXTRN_MDL_SOURCE_BASEDIR_ICS="/scratch2/BMC/det/UFS_SRW_app/v1p0/model_data/FV3GFS"
EXTRN_MDL_FILES_ICS=( "gfs.pgrb2.0p25.f000" )
EXTRN_MDL_SOURCE_BASEDIR_LBCS="/scratch2/BMC/det/UFS_SRW_app/v1p0/model_data/FV3GFS"
EXTRN_MDL_FILES_LBCS=( "gfs.pgrb2.0p25.f006" "gfs.pgrb2.0p25.f012" "gfs.pgrb2.0p25.f018" "gfs.pgrb2.0p25.f024" \
                       "gfs.pgrb2.0p25.f030" "gfs.pgrb2.0p25.f036" "gfs.pgrb2.0p25.f042" "gfs.pgrb2.0p25.f048" )
