#-- start of make_header -----------------

#====================================
#  Document inst_headers_is_info
#
#   Generated Fri May  8 15:16:26 2015  by daquser
#
#====================================

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

cmt_inst_headers_is_info_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_headers_is_info_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_inst_headers_is_info

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_headers_is_info = $(rcd_trb_tag)_inst_headers_is_info.make
cmt_local_tagfile_inst_headers_is_info = $(bin)$(rcd_trb_tag)_inst_headers_is_info.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_headers_is_info = $(rcd_trb_tag).make
cmt_local_tagfile_inst_headers_is_info = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_inst_headers_is_info)
#-include $(cmt_local_tagfile_inst_headers_is_info)

ifdef cmt_inst_headers_is_info_has_target_tag

cmt_final_setup_inst_headers_is_info = $(bin)setup_inst_headers_is_info.make
cmt_dependencies_in_inst_headers_is_info = $(bin)dependencies_inst_headers_is_info.in
#cmt_final_setup_inst_headers_is_info = $(bin)rcd_trb_inst_headers_is_infosetup.make
cmt_local_inst_headers_is_info_makefile = $(bin)inst_headers_is_info.make

else

cmt_final_setup_inst_headers_is_info = $(bin)setup.make
cmt_dependencies_in_inst_headers_is_info = $(bin)dependencies.in
#cmt_final_setup_inst_headers_is_info = $(bin)rcd_trbsetup.make
cmt_local_inst_headers_is_info_makefile = $(bin)inst_headers_is_info.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#inst_headers_is_info :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'inst_headers_is_info'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = inst_headers_is_info/
#inst_headers_is_info::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
inst_headers_is_info :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/ /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo
	@echo "Constituent: inst_headers_is_info ${FILES}"

ifneq "${FILES}" ""
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo:
	@echo "making installation directory $@"
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo"
	@${lock_command} inst_files.noarch.headers.is_info.lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo" >> inst_files.noarch.headers.is_info
	@[ -z "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed" ] || for d in /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed; do echo "%dir $${d}" >> inst_files.noarch.headers.is_info ; done
	@${unlock_command} inst_files.noarch.headers.is_info.lock
endif

ifneq "$(source_dir)" ""

sources := $(shell find $(source_dir)/ -name $(mask))
cmtdir := $(shell pwd)

/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/: $(source_dir)/ $(sources)
	@echo "Installing all $(mask) files in directory  from $(source_dir) to /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/$(target_dir)"
	@${lock_command} inst_files.noarch.headers.is_info.lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/" >> inst_files.noarch.headers.is_info 
	@${unlock_command} inst_files.noarch.headers.is_info.lock
	@(cd $(source_dir);						\
	for f in `find  -name $(mask)` ; do 			\
		echo "Installing $${f}" ;				\
		dirname=`dirname $${f}` ;				\
		filename=`basename $${f}` ;				\
		mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/$${dirname}" ;			\
		${install_command} $${f} /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/$${dirname} ;	\
		${lock_command}  inst_files.noarch.headers.is_info.lock ;		\
		echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/$${dirname}/$${filename}" >> $(cmtdir)/inst_files.noarch.headers.is_info ; \
		${unlock_command} inst_files.noarch.headers.is_info.lock ; \
	done)

else
endif
DataChannelSTYXInfo_h_dependencies = ../x86_64-slc6-gcc48-opt/ROSInfo/DataChannelSTYXInfo.h
DataChannelTRBInfo_h_dependencies = ../x86_64-slc6-gcc48-opt/ROSInfo/DataChannelTRBInfo.h
inst_headers_is_info :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/DataChannelSTYXInfo.h
	
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/DataChannelSTYXInfo.h : ../x86_64-slc6-gcc48-opt/ROSInfo/DataChannelSTYXInfo.h
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo"

# rename file. Attention: works only for one file in install pattern!
ifneq "" ""
	${install_command} ../x86_64-slc6-gcc48-opt/ROSInfo/DataChannelSTYXInfo.h /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/
	@${lock_command} inst_files.noarch.headers.is_info.lock
	@echo /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/ >> inst_files.noarch.headers.is_info
	@${unlock_command} inst_files.noarch.headers.is_info.lock
else
	${install_command} ../x86_64-slc6-gcc48-opt/ROSInfo/DataChannelSTYXInfo.h "$@"
	@${lock_command} inst_files.noarch.headers.is_info.lock
	@echo "$@" >> inst_files.noarch.headers.is_info
	@${unlock_command} inst_files.noarch.headers.is_info.lock
	@if test -f ../x86_64-slc6-gcc48-opt/ROSInfo/DataChannelSTYXInfo.h.$(debug_suffix); then \
	${install_command} ../x86_64-slc6-gcc48-opt/ROSInfo/DataChannelSTYXInfo.h.$(debug_suffix) /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/DataChannelSTYXInfo.h.$(debug_suffix) ;\
	chmod -x /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/DataChannelSTYXInfo.h.$(debug_suffix) ;\
	${lock_command} inst_files.noarch.headers.is_info.lock; \
	echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/DataChannelSTYXInfo.h.$(debug_suffix)" >> inst_files.noarch.headers.is_info ;\
	${unlock_command} inst_files.noarch.headers.is_info.lock;\
	fi 
endif
	@${unlock_command} inst_files.noarch.headers.is_info.lock

inst_headers_is_infoclean ::
	${uninstall_command} "$@"

inst_headers_is_info :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/DataChannelTRBInfo.h
	
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/DataChannelTRBInfo.h : ../x86_64-slc6-gcc48-opt/ROSInfo/DataChannelTRBInfo.h
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo"

# rename file. Attention: works only for one file in install pattern!
ifneq "" ""
	${install_command} ../x86_64-slc6-gcc48-opt/ROSInfo/DataChannelTRBInfo.h /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/
	@${lock_command} inst_files.noarch.headers.is_info.lock
	@echo /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/ >> inst_files.noarch.headers.is_info
	@${unlock_command} inst_files.noarch.headers.is_info.lock
else
	${install_command} ../x86_64-slc6-gcc48-opt/ROSInfo/DataChannelTRBInfo.h "$@"
	@${lock_command} inst_files.noarch.headers.is_info.lock
	@echo "$@" >> inst_files.noarch.headers.is_info
	@${unlock_command} inst_files.noarch.headers.is_info.lock
	@if test -f ../x86_64-slc6-gcc48-opt/ROSInfo/DataChannelTRBInfo.h.$(debug_suffix); then \
	${install_command} ../x86_64-slc6-gcc48-opt/ROSInfo/DataChannelTRBInfo.h.$(debug_suffix) /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/DataChannelTRBInfo.h.$(debug_suffix) ;\
	chmod -x /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/DataChannelTRBInfo.h.$(debug_suffix) ;\
	${lock_command} inst_files.noarch.headers.is_info.lock; \
	echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/../ROSInfo/DataChannelTRBInfo.h.$(debug_suffix)" >> inst_files.noarch.headers.is_info ;\
	${unlock_command} inst_files.noarch.headers.is_info.lock;\
	fi 
endif
	@${unlock_command} inst_files.noarch.headers.is_info.lock

inst_headers_is_infoclean ::
	${uninstall_command} "$@"

#-- start of cleanup_header --------------

clean :: inst_headers_is_infoclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(inst_headers_is_info.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

inst_headers_is_infoclean ::
#-- end of cleanup_header ---------------
