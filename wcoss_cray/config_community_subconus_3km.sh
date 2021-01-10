MACHINE="wcoss_cray"
ACCOUNT="RRFS-T2O"
EXPT_SUBDIR="test_subconus"

VERBOSE="TRUE"

RUN_ENVIR="community"
PREEXISTING_DIR_METHOD="rename"

PREDEF_GRID_NAME="RRFS_SUBCONUS_3km"
QUILTING="TRUE"

CCPP_PHYS_SUITE="FV3_GFS_v15p2"
FCST_LEN_HRS="3"
LBC_SPEC_INTVL_HRS="1"

DATE_FIRST_CYCL="20210108"
DATE_LAST_CYCL="20210108"
CYCL_HRS=( "00" )

EXTRN_MDL_NAME_ICS="FV3GFS"
EXTRN_MDL_NAME_LBCS="FV3GFS"

FV3GFS_FILE_FMT_ICS="grib2"
FV3GFS_FILE_FMT_LBCS="grib2"

WTIME_RUN_FCST="01:00:00"


EXTRN_MDL_SOURCE_BASEDIR_ICS="/gpfs/dell1/nco/ops/com/gfs/prod/gfs.20210108/00"
EXTRN_MDL_FILES_ICS=( "gfs.pgrb2.0p25.f000" )
EXTRN_MDL_SOURCE_BASEDIR_LBCS="/gpfs/dell1/nco/ops/com/gfs/prod/gfs.20210108/00"
EXTRN_MDL_FILES_LBCS=( "gfs.pgrb2.0p25.f001" "gfs.pgrb2.0p25.f002" "gfs.pgrb2.0p25.f003" )
