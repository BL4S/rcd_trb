# echo "cleanup rcd_trb HEAD in /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow"

if ( $?CMTROOT == 0 ) then
  setenv CMTROOT /afs/cern.ch/sw/contrib/CMT/v1r25p20130606
endif
source ${CMTROOT}/mgr/setup.csh
set cmtrcd_trbtempfile=`${CMTROOT}/mgr/cmt -quiet build temporary_name`
if $status != 0 then
  set cmtrcd_trbtempfile=/tmp/cmt.$$
endif
${CMTROOT}/mgr/cmt cleanup -csh -pack=rcd_trb -version=HEAD -path=/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow  $* >${cmtrcd_trbtempfile}
if ( $status != 0 ) then
  echo "${CMTROOT}/mgr/cmt cleanup -csh -pack=rcd_trb -version=HEAD -path=/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow  $* >${cmtrcd_trbtempfile}"
  set cmtcleanupstatus=2
  /bin/rm -f ${cmtrcd_trbtempfile}
  unset cmtrcd_trbtempfile
  exit $cmtcleanupstatus
endif
set cmtcleanupstatus=0
source ${cmtrcd_trbtempfile}
if ( $status != 0 ) then
  set cmtcleanupstatus=2
endif
/bin/rm -f ${cmtrcd_trbtempfile}
unset cmtrcd_trbtempfile
exit $cmtcleanupstatus

