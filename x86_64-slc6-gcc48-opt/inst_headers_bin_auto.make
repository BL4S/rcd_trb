#-- start of make_header -----------------

#====================================
#  Document inst_headers_bin_auto
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

cmt_inst_headers_bin_auto_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_headers_bin_auto_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_inst_headers_bin_auto

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_headers_bin_auto = $(rcd_trb_tag)_inst_headers_bin_auto.make
cmt_local_tagfile_inst_headers_bin_auto = $(bin)$(rcd_trb_tag)_inst_headers_bin_auto.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_headers_bin_auto = $(rcd_trb_tag).make
cmt_local_tagfile_inst_headers_bin_auto = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_inst_headers_bin_auto)
#-include $(cmt_local_tagfile_inst_headers_bin_auto)

ifdef cmt_inst_headers_bin_auto_has_target_tag

cmt_final_setup_inst_headers_bin_auto = $(bin)setup_inst_headers_bin_auto.make
cmt_dependencies_in_inst_headers_bin_auto = $(bin)dependencies_inst_headers_bin_auto.in
#cmt_final_setup_inst_headers_bin_auto = $(bin)rcd_trb_inst_headers_bin_autosetup.make
cmt_local_inst_headers_bin_auto_makefile = $(bin)inst_headers_bin_auto.make

else

cmt_final_setup_inst_headers_bin_auto = $(bin)setup.make
cmt_dependencies_in_inst_headers_bin_auto = $(bin)dependencies.in
#cmt_final_setup_inst_headers_bin_auto = $(bin)rcd_trbsetup.make
cmt_local_inst_headers_bin_auto_makefile = $(bin)inst_headers_bin_auto.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#inst_headers_bin_auto :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'inst_headers_bin_auto'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = inst_headers_bin_auto/
#inst_headers_bin_auto::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
inst_headers_bin_auto :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include/rcd_trb/$(dir) /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include/rcd_trb
	@echo "Constituent: inst_headers_bin_auto ${FILES}"

ifneq "${FILES}" ""
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include/rcd_trb:
	@echo "making installation directory $@"
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include/rcd_trb"
	@${lock_command} inst_files.x86_64-slc6-gcc48-opt.head.bin.auto..lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include/rcd_trb" >> inst_files.x86_64-slc6-gcc48-opt.head.bin.auto.
	@[ -z "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed" ] || for d in /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed; do echo "%dir $${d}" >> inst_files.x86_64-slc6-gcc48-opt.head.bin.auto. ; done
	@${unlock_command} inst_files.x86_64-slc6-gcc48-opt.head.bin.auto..lock
endif

ifneq "$(source_dir)" ""

sources := $(shell find $(source_dir)/$(dir) -name $(mask))
cmtdir := $(shell pwd)

/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include/rcd_trb/$(dir): $(source_dir)/$(dir) $(sources)
	@echo "Installing all $(mask) files in directory $(dir) from $(source_dir) to /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include/rcd_trb/$(target_dir)"
	@${lock_command} inst_files.x86_64-slc6-gcc48-opt.head.bin.auto..lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include/rcd_trb/$(dir)" >> inst_files.x86_64-slc6-gcc48-opt.head.bin.auto. 
	@${unlock_command} inst_files.x86_64-slc6-gcc48-opt.head.bin.auto..lock
	@(cd $(source_dir);						\
	for f in `find $(dir) -name $(mask)` ; do 			\
		echo "Installing $${f}" ;				\
		dirname=`dirname $${f}` ;				\
		filename=`basename $${f}` ;				\
		mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include/rcd_trb/$${dirname}" ;			\
		${install_command} $${f} /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include/rcd_trb/$${dirname} ;	\
		${lock_command}  inst_files.x86_64-slc6-gcc48-opt.head.bin.auto..lock ;		\
		echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/x86_64-slc6-gcc48-opt/include/rcd_trb/$${dirname}/$${filename}" >> $(cmtdir)/inst_files.x86_64-slc6-gcc48-opt.head.bin.auto. ; \
		${unlock_command} inst_files.x86_64-slc6-gcc48-opt.head.bin.auto..lock ; \
	done)

else
endif
#-- start of cleanup_header --------------

clean :: inst_headers_bin_autoclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(inst_headers_bin_auto.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

inst_headers_bin_autoclean ::
#-- end of cleanup_header ---------------
