#-- start of make_header -----------------

#====================================
#  Application udp_tcp_sender_receiver
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

cmt_udp_tcp_sender_receiver_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_udp_tcp_sender_receiver_has_target_tag

tags      = $(tag),$(CMTEXTRATAGS),target_udp_tcp_sender_receiver

rcd_trb_tag = $(tag)

#cmt_local_tagfile_udp_tcp_sender_receiver = $(rcd_trb_tag)_udp_tcp_sender_receiver.make
cmt_local_tagfile_udp_tcp_sender_receiver = $(bin)$(rcd_trb_tag)_udp_tcp_sender_receiver.make

else

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile_udp_tcp_sender_receiver = $(rcd_trb_tag).make
cmt_local_tagfile_udp_tcp_sender_receiver = $(bin)$(rcd_trb_tag).make

endif

include $(cmt_local_tagfile_udp_tcp_sender_receiver)
#-include $(cmt_local_tagfile_udp_tcp_sender_receiver)

ifdef cmt_udp_tcp_sender_receiver_has_target_tag

cmt_final_setup_udp_tcp_sender_receiver = $(bin)setup_udp_tcp_sender_receiver.make
cmt_dependencies_in_udp_tcp_sender_receiver = $(bin)dependencies_udp_tcp_sender_receiver.in
#cmt_final_setup_udp_tcp_sender_receiver = $(bin)rcd_trb_udp_tcp_sender_receiversetup.make
cmt_local_udp_tcp_sender_receiver_makefile = $(bin)udp_tcp_sender_receiver.make

else

cmt_final_setup_udp_tcp_sender_receiver = $(bin)setup.make
cmt_dependencies_in_udp_tcp_sender_receiver = $(bin)dependencies.in
#cmt_final_setup_udp_tcp_sender_receiver = $(bin)rcd_trbsetup.make
cmt_local_udp_tcp_sender_receiver_makefile = $(bin)udp_tcp_sender_receiver.make

endif

#cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)rcd_trbsetup.make

#udp_tcp_sender_receiver :: ;

dirs ::
	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

help ::
	$(echo) 'udp_tcp_sender_receiver'

binobj = 
ifdef STRUCTURED_OUTPUT
binobj = udp_tcp_sender_receiver/
#udp_tcp_sender_receiver::
#	@if test ! -d $(bin)$(binobj) ; then $(mkdir) -p $(bin)$(binobj) ; fi
#	$(echo) "STRUCTURED_OUTPUT="$(bin)$(binobj)
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of make_header ------------------
#-- start of application_header

udp_tcp_sender_receiver :: dirs  $(bin)udp_tcp_sender_receiver${application_suffix}
	$(echo) "udp_tcp_sender_receiver ok"

#-- end of application_header
$(bin)udp_tcp_sender_receiver${application_suffix} :: $(bin)udp_tcp_sender_receiver.o $(use_stamps) $(udp_tcp_sender_receiverstamps) requirements $(use_requirements)
	$(link_echo) Linking application $@
	$(link_silent) $(cpplink) -o $(bin)udp_tcp_sender_receiver${application_suffix} $(bin)udp_tcp_sender_receiver.o $(use_linkopts) $(udp_tcp_sender_receiverlinkopts) ;\
	$(objcopy) --only-keep-debug  $(bin)udp_tcp_sender_receiver${application_suffix} $(bin)udp_tcp_sender_receiver${application_suffix}.$(debug_suffix) ;\
	$(objcopy) --strip-debug  $(bin)udp_tcp_sender_receiver${application_suffix} ;\
	$(objcopy) --add-gnu-debuglink=$(bin)udp_tcp_sender_receiver${application_suffix}.$(debug_suffix) $(bin)udp_tcp_sender_receiver${application_suffix}
#-- start of dependencies ------------------
ifneq ($(MAKECMDGOALS),udp_tcp_sender_receiverclean)
ifneq ($(MAKECMDGOALS),uninstall)

$(bin)udp_tcp_sender_receiver_dependencies.make : $(use_requirements) $(cmt_final_setup_udp_tcp_sender_receiver)
	$(echo) "(udp_tcp_sender_receiver.make) Rebuilding $@"; \
	  $(build_dependencies) -out=$@ -start_all $(src)test/udp_tcp_sender_receiver.cpp -end_all $(includes) $(app_udp_tcp_sender_receiver_cppflags) $(lib_udp_tcp_sender_receiver_cppflags) -name=udp_tcp_sender_receiver $? -f=$(cmt_dependencies_in_udp_tcp_sender_receiver) -without_cmt

-include $(bin)udp_tcp_sender_receiver_dependencies.make

endif
endif

udp_tcp_sender_receiverclean ::
	$(cleanup_silent) \rm -rf $(bin)udp_tcp_sender_receiver_deps $(bin)udp_tcp_sender_receiver_dependencies.make
#-- end of dependencies -------------------
#-- start of cpp ------

ifneq (,)

ifneq ($(MAKECMDGOALS),udp_tcp_sender_receiverclean)
ifneq ($(MAKECMDGOALS),uninstall)
-include $(bin)$(binobj)udp_tcp_sender_receiver.d

$(bin)$(binobj)udp_tcp_sender_receiver.d : $(use_requirements) $(cmt_final_setup_udp_tcp_sender_receiver)

$(bin)$(binobj)udp_tcp_sender_receiver.d : $(src)test/udp_tcp_sender_receiver.cpp
	$(dep_echo) $@
	$(cpp_silent) $(cppappcomp)  -o $(@D)/udp_tcp_sender_receiver.dep $(use_pp_cppflags) $(udp_tcp_sender_receiver_pp_cppflags) $(app_udp_tcp_sender_receiver_pp_cppflags) $(udp_tcp_sender_receiver_pp_cppflags) $(use_cppflags) $(udp_tcp_sender_receiver_cppflags) $(app_udp_tcp_sender_receiver_cppflags) $(udp_tcp_sender_receiver_cppflags) $(udp_tcp_sender_receiver_cpp_cppflags) -I../src/test $(src)test/udp_tcp_sender_receiver.cpp
	$(cpp_silent) $(format_dependencies) $@ $(@D)/udp_tcp_sender_receiver.o $(src)test/udp_tcp_sender_receiver.cpp $(@D)/udp_tcp_sender_receiver.dep
endif
endif

$(bin)$(binobj)udp_tcp_sender_receiver.o : $(src)test/udp_tcp_sender_receiver.cpp
else
$(bin)udp_tcp_sender_receiver_dependencies.make : $(udp_tcp_sender_receiver_cpp_dependencies)

$(bin)$(binobj)udp_tcp_sender_receiver.o : $(udp_tcp_sender_receiver_cpp_dependencies)
endif
	$(cpp_echo) $(src)test/udp_tcp_sender_receiver.cpp
	$(cpp_silent) $(cppappcomp) -o $@ $(use_pp_cppflags) $(udp_tcp_sender_receiver_pp_cppflags) $(app_udp_tcp_sender_receiver_pp_cppflags) $(udp_tcp_sender_receiver_pp_cppflags) $(use_cppflags) $(udp_tcp_sender_receiver_cppflags) $(app_udp_tcp_sender_receiver_cppflags) $(udp_tcp_sender_receiver_cppflags) $(udp_tcp_sender_receiver_cpp_cppflags) -I../src/test $(src)test/udp_tcp_sender_receiver.cpp

#-- end of cpp ------
#-- start of cleanup_header --------------

clean :: udp_tcp_sender_receiverclean ;
#	@cd .

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(udp_tcp_sender_receiver.make) $@: No rule for such target" >&2
else
.DEFAULT::
	$(error PEDANTIC: $@: No rule for such target)
endif

udp_tcp_sender_receiverclean ::
#-- end of cleanup_header ---------------
#-- start of cleanup_application ------
	$(cleanup_echo) application udp_tcp_sender_receiver
	-$(cleanup_silent) cd $(bin); /bin/rm -f udp_tcp_sender_receiver${application_suffix}
#-- end of cleanup_application ------
#-- start of cleanup_objects ------
	$(cleanup_echo) objects udp_tcp_sender_receiver
	-$(cleanup_silent) /bin/rm -f $(bin)udp_tcp_sender_receiver.o
	-$(cleanup_silent) /bin/rm -f $(patsubst %.o,%.d,$(bin)udp_tcp_sender_receiver.o) $(patsubst %.o,%.dep,$(bin)udp_tcp_sender_receiver.o) $(patsubst %.o,%.d.stamp,$(bin)udp_tcp_sender_receiver.o)
	-$(cleanup_silent) cd $(bin); /bin/rm -rf udp_tcp_sender_receiver_deps udp_tcp_sender_receiver_dependencies.make
#-- end of cleanup_objects ------