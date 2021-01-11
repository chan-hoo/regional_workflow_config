MACHINE="wcoss_cray"
ACCOUNT="RRFS-T2O"
EXPT_SUBDIR="test_nco_conus_25km_gfdl"

VERBOSE="TRUE"

RUN_ENVIR="nco"
PREEXISTING_DIR_METHOD="rename"

PREDEF_GRID_NAME="CONUS_25km_GFDLgrid"
QUILTING="TRUE"

CCPP_PHYS_SUITE="FV3_GFS_v15p2"

FCST_LEN_HRS="06"
LBC_SPEC_INTVL_HRS="3"

DATE_FIRST_CYCL="20210110"
DATE_LAST_CYCL="20210110"
CYCL_HRS=( "00" )

EXTRN_MDL_NAME_ICS="FV3GFS"
EXTRN_MDL_NAME_LBCS="FV3GFS"

RUN="srw_nco"
COMINgfs="/gpfs/dell1/nco/ops/com/gfs/prod"
FIXLAM_NCO_BASEDIR="/gpfs/hps3/emc/meso/noscrub/Chan-Hoo.Jeon/00_DATA/fix_lam"
STMP="/gpfs/hps3/emc/meso/noscrub/Chan-Hoo.Jeon/01_OUT_DATA/stmp"
PTMP="/gpfs/hps3/emc/meso/noscrub/Chan-Hoo.Jeon/01_OUT_DATA/ptmp"
