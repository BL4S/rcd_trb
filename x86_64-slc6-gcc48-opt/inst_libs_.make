#-- start of make_header -----------------

#====================================
#  Document inst_libs_
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

cmt_inst_libs__has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_libs__has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_inst_libs_

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_libs_ = $(rcd_trb_tag)_inst_libs_.make
cmt_local_tagfile_inst_libs_ = $(bin)$(rcd_trb_tag)_inst_libs_.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_libs_ = $(rcd_trb_tag).make
cmt_local_tagfile_inst_libs_ = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_inst_libs_)
#-include $(cmt_local_tagfile_inst_libs_)

ifdef cmt_inst_libs__has_target_tag

cmt_final_setup_inst_libs_ = $(bin)setup_inst_libs_.make
cmt_dependencies_in_inst_libs_ = $(bin)dependencies_inst_libs_.in
#cmt_final_setup_inst_libs_ = $(bin)rcd_trb_inst_libs_setup.make
cmt_local_inst_libs__makefile = $(bin)inst_libs_.make

else

cmt_final_setup_inst_libs_ = $(bin)setup.make
cmt_dependencies_in_inst_libs_ = $(bin)dependencies.in
#cmt_final_setup_inst_libs_ = $(bin)rcd_trbsetup.make
cmt_local_inst_libs__makefile = $(bin)inst_libs_.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#inst_libs_ :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'inst_libs_'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = inst_libs_/
#inst_libs_::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
inst_libs_ :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/ /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib
	@echo "Constituent: inst_libs_ ${FILES}"

ifneq "${FILES}" ""
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib:
	@echo "making installation directory $@"
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib"
	@${lock_command} inst_files.x86_64-slc6-gcc48-opt.libs..lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib" >> inst_files.x86_64-slc6-gcc48-opt.libs.
	@[ -z "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed" ] || for d in /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed; do echo "%dir $${d}" >> inst_files.x86_64-slc6-gcc48-opt.libs. ; done
	@${unlock_command} inst_files.x86_64-slc6-gcc48-opt.libs..lock
endif

ifneq "$(source_dir)" ""

sources := $(shell find $(source_dir)/ -name $(mask))
cmtdir := $(shell pwd)

/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/: $(source_dir)/ $(sources)
	@echo "Installing all $(mask) files in directory  from $(source_dir) to /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/$(target_dir)"
	@${lock_command} inst_files.x86_64-slc6-gcc48-opt.libs..lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/" >> inst_files.x86_64-slc6-gcc48-opt.libs. 
	@${unlock_command} inst_files.x86_64-slc6-gcc48-opt.libs..lock
	@(cd $(source_dir);						\
	for f in `find  -name $(mask)` ; do 			\
		echo "Installing $${f}" ;				\
		dirname=`dirname $${f}` ;				\
		filename=`basename $${f}` ;				\
		mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/$${dirname}" ;			\
		${install_command} $${f} /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/$${dirname} ;	\
		${lock_command}  inst_files.x86_64-slc6-gcc48-opt.libs..lock ;		\
		echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/$${dirname}/$${filename}" >> $(cmtdir)/inst_files.x86_64-slc6-gcc48-opt.libs. ; \
		${unlock_command} inst_files.x86_64-slc6-gcc48-opt.libs..lock ; \
	done)

else
endif
libReadoutModuleTRB_so_dependencies = ../x86_64-slc6-gcc48-opt/libReadoutModuleTRB.so
inst_libs_ :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/libReadoutModuleTRB.so
	
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/libReadoutModuleTRB.so : ../x86_64-slc6-gcc48-opt/libReadoutModuleTRB.so
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib"

# rename file. Attention: works only for one file in install pattern!
ifneq "" ""
	${install_command} ../x86_64-slc6-gcc48-opt/libReadoutModuleTRB.so /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/
	@${lock_command} inst_files.x86_64-slc6-gcc48-opt.libs..lock
	@echo /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/ >> inst_files.x86_64-slc6-gcc48-opt.libs.
	@${unlock_command} inst_files.x86_64-slc6-gcc48-opt.libs..lock
else
	${install_command} ../x86_64-slc6-gcc48-opt/libReadoutModuleTRB.so "$@"
	@${lock_command} inst_files.x86_64-slc6-gcc48-opt.libs..lock
	@echo "$@" >> inst_files.x86_64-slc6-gcc48-opt.libs.
	@${unlock_command} inst_files.x86_64-slc6-gcc48-opt.libs..lock
	@if test -f ../x86_64-slc6-gcc48-opt/libReadoutModuleTRB.so.$(debug_suffix); then \
	${install_command} ../x86_64-slc6-gcc48-opt/libReadoutModuleTRB.so.$(debug_suffix) /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/libReadoutModuleTRB.so.$(debug_suffix) ;\
	chmod -x /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/libReadoutModuleTRB.so.$(debug_suffix) ;\
	${lock_command} inst_files.x86_64-slc6-gcc48-opt.libs..lock; \
	echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/lib/libReadoutModuleTRB.so.$(debug_suffix)" >> inst_files.x86_64-slc6-gcc48-opt.libs. ;\
	${unlock_command} inst_files.x86_64-slc6-gcc48-opt.libs..lock;\
	fi 
endif
	@${unlock_command} inst_files.x86_64-slc6-gcc48-opt.libs..lock

inst_libs_clean ::
	${uninstall_command} "$@"

#-- start of cleanup_header --------------

clean :: inst_libs_clean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(inst_libs_.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

inst_libs_clean ::
#-- end of cleanup_header ---------------
