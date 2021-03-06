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

DATE_FIRST_CYCL="20190615"
DATE_LAST_CYCL="20190615"
CYCL_HRS=( "00" )

EXTRN_MDL_NAME_ICS="FV3GFS"
EXTRN_MDL_NAME_LBCS="FV3GFS"

FV3GFS_FILE_FMT_ICS="grib2"
FV3GFS_FILE_FMT_LBCS="grib2"

WTIME_RUN_FCST="01:30:00"

MODEL="FV3_GFS_v15p2_CONUS_25km"
METPLUS_PATH="/gpfs/dell2/emc/verification/noscrub/emc.metplus/METplus/METplus-3.1.1"
MET_INSTALL_DIR="/gpfs/dell2/emc/verification/noscrub/emc.metplus/met/10.0.0"
MET_BIN_EXEC="exec"
CCPA_OBS_DIR="/gpfs/dell2/emc/modeling/noscrub/Chan-Hoo.Jeon/01_OUTPUT/obs_data/ccpa/proc"
MRMS_OBS_DIR="/gpfs/dell2/emc/modeling/noscrub/Chan-Hoo.Jeon/01_OUTPUT/obs_data/mrms/proc"
NDAS_OBS_DIR="/gpfs/dell2/emc/modeling/noscrub/Chan-Hoo.Jeon/01_OUTPUT/obs_data/ndas/proc"

RUN_TASK_GET_OBS_CCPA="TRUE"
RUN_TASK_GET_OBS_MRMS="TRUE"
RUN_TASK_GET_OBS_NDAS="TRUE"
RUN_TASK_VX_GRIDSTAT="TRUE"
RUN_TASK_VX_POINTSTAT="TRUE"

USE_USER_STAGED_EXTRN_FILES="TRUE"
EXTRN_MDL_SOURCE_BASEDIR_ICS="/gpfs/dell2/emc/modeling/noscrub/UFS_SRW_App/model_data/FV3GFS"
EXTRN_MDL_FILES_ICS=( "gfs.pgrb2.0p25.f000" )
EXTRN_MDL_SOURCE_BASEDIR_LBCS="/gpfs/dell2/emc/modeling/noscrub/UFS_SRW_App/model_data/FV3GFS"
EXTRN_MDL_FILES_LBCS=( "gfs.pgrb2.0p25.f006" "gfs.pgrb2.0p25.f012" "gfs.pgrb2.0p25.f018" "gfs.pgrb2.0p25.f024" )
