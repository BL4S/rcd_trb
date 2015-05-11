#-- start of make_header -----------------

#====================================
#  Application server_TCP
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

cmt_server_TCP_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_server_TCP_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_server_TCP

rcd_trb_tag = $(tag)

#cmt_local_tagfile_server_TCP = $(rcd_trb_tag)_server_TCP.make
cmt_local_tagfile_server_TCP = $(bin)$(rcd_trb_tag)_server_TCP.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_server_TCP = $(rcd_trb_tag).make
cmt_local_tagfile_server_TCP = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_server_TCP)
#-include $(cmt_local_tagfile_server_TCP)

ifdef cmt_server_TCP_has_target_tag

cmt_final_setup_server_TCP = $(bin)setup_server_TCP.make
cmt_dependencies_in_server_TCP = $(bin)dependencies_server_TCP.in
#cmt_final_setup_server_TCP = $(bin)rcd_trb_server_TCPsetup.make
cmt_local_server_TCP_makefile = $(bin)server_TCP.make

else

cmt_final_setup_server_TCP = $(bin)setup.make
cmt_dependencies_in_server_TCP = $(bin)dependencies.in
#cmt_final_setup_server_TCP = $(bin)rcd_trbsetup.make
cmt_local_server_TCP_makefile = $(bin)server_TCP.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#server_TCP :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'server_TCP'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = server_TCP/
#server_TCP::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of application_header

server_TCP :: dirs  $(bin)server_TCP${application_suffix}
	$(echo) "server_TCP ok"

#-- end of application_header
$(bin)server_TCP${application_suffix} :: $(bin)server_TCP.o $(use_stamps) $(server_TCPstamps) requirements $(use_requirements)
	$(link_echo) Linking application $@
	$(link_silent) $(cpplink) -o $(bin)server_TCP${application_suffix} $(bin)server_TCP.o $(use_linkopts) $(server_TCPlinkopts) ;\
	$(objcopy) --only-keep-debug  $(bin)server_TCP${application_suffix} $(bin)server_TCP${application_suffix}.$(debug_suffix) ;\
	$(objcopy) --strip-debug  $(bin)server_TCP${application_suffix} ;\
	$(objcopy) --add-gnu-debuglink=$(bin)server_TCP${application_suffix}.$(debug_suffix) $(bin)server_TCP${application_suffix}
#-- start of dependencies ------------------
ifneq ($(MAKECMDGOALS),server_TCPclean)
ifneq ($(MAKECMDGOALS),uninstall)

$(bin)server_TCP_dependencies.make : $(use_requirements) $(cmt_final_setup_server_TCP)
	$(echo) "(server_TCP.make) Rebuilding $@"; \
	  $(build_dependencies) -out=$@ -start_all $(src)test/server_TCP.cpp -end_all $(includes) $(app_server_TCP_cppflags) $(lib_server_TCP_cppflags) -name=server_TCP $? -f=$(cmt_dependencies_in_server_TCP) -without_cmt

-include $(bin)server_TCP_dependencies.make

endif
endif

server_TCPclean ::
	$(cleanup_silent) \rm -rf $(bin)server_TCP_deps $(bin)server_TCP_dependencies.make
#-- end of dependencies -------------------
#-- start of cpp ------

ifneq (,)

ifneq ($(MAKECMDGOALS),server_TCPclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)server_TCP.d

$(bin)$(binobj)server_TCP.d : $(use_requirements) $(cmt_final_setup_server_TCP)

$(bin)$(binobj)server_TCP.d : $(src)test/server_TCP.cpp
	$(dep_echo) $@
	$(cpp_silent) $(cppappcomp)  -o $(@D)/server_TCP.dep $(use_pp_cppflags) $(server_TCP_pp_cppflags) $(app_server_TCP_pp_cppflags) $(server_TCP_pp_cppflags) $(use_cppflags) $(server_TCP_cppflags) $(app_server_TCP_cppflags) $(server_TCP_cppflags) $(server_TCP_cpp_cppflags) -I../src/test $(src)test/server_TCP.cpp
	$(cpp_silent) $(format_dependencies) $@ $(@D)/server_TCP.o $(src)test/server_TCP.cpp $(@D)/server_TCP.dep
endif
endif

$(bin)$(binobj)server_TCP.o : $(src)test/server_TCP.cpp
else
$(bin)server_TCP_dependencies.make : $(server_TCP_cpp_dependencies)

$(bin)$(binobj)server_TCP.o : $(server_TCP_cpp_dependencies)
endif
	$(cpp_echo) $(src)test/server_TCP.cpp
	$(cpp_silent) $(cppappcomp) -o $@ $(use_pp_cppflags) $(server_TCP_pp_cppflags) $(app_server_TCP_pp_cppflags) $(server_TCP_pp_cppflags) $(use_cppflags) $(server_TCP_cppflags) $(app_server_TCP_cppflags) $(server_TCP_cppflags) $(server_TCP_cpp_cppflags) -I../src/test $(src)test/server_TCP.cpp

#-- end of cpp ------
#-- start of cleanup_header --------------

clean :: server_TCPclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(server_TCP.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

server_TCPclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_application ------
	$(cleanup_echo) application server_TCP
	-$(cleanup_silent) cd $(bin); /bin/rm -f server_TCP${application_suffix}
#-- end of cleanup_application ------
#-- start of cleanup_objects ------
	$(cleanup_echo) objects server_TCP
	-$(cleanup_silent) /bin/rm -f $(bin)server_TCP.o
	-$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)server_TCP.o) $(patsubst %.o,%.dep,$(bin)server_TCP.o) $(patsubst %.o,%.d.stamp,$(bin)server_TCP.o)
	-$(cleanup_silent) cd $(bin); /bin/rm -rf server_TCP_deps server_TCP_dependencies.make
#-- end of cleanup_objects ------
