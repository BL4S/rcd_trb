#-- start of make_header -----------------

#====================================
#  Document inst_headers_auto
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

cmt_inst_headers_auto_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_headers_auto_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_inst_headers_auto

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_headers_auto = $(rcd_trb_tag)_inst_headers_auto.make
cmt_local_tagfile_inst_headers_auto = $(bin)$(rcd_trb_tag)_inst_headers_auto.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_headers_auto = $(rcd_trb_tag).make
cmt_local_tagfile_inst_headers_auto = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_inst_headers_auto)
#-include $(cmt_local_tagfile_inst_headers_auto)

ifdef cmt_inst_headers_auto_has_target_tag

cmt_final_setup_inst_headers_auto = $(bin)setup_inst_headers_auto.make
cmt_dependencies_in_inst_headers_auto = $(bin)dependencies_inst_headers_auto.in
#cmt_final_setup_inst_headers_auto = $(bin)rcd_trb_inst_headers_autosetup.make
cmt_local_inst_headers_auto_makefile = $(bin)inst_headers_auto.make

else

cmt_final_setup_inst_headers_auto = $(bin)setup.make
cmt_dependencies_in_inst_headers_auto = $(bin)dependencies.in
#cmt_final_setup_inst_headers_auto = $(bin)rcd_trbsetup.make
cmt_local_inst_headers_auto_makefile = $(bin)inst_headers_auto.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#inst_headers_auto :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'inst_headers_auto'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = inst_headers_auto/
#inst_headers_auto::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
inst_headers_auto :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$(dir) /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb
	@echo "Constituent: inst_headers_auto ${FILES}"

ifneq "${FILES}" ""
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb:
	@echo "making installation directory $@"
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb"
	@${lock_command} inst_files.noarch.head.auto..lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb" >> inst_files.noarch.head.auto.
	@[ -z "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed" ] || for d in /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed; do echo "%dir $${d}" >> inst_files.noarch.head.auto. ; done
	@${unlock_command} inst_files.noarch.head.auto..lock
endif

ifneq "$(source_dir)" ""

sources := $(shell find $(source_dir)/$(dir) -name $(mask))
cmtdir := $(shell pwd)

/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$(dir): $(source_dir)/$(dir) $(sources)
	@echo "Installing all $(mask) files in directory $(dir) from $(source_dir) to /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$(target_dir)"
	@${lock_command} inst_files.noarch.head.auto..lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$(dir)" >> inst_files.noarch.head.auto. 
	@${unlock_command} inst_files.noarch.head.auto..lock
	@(cd $(source_dir);						\
	for f in `find $(dir) -name $(mask)` ; do 			\
		echo "Installing $${f}" ;				\
		dirname=`dirname $${f}` ;				\
		filename=`basename $${f}` ;				\
		mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$${dirname}" ;			\
		${install_command} $${f} /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$${dirname} ;	\
		${lock_command}  inst_files.noarch.head.auto..lock ;		\
		echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$${dirname}/$${filename}" >> $(cmtdir)/inst_files.noarch.head.auto. ; \
		${unlock_command} inst_files.noarch.head.auto..lock ; \
	done)

else
endif
DataChannelTrb_h_dependencies = ../rcd_trb/DataChannelTrb.h
ModuleTrb_h_dependencies = ../rcd_trb/ModuleTrb.h
ExceptionTrb_h_dependencies = ../rcd_trb/ExceptionTrb.h
trb_h_dependencies = ../rcd_trb/trb.h
inst_headers_auto :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/DataChannelTrb.h
	
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/DataChannelTrb.h : ../rcd_trb/DataChannelTrb.h
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb"

# rename file. Attention: works only for one file in install pattern!
ifneq "$(new_name)" ""
	${install_command} ../rcd_trb/DataChannelTrb.h /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$(new_name)
	@${lock_command} inst_files.noarch.head.auto..lock
	@echo /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$(new_name) >> inst_files.noarch.head.auto.
	@${unlock_command} inst_files.noarch.head.auto..lock
else
	${install_command} ../rcd_trb/DataChannelTrb.h "$@"
	@${lock_command} inst_files.noarch.head.auto..lock
	@echo "$@" >> inst_files.noarch.head.auto.
	@${unlock_command} inst_files.noarch.head.auto..lock
	@if test -f ../rcd_trb/DataChannelTrb.h.$(debug_suffix); then \
	${install_command} ../rcd_trb/DataChannelTrb.h.$(debug_suffix) /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/DataChannelTrb.h.$(debug_suffix) ;\
	chmod -x /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/DataChannelTrb.h.$(debug_suffix) ;\
	${lock_command} inst_files.noarch.head.auto..lock; \
	echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/DataChannelTrb.h.$(debug_suffix)" >> inst_files.noarch.head.auto. ;\
	${unlock_command} inst_files.noarch.head.auto..lock;\
	fi 
endif
	@${unlock_command} inst_files.noarch.head.auto..lock

inst_headers_autoclean ::
	${uninstall_command} "$@"

inst_headers_auto :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/ModuleTrb.h
	
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/ModuleTrb.h : ../rcd_trb/ModuleTrb.h
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb"

# rename file. Attention: works only for one file in install pattern!
ifneq "$(new_name)" ""
	${install_command} ../rcd_trb/ModuleTrb.h /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$(new_name)
	@${lock_command} inst_files.noarch.head.auto..lock
	@echo /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$(new_name) >> inst_files.noarch.head.auto.
	@${unlock_command} inst_files.noarch.head.auto..lock
else
	${install_command} ../rcd_trb/ModuleTrb.h "$@"
	@${lock_command} inst_files.noarch.head.auto..lock
	@echo "$@" >> inst_files.noarch.head.auto.
	@${unlock_command} inst_files.noarch.head.auto..lock
	@if test -f ../rcd_trb/ModuleTrb.h.$(debug_suffix); then \
	${install_command} ../rcd_trb/ModuleTrb.h.$(debug_suffix) /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/ModuleTrb.h.$(debug_suffix) ;\
	chmod -x /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/ModuleTrb.h.$(debug_suffix) ;\
	${lock_command} inst_files.noarch.head.auto..lock; \
	echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/ModuleTrb.h.$(debug_suffix)" >> inst_files.noarch.head.auto. ;\
	${unlock_command} inst_files.noarch.head.auto..lock;\
	fi 
endif
	@${unlock_command} inst_files.noarch.head.auto..lock

inst_headers_autoclean ::
	${uninstall_command} "$@"

inst_headers_auto :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/ExceptionTrb.h
	
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/ExceptionTrb.h : ../rcd_trb/ExceptionTrb.h
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb"

# rename file. Attention: works only for one file in install pattern!
ifneq "$(new_name)" ""
	${install_command} ../rcd_trb/ExceptionTrb.h /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$(new_name)
	@${lock_command} inst_files.noarch.head.auto..lock
	@echo /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$(new_name) >> inst_files.noarch.head.auto.
	@${unlock_command} inst_files.noarch.head.auto..lock
else
	${install_command} ../rcd_trb/ExceptionTrb.h "$@"
	@${lock_command} inst_files.noarch.head.auto..lock
	@echo "$@" >> inst_files.noarch.head.auto.
	@${unlock_command} inst_files.noarch.head.auto..lock
	@if test -f ../rcd_trb/ExceptionTrb.h.$(debug_suffix); then \
	${install_command} ../rcd_trb/ExceptionTrb.h.$(debug_suffix) /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/ExceptionTrb.h.$(debug_suffix) ;\
	chmod -x /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/ExceptionTrb.h.$(debug_suffix) ;\
	${lock_command} inst_files.noarch.head.auto..lock; \
	echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/ExceptionTrb.h.$(debug_suffix)" >> inst_files.noarch.head.auto. ;\
	${unlock_command} inst_files.noarch.head.auto..lock;\
	fi 
endif
	@${unlock_command} inst_files.noarch.head.auto..lock

inst_headers_autoclean ::
	${uninstall_command} "$@"

inst_headers_auto :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/trb.h
	
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/trb.h : ../rcd_trb/trb.h
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb"

# rename file. Attention: works only for one file in install pattern!
ifneq "$(new_name)" ""
	${install_command} ../rcd_trb/trb.h /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$(new_name)
	@${lock_command} inst_files.noarch.head.auto..lock
	@echo /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/$(new_name) >> inst_files.noarch.head.auto.
	@${unlock_command} inst_files.noarch.head.auto..lock
else
	${install_command} ../rcd_trb/trb.h "$@"
	@${lock_command} inst_files.noarch.head.auto..lock
	@echo "$@" >> inst_files.noarch.head.auto.
	@${unlock_command} inst_files.noarch.head.auto..lock
	@if test -f ../rcd_trb/trb.h.$(debug_suffix); then \
	${install_command} ../rcd_trb/trb.h.$(debug_suffix) /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/trb.h.$(debug_suffix) ;\
	chmod -x /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/trb.h.$(debug_suffix) ;\
	${lock_command} inst_files.noarch.head.auto..lock; \
	echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/include/rcd_trb/trb.h.$(debug_suffix)" >> inst_files.noarch.head.auto. ;\
	${unlock_command} inst_files.noarch.head.auto..lock;\
	fi 
endif
	@${unlock_command} inst_files.noarch.head.auto..lock

inst_headers_autoclean ::
	${uninstall_command} "$@"

#-- start of cleanup_header --------------

clean :: inst_headers_autoclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(inst_headers_auto.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

inst_headers_autoclean ::
#-- end of cleanup_header ---------------
