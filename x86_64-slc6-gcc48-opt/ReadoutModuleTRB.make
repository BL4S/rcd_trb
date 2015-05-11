#-- start of make_header -----------------

#====================================
#  Library ReadoutModuleTRB
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

cmt_ReadoutModuleTRB_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_ReadoutModuleTRB_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_ReadoutModuleTRB

rcd_trb_tag = $(tag)

#cmt_local_tagfile_ReadoutModuleTRB = $(rcd_trb_tag)_ReadoutModuleTRB.make
cmt_local_tagfile_ReadoutModuleTRB = $(bin)$(rcd_trb_tag)_ReadoutModuleTRB.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_ReadoutModuleTRB = $(rcd_trb_tag).make
cmt_local_tagfile_ReadoutModuleTRB = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_ReadoutModuleTRB)
#-include $(cmt_local_tagfile_ReadoutModuleTRB)

ifdef cmt_ReadoutModuleTRB_has_target_tag

cmt_final_setup_ReadoutModuleTRB = $(bin)setup_ReadoutModuleTRB.make
cmt_dependencies_in_ReadoutModuleTRB = $(bin)dependencies_ReadoutModuleTRB.in
#cmt_final_setup_ReadoutModuleTRB = $(bin)rcd_trb_ReadoutModuleTRBsetup.make
cmt_local_ReadoutModuleTRB_makefile = $(bin)ReadoutModuleTRB.make

else

cmt_final_setup_ReadoutModuleTRB = $(bin)setup.make
cmt_dependencies_in_ReadoutModuleTRB = $(bin)dependencies.in
#cmt_final_setup_ReadoutModuleTRB = $(bin)rcd_trbsetup.make
cmt_local_ReadoutModuleTRB_makefile = $(bin)ReadoutModuleTRB.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#ReadoutModuleTRB :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'ReadoutModuleTRB'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = ReadoutModuleTRB/
#ReadoutModuleTRB::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of libary_header ---------------

ReadoutModuleTRBlibname   = $(bin)$(library_prefix)ReadoutModuleTRB$(library_suffix)
ReadoutModuleTRBlib       = $(ReadoutModuleTRBlibname).a
ReadoutModuleTRBstamp     = $(bin)ReadoutModuleTRB.stamp
ReadoutModuleTRBshstamp   = $(bin)ReadoutModuleTRB.shstamp

ReadoutModuleTRB :: dirs  ReadoutModuleTRBLIB
	$(echo) "ReadoutModuleTRB ok"

#-- end of libary_header ----------------

ReadoutModuleTRBLIB :: $(bin)libReadoutModuleTRB.$(shlibsuffix)
	@/bin/echo "------> ReadoutModuleTRB : library ok"

$(bin)libReadoutModuleTRB.$(shlibsuffix) :: $(bin)ModuleTRB.o $(bin)DataChannelTRB.o
	$(lib_echo) library
	cd $(bin); $(shlibbuilder) $(shlibflags) $(ReadoutModuleTRB_shlibflags) -o libReadoutModuleTRB.$(shlibsuffix) $(bin)ModuleTRB.o $(bin)DataChannelTRB.o ; \
	$(objcopy) --only-keep-debug libReadoutModuleTRB.$(shlibsuffix) libReadoutModuleTRB.$(shlibsuffix).$(debug_suffix) ; \
	$(objcopy) --strip-debug libReadoutModuleTRB.$(shlibsuffix) ; \
	$(objcopy) --add-gnu-debuglink=libReadoutModuleTRB.$(shlibsuffix).$(debug_suffix) libReadoutModuleTRB.$(shlibsuffix) 
	
ReadoutModuleTRBclean ::
	$(cleanup_echo) objects
	$(cleanup_silent) cd $(bin); /bin/rm -f $(bin)ModuleTRB.o $(bin)DataChannelTRB.o libReadoutModuleTRB.$(shlibsuffix)



#-- start of dependencies ------------------
ifneq ($(MAKECMDGOALS),ReadoutModuleTRBclean)
ifneq ($(MAKECMDGOALS),uninstall)

$(bin)ReadoutModuleTRB_dependencies.make : $(use_requirements) $(cmt_final_setup_ReadoutModuleTRB)
	$(echo) "(ReadoutModuleTRB.make) Rebuilding $@"; \
	  $(build_dependencies) -out=$@ -start_all $(src)ModuleTRB.cpp $(src)DataChannelTRB.cpp -end_all $(includes) $(app_ReadoutModuleTRB_cppflags) $(lib_ReadoutModuleTRB_cppflags) -name=ReadoutModuleTRB $? -f=$(cmt_dependencies_in_ReadoutModuleTRB) -without_cmt

-include $(bin)ReadoutModuleTRB_dependencies.make

endif
endif

ReadoutModuleTRBclean ::
	$(cleanup_silent) \rm -rf $(bin)ReadoutModuleTRB_deps $(bin)ReadoutModuleTRB_dependencies.make
#-- end of dependencies -------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),ReadoutModuleTRBclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)ModuleTRB.d

$(bin)$(binobj)ModuleTRB.d :

$(bin)$(binobj)ModuleTRB.o : $(cmt_final_setup_ReadoutModuleTRB)

$(bin)$(binobj)ModuleTRB.o : $(src)ModuleTRB.cpp
	$(cpp_echo) $(src)ModuleTRB.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(ReadoutModuleTRB_pp_cppflags) $(lib_ReadoutModuleTRB_pp_cppflags) $(ModuleTRB_pp_cppflags) $(use_cppflags) $(ReadoutModuleTRB_cppflags) $(lib_ReadoutModuleTRB_cppflags) $(ModuleTRB_cppflags) $(ModuleTRB_cpp_cppflags)  $(src)ModuleTRB.cpp
endif
endif

else
$(bin)ReadoutModuleTRB_dependencies.make : $(ModuleTRB_cpp_dependencies)

$(bin)ReadoutModuleTRB_dependencies.make : $(src)ModuleTRB.cpp

$(bin)$(binobj)ModuleTRB.o : $(ModuleTRB_cpp_dependencies)
	$(cpp_echo) $(src)ModuleTRB.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(ReadoutModuleTRB_pp_cppflags) $(lib_ReadoutModuleTRB_pp_cppflags) $(ModuleTRB_pp_cppflags) $(use_cppflags) $(ReadoutModuleTRB_cppflags) $(lib_ReadoutModuleTRB_cppflags) $(ModuleTRB_cppflags) $(ModuleTRB_cpp_cppflags)  $(src)ModuleTRB.cpp

endif

#-- end of cpp_library ------------------
#-- start of cpp_library -----------------

ifneq (,)

ifneq ($(MAKECMDGOALS),ReadoutModuleTRBclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)DataChannelTRB.d

$(bin)$(binobj)DataChannelTRB.d :

$(bin)$(binobj)DataChannelTRB.o : $(cmt_final_setup_ReadoutModuleTRB)

$(bin)$(binobj)DataChannelTRB.o : $(src)DataChannelTRB.cpp
	$(cpp_echo) $(src)DataChannelTRB.cpp
	$(cpp_silent) $(cppcomp)  -o $@ $(use_pp_cppflags) $(ReadoutModuleTRB_pp_cppflags) $(lib_ReadoutModuleTRB_pp_cppflags) $(DataChannelTRB_pp_cppflags) $(use_cppflags) $(ReadoutModuleTRB_cppflags) $(lib_ReadoutModuleTRB_cppflags) $(DataChannelTRB_cppflags) $(DataChannelTRB_cpp_cppflags)  $(src)DataChannelTRB.cpp
endif
endif

else
$(bin)ReadoutModuleTRB_dependencies.make : $(DataChannelTRB_cpp_dependencies)

$(bin)ReadoutModuleTRB_dependencies.make : $(src)DataChannelTRB.cpp

$(bin)$(binobj)DataChannelTRB.o : $(DataChannelTRB_cpp_dependencies)
	$(cpp_echo) $(src)DataChannelTRB.cpp
	$(cpp_silent) $(cppcomp) -o $@ $(use_pp_cppflags) $(ReadoutModuleTRB_pp_cppflags) $(lib_ReadoutModuleTRB_pp_cppflags) $(DataChannelTRB_pp_cppflags) $(use_cppflags) $(ReadoutModuleTRB_cppflags) $(lib_ReadoutModuleTRB_cppflags) $(DataChannelTRB_cppflags) $(DataChannelTRB_cpp_cppflags)  $(src)DataChannelTRB.cpp

endif

#-- end of cpp_library ------------------
#-- start of cleanup_header --------------

clean :: ReadoutModuleTRBclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(ReadoutModuleTRB.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

ReadoutModuleTRBclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_library -------------
	$(cleanup_echo) library ReadoutModuleTRB
	-$(cleanup_silent) cd $(bin) && \rm -f $(library_prefix)ReadoutModuleTRB$(library_suffix).a $(library_prefix)ReadoutModuleTRB$(library_suffix).$(shlibsuffix) ReadoutModuleTRB.stamp ReadoutModuleTRB.shstamp
#-- end of cleanup_library ---------------
