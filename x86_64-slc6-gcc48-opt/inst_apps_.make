#-- start of make_header -----------------

#====================================
#  Document inst_apps_
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

cmt_inst_apps__has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_apps__has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_inst_apps_

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_apps_ = $(rcd_trb_tag)_inst_apps_.make
cmt_local_tagfile_inst_apps_ = $(bin)$(rcd_trb_tag)_inst_apps_.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_apps_ = $(rcd_trb_tag).make
cmt_local_tagfile_inst_apps_ = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_inst_apps_)
#-include $(cmt_local_tagfile_inst_apps_)

ifdef cmt_inst_apps__has_target_tag

cmt_final_setup_inst_apps_ = $(bin)setup_inst_apps_.make
cmt_dependencies_in_inst_apps_ = $(bin)dependencies_inst_apps_.in
#cmt_final_setup_inst_apps_ = $(bin)rcd_trb_inst_apps_setup.make
cmt_local_inst_apps__makefile = $(bin)inst_apps_.make

else

cmt_final_setup_inst_apps_ = $(bin)setup.make
cmt_dependencies_in_inst_apps_ = $(bin)dependencies.in
#cmt_final_setup_inst_apps_ = $(bin)rcd_trbsetup.make
cmt_local_inst_apps__makefile = $(bin)inst_apps_.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#inst_apps_ :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'inst_apps_'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = inst_apps_/
#inst_apps_::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
inst_apps_ :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/ /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin
	@echo "Constituent: inst_apps_ ${FILES}"

ifneq "${FILES}" ""
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin:
	@echo "making installation directory $@"
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin"
	@${lock_command} inst_files.x86_64-slc6-gcc48-opt.apps..lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin" >> inst_files.x86_64-slc6-gcc48-opt.apps.
	@[ -z "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed" ] || for d in /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed; do echo "%dir $${d}" >> inst_files.x86_64-slc6-gcc48-opt.apps. ; done
	@${unlock_command} inst_files.x86_64-slc6-gcc48-opt.apps..lock
endif

ifneq "$(source_dir)" ""

sources := $(shell find $(source_dir)/ -name $(mask))
cmtdir := $(shell pwd)

/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/: $(source_dir)/ $(sources)
	@echo "Installing all $(mask) files in directory  from $(source_dir) to /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/$(target_dir)"
	@${lock_command} inst_files.x86_64-slc6-gcc48-opt.apps..lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/" >> inst_files.x86_64-slc6-gcc48-opt.apps. 
	@${unlock_command} inst_files.x86_64-slc6-gcc48-opt.apps..lock
	@(cd $(source_dir);						\
	for f in `find  -name $(mask)` ; do 			\
		echo "Installing $${f}" ;				\
		dirname=`dirname $${f}` ;				\
		filename=`basename $${f}` ;				\
		mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/$${dirname}" ;			\
		${install_command} $${f} /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/$${dirname} ;	\
		${lock_command}  inst_files.x86_64-slc6-gcc48-opt.apps..lock ;		\
		echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/$${dirname}/$${filename}" >> $(cmtdir)/inst_files.x86_64-slc6-gcc48-opt.apps. ; \
		${unlock_command} inst_files.x86_64-slc6-gcc48-opt.apps..lock ; \
	done)

else
endif
trbscope__dependencies = ../x86_64-slc6-gcc48-opt/trbscope
inst_apps_ :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/trbscope
	
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/trbscope : ../x86_64-slc6-gcc48-opt/trbscope
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin"

# rename file. Attention: works only for one file in install pattern!
ifneq "" ""
	${install_command} ../x86_64-slc6-gcc48-opt/trbscope /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/
	@${lock_command} inst_files.x86_64-slc6-gcc48-opt.apps..lock
	@echo /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/ >> inst_files.x86_64-slc6-gcc48-opt.apps.
	@${unlock_command} inst_files.x86_64-slc6-gcc48-opt.apps..lock
else
	${install_command} ../x86_64-slc6-gcc48-opt/trbscope "$@"
	@${lock_command} inst_files.x86_64-slc6-gcc48-opt.apps..lock
	@echo "$@" >> inst_files.x86_64-slc6-gcc48-opt.apps.
	@${unlock_command} inst_files.x86_64-slc6-gcc48-opt.apps..lock
	@if test -f ../x86_64-slc6-gcc48-opt/trbscope.$(debug_suffix); then \
	${install_command} ../x86_64-slc6-gcc48-opt/trbscope.$(debug_suffix) /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/trbscope.$(debug_suffix) ;\
	chmod -x /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/trbscope.$(debug_suffix) ;\
	${lock_command} inst_files.x86_64-slc6-gcc48-opt.apps..lock; \
	echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/bin/trbscope.$(debug_suffix)" >> inst_files.x86_64-slc6-gcc48-opt.apps. ;\
	${unlock_command} inst_files.x86_64-slc6-gcc48-opt.apps..lock;\
	fi 
endif
	@${unlock_command} inst_files.x86_64-slc6-gcc48-opt.apps..lock

inst_apps_clean ::
	${uninstall_command} "$@"

#-- start of cleanup_header --------------

clean :: inst_apps_clean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(inst_apps_.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

inst_apps_clean ::
#-- end of cleanup_header ---------------