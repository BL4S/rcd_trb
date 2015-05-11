#-- start of make_header -----------------

#====================================
#  Application client_UDP
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

cmt_client_UDP_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_client_UDP_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_client_UDP

rcd_trb_tag = $(tag)

#cmt_local_tagfile_client_UDP = $(rcd_trb_tag)_client_UDP.make
cmt_local_tagfile_client_UDP = $(bin)$(rcd_trb_tag)_client_UDP.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_client_UDP = $(rcd_trb_tag).make
cmt_local_tagfile_client_UDP = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_client_UDP)
#-include $(cmt_local_tagfile_client_UDP)

ifdef cmt_client_UDP_has_target_tag

cmt_final_setup_client_UDP = $(bin)setup_client_UDP.make
cmt_dependencies_in_client_UDP = $(bin)dependencies_client_UDP.in
#cmt_final_setup_client_UDP = $(bin)rcd_trb_client_UDPsetup.make
cmt_local_client_UDP_makefile = $(bin)client_UDP.make

else

cmt_final_setup_client_UDP = $(bin)setup.make
cmt_dependencies_in_client_UDP = $(bin)dependencies.in
#cmt_final_setup_client_UDP = $(bin)rcd_trbsetup.make
cmt_local_client_UDP_makefile = $(bin)client_UDP.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#client_UDP :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'client_UDP'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = client_UDP/
#client_UDP::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of application_header

client_UDP :: dirs  $(bin)client_UDP${application_suffix}
	$(echo) "client_UDP ok"

#-- end of application_header
$(bin)client_UDP${application_suffix} :: $(bin)client_UDP.o $(use_stamps) $(client_UDPstamps) requirements $(use_requirements)
	$(link_echo) Linking application $@
	$(link_silent) $(cpplink) -o $(bin)client_UDP${application_suffix} $(bin)client_UDP.o $(use_linkopts) $(client_UDPlinkopts) ;\
	$(objcopy) --only-keep-debug  $(bin)client_UDP${application_suffix} $(bin)client_UDP${application_suffix}.$(debug_suffix) ;\
	$(objcopy) --strip-debug  $(bin)client_UDP${application_suffix} ;\
	$(objcopy) --add-gnu-debuglink=$(bin)client_UDP${application_suffix}.$(debug_suffix) $(bin)client_UDP${application_suffix}
#-- start of dependencies ------------------
ifneq ($(MAKECMDGOALS),client_UDPclean)
ifneq ($(MAKECMDGOALS),uninstall)

$(bin)client_UDP_dependencies.make : $(use_requirements) $(cmt_final_setup_client_UDP)
	$(echo) "(client_UDP.make) Rebuilding $@"; \
	  $(build_dependencies) -out=$@ -start_all $(src)test/client_UDP.cpp -end_all $(includes) $(app_client_UDP_cppflags) $(lib_client_UDP_cppflags) -name=client_UDP $? -f=$(cmt_dependencies_in_client_UDP) -without_cmt

-include $(bin)client_UDP_dependencies.make

endif
endif

client_UDPclean ::
	$(cleanup_silent) \rm -rf $(bin)client_UDP_deps $(bin)client_UDP_dependencies.make
#-- end of dependencies -------------------
#-- start of cpp ------

ifneq (,)

ifneq ($(MAKECMDGOALS),client_UDPclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)client_UDP.d

$(bin)$(binobj)client_UDP.d : $(use_requirements) $(cmt_final_setup_client_UDP)

$(bin)$(binobj)client_UDP.d : $(src)test/client_UDP.cpp
	$(dep_echo) $@
	$(cpp_silent) $(cppappcomp)  -o $(@D)/client_UDP.dep $(use_pp_cppflags) $(client_UDP_pp_cppflags) $(app_client_UDP_pp_cppflags) $(client_UDP_pp_cppflags) $(use_cppflags) $(client_UDP_cppflags) $(app_client_UDP_cppflags) $(client_UDP_cppflags) $(client_UDP_cpp_cppflags) -I../src/test $(src)test/client_UDP.cpp
	$(cpp_silent) $(format_dependencies) $@ $(@D)/client_UDP.o $(src)test/client_UDP.cpp $(@D)/client_UDP.dep
endif
endif

$(bin)$(binobj)client_UDP.o : $(src)test/client_UDP.cpp
else
$(bin)client_UDP_dependencies.make : $(client_UDP_cpp_dependencies)

$(bin)$(binobj)client_UDP.o : $(client_UDP_cpp_dependencies)
endif
	$(cpp_echo) $(src)test/client_UDP.cpp
	$(cpp_silent) $(cppappcomp) -o $@ $(use_pp_cppflags) $(client_UDP_pp_cppflags) $(app_client_UDP_pp_cppflags) $(client_UDP_pp_cppflags) $(use_cppflags) $(client_UDP_cppflags) $(app_client_UDP_cppflags) $(client_UDP_cppflags) $(client_UDP_cpp_cppflags) -I../src/test $(src)test/client_UDP.cpp

#-- end of cpp ------
#-- start of cleanup_header --------------

clean :: client_UDPclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(client_UDP.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

client_UDPclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_application ------
	$(cleanup_echo) application client_UDP
	-$(cleanup_silent) cd $(bin); /bin/rm -f client_UDP${application_suffix}
#-- end of cleanup_application ------
#-- start of cleanup_objects ------
	$(cleanup_echo) objects client_UDP
	-$(cleanup_silent) /bin/rm -f $(bin)client_UDP.o
	-$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)client_UDP.o) $(patsubst %.o,%.dep,$(bin)client_UDP.o) $(patsubst %.o,%.d.stamp,$(bin)client_UDP.o)
	-$(cleanup_silent) cd $(bin); /bin/rm -rf client_UDP_deps client_UDP_dependencies.make
#-- end of cleanup_objects ------