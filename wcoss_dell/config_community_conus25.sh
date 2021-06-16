MACHINE="wcoss_dell_p3"
ACCOUNT="RRFS-T2O"
EXPT_SUBDIR="test_CONUS_25km_GFSv15p2"

RUN_ENVIR="community"
PREEXISTING_DIR_METHOD="rename"

USE_CRON_TO_RELAUNCH="TRUE"
CRON_RELAUNCH_INTVL_MNTS="5"

PREDEF_GRID_NAME="RRFS_CONUS_25km"
GRID_GEN_METHOD="ESGgrid"
QUILTING="TRUE"
CCPP_PHYS_SUITE="FV3_GFS_v15p2"
FCST_LEN_HRS="6"
LBC_SPEC_INTVL_HRS="6"
RESTART_INTERVAL="1"

DATE_FIRST_CYCL="20210615"
DATE_LAST_CYCL="20210615"
CYCL_HRS=( "00" )

EXTRN_MDL_NAME_ICS="FV3GFS"
EXTRN_MDL_NAME_LBCS="FV3GFS"

FV3GFS_FILE_FMT_ICS="grib2"
FV3GFS_FILE_FMT_LBCS="grib2"

WTIME_RUN_FCST="00:30:00"

