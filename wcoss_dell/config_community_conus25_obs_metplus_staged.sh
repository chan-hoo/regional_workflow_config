MACHINE="wcoss_dell_p3"
ACCOUNT="GFS-DEV"
EXPT_SUBDIR="test_obs_metplus"

VERBOSE="TRUE"

RUN_ENVIR="community"
PREEXISTING_DIR_METHOD="rename"

USE_CRON_TO_RELAUNCH="TRUE"
CRON_RELAUNCH_INTVL_MNTS="5"

PREDEF_GRID_NAME="RRFS_CONUS_25km"
QUILTING="TRUE"

CCPP_PHYS_SUITE="FV3_GFS_v15p2"
FCST_LEN_HRS="24"
LBC_SPEC_INTVL_HRS="6"

DATE_FIRST_CYCL="20210423"
DATE_LAST_CYCL="20210423"
CYCL_HRS=( "00" )

EXTRN_MDL_NAME_ICS="FV3GFS"
EXTRN_MDL_NAME_LBCS="FV3GFS"

FV3GFS_FILE_FMT_ICS="grib2"
FV3GFS_FILE_FMT_LBCS="grib2"

WTIME_RUN_FCST="01:30:00"

MODEL="FV3_GFS_v15p2_CONUS_25km"
METPLUS_PATH="/gpfs/dell1/nco/ops/nwprod/metplus.v3.1.1/METplus-3.1.1"
MET_INSTALL_DIR="/gpfs/dell1/nco/ops/nwprod/met.v9.1.3"
CCPA_OBS_DIR="/gpfs/dell2/emc/modeling/noscrub/Chan-Hoo.Jeon/01_OUTPUT/obs_data/ccpa/data"
MRMS_OBS_DIR="/gpfs/dell2/emc/modeling/noscrub/Chan-Hoo.Jeon/01_OUTPUT/obs_data/mrms/data"
NDAS_OBS_DIR="/gpfs/dell2/emc/modeling/noscrub/Chan-Hoo.Jeon/01_OUTPUT//obs_data/ndas/data"

RUN_TASK_GET_OBS_CCPA="TRUE"
RUN_TASK_GET_OBS_MRMS="TRUE"
RUN_TASK_GET_OBS_NDAS="TRUE"
RUN_TASK_VX_GRIDSTAT="TRUE"
RUN_TASK_VX_POINTSTAT="TRUE"

