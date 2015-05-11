#-- start of make_header -----------------

#====================================
#  Application client_TCP
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

cmt_client_TCP_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_client_TCP_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_client_TCP

rcd_trb_tag = $(tag)

#cmt_local_tagfile_client_TCP = $(rcd_trb_tag)_client_TCP.make
cmt_local_tagfile_client_TCP = $(bin)$(rcd_trb_tag)_client_TCP.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_client_TCP = $(rcd_trb_tag).make
cmt_local_tagfile_client_TCP = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_client_TCP)
#-include $(cmt_local_tagfile_client_TCP)

ifdef cmt_client_TCP_has_target_tag

cmt_final_setup_client_TCP = $(bin)setup_client_TCP.make
cmt_dependencies_in_client_TCP = $(bin)dependencies_client_TCP.in
#cmt_final_setup_client_TCP = $(bin)rcd_trb_client_TCPsetup.make
cmt_local_client_TCP_makefile = $(bin)client_TCP.make

else

cmt_final_setup_client_TCP = $(bin)setup.make
cmt_dependencies_in_client_TCP = $(bin)dependencies.in
#cmt_final_setup_client_TCP = $(bin)rcd_trbsetup.make
cmt_local_client_TCP_makefile = $(bin)client_TCP.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#client_TCP :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'client_TCP'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = client_TCP/
#client_TCP::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of application_header

client_TCP :: dirs  $(bin)client_TCP${application_suffix}
	$(echo) "client_TCP ok"

#-- end of application_header
$(bin)client_TCP${application_suffix} :: $(bin)client_TCP.o $(use_stamps) $(client_TCPstamps) requirements $(use_requirements)
	$(link_echo) Linking application $@
	$(link_silent) $(cpplink) -o $(bin)client_TCP${application_suffix} $(bin)client_TCP.o $(use_linkopts) $(client_TCPlinkopts) ;\
	$(objcopy) --only-keep-debug  $(bin)client_TCP${application_suffix} $(bin)client_TCP${application_suffix}.$(debug_suffix) ;\
	$(objcopy) --strip-debug  $(bin)client_TCP${application_suffix} ;\
	$(objcopy) --add-gnu-debuglink=$(bin)client_TCP${application_suffix}.$(debug_suffix) $(bin)client_TCP${application_suffix}
#-- start of dependencies ------------------
ifneq ($(MAKECMDGOALS),client_TCPclean)
ifneq ($(MAKECMDGOALS),uninstall)

$(bin)client_TCP_dependencies.make : $(use_requirements) $(cmt_final_setup_client_TCP)
	$(echo) "(client_TCP.make) Rebuilding $@"; \
	  $(build_dependencies) -out=$@ -start_all $(src)test/client_TCP.cpp -end_all $(includes) $(app_client_TCP_cppflags) $(lib_client_TCP_cppflags) -name=client_TCP $? -f=$(cmt_dependencies_in_client_TCP) -without_cmt

-include $(bin)client_TCP_dependencies.make

endif
endif

client_TCPclean ::
	$(cleanup_silent) \rm -rf $(bin)client_TCP_deps $(bin)client_TCP_dependencies.make
#-- end of dependencies -------------------
#-- start of cpp ------

ifneq (,)

ifneq ($(MAKECMDGOALS),client_TCPclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)client_TCP.d

$(bin)$(binobj)client_TCP.d : $(use_requirements) $(cmt_final_setup_client_TCP)

$(bin)$(binobj)client_TCP.d : $(src)test/client_TCP.cpp
	$(dep_echo) $@
	$(cpp_silent) $(cppappcomp)  -o $(@D)/client_TCP.dep $(use_pp_cppflags) $(client_TCP_pp_cppflags) $(app_client_TCP_pp_cppflags) $(client_TCP_pp_cppflags) $(use_cppflags) $(client_TCP_cppflags) $(app_client_TCP_cppflags) $(client_TCP_cppflags) $(client_TCP_cpp_cppflags) -I../src/test $(src)test/client_TCP.cpp
	$(cpp_silent) $(format_dependencies) $@ $(@D)/client_TCP.o $(src)test/client_TCP.cpp $(@D)/client_TCP.dep
endif
endif

$(bin)$(binobj)client_TCP.o : $(src)test/client_TCP.cpp
else
$(bin)client_TCP_dependencies.make : $(client_TCP_cpp_dependencies)

$(bin)$(binobj)client_TCP.o : $(client_TCP_cpp_dependencies)
endif
	$(cpp_echo) $(src)test/client_TCP.cpp
	$(cpp_silent) $(cppappcomp) -o $@ $(use_pp_cppflags) $(client_TCP_pp_cppflags) $(app_client_TCP_pp_cppflags) $(client_TCP_pp_cppflags) $(use_cppflags) $(client_TCP_cppflags) $(app_client_TCP_cppflags) $(client_TCP_cppflags) $(client_TCP_cpp_cppflags) -I../src/test $(src)test/client_TCP.cpp

#-- end of cpp ------
#-- start of cleanup_header --------------

clean :: client_TCPclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(client_TCP.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

client_TCPclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_application ------
	$(cleanup_echo) application client_TCP
	-$(cleanup_silent) cd $(bin); /bin/rm -f client_TCP${application_suffix}
#-- end of cleanup_application ------
#-- start of cleanup_objects ------
	$(cleanup_echo) objects client_TCP
	-$(cleanup_silent) /bin/rm -f $(bin)client_TCP.o
	-$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)client_TCP.o) $(patsubst %.o,%.dep,$(bin)client_TCP.o) $(patsubst %.o,%.d.stamp,$(bin)client_TCP.o)
	-$(cleanup_silent) cd $(bin); /bin/rm -rf client_TCP_deps client_TCP_dependencies.make
#-- end of cleanup_objects ------
