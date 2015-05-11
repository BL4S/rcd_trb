#-- start of make_header -----------------

#====================================
#  Document inst_scripts_auto
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

cmt_inst_scripts_auto_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_scripts_auto_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_inst_scripts_auto

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_scripts_auto = $(rcd_trb_tag)_inst_scripts_auto.make
cmt_local_tagfile_inst_scripts_auto = $(bin)$(rcd_trb_tag)_inst_scripts_auto.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_scripts_auto = $(rcd_trb_tag).make
cmt_local_tagfile_inst_scripts_auto = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_inst_scripts_auto)
#-include $(cmt_local_tagfile_inst_scripts_auto)

ifdef cmt_inst_scripts_auto_has_target_tag

cmt_final_setup_inst_scripts_auto = $(bin)setup_inst_scripts_auto.make
cmt_dependencies_in_inst_scripts_auto = $(bin)dependencies_inst_scripts_auto.in
#cmt_final_setup_inst_scripts_auto = $(bin)rcd_trb_inst_scripts_autosetup.make
cmt_local_inst_scripts_auto_makefile = $(bin)inst_scripts_auto.make

else

cmt_final_setup_inst_scripts_auto = $(bin)setup.make
cmt_dependencies_in_inst_scripts_auto = $(bin)dependencies.in
#cmt_final_setup_inst_scripts_auto = $(bin)rcd_trbsetup.make
cmt_local_inst_scripts_auto_makefile = $(bin)inst_scripts_auto.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#inst_scripts_auto :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'inst_scripts_auto'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = inst_scripts_auto/
#inst_scripts_auto::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
inst_scripts_auto :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/bin/$(dir) /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/bin
	@echo "Constituent: inst_scripts_auto ${FILES}"

ifneq "${FILES}" ""
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/bin:
	@echo "making installation directory $@"
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/bin"
	@${lock_command} inst_files.noarch.scr.auto..lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/bin" >> inst_files.noarch.scr.auto.
	@[ -z "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed" ] || for d in /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed; do echo "%dir $${d}" >> inst_files.noarch.scr.auto. ; done
	@${unlock_command} inst_files.noarch.scr.auto..lock
endif

ifneq "$(source_dir)" ""

sources := $(shell find $(source_dir)/$(dir) -name $(mask))
cmtdir := $(shell pwd)

/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/bin/$(dir): $(source_dir)/$(dir) $(sources)
	@echo "Installing all $(mask) files in directory $(dir) from $(source_dir) to /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/bin/$(target_dir)"
	@${lock_command} inst_files.noarch.scr.auto..lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/bin/$(dir)" >> inst_files.noarch.scr.auto. 
	@${unlock_command} inst_files.noarch.scr.auto..lock
	@(cd $(source_dir);						\
	for f in `find $(dir) -name $(mask)` ; do 			\
		echo "Installing $${f}" ;				\
		dirname=`dirname $${f}` ;				\
		filename=`basename $${f}` ;				\
		mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/bin/$${dirname}" ;			\
		${install_command} $${f} /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/bin/$${dirname} ;	\
		${lock_command}  inst_files.noarch.scr.auto..lock ;		\
		echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/bin/$${dirname}/$${filename}" >> $(cmtdir)/inst_files.noarch.scr.auto. ; \
		${unlock_command} inst_files.noarch.scr.auto..lock ; \
	done)

else
endif
#-- start of cleanup_header --------------

clean :: inst_scripts_autoclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(inst_scripts_auto.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

inst_scripts_autoclean ::
#-- end of cleanup_header ---------------
