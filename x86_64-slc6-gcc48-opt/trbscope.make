#-- start of make_header -----------------

#====================================
#  Application trbscope
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

cmt_trbscope_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_trbscope_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_trbscope

rcd_trb_tag = $(tag)

#cmt_local_tagfile_trbscope = $(rcd_trb_tag)_trbscope.make
cmt_local_tagfile_trbscope = $(bin)$(rcd_trb_tag)_trbscope.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_trbscope = $(rcd_trb_tag).make
cmt_local_tagfile_trbscope = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_trbscope)
#-include $(cmt_local_tagfile_trbscope)

ifdef cmt_trbscope_has_target_tag

cmt_final_setup_trbscope = $(bin)setup_trbscope.make
cmt_dependencies_in_trbscope = $(bin)dependencies_trbscope.in
#cmt_final_setup_trbscope = $(bin)rcd_trb_trbscopesetup.make
cmt_local_trbscope_makefile = $(bin)trbscope.make

else

cmt_final_setup_trbscope = $(bin)setup.make
cmt_dependencies_in_trbscope = $(bin)dependencies.in
#cmt_final_setup_trbscope = $(bin)rcd_trbsetup.make
cmt_local_trbscope_makefile = $(bin)trbscope.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#trbscope :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'trbscope'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = trbscope/
#trbscope::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of application_header

trbscope :: dirs  $(bin)trbscope${application_suffix}
	$(echo) "trbscope ok"

#-- end of application_header
$(bin)trbscope${application_suffix} :: $(bin)trbscope.o $(use_stamps) $(trbscopestamps) requirements $(use_requirements)
	$(link_echo) Linking application $@
	$(link_silent) $(cpplink) -o $(bin)trbscope${application_suffix} $(bin)trbscope.o $(use_linkopts) $(trbscopelinkopts) ;\
	$(objcopy) --only-keep-debug  $(bin)trbscope${application_suffix} $(bin)trbscope${application_suffix}.$(debug_suffix) ;\
	$(objcopy) --strip-debug  $(bin)trbscope${application_suffix} ;\
	$(objcopy) --add-gnu-debuglink=$(bin)trbscope${application_suffix}.$(debug_suffix) $(bin)trbscope${application_suffix}
#-- start of dependencies ------------------
ifneq ($(MAKECMDGOALS),trbscopeclean)
ifneq ($(MAKECMDGOALS),uninstall)

$(bin)trbscope_dependencies.make : $(use_requirements) $(cmt_final_setup_trbscope)
	$(echo) "(trbscope.make) Rebuilding $@"; \
	  $(build_dependencies) -out=$@ -start_all $(src)test/trbscope.cpp -end_all $(includes) $(app_trbscope_cppflags) $(lib_trbscope_cppflags) -name=trbscope $? -f=$(cmt_dependencies_in_trbscope) -without_cmt

-include $(bin)trbscope_dependencies.make

endif
endif

trbscopeclean ::
	$(cleanup_silent) \rm -rf $(bin)trbscope_deps $(bin)trbscope_dependencies.make
#-- end of dependencies -------------------
#-- start of cpp ------

ifneq (,)

ifneq ($(MAKECMDGOALS),trbscopeclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)trbscope.d

$(bin)$(binobj)trbscope.d : $(use_requirements) $(cmt_final_setup_trbscope)

$(bin)$(binobj)trbscope.d : $(src)test/trbscope.cpp
	$(dep_echo) $@
	$(cpp_silent) $(cppappcomp)  -o $(@D)/trbscope.dep $(use_pp_cppflags) $(trbscope_pp_cppflags) $(app_trbscope_pp_cppflags) $(trbscope_pp_cppflags) $(use_cppflags) $(trbscope_cppflags) $(app_trbscope_cppflags) $(trbscope_cppflags) $(trbscope_cpp_cppflags) -I../src/test $(src)test/trbscope.cpp
	$(cpp_silent) $(format_dependencies) $@ $(@D)/trbscope.o $(src)test/trbscope.cpp $(@D)/trbscope.dep
endif
endif

$(bin)$(binobj)trbscope.o : $(src)test/trbscope.cpp
else
$(bin)trbscope_dependencies.make : $(trbscope_cpp_dependencies)

$(bin)$(binobj)trbscope.o : $(trbscope_cpp_dependencies)
endif
	$(cpp_echo) $(src)test/trbscope.cpp
	$(cpp_silent) $(cppappcomp) -o $@ $(use_pp_cppflags) $(trbscope_pp_cppflags) $(app_trbscope_pp_cppflags) $(trbscope_pp_cppflags) $(use_cppflags) $(trbscope_cppflags) $(app_trbscope_cppflags) $(trbscope_cppflags) $(trbscope_cpp_cppflags) -I../src/test $(src)test/trbscope.cpp

#-- end of cpp ------
#-- start of cleanup_header --------------

clean :: trbscopeclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(trbscope.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

trbscopeclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_application ------
	$(cleanup_echo) application trbscope
	-$(cleanup_silent) cd $(bin); /bin/rm -f trbscope${application_suffix}
#-- end of cleanup_application ------
#-- start of cleanup_objects ------
	$(cleanup_echo) objects trbscope
	-$(cleanup_silent) /bin/rm -f $(bin)trbscope.o
	-$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)trbscope.o) $(patsubst %.o,%.dep,$(bin)trbscope.o) $(patsubst %.o,%.d.stamp,$(bin)trbscope.o)
	-$(cleanup_silent) cd $(bin); /bin/rm -rf trbscope_deps trbscope_dependencies.make
#-- end of cleanup_objects ------
