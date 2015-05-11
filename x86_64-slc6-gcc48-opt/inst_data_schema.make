#-- start of make_header -----------------

#====================================
#  Document inst_data_schema
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

cmt_inst_data_schema_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_data_schema_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_inst_data_schema

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_data_schema = $(rcd_trb_tag)_inst_data_schema.make
cmt_local_tagfile_inst_data_schema = $(bin)$(rcd_trb_tag)_inst_data_schema.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_inst_data_schema = $(rcd_trb_tag).make
cmt_local_tagfile_inst_data_schema = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_inst_data_schema)
#-include $(cmt_local_tagfile_inst_data_schema)

ifdef cmt_inst_data_schema_has_target_tag

cmt_final_setup_inst_data_schema = $(bin)setup_inst_data_schema.make
cmt_dependencies_in_inst_data_schema = $(bin)dependencies_inst_data_schema.in
#cmt_final_setup_inst_data_schema = $(bin)rcd_trb_inst_data_schemasetup.make
cmt_local_inst_data_schema_makefile = $(bin)inst_data_schema.make

else

cmt_final_setup_inst_data_schema = $(bin)setup.make
cmt_dependencies_in_inst_data_schema = $(bin)dependencies.in
#cmt_final_setup_inst_data_schema = $(bin)rcd_trbsetup.make
cmt_local_inst_data_schema_makefile = $(bin)inst_data_schema.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#inst_data_schema :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'inst_data_schema'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = inst_data_schema/
#inst_data_schema::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
inst_data_schema :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb// /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb/
	@echo "Constituent: inst_data_schema ${FILES}"

ifneq "${FILES}" ""
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb/:
	@echo "making installation directory $@"
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb/"
	@${lock_command} inst_files.noarch.data.schema.lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb/" >> inst_files.noarch.data.schema
	@[ -z "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed" ] || for d in /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed; do echo "%dir $${d}" >> inst_files.noarch.data.schema ; done
	@${unlock_command} inst_files.noarch.data.schema.lock
endif

ifneq "$(source_dir)" ""

sources := $(shell find $(source_dir)/ -name $(mask))
cmtdir := $(shell pwd)

/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb//: $(source_dir)/ $(sources)
	@echo "Installing all $(mask) files in directory  from $(source_dir) to /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb//$(target_dir)"
	@${lock_command} inst_files.noarch.data.schema.lock
	@echo "%dir /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb//" >> inst_files.noarch.data.schema 
	@${unlock_command} inst_files.noarch.data.schema.lock
	@(cd $(source_dir);						\
	for f in `find  -name $(mask)` ; do 			\
		echo "Installing $${f}" ;				\
		dirname=`dirname $${f}` ;				\
		filename=`basename $${f}` ;				\
		mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb//$${dirname}" ;			\
		${install_command} $${f} /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb//$${dirname} ;	\
		${lock_command}  inst_files.noarch.data.schema.lock ;		\
		echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb//$${dirname}/$${filename}" >> $(cmtdir)/inst_files.noarch.data.schema ; \
		${unlock_command} inst_files.noarch.data.schema.lock ; \
	done)

else
endif
TRBInfo.schema_xml_dependencies = ../schema/TRBInfo.schema.xml
inst_data_schema :: /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb//TRBInfo.schema.xml
	
/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb//TRBInfo.schema.xml : ../schema/TRBInfo.schema.xml
	@mkdir -p "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb/"

# rename file. Attention: works only for one file in install pattern!
ifneq "" ""
	${install_command} ../schema/TRBInfo.schema.xml /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb//
	@${lock_command} inst_files.noarch.data.schema.lock
	@echo /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb// >> inst_files.noarch.data.schema
	@${unlock_command} inst_files.noarch.data.schema.lock
else
	${install_command} ../schema/TRBInfo.schema.xml "$@"
	@${lock_command} inst_files.noarch.data.schema.lock
	@echo "$@" >> inst_files.noarch.data.schema
	@${unlock_command} inst_files.noarch.data.schema.lock
	@if test -f ../schema/TRBInfo.schema.xml.$(debug_suffix); then \
	${install_command} ../schema/TRBInfo.schema.xml.$(debug_suffix) /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb//TRBInfo.schema.xml.$(debug_suffix) ;\
	chmod -x /afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb//TRBInfo.schema.xml.$(debug_suffix) ;\
	${lock_command} inst_files.noarch.data.schema.lock; \
	echo "/afs/cern.ch/user/d/daquser/public/ATLAS_DAQ/DataFlow/installed/share/data/rcd_trb//TRBInfo.schema.xml.$(debug_suffix)" >> inst_files.noarch.data.schema ;\
	${unlock_command} inst_files.noarch.data.schema.lock;\
	fi 
endif
	@${unlock_command} inst_files.noarch.data.schema.lock

inst_data_schemaclean ::
	${uninstall_command} "$@"

#-- start of cleanup_header --------------

clean :: inst_data_schemaclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(inst_data_schema.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

inst_data_schemaclean ::
#-- end of cleanup_header ---------------
