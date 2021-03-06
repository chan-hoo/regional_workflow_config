MACHINE="hera"
ACCOUNT="fv3-cam"
EXPT_SUBDIR="test_nco_inline_post"

VERBOSE="TRUE"

RUN_ENVIR="nco"
PREEXISTING_DIR_METHOD="rename"

USE_CRON_TO_RELAUNCH="TRUE"
CRON_RELAUNCH_INTVL_MNTS="3"

PREDEF_GRID_NAME="RRFS_CONUS_25km"

WRITE_DOPOST="TRUE"
QUILTING="TRUE"

CCPP_PHYS_SUITE="FV3_GFS_v15p2"

FCST_LEN_HRS="12"
LBC_SPEC_INTVL_HRS="3"

DATE_FIRST_CYCL="20210708"
DATE_LAST_CYCL="20210708"
CYCL_HRS=( "00" )

EXTRN_MDL_NAME_ICS="FV3GFS"
EXTRN_MDL_NAME_LBCS="FV3GFS"

FV3GFS_FILE_FMT_ICS="grib2"
FV3GFS_FILE_FMT_LBCS="grib2"

RUN="srw_nco"
COMINgfs="/scratch1/NCEPDEV/rstprod/com/gfs/prod"    
FIXLAM_NCO_BASEDIR="/scratch2/BMC/det/FV3LAM_pregen"  
STMP="/scratch2/NCEPDEV/fv3-cam/Chan-hoo.Jeon/01_OUT_DATA/stmp" 
PTMP="/scratch2/NCEPDEV/fv3-cam/Chan-hoo.Jeon/01_OUT_DATA/ptmp" 
