#-- start of make_header -----------------

#====================================
#  Application server_UDP
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

cmt_server_UDP_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_server_UDP_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_server_UDP

rcd_trb_tag = $(tag)

#cmt_local_tagfile_server_UDP = $(rcd_trb_tag)_server_UDP.make
cmt_local_tagfile_server_UDP = $(bin)$(rcd_trb_tag)_server_UDP.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_server_UDP = $(rcd_trb_tag).make
cmt_local_tagfile_server_UDP = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_server_UDP)
#-include $(cmt_local_tagfile_server_UDP)

ifdef cmt_server_UDP_has_target_tag

cmt_final_setup_server_UDP = $(bin)setup_server_UDP.make
cmt_dependencies_in_server_UDP = $(bin)dependencies_server_UDP.in
#cmt_final_setup_server_UDP = $(bin)rcd_trb_server_UDPsetup.make
cmt_local_server_UDP_makefile = $(bin)server_UDP.make

else

cmt_final_setup_server_UDP = $(bin)setup.make
cmt_dependencies_in_server_UDP = $(bin)dependencies.in
#cmt_final_setup_server_UDP = $(bin)rcd_trbsetup.make
cmt_local_server_UDP_makefile = $(bin)server_UDP.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#server_UDP :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'server_UDP'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = server_UDP/
#server_UDP::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of application_header

server_UDP :: dirs  $(bin)server_UDP${application_suffix}
	$(echo) "server_UDP ok"

#-- end of application_header
$(bin)server_UDP${application_suffix} :: $(bin)server_UDP.o $(use_stamps) $(server_UDPstamps) requirements $(use_requirements)
	$(link_echo) Linking application $@
	$(link_silent) $(cpplink) -o $(bin)server_UDP${application_suffix} $(bin)server_UDP.o $(use_linkopts) $(server_UDPlinkopts) ;\
	$(objcopy) --only-keep-debug  $(bin)server_UDP${application_suffix} $(bin)server_UDP${application_suffix}.$(debug_suffix) ;\
	$(objcopy) --strip-debug  $(bin)server_UDP${application_suffix} ;\
	$(objcopy) --add-gnu-debuglink=$(bin)server_UDP${application_suffix}.$(debug_suffix) $(bin)server_UDP${application_suffix}
#-- start of dependencies ------------------
ifneq ($(MAKECMDGOALS),server_UDPclean)
ifneq ($(MAKECMDGOALS),uninstall)

$(bin)server_UDP_dependencies.make : $(use_requirements) $(cmt_final_setup_server_UDP)
	$(echo) "(server_UDP.make) Rebuilding $@"; \
	  $(build_dependencies) -out=$@ -start_all $(src)test/server_UDP.cpp -end_all $(includes) $(app_server_UDP_cppflags) $(lib_server_UDP_cppflags) -name=server_UDP $? -f=$(cmt_dependencies_in_server_UDP) -without_cmt

-include $(bin)server_UDP_dependencies.make

endif
endif

server_UDPclean ::
	$(cleanup_silent) \rm -rf $(bin)server_UDP_deps $(bin)server_UDP_dependencies.make
#-- end of dependencies -------------------
#-- start of cpp ------

ifneq (,)

ifneq ($(MAKECMDGOALS),server_UDPclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)server_UDP.d

$(bin)$(binobj)server_UDP.d : $(use_requirements) $(cmt_final_setup_server_UDP)

$(bin)$(binobj)server_UDP.d : $(src)test/server_UDP.cpp
	$(dep_echo) $@
	$(cpp_silent) $(cppappcomp)  -o $(@D)/server_UDP.dep $(use_pp_cppflags) $(server_UDP_pp_cppflags) $(app_server_UDP_pp_cppflags) $(server_UDP_pp_cppflags) $(use_cppflags) $(server_UDP_cppflags) $(app_server_UDP_cppflags) $(server_UDP_cppflags) $(server_UDP_cpp_cppflags) -I../src/test $(src)test/server_UDP.cpp
	$(cpp_silent) $(format_dependencies) $@ $(@D)/server_UDP.o $(src)test/server_UDP.cpp $(@D)/server_UDP.dep
endif
endif

$(bin)$(binobj)server_UDP.o : $(src)test/server_UDP.cpp
else
$(bin)server_UDP_dependencies.make : $(server_UDP_cpp_dependencies)

$(bin)$(binobj)server_UDP.o : $(server_UDP_cpp_dependencies)
endif
	$(cpp_echo) $(src)test/server_UDP.cpp
	$(cpp_silent) $(cppappcomp) -o $@ $(use_pp_cppflags) $(server_UDP_pp_cppflags) $(app_server_UDP_pp_cppflags) $(server_UDP_pp_cppflags) $(use_cppflags) $(server_UDP_cppflags) $(app_server_UDP_cppflags) $(server_UDP_cppflags) $(server_UDP_cpp_cppflags) -I../src/test $(src)test/server_UDP.cpp

#-- end of cpp ------
#-- start of cleanup_header --------------

clean :: server_UDPclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(server_UDP.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

server_UDPclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_application ------
	$(cleanup_echo) application server_UDP
	-$(cleanup_silent) cd $(bin); /bin/rm -f server_UDP${application_suffix}
#-- end of cleanup_application ------
#-- start of cleanup_objects ------
	$(cleanup_echo) objects server_UDP
	-$(cleanup_silent) /bin/rm -f $(bin)server_UDP.o
	-$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)server_UDP.o) $(patsubst %.o,%.dep,$(bin)server_UDP.o) $(patsubst %.o,%.d.stamp,$(bin)server_UDP.o)
	-$(cleanup_silent) cd $(bin); /bin/rm -rf server_UDP_deps server_UDP_dependencies.make
#-- end of cleanup_objects ------