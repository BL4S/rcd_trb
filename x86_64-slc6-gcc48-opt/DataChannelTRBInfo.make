#-- start of make_header -----------------

#====================================
#  Document DataChannelTRBInfo
#
#   Generated Mon May 11 10:54:42 2015  by daquser
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_DataChannelTRBInfo_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_DataChannelTRBInfo_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_DataChannelTRBInfo

rcd_trb_tag = $(tag)

#cmt_local_tagfile_DataChannelTRBInfo = $(rcd_trb_tag)_DataChannelTRBInfo.make
cmt_local_tagfile_DataChannelTRBInfo = $(bin)$(rcd_trb_tag)_DataChannelTRBInfo.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_DataChannelTRBInfo = $(rcd_trb_tag).make
cmt_local_tagfile_DataChannelTRBInfo = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_DataChannelTRBInfo)
#-include $(cmt_local_tagfile_DataChannelTRBInfo)

ifdef cmt_DataChannelTRBInfo_has_target_tag

cmt_final_setup_DataChannelTRBInfo = $(bin)setup_DataChannelTRBInfo.make
cmt_dependencies_in_DataChannelTRBInfo = $(bin)dependencies_DataChannelTRBInfo.in
#cmt_final_setup_DataChannelTRBInfo = $(bin)rcd_trb_DataChannelTRBInfosetup.make
cmt_local_DataChannelTRBInfo_makefile = $(bin)DataChannelTRBInfo.make

else

cmt_final_setup_DataChannelTRBInfo = $(bin)setup.make
cmt_dependencies_in_DataChannelTRBInfo = $(bin)dependencies.in
#cmt_final_setup_DataChannelTRBInfo = $(bin)rcd_trbsetup.make
cmt_local_DataChannelTRBInfo_makefile = $(bin)DataChannelTRBInfo.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#DataChannelTRBInfo :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'DataChannelTRBInfo'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = DataChannelTRBInfo/
#DataChannelTRBInfo::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of document_header ------

DataChannelTRBInfo_output = $(doc)

DataChannelTRBInfo :: $(DataChannelTRBInfo_output)TRBInfo.schema.is-generation
	$(echo) "DataChannelTRBInfo ok"

#-- end of document_header ------
TRBInfo.schema_xml_dependencies = ../schema/TRBInfo.schema.xml
# $Id: is-generation 44778 2008-02-01 14:56:32Z gcrone $
#-- ---------------------------------------------------------------------------
#--   Makefile fragment to generate header files for ISInfo derived
#--  classes from the xml descriptions
#-- ---------------------------------------------------------------------------
dotH=$(bin)/ROSInfo/DataChannelTRBInfo.h
DataChannelTRBInfo :: ${dotH}
	
${dotH} :: ../schema/TRBInfo.schema.xml 
	mkdir -p $(bin)/ROSInfo
	is_generator.sh -cpp -d $(bin)/ROSInfo -p ROS -cn DataChannelTRBInfo ../schema/TRBInfo.schema.xml 
	perl -pi -e 's=\#include\s+\<ROS/=\#include \<ROSInfo/=g' ${dotH}

DataChannelTRBInfoclean ::
	rm -f  ${dotH}
#-- start of cleanup_header --------------

clean :: DataChannelTRBInfoclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(DataChannelTRBInfo.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

DataChannelTRBInfoclean ::
#-- end of cleanup_header ---------------
