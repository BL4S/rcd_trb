
#-- start of constituents_header ------

include ${CMTROOT}/src/Makefile.core

ifdef tag
CMTEXTRATAGS = $(tag)
else
tag       = $(CMTCONFIG)
endif

tags      = $(tag),$(CMTEXTRATAGS)

rcd_trb_tag = $(tag)

#cmt_local_tagfile = $(rcd_trb_tag).make
cmt_local_tagfile = $(bin)$(rcd_trb_tag).make

#-include $(cmt_local_tagfile)
include $(cmt_local_tagfile)

#cmt_local_setup = $(bin)setup$$$$.make
#cmt_local_setup = $(bin)$(package)setup$$$$.make
#cmt_final_setup = $(bin)rcd_trbsetup.make
cmt_final_setup = $(bin)setup.make
#cmt_final_setup = $(bin)$(package)setup.make

cmt_build_library_linksstamp = $(bin)cmt_build_library_links.stamp
#--------------------------------------------------------

#cmt_lock_setup = /tmp/lock$(cmt_lock_pid).make
#cmt_temp_tag = /tmp/tag$(cmt_lock_pid).make

#first :: $(cmt_local_tagfile)
#	@echo $(cmt_local_tagfile) ok
#ifndef QUICK
#first :: $(cmt_final_setup) ;
#else
#first :: ;
#endif

##	@bin=`$(cmtexe) show macro_value bin`

#$(cmt_local_tagfile) : $(cmt_lock_setup)
#	@echo "#CMT> Error: $@: No such file" >&2; exit 1
#$(cmt_local_tagfile) :
#	@echo "#CMT> Warning: $@: No such file" >&2; exit
#	@echo "#CMT> Info: $@: No need to rebuild file" >&2; exit

#$(cmt_final_setup) : $(cmt_local_tagfile) 
#	$(echo) "(constituents.make) Rebuilding $@"
#	@if test ! -d $(@D); then $(mkdir) -p $(@D); fi; \
#	  if test -f $(cmt_local_setup); then /bin/rm -f $(cmt_local_setup); fi; \
#	  trap '/bin/rm -f $(cmt_local_setup)' 0 1 2 15; \
#	  $(cmtexe) -tag=$(tags) show setup >>$(cmt_local_setup); \
#	  if test ! -f $@; then \
#	    mv $(cmt_local_setup) $@; \
#	  else \
#	    if /usr/bin/diff $(cmt_local_setup) $@ >/dev/null ; then \
#	      : ; \
#	    else \
#	      mv $(cmt_local_setup) $@; \
#	    fi; \
#	  fi

#	@/bin/echo $@ ok   

#config :: checkuses
#	@exit 0
#checkuses : ;

env.make ::
	printenv >env.make.tmp; $(cmtexe) check files env.make.tmp env.make

ifndef QUICK
all :: build_library_links ;
else
all :: $(cmt_build_library_linksstamp) ;
endif

javadirs ::
	@if test ! -d $(javabin) ; then $(mkdir) -p $(javabin) ; fi

srcdirs ::
	@if test ! -d $(src) ; then $(mkdir) -p $(src) ; fi

dirs :: requirements
	@if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi
#	@if test ! -r requirements ; then echo "No requirements file" ; fi; \
#	  if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi

#requirements :
#	@if test ! -r requirements ; then echo "No requirements file" ; fi

build_library_links : dirs
	$(echo) "(constituents.make) Rebuilding library links"; \
	 $(build_library_links)
#	if test ! -d $(bin) ; then $(mkdir) -p $(bin) ; fi; \
#	$(build_library_links)

$(cmt_build_library_linksstamp) : $(cmt_final_setup) $(cmt_local_tagfile) $(bin)library_links.in
	$(echo) "(constituents.make) Rebuilding library links"; \
	 $(build_library_links) -f=$(bin)library_links.in -without_cmt
	$(silent) \touch $@

ifndef PEDANTIC
.DEFAULT ::
#.DEFAULT :
	$(echo) "(constituents.make) $@: No rule for such target" >&2
endif

${CMTROOT}/src/Makefile.core : ;
ifdef use_requirements
$(use_requirements) : ;
endif

#-- end of constituents_header ------
#-- start of group ------

all_groups :: all

all :: $(all_dependencies)  $(all_pre_constituents) $(all_constituents)  $(all_post_constituents)
	$(echo) "all ok."

#	@/bin/echo " all ok."

clean :: allclean

allclean ::  $(all_constituentsclean)
	$(echo) $(all_constituentsclean)
	$(echo) "allclean ok."

#	@echo $(all_constituentsclean)
#	@/bin/echo " allclean ok."

#-- end of group ------
#-- start of group ------

all_groups :: cmt_actions

cmt_actions :: $(cmt_actions_dependencies)  $(cmt_actions_pre_constituents) $(cmt_actions_constituents)  $(cmt_actions_post_constituents)
	$(echo) "cmt_actions ok."

#	@/bin/echo " cmt_actions ok."

clean :: allclean

cmt_actionsclean ::  $(cmt_actions_constituentsclean)
	$(echo) $(cmt_actions_constituentsclean)
	$(echo) "cmt_actionsclean ok."

#	@echo $(cmt_actions_constituentsclean)
#	@/bin/echo " cmt_actionsclean ok."

#-- end of group ------
#-- start of group ------

all_groups :: inst

inst :: $(inst_dependencies)  $(inst_pre_constituents) $(inst_constituents)  $(inst_post_constituents)
	$(echo) "inst ok."

#	@/bin/echo " inst ok."

clean :: allclean

instclean ::  $(inst_constituentsclean)
	$(echo) $(inst_constituentsclean)
	$(echo) "instclean ok."

#	@echo $(inst_constituentsclean)
#	@/bin/echo " instclean ok."

#-- end of group ------
#-- start of group ------

all_groups :: rpm

rpm :: $(rpm_dependencies)  $(rpm_pre_constituents) $(rpm_constituents)  $(rpm_post_constituents)
	$(echo) "rpm ok."

#	@/bin/echo " rpm ok."

clean :: allclean

rpmclean ::  $(rpm_constituentsclean)
	$(echo) $(rpm_constituentsclean)
	$(echo) "rpmclean ok."

#	@echo $(rpm_constituentsclean)
#	@/bin/echo " rpmclean ok."

#-- end of group ------
#-- start of constituent ------

cmt_ReadoutModuleTRB_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_ReadoutModuleTRB_has_target_tag

cmt_local_tagfile_ReadoutModuleTRB = $(bin)$(rcd_trb_tag)_ReadoutModuleTRB.make
cmt_final_setup_ReadoutModuleTRB = $(bin)setup_ReadoutModuleTRB.make
cmt_local_ReadoutModuleTRB_makefile = $(bin)ReadoutModuleTRB.make

ReadoutModuleTRB_extratags = -tag_add=target_ReadoutModuleTRB

else

cmt_local_tagfile_ReadoutModuleTRB = $(bin)$(rcd_trb_tag).make
cmt_final_setup_ReadoutModuleTRB = $(bin)setup.make
cmt_local_ReadoutModuleTRB_makefile = $(bin)ReadoutModuleTRB.make

endif

not_ReadoutModuleTRB_dependencies = { n=0; for p in $?; do m=0; for d in $(ReadoutModuleTRB_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
ReadoutModuleTRBdirs :
	@if test ! -d $(bin)ReadoutModuleTRB; then $(mkdir) -p $(bin)ReadoutModuleTRB; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)ReadoutModuleTRB
else
ReadoutModuleTRBdirs : ;
endif

ifdef cmt_ReadoutModuleTRB_has_target_tag

ifndef QUICK
$(cmt_local_ReadoutModuleTRB_makefile) : $(ReadoutModuleTRB_dependencies) build_library_links
	$(echo) "(constituents.make) Building ReadoutModuleTRB.make"; \
	  $(cmtexe) -tag=$(tags) $(ReadoutModuleTRB_extratags) build constituent_config -out=$(cmt_local_ReadoutModuleTRB_makefile) ReadoutModuleTRB
else
$(cmt_local_ReadoutModuleTRB_makefile) : $(ReadoutModuleTRB_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_ReadoutModuleTRB) ] || \
	  [ ! -f $(cmt_final_setup_ReadoutModuleTRB) ] || \
	  $(not_ReadoutModuleTRB_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building ReadoutModuleTRB.make"; \
	  $(cmtexe) -tag=$(tags) $(ReadoutModuleTRB_extratags) build constituent_config -out=$(cmt_local_ReadoutModuleTRB_makefile) ReadoutModuleTRB; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_ReadoutModuleTRB_makefile) : $(ReadoutModuleTRB_dependencies) build_library_links
	$(echo) "(constituents.make) Building ReadoutModuleTRB.make"; \
	  $(cmtexe) -f=$(bin)ReadoutModuleTRB.in -tag=$(tags) $(ReadoutModuleTRB_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_ReadoutModuleTRB_makefile) ReadoutModuleTRB
else
$(cmt_local_ReadoutModuleTRB_makefile) : $(ReadoutModuleTRB_dependencies) $(cmt_build_library_linksstamp) $(bin)ReadoutModuleTRB.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_ReadoutModuleTRB) ] || \
	  [ ! -f $(cmt_final_setup_ReadoutModuleTRB) ] || \
	  $(not_ReadoutModuleTRB_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building ReadoutModuleTRB.make"; \
	  $(cmtexe) -f=$(bin)ReadoutModuleTRB.in -tag=$(tags) $(ReadoutModuleTRB_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_ReadoutModuleTRB_makefile) ReadoutModuleTRB; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(ReadoutModuleTRB_extratags) build constituent_makefile -out=$(cmt_local_ReadoutModuleTRB_makefile) ReadoutModuleTRB

ReadoutModuleTRB :: $(ReadoutModuleTRB_dependencies) $(cmt_local_ReadoutModuleTRB_makefile) dirs ReadoutModuleTRBdirs
	$(echo) "(constituents.make) Starting ReadoutModuleTRB"
	@if test -f $(cmt_local_ReadoutModuleTRB_makefile); then \
	  $(MAKE) -f $(cmt_local_ReadoutModuleTRB_makefile) ReadoutModuleTRB; \
	  fi
#	@$(MAKE) -f $(cmt_local_ReadoutModuleTRB_makefile) ReadoutModuleTRB
	$(echo) "(constituents.make) ReadoutModuleTRB done"

clean :: ReadoutModuleTRBclean ;

ReadoutModuleTRBclean :: $(ReadoutModuleTRBclean_dependencies) ##$(cmt_local_ReadoutModuleTRB_makefile)
	$(echo) "(constituents.make) Starting ReadoutModuleTRBclean"
	@-if test -f $(cmt_local_ReadoutModuleTRB_makefile); then \
	  $(MAKE) -f $(cmt_local_ReadoutModuleTRB_makefile) ReadoutModuleTRBclean; \
	fi
	$(echo) "(constituents.make) ReadoutModuleTRBclean done"
#	@-$(MAKE) -f $(cmt_local_ReadoutModuleTRB_makefile) ReadoutModuleTRBclean

##	  /bin/rm -f $(cmt_local_ReadoutModuleTRB_makefile) $(bin)ReadoutModuleTRB_dependencies.make

install :: ReadoutModuleTRBinstall ;

ReadoutModuleTRBinstall :: $(ReadoutModuleTRB_dependencies) $(cmt_local_ReadoutModuleTRB_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_ReadoutModuleTRB_makefile); then \
	  $(MAKE) -f $(cmt_local_ReadoutModuleTRB_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_ReadoutModuleTRB_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : ReadoutModuleTRBuninstall

$(foreach d,$(ReadoutModuleTRB_dependencies),$(eval $(d)uninstall_dependencies += ReadoutModuleTRBuninstall))

ReadoutModuleTRBuninstall : $(ReadoutModuleTRBuninstall_dependencies) ##$(cmt_local_ReadoutModuleTRB_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_ReadoutModuleTRB_makefile); then \
	  $(MAKE) -f $(cmt_local_ReadoutModuleTRB_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_ReadoutModuleTRB_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: ReadoutModuleTRBuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ ReadoutModuleTRB"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ ReadoutModuleTRB done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_trbscope_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_trbscope_has_target_tag

cmt_local_tagfile_trbscope = $(bin)$(rcd_trb_tag)_trbscope.make
cmt_final_setup_trbscope = $(bin)setup_trbscope.make
cmt_local_trbscope_makefile = $(bin)trbscope.make

trbscope_extratags = -tag_add=target_trbscope

else

cmt_local_tagfile_trbscope = $(bin)$(rcd_trb_tag).make
cmt_final_setup_trbscope = $(bin)setup.make
cmt_local_trbscope_makefile = $(bin)trbscope.make

endif

not_trbscope_dependencies = { n=0; for p in $?; do m=0; for d in $(trbscope_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
trbscopedirs :
	@if test ! -d $(bin)trbscope; then $(mkdir) -p $(bin)trbscope; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)trbscope
else
trbscopedirs : ;
endif

ifdef cmt_trbscope_has_target_tag

ifndef QUICK
$(cmt_local_trbscope_makefile) : $(trbscope_dependencies) build_library_links
	$(echo) "(constituents.make) Building trbscope.make"; \
	  $(cmtexe) -tag=$(tags) $(trbscope_extratags) build constituent_config -out=$(cmt_local_trbscope_makefile) trbscope
else
$(cmt_local_trbscope_makefile) : $(trbscope_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_trbscope) ] || \
	  [ ! -f $(cmt_final_setup_trbscope) ] || \
	  $(not_trbscope_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building trbscope.make"; \
	  $(cmtexe) -tag=$(tags) $(trbscope_extratags) build constituent_config -out=$(cmt_local_trbscope_makefile) trbscope; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_trbscope_makefile) : $(trbscope_dependencies) build_library_links
	$(echo) "(constituents.make) Building trbscope.make"; \
	  $(cmtexe) -f=$(bin)trbscope.in -tag=$(tags) $(trbscope_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_trbscope_makefile) trbscope
else
$(cmt_local_trbscope_makefile) : $(trbscope_dependencies) $(cmt_build_library_linksstamp) $(bin)trbscope.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_trbscope) ] || \
	  [ ! -f $(cmt_final_setup_trbscope) ] || \
	  $(not_trbscope_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building trbscope.make"; \
	  $(cmtexe) -f=$(bin)trbscope.in -tag=$(tags) $(trbscope_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_trbscope_makefile) trbscope; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(trbscope_extratags) build constituent_makefile -out=$(cmt_local_trbscope_makefile) trbscope

trbscope :: $(trbscope_dependencies) $(cmt_local_trbscope_makefile) dirs trbscopedirs
	$(echo) "(constituents.make) Starting trbscope"
	@if test -f $(cmt_local_trbscope_makefile); then \
	  $(MAKE) -f $(cmt_local_trbscope_makefile) trbscope; \
	  fi
#	@$(MAKE) -f $(cmt_local_trbscope_makefile) trbscope
	$(echo) "(constituents.make) trbscope done"

clean :: trbscopeclean ;

trbscopeclean :: $(trbscopeclean_dependencies) ##$(cmt_local_trbscope_makefile)
	$(echo) "(constituents.make) Starting trbscopeclean"
	@-if test -f $(cmt_local_trbscope_makefile); then \
	  $(MAKE) -f $(cmt_local_trbscope_makefile) trbscopeclean; \
	fi
	$(echo) "(constituents.make) trbscopeclean done"
#	@-$(MAKE) -f $(cmt_local_trbscope_makefile) trbscopeclean

##	  /bin/rm -f $(cmt_local_trbscope_makefile) $(bin)trbscope_dependencies.make

install :: trbscopeinstall ;

trbscopeinstall :: $(trbscope_dependencies) $(cmt_local_trbscope_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_trbscope_makefile); then \
	  $(MAKE) -f $(cmt_local_trbscope_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_trbscope_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : trbscopeuninstall

$(foreach d,$(trbscope_dependencies),$(eval $(d)uninstall_dependencies += trbscopeuninstall))

trbscopeuninstall : $(trbscopeuninstall_dependencies) ##$(cmt_local_trbscope_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_trbscope_makefile); then \
	  $(MAKE) -f $(cmt_local_trbscope_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_trbscope_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: trbscopeuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ trbscope"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ trbscope done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_udp_tcp_sender_receiver_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_udp_tcp_sender_receiver_has_target_tag

cmt_local_tagfile_udp_tcp_sender_receiver = $(bin)$(rcd_trb_tag)_udp_tcp_sender_receiver.make
cmt_final_setup_udp_tcp_sender_receiver = $(bin)setup_udp_tcp_sender_receiver.make
cmt_local_udp_tcp_sender_receiver_makefile = $(bin)udp_tcp_sender_receiver.make

udp_tcp_sender_receiver_extratags = -tag_add=target_udp_tcp_sender_receiver

else

cmt_local_tagfile_udp_tcp_sender_receiver = $(bin)$(rcd_trb_tag).make
cmt_final_setup_udp_tcp_sender_receiver = $(bin)setup.make
cmt_local_udp_tcp_sender_receiver_makefile = $(bin)udp_tcp_sender_receiver.make

endif

not_udp_tcp_sender_receiver_dependencies = { n=0; for p in $?; do m=0; for d in $(udp_tcp_sender_receiver_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
udp_tcp_sender_receiverdirs :
	@if test ! -d $(bin)udp_tcp_sender_receiver; then $(mkdir) -p $(bin)udp_tcp_sender_receiver; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)udp_tcp_sender_receiver
else
udp_tcp_sender_receiverdirs : ;
endif

ifdef cmt_udp_tcp_sender_receiver_has_target_tag

ifndef QUICK
$(cmt_local_udp_tcp_sender_receiver_makefile) : $(udp_tcp_sender_receiver_dependencies) build_library_links
	$(echo) "(constituents.make) Building udp_tcp_sender_receiver.make"; \
	  $(cmtexe) -tag=$(tags) $(udp_tcp_sender_receiver_extratags) build constituent_config -out=$(cmt_local_udp_tcp_sender_receiver_makefile) udp_tcp_sender_receiver
else
$(cmt_local_udp_tcp_sender_receiver_makefile) : $(udp_tcp_sender_receiver_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_udp_tcp_sender_receiver) ] || \
	  [ ! -f $(cmt_final_setup_udp_tcp_sender_receiver) ] || \
	  $(not_udp_tcp_sender_receiver_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building udp_tcp_sender_receiver.make"; \
	  $(cmtexe) -tag=$(tags) $(udp_tcp_sender_receiver_extratags) build constituent_config -out=$(cmt_local_udp_tcp_sender_receiver_makefile) udp_tcp_sender_receiver; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_udp_tcp_sender_receiver_makefile) : $(udp_tcp_sender_receiver_dependencies) build_library_links
	$(echo) "(constituents.make) Building udp_tcp_sender_receiver.make"; \
	  $(cmtexe) -f=$(bin)udp_tcp_sender_receiver.in -tag=$(tags) $(udp_tcp_sender_receiver_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_udp_tcp_sender_receiver_makefile) udp_tcp_sender_receiver
else
$(cmt_local_udp_tcp_sender_receiver_makefile) : $(udp_tcp_sender_receiver_dependencies) $(cmt_build_library_linksstamp) $(bin)udp_tcp_sender_receiver.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_udp_tcp_sender_receiver) ] || \
	  [ ! -f $(cmt_final_setup_udp_tcp_sender_receiver) ] || \
	  $(not_udp_tcp_sender_receiver_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building udp_tcp_sender_receiver.make"; \
	  $(cmtexe) -f=$(bin)udp_tcp_sender_receiver.in -tag=$(tags) $(udp_tcp_sender_receiver_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_udp_tcp_sender_receiver_makefile) udp_tcp_sender_receiver; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(udp_tcp_sender_receiver_extratags) build constituent_makefile -out=$(cmt_local_udp_tcp_sender_receiver_makefile) udp_tcp_sender_receiver

udp_tcp_sender_receiver :: $(udp_tcp_sender_receiver_dependencies) $(cmt_local_udp_tcp_sender_receiver_makefile) dirs udp_tcp_sender_receiverdirs
	$(echo) "(constituents.make) Starting udp_tcp_sender_receiver"
	@if test -f $(cmt_local_udp_tcp_sender_receiver_makefile); then \
	  $(MAKE) -f $(cmt_local_udp_tcp_sender_receiver_makefile) udp_tcp_sender_receiver; \
	  fi
#	@$(MAKE) -f $(cmt_local_udp_tcp_sender_receiver_makefile) udp_tcp_sender_receiver
	$(echo) "(constituents.make) udp_tcp_sender_receiver done"

clean :: udp_tcp_sender_receiverclean ;

udp_tcp_sender_receiverclean :: $(udp_tcp_sender_receiverclean_dependencies) ##$(cmt_local_udp_tcp_sender_receiver_makefile)
	$(echo) "(constituents.make) Starting udp_tcp_sender_receiverclean"
	@-if test -f $(cmt_local_udp_tcp_sender_receiver_makefile); then \
	  $(MAKE) -f $(cmt_local_udp_tcp_sender_receiver_makefile) udp_tcp_sender_receiverclean; \
	fi
	$(echo) "(constituents.make) udp_tcp_sender_receiverclean done"
#	@-$(MAKE) -f $(cmt_local_udp_tcp_sender_receiver_makefile) udp_tcp_sender_receiverclean

##	  /bin/rm -f $(cmt_local_udp_tcp_sender_receiver_makefile) $(bin)udp_tcp_sender_receiver_dependencies.make

install :: udp_tcp_sender_receiverinstall ;

udp_tcp_sender_receiverinstall :: $(udp_tcp_sender_receiver_dependencies) $(cmt_local_udp_tcp_sender_receiver_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_udp_tcp_sender_receiver_makefile); then \
	  $(MAKE) -f $(cmt_local_udp_tcp_sender_receiver_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_udp_tcp_sender_receiver_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : udp_tcp_sender_receiveruninstall

$(foreach d,$(udp_tcp_sender_receiver_dependencies),$(eval $(d)uninstall_dependencies += udp_tcp_sender_receiveruninstall))

udp_tcp_sender_receiveruninstall : $(udp_tcp_sender_receiveruninstall_dependencies) ##$(cmt_local_udp_tcp_sender_receiver_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_udp_tcp_sender_receiver_makefile); then \
	  $(MAKE) -f $(cmt_local_udp_tcp_sender_receiver_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_udp_tcp_sender_receiver_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: udp_tcp_sender_receiveruninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ udp_tcp_sender_receiver"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ udp_tcp_sender_receiver done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_client_TCP_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_client_TCP_has_target_tag

cmt_local_tagfile_client_TCP = $(bin)$(rcd_trb_tag)_client_TCP.make
cmt_final_setup_client_TCP = $(bin)setup_client_TCP.make
cmt_local_client_TCP_makefile = $(bin)client_TCP.make

client_TCP_extratags = -tag_add=target_client_TCP

else

cmt_local_tagfile_client_TCP = $(bin)$(rcd_trb_tag).make
cmt_final_setup_client_TCP = $(bin)setup.make
cmt_local_client_TCP_makefile = $(bin)client_TCP.make

endif

not_client_TCP_dependencies = { n=0; for p in $?; do m=0; for d in $(client_TCP_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
client_TCPdirs :
	@if test ! -d $(bin)client_TCP; then $(mkdir) -p $(bin)client_TCP; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)client_TCP
else
client_TCPdirs : ;
endif

ifdef cmt_client_TCP_has_target_tag

ifndef QUICK
$(cmt_local_client_TCP_makefile) : $(client_TCP_dependencies) build_library_links
	$(echo) "(constituents.make) Building client_TCP.make"; \
	  $(cmtexe) -tag=$(tags) $(client_TCP_extratags) build constituent_config -out=$(cmt_local_client_TCP_makefile) client_TCP
else
$(cmt_local_client_TCP_makefile) : $(client_TCP_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_client_TCP) ] || \
	  [ ! -f $(cmt_final_setup_client_TCP) ] || \
	  $(not_client_TCP_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building client_TCP.make"; \
	  $(cmtexe) -tag=$(tags) $(client_TCP_extratags) build constituent_config -out=$(cmt_local_client_TCP_makefile) client_TCP; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_client_TCP_makefile) : $(client_TCP_dependencies) build_library_links
	$(echo) "(constituents.make) Building client_TCP.make"; \
	  $(cmtexe) -f=$(bin)client_TCP.in -tag=$(tags) $(client_TCP_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_client_TCP_makefile) client_TCP
else
$(cmt_local_client_TCP_makefile) : $(client_TCP_dependencies) $(cmt_build_library_linksstamp) $(bin)client_TCP.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_client_TCP) ] || \
	  [ ! -f $(cmt_final_setup_client_TCP) ] || \
	  $(not_client_TCP_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building client_TCP.make"; \
	  $(cmtexe) -f=$(bin)client_TCP.in -tag=$(tags) $(client_TCP_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_client_TCP_makefile) client_TCP; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(client_TCP_extratags) build constituent_makefile -out=$(cmt_local_client_TCP_makefile) client_TCP

client_TCP :: $(client_TCP_dependencies) $(cmt_local_client_TCP_makefile) dirs client_TCPdirs
	$(echo) "(constituents.make) Starting client_TCP"
	@if test -f $(cmt_local_client_TCP_makefile); then \
	  $(MAKE) -f $(cmt_local_client_TCP_makefile) client_TCP; \
	  fi
#	@$(MAKE) -f $(cmt_local_client_TCP_makefile) client_TCP
	$(echo) "(constituents.make) client_TCP done"

clean :: client_TCPclean ;

client_TCPclean :: $(client_TCPclean_dependencies) ##$(cmt_local_client_TCP_makefile)
	$(echo) "(constituents.make) Starting client_TCPclean"
	@-if test -f $(cmt_local_client_TCP_makefile); then \
	  $(MAKE) -f $(cmt_local_client_TCP_makefile) client_TCPclean; \
	fi
	$(echo) "(constituents.make) client_TCPclean done"
#	@-$(MAKE) -f $(cmt_local_client_TCP_makefile) client_TCPclean

##	  /bin/rm -f $(cmt_local_client_TCP_makefile) $(bin)client_TCP_dependencies.make

install :: client_TCPinstall ;

client_TCPinstall :: $(client_TCP_dependencies) $(cmt_local_client_TCP_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_client_TCP_makefile); then \
	  $(MAKE) -f $(cmt_local_client_TCP_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_client_TCP_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : client_TCPuninstall

$(foreach d,$(client_TCP_dependencies),$(eval $(d)uninstall_dependencies += client_TCPuninstall))

client_TCPuninstall : $(client_TCPuninstall_dependencies) ##$(cmt_local_client_TCP_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_client_TCP_makefile); then \
	  $(MAKE) -f $(cmt_local_client_TCP_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_client_TCP_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: client_TCPuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ client_TCP"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ client_TCP done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_server_TCP_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_server_TCP_has_target_tag

cmt_local_tagfile_server_TCP = $(bin)$(rcd_trb_tag)_server_TCP.make
cmt_final_setup_server_TCP = $(bin)setup_server_TCP.make
cmt_local_server_TCP_makefile = $(bin)server_TCP.make

server_TCP_extratags = -tag_add=target_server_TCP

else

cmt_local_tagfile_server_TCP = $(bin)$(rcd_trb_tag).make
cmt_final_setup_server_TCP = $(bin)setup.make
cmt_local_server_TCP_makefile = $(bin)server_TCP.make

endif

not_server_TCP_dependencies = { n=0; for p in $?; do m=0; for d in $(server_TCP_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
server_TCPdirs :
	@if test ! -d $(bin)server_TCP; then $(mkdir) -p $(bin)server_TCP; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)server_TCP
else
server_TCPdirs : ;
endif

ifdef cmt_server_TCP_has_target_tag

ifndef QUICK
$(cmt_local_server_TCP_makefile) : $(server_TCP_dependencies) build_library_links
	$(echo) "(constituents.make) Building server_TCP.make"; \
	  $(cmtexe) -tag=$(tags) $(server_TCP_extratags) build constituent_config -out=$(cmt_local_server_TCP_makefile) server_TCP
else
$(cmt_local_server_TCP_makefile) : $(server_TCP_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_server_TCP) ] || \
	  [ ! -f $(cmt_final_setup_server_TCP) ] || \
	  $(not_server_TCP_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building server_TCP.make"; \
	  $(cmtexe) -tag=$(tags) $(server_TCP_extratags) build constituent_config -out=$(cmt_local_server_TCP_makefile) server_TCP; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_server_TCP_makefile) : $(server_TCP_dependencies) build_library_links
	$(echo) "(constituents.make) Building server_TCP.make"; \
	  $(cmtexe) -f=$(bin)server_TCP.in -tag=$(tags) $(server_TCP_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_server_TCP_makefile) server_TCP
else
$(cmt_local_server_TCP_makefile) : $(server_TCP_dependencies) $(cmt_build_library_linksstamp) $(bin)server_TCP.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_server_TCP) ] || \
	  [ ! -f $(cmt_final_setup_server_TCP) ] || \
	  $(not_server_TCP_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building server_TCP.make"; \
	  $(cmtexe) -f=$(bin)server_TCP.in -tag=$(tags) $(server_TCP_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_server_TCP_makefile) server_TCP; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(server_TCP_extratags) build constituent_makefile -out=$(cmt_local_server_TCP_makefile) server_TCP

server_TCP :: $(server_TCP_dependencies) $(cmt_local_server_TCP_makefile) dirs server_TCPdirs
	$(echo) "(constituents.make) Starting server_TCP"
	@if test -f $(cmt_local_server_TCP_makefile); then \
	  $(MAKE) -f $(cmt_local_server_TCP_makefile) server_TCP; \
	  fi
#	@$(MAKE) -f $(cmt_local_server_TCP_makefile) server_TCP
	$(echo) "(constituents.make) server_TCP done"

clean :: server_TCPclean ;

server_TCPclean :: $(server_TCPclean_dependencies) ##$(cmt_local_server_TCP_makefile)
	$(echo) "(constituents.make) Starting server_TCPclean"
	@-if test -f $(cmt_local_server_TCP_makefile); then \
	  $(MAKE) -f $(cmt_local_server_TCP_makefile) server_TCPclean; \
	fi
	$(echo) "(constituents.make) server_TCPclean done"
#	@-$(MAKE) -f $(cmt_local_server_TCP_makefile) server_TCPclean

##	  /bin/rm -f $(cmt_local_server_TCP_makefile) $(bin)server_TCP_dependencies.make

install :: server_TCPinstall ;

server_TCPinstall :: $(server_TCP_dependencies) $(cmt_local_server_TCP_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_server_TCP_makefile); then \
	  $(MAKE) -f $(cmt_local_server_TCP_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_server_TCP_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : server_TCPuninstall

$(foreach d,$(server_TCP_dependencies),$(eval $(d)uninstall_dependencies += server_TCPuninstall))

server_TCPuninstall : $(server_TCPuninstall_dependencies) ##$(cmt_local_server_TCP_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_server_TCP_makefile); then \
	  $(MAKE) -f $(cmt_local_server_TCP_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_server_TCP_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: server_TCPuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ server_TCP"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ server_TCP done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_client_UDP_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_client_UDP_has_target_tag

cmt_local_tagfile_client_UDP = $(bin)$(rcd_trb_tag)_client_UDP.make
cmt_final_setup_client_UDP = $(bin)setup_client_UDP.make
cmt_local_client_UDP_makefile = $(bin)client_UDP.make

client_UDP_extratags = -tag_add=target_client_UDP

else

cmt_local_tagfile_client_UDP = $(bin)$(rcd_trb_tag).make
cmt_final_setup_client_UDP = $(bin)setup.make
cmt_local_client_UDP_makefile = $(bin)client_UDP.make

endif

not_client_UDP_dependencies = { n=0; for p in $?; do m=0; for d in $(client_UDP_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
client_UDPdirs :
	@if test ! -d $(bin)client_UDP; then $(mkdir) -p $(bin)client_UDP; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)client_UDP
else
client_UDPdirs : ;
endif

ifdef cmt_client_UDP_has_target_tag

ifndef QUICK
$(cmt_local_client_UDP_makefile) : $(client_UDP_dependencies) build_library_links
	$(echo) "(constituents.make) Building client_UDP.make"; \
	  $(cmtexe) -tag=$(tags) $(client_UDP_extratags) build constituent_config -out=$(cmt_local_client_UDP_makefile) client_UDP
else
$(cmt_local_client_UDP_makefile) : $(client_UDP_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_client_UDP) ] || \
	  [ ! -f $(cmt_final_setup_client_UDP) ] || \
	  $(not_client_UDP_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building client_UDP.make"; \
	  $(cmtexe) -tag=$(tags) $(client_UDP_extratags) build constituent_config -out=$(cmt_local_client_UDP_makefile) client_UDP; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_client_UDP_makefile) : $(client_UDP_dependencies) build_library_links
	$(echo) "(constituents.make) Building client_UDP.make"; \
	  $(cmtexe) -f=$(bin)client_UDP.in -tag=$(tags) $(client_UDP_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_client_UDP_makefile) client_UDP
else
$(cmt_local_client_UDP_makefile) : $(client_UDP_dependencies) $(cmt_build_library_linksstamp) $(bin)client_UDP.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_client_UDP) ] || \
	  [ ! -f $(cmt_final_setup_client_UDP) ] || \
	  $(not_client_UDP_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building client_UDP.make"; \
	  $(cmtexe) -f=$(bin)client_UDP.in -tag=$(tags) $(client_UDP_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_client_UDP_makefile) client_UDP; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(client_UDP_extratags) build constituent_makefile -out=$(cmt_local_client_UDP_makefile) client_UDP

client_UDP :: $(client_UDP_dependencies) $(cmt_local_client_UDP_makefile) dirs client_UDPdirs
	$(echo) "(constituents.make) Starting client_UDP"
	@if test -f $(cmt_local_client_UDP_makefile); then \
	  $(MAKE) -f $(cmt_local_client_UDP_makefile) client_UDP; \
	  fi
#	@$(MAKE) -f $(cmt_local_client_UDP_makefile) client_UDP
	$(echo) "(constituents.make) client_UDP done"

clean :: client_UDPclean ;

client_UDPclean :: $(client_UDPclean_dependencies) ##$(cmt_local_client_UDP_makefile)
	$(echo) "(constituents.make) Starting client_UDPclean"
	@-if test -f $(cmt_local_client_UDP_makefile); then \
	  $(MAKE) -f $(cmt_local_client_UDP_makefile) client_UDPclean; \
	fi
	$(echo) "(constituents.make) client_UDPclean done"
#	@-$(MAKE) -f $(cmt_local_client_UDP_makefile) client_UDPclean

##	  /bin/rm -f $(cmt_local_client_UDP_makefile) $(bin)client_UDP_dependencies.make

install :: client_UDPinstall ;

client_UDPinstall :: $(client_UDP_dependencies) $(cmt_local_client_UDP_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_client_UDP_makefile); then \
	  $(MAKE) -f $(cmt_local_client_UDP_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_client_UDP_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : client_UDPuninstall

$(foreach d,$(client_UDP_dependencies),$(eval $(d)uninstall_dependencies += client_UDPuninstall))

client_UDPuninstall : $(client_UDPuninstall_dependencies) ##$(cmt_local_client_UDP_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_client_UDP_makefile); then \
	  $(MAKE) -f $(cmt_local_client_UDP_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_client_UDP_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: client_UDPuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ client_UDP"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ client_UDP done"
endif

#-- end of constituent ------
#-- start of constituent ------

cmt_server_UDP_has_no_target_tag = 1

#--------------------------------------

ifdef cmt_server_UDP_has_target_tag

cmt_local_tagfile_server_UDP = $(bin)$(rcd_trb_tag)_server_UDP.make
cmt_final_setup_server_UDP = $(bin)setup_server_UDP.make
cmt_local_server_UDP_makefile = $(bin)server_UDP.make

server_UDP_extratags = -tag_add=target_server_UDP

else

cmt_local_tagfile_server_UDP = $(bin)$(rcd_trb_tag).make
cmt_final_setup_server_UDP = $(bin)setup.make
cmt_local_server_UDP_makefile = $(bin)server_UDP.make

endif

not_server_UDP_dependencies = { n=0; for p in $?; do m=0; for d in $(server_UDP_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
server_UDPdirs :
	@if test ! -d $(bin)server_UDP; then $(mkdir) -p $(bin)server_UDP; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)server_UDP
else
server_UDPdirs : ;
endif

ifdef cmt_server_UDP_has_target_tag

ifndef QUICK
$(cmt_local_server_UDP_makefile) : $(server_UDP_dependencies) build_library_links
	$(echo) "(constituents.make) Building server_UDP.make"; \
	  $(cmtexe) -tag=$(tags) $(server_UDP_extratags) build constituent_config -out=$(cmt_local_server_UDP_makefile) server_UDP
else
$(cmt_local_server_UDP_makefile) : $(server_UDP_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_server_UDP) ] || \
	  [ ! -f $(cmt_final_setup_server_UDP) ] || \
	  $(not_server_UDP_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building server_UDP.make"; \
	  $(cmtexe) -tag=$(tags) $(server_UDP_extratags) build constituent_config -out=$(cmt_local_server_UDP_makefile) server_UDP; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_server_UDP_makefile) : $(server_UDP_dependencies) build_library_links
	$(echo) "(constituents.make) Building server_UDP.make"; \
	  $(cmtexe) -f=$(bin)server_UDP.in -tag=$(tags) $(server_UDP_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_server_UDP_makefile) server_UDP
else
$(cmt_local_server_UDP_makefile) : $(server_UDP_dependencies) $(cmt_build_library_linksstamp) $(bin)server_UDP.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_server_UDP) ] || \
	  [ ! -f $(cmt_final_setup_server_UDP) ] || \
	  $(not_server_UDP_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building server_UDP.make"; \
	  $(cmtexe) -f=$(bin)server_UDP.in -tag=$(tags) $(server_UDP_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_server_UDP_makefile) server_UDP; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(server_UDP_extratags) build constituent_makefile -out=$(cmt_local_server_UDP_makefile) server_UDP

server_UDP :: $(server_UDP_dependencies) $(cmt_local_server_UDP_makefile) dirs server_UDPdirs
	$(echo) "(constituents.make) Starting server_UDP"
	@if test -f $(cmt_local_server_UDP_makefile); then \
	  $(MAKE) -f $(cmt_local_server_UDP_makefile) server_UDP; \
	  fi
#	@$(MAKE) -f $(cmt_local_server_UDP_makefile) server_UDP
	$(echo) "(constituents.make) server_UDP done"

clean :: server_UDPclean ;

server_UDPclean :: $(server_UDPclean_dependencies) ##$(cmt_local_server_UDP_makefile)
	$(echo) "(constituents.make) Starting server_UDPclean"
	@-if test -f $(cmt_local_server_UDP_makefile); then \
	  $(MAKE) -f $(cmt_local_server_UDP_makefile) server_UDPclean; \
	fi
	$(echo) "(constituents.make) server_UDPclean done"
#	@-$(MAKE) -f $(cmt_local_server_UDP_makefile) server_UDPclean

##	  /bin/rm -f $(cmt_local_server_UDP_makefile) $(bin)server_UDP_dependencies.make

install :: server_UDPinstall ;

server_UDPinstall :: $(server_UDP_dependencies) $(cmt_local_server_UDP_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_server_UDP_makefile); then \
	  $(MAKE) -f $(cmt_local_server_UDP_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_server_UDP_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : server_UDPuninstall

$(foreach d,$(server_UDP_dependencies),$(eval $(d)uninstall_dependencies += server_UDPuninstall))

server_UDPuninstall : $(server_UDPuninstall_dependencies) ##$(cmt_local_server_UDP_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_server_UDP_makefile); then \
	  $(MAKE) -f $(cmt_local_server_UDP_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_server_UDP_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: server_UDPuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ server_UDP"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ server_UDP done"
endif

#-- end of constituent ------
#-- start of constituent_lock ------

cmt_DataChannelTRBInfo_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_DataChannelTRBInfo_has_target_tag

cmt_local_tagfile_DataChannelTRBInfo = $(bin)$(rcd_trb_tag)_DataChannelTRBInfo.make
cmt_final_setup_DataChannelTRBInfo = $(bin)setup_DataChannelTRBInfo.make
cmt_local_DataChannelTRBInfo_makefile = $(bin)DataChannelTRBInfo.make

DataChannelTRBInfo_extratags = -tag_add=target_DataChannelTRBInfo

else

cmt_local_tagfile_DataChannelTRBInfo = $(bin)$(rcd_trb_tag).make
cmt_final_setup_DataChannelTRBInfo = $(bin)setup.make
cmt_local_DataChannelTRBInfo_makefile = $(bin)DataChannelTRBInfo.make

endif

not_DataChannelTRBInfo_dependencies = { n=0; for p in $?; do m=0; for d in $(DataChannelTRBInfo_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
DataChannelTRBInfodirs :
	@if test ! -d $(bin)DataChannelTRBInfo; then $(mkdir) -p $(bin)DataChannelTRBInfo; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)DataChannelTRBInfo
else
DataChannelTRBInfodirs : ;
endif

ifdef cmt_DataChannelTRBInfo_has_target_tag

ifndef QUICK
$(cmt_local_DataChannelTRBInfo_makefile) : $(DataChannelTRBInfo_dependencies) build_library_links
	$(echo) "(constituents.make) Building DataChannelTRBInfo.make"; \
	  $(cmtexe) -tag=$(tags) $(DataChannelTRBInfo_extratags) build constituent_config -out=$(cmt_local_DataChannelTRBInfo_makefile) DataChannelTRBInfo
else
$(cmt_local_DataChannelTRBInfo_makefile) : $(DataChannelTRBInfo_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_DataChannelTRBInfo) ] || \
	  [ ! -f $(cmt_final_setup_DataChannelTRBInfo) ] || \
	  $(not_DataChannelTRBInfo_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building DataChannelTRBInfo.make"; \
	  $(cmtexe) -tag=$(tags) $(DataChannelTRBInfo_extratags) build constituent_config -out=$(cmt_local_DataChannelTRBInfo_makefile) DataChannelTRBInfo; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_DataChannelTRBInfo_makefile) : $(DataChannelTRBInfo_dependencies) build_library_links
	$(echo) "(constituents.make) Building DataChannelTRBInfo.make"; \
	  $(cmtexe) -f=$(bin)DataChannelTRBInfo.in -tag=$(tags) $(DataChannelTRBInfo_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_DataChannelTRBInfo_makefile) DataChannelTRBInfo
else
$(cmt_local_DataChannelTRBInfo_makefile) : $(DataChannelTRBInfo_dependencies) $(cmt_build_library_linksstamp) $(bin)DataChannelTRBInfo.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_DataChannelTRBInfo) ] || \
	  [ ! -f $(cmt_final_setup_DataChannelTRBInfo) ] || \
	  $(not_DataChannelTRBInfo_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building DataChannelTRBInfo.make"; \
	  $(cmtexe) -f=$(bin)DataChannelTRBInfo.in -tag=$(tags) $(DataChannelTRBInfo_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_DataChannelTRBInfo_makefile) DataChannelTRBInfo; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(DataChannelTRBInfo_extratags) build constituent_makefile -out=$(cmt_local_DataChannelTRBInfo_makefile) DataChannelTRBInfo

DataChannelTRBInfo :: $(DataChannelTRBInfo_dependencies) $(cmt_local_DataChannelTRBInfo_makefile) dirs DataChannelTRBInfodirs
	$(echo) "(constituents.make) Creating DataChannelTRBInfo${lock_suffix} and Starting DataChannelTRBInfo"
	@${lock_command} DataChannelTRBInfo${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} DataChannelTRBInfo${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_DataChannelTRBInfo_makefile); then \
	  $(MAKE) -f $(cmt_local_DataChannelTRBInfo_makefile) DataChannelTRBInfo; \
	  fi; \
	  retval=$$?; ${unlock_command} DataChannelTRBInfo${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) DataChannelTRBInfo done"

clean :: DataChannelTRBInfoclean

DataChannelTRBInfoclean :: $(DataChannelTRBInfoclean_dependencies) ##$(cmt_local_DataChannelTRBInfo_makefile)
	$(echo) "(constituents.make) Starting DataChannelTRBInfoclean"
	@-if test -f $(cmt_local_DataChannelTRBInfo_makefile); then \
	  $(MAKE) -f $(cmt_local_DataChannelTRBInfo_makefile) DataChannelTRBInfoclean; \
	fi
	$(echo) "(constituents.make) DataChannelTRBInfoclean done"
#	@-$(MAKE) -f $(cmt_local_DataChannelTRBInfo_makefile) DataChannelTRBInfoclean

##	  /bin/rm -f $(cmt_local_DataChannelTRBInfo_makefile) $(bin)DataChannelTRBInfo_dependencies.make

install :: DataChannelTRBInfoinstall ;

DataChannelTRBInfoinstall :: $(DataChannelTRBInfo_dependencies) $(cmt_local_DataChannelTRBInfo_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_DataChannelTRBInfo_makefile); then \
	  $(MAKE) -f $(cmt_local_DataChannelTRBInfo_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_DataChannelTRBInfo_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : DataChannelTRBInfouninstall

$(foreach d,$(DataChannelTRBInfo_dependencies),$(eval $(d)uninstall_dependencies += DataChannelTRBInfouninstall))

DataChannelTRBInfouninstall : $(DataChannelTRBInfouninstall_dependencies) ##$(cmt_local_DataChannelTRBInfo_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_DataChannelTRBInfo_makefile); then \
	  $(MAKE) -f $(cmt_local_DataChannelTRBInfo_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_DataChannelTRBInfo_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: DataChannelTRBInfouninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ DataChannelTRBInfo"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ DataChannelTRBInfo done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_inst_libs__has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_libs__has_target_tag

cmt_local_tagfile_inst_libs_ = $(bin)$(rcd_trb_tag)_inst_libs_.make
cmt_final_setup_inst_libs_ = $(bin)setup_inst_libs_.make
cmt_local_inst_libs__makefile = $(bin)inst_libs_.make

inst_libs__extratags = -tag_add=target_inst_libs_

else

cmt_local_tagfile_inst_libs_ = $(bin)$(rcd_trb_tag).make
cmt_final_setup_inst_libs_ = $(bin)setup.make
cmt_local_inst_libs__makefile = $(bin)inst_libs_.make

endif

not_inst_libs__dependencies = { n=0; for p in $?; do m=0; for d in $(inst_libs__dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
inst_libs_dirs :
	@if test ! -d $(bin)inst_libs_; then $(mkdir) -p $(bin)inst_libs_; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)inst_libs_
else
inst_libs_dirs : ;
endif

ifdef cmt_inst_libs__has_target_tag

ifndef QUICK
$(cmt_local_inst_libs__makefile) : $(inst_libs__dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_libs_.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_libs__extratags) build constituent_config -out=$(cmt_local_inst_libs__makefile) inst_libs_
else
$(cmt_local_inst_libs__makefile) : $(inst_libs__dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_libs_) ] || \
	  [ ! -f $(cmt_final_setup_inst_libs_) ] || \
	  $(not_inst_libs__dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_libs_.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_libs__extratags) build constituent_config -out=$(cmt_local_inst_libs__makefile) inst_libs_; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_inst_libs__makefile) : $(inst_libs__dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_libs_.make"; \
	  $(cmtexe) -f=$(bin)inst_libs_.in -tag=$(tags) $(inst_libs__extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_libs__makefile) inst_libs_
else
$(cmt_local_inst_libs__makefile) : $(inst_libs__dependencies) $(cmt_build_library_linksstamp) $(bin)inst_libs_.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_libs_) ] || \
	  [ ! -f $(cmt_final_setup_inst_libs_) ] || \
	  $(not_inst_libs__dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_libs_.make"; \
	  $(cmtexe) -f=$(bin)inst_libs_.in -tag=$(tags) $(inst_libs__extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_libs__makefile) inst_libs_; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(inst_libs__extratags) build constituent_makefile -out=$(cmt_local_inst_libs__makefile) inst_libs_

inst_libs_ :: $(inst_libs__dependencies) $(cmt_local_inst_libs__makefile) dirs inst_libs_dirs
	$(echo) "(constituents.make) Creating inst_libs_${lock_suffix} and Starting inst_libs_"
	@${lock_command} inst_libs_${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} inst_libs_${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_inst_libs__makefile); then \
	  $(MAKE) -f $(cmt_local_inst_libs__makefile) inst_libs_; \
	  fi; \
	  retval=$$?; ${unlock_command} inst_libs_${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) inst_libs_ done"

clean :: inst_libs_clean

inst_libs_clean :: $(inst_libs_clean_dependencies) ##$(cmt_local_inst_libs__makefile)
	$(echo) "(constituents.make) Starting inst_libs_clean"
	@-if test -f $(cmt_local_inst_libs__makefile); then \
	  $(MAKE) -f $(cmt_local_inst_libs__makefile) inst_libs_clean; \
	fi
	$(echo) "(constituents.make) inst_libs_clean done"
#	@-$(MAKE) -f $(cmt_local_inst_libs__makefile) inst_libs_clean

##	  /bin/rm -f $(cmt_local_inst_libs__makefile) $(bin)inst_libs__dependencies.make

install :: inst_libs_install ;

inst_libs_install :: $(inst_libs__dependencies) $(cmt_local_inst_libs__makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_inst_libs__makefile); then \
	  $(MAKE) -f $(cmt_local_inst_libs__makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_inst_libs__makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : inst_libs_uninstall

$(foreach d,$(inst_libs__dependencies),$(eval $(d)uninstall_dependencies += inst_libs_uninstall))

inst_libs_uninstall : $(inst_libs_uninstall_dependencies) ##$(cmt_local_inst_libs__makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_inst_libs__makefile); then \
	  $(MAKE) -f $(cmt_local_inst_libs__makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_inst_libs__makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: inst_libs_uninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ inst_libs_"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ inst_libs_ done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_inst_apps__has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_apps__has_target_tag

cmt_local_tagfile_inst_apps_ = $(bin)$(rcd_trb_tag)_inst_apps_.make
cmt_final_setup_inst_apps_ = $(bin)setup_inst_apps_.make
cmt_local_inst_apps__makefile = $(bin)inst_apps_.make

inst_apps__extratags = -tag_add=target_inst_apps_

else

cmt_local_tagfile_inst_apps_ = $(bin)$(rcd_trb_tag).make
cmt_final_setup_inst_apps_ = $(bin)setup.make
cmt_local_inst_apps__makefile = $(bin)inst_apps_.make

endif

not_inst_apps__dependencies = { n=0; for p in $?; do m=0; for d in $(inst_apps__dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
inst_apps_dirs :
	@if test ! -d $(bin)inst_apps_; then $(mkdir) -p $(bin)inst_apps_; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)inst_apps_
else
inst_apps_dirs : ;
endif

ifdef cmt_inst_apps__has_target_tag

ifndef QUICK
$(cmt_local_inst_apps__makefile) : $(inst_apps__dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_apps_.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_apps__extratags) build constituent_config -out=$(cmt_local_inst_apps__makefile) inst_apps_
else
$(cmt_local_inst_apps__makefile) : $(inst_apps__dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_apps_) ] || \
	  [ ! -f $(cmt_final_setup_inst_apps_) ] || \
	  $(not_inst_apps__dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_apps_.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_apps__extratags) build constituent_config -out=$(cmt_local_inst_apps__makefile) inst_apps_; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_inst_apps__makefile) : $(inst_apps__dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_apps_.make"; \
	  $(cmtexe) -f=$(bin)inst_apps_.in -tag=$(tags) $(inst_apps__extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_apps__makefile) inst_apps_
else
$(cmt_local_inst_apps__makefile) : $(inst_apps__dependencies) $(cmt_build_library_linksstamp) $(bin)inst_apps_.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_apps_) ] || \
	  [ ! -f $(cmt_final_setup_inst_apps_) ] || \
	  $(not_inst_apps__dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_apps_.make"; \
	  $(cmtexe) -f=$(bin)inst_apps_.in -tag=$(tags) $(inst_apps__extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_apps__makefile) inst_apps_; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(inst_apps__extratags) build constituent_makefile -out=$(cmt_local_inst_apps__makefile) inst_apps_

inst_apps_ :: $(inst_apps__dependencies) $(cmt_local_inst_apps__makefile) dirs inst_apps_dirs
	$(echo) "(constituents.make) Creating inst_apps_${lock_suffix} and Starting inst_apps_"
	@${lock_command} inst_apps_${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} inst_apps_${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_inst_apps__makefile); then \
	  $(MAKE) -f $(cmt_local_inst_apps__makefile) inst_apps_; \
	  fi; \
	  retval=$$?; ${unlock_command} inst_apps_${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) inst_apps_ done"

clean :: inst_apps_clean

inst_apps_clean :: $(inst_apps_clean_dependencies) ##$(cmt_local_inst_apps__makefile)
	$(echo) "(constituents.make) Starting inst_apps_clean"
	@-if test -f $(cmt_local_inst_apps__makefile); then \
	  $(MAKE) -f $(cmt_local_inst_apps__makefile) inst_apps_clean; \
	fi
	$(echo) "(constituents.make) inst_apps_clean done"
#	@-$(MAKE) -f $(cmt_local_inst_apps__makefile) inst_apps_clean

##	  /bin/rm -f $(cmt_local_inst_apps__makefile) $(bin)inst_apps__dependencies.make

install :: inst_apps_install ;

inst_apps_install :: $(inst_apps__dependencies) $(cmt_local_inst_apps__makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_inst_apps__makefile); then \
	  $(MAKE) -f $(cmt_local_inst_apps__makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_inst_apps__makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : inst_apps_uninstall

$(foreach d,$(inst_apps__dependencies),$(eval $(d)uninstall_dependencies += inst_apps_uninstall))

inst_apps_uninstall : $(inst_apps_uninstall_dependencies) ##$(cmt_local_inst_apps__makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_inst_apps__makefile); then \
	  $(MAKE) -f $(cmt_local_inst_apps__makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_inst_apps__makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: inst_apps_uninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ inst_apps_"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ inst_apps_ done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_inst_data_schema_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_data_schema_has_target_tag

cmt_local_tagfile_inst_data_schema = $(bin)$(rcd_trb_tag)_inst_data_schema.make
cmt_final_setup_inst_data_schema = $(bin)setup_inst_data_schema.make
cmt_local_inst_data_schema_makefile = $(bin)inst_data_schema.make

inst_data_schema_extratags = -tag_add=target_inst_data_schema

else

cmt_local_tagfile_inst_data_schema = $(bin)$(rcd_trb_tag).make
cmt_final_setup_inst_data_schema = $(bin)setup.make
cmt_local_inst_data_schema_makefile = $(bin)inst_data_schema.make

endif

not_inst_data_schema_dependencies = { n=0; for p in $?; do m=0; for d in $(inst_data_schema_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
inst_data_schemadirs :
	@if test ! -d $(bin)inst_data_schema; then $(mkdir) -p $(bin)inst_data_schema; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)inst_data_schema
else
inst_data_schemadirs : ;
endif

ifdef cmt_inst_data_schema_has_target_tag

ifndef QUICK
$(cmt_local_inst_data_schema_makefile) : $(inst_data_schema_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_data_schema.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_data_schema_extratags) build constituent_config -out=$(cmt_local_inst_data_schema_makefile) inst_data_schema
else
$(cmt_local_inst_data_schema_makefile) : $(inst_data_schema_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_data_schema) ] || \
	  [ ! -f $(cmt_final_setup_inst_data_schema) ] || \
	  $(not_inst_data_schema_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_data_schema.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_data_schema_extratags) build constituent_config -out=$(cmt_local_inst_data_schema_makefile) inst_data_schema; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_inst_data_schema_makefile) : $(inst_data_schema_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_data_schema.make"; \
	  $(cmtexe) -f=$(bin)inst_data_schema.in -tag=$(tags) $(inst_data_schema_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_data_schema_makefile) inst_data_schema
else
$(cmt_local_inst_data_schema_makefile) : $(inst_data_schema_dependencies) $(cmt_build_library_linksstamp) $(bin)inst_data_schema.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_data_schema) ] || \
	  [ ! -f $(cmt_final_setup_inst_data_schema) ] || \
	  $(not_inst_data_schema_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_data_schema.make"; \
	  $(cmtexe) -f=$(bin)inst_data_schema.in -tag=$(tags) $(inst_data_schema_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_data_schema_makefile) inst_data_schema; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(inst_data_schema_extratags) build constituent_makefile -out=$(cmt_local_inst_data_schema_makefile) inst_data_schema

inst_data_schema :: $(inst_data_schema_dependencies) $(cmt_local_inst_data_schema_makefile) dirs inst_data_schemadirs
	$(echo) "(constituents.make) Creating inst_data_schema${lock_suffix} and Starting inst_data_schema"
	@${lock_command} inst_data_schema${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} inst_data_schema${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_inst_data_schema_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_data_schema_makefile) inst_data_schema; \
	  fi; \
	  retval=$$?; ${unlock_command} inst_data_schema${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) inst_data_schema done"

clean :: inst_data_schemaclean

inst_data_schemaclean :: $(inst_data_schemaclean_dependencies) ##$(cmt_local_inst_data_schema_makefile)
	$(echo) "(constituents.make) Starting inst_data_schemaclean"
	@-if test -f $(cmt_local_inst_data_schema_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_data_schema_makefile) inst_data_schemaclean; \
	fi
	$(echo) "(constituents.make) inst_data_schemaclean done"
#	@-$(MAKE) -f $(cmt_local_inst_data_schema_makefile) inst_data_schemaclean

##	  /bin/rm -f $(cmt_local_inst_data_schema_makefile) $(bin)inst_data_schema_dependencies.make

install :: inst_data_schemainstall ;

inst_data_schemainstall :: $(inst_data_schema_dependencies) $(cmt_local_inst_data_schema_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_inst_data_schema_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_data_schema_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_inst_data_schema_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : inst_data_schemauninstall

$(foreach d,$(inst_data_schema_dependencies),$(eval $(d)uninstall_dependencies += inst_data_schemauninstall))

inst_data_schemauninstall : $(inst_data_schemauninstall_dependencies) ##$(cmt_local_inst_data_schema_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_inst_data_schema_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_data_schema_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_inst_data_schema_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: inst_data_schemauninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ inst_data_schema"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ inst_data_schema done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_inst_headers_is_info_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_headers_is_info_has_target_tag

cmt_local_tagfile_inst_headers_is_info = $(bin)$(rcd_trb_tag)_inst_headers_is_info.make
cmt_final_setup_inst_headers_is_info = $(bin)setup_inst_headers_is_info.make
cmt_local_inst_headers_is_info_makefile = $(bin)inst_headers_is_info.make

inst_headers_is_info_extratags = -tag_add=target_inst_headers_is_info

else

cmt_local_tagfile_inst_headers_is_info = $(bin)$(rcd_trb_tag).make
cmt_final_setup_inst_headers_is_info = $(bin)setup.make
cmt_local_inst_headers_is_info_makefile = $(bin)inst_headers_is_info.make

endif

not_inst_headers_is_info_dependencies = { n=0; for p in $?; do m=0; for d in $(inst_headers_is_info_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
inst_headers_is_infodirs :
	@if test ! -d $(bin)inst_headers_is_info; then $(mkdir) -p $(bin)inst_headers_is_info; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)inst_headers_is_info
else
inst_headers_is_infodirs : ;
endif

ifdef cmt_inst_headers_is_info_has_target_tag

ifndef QUICK
$(cmt_local_inst_headers_is_info_makefile) : $(inst_headers_is_info_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_headers_is_info.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_headers_is_info_extratags) build constituent_config -out=$(cmt_local_inst_headers_is_info_makefile) inst_headers_is_info
else
$(cmt_local_inst_headers_is_info_makefile) : $(inst_headers_is_info_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_headers_is_info) ] || \
	  [ ! -f $(cmt_final_setup_inst_headers_is_info) ] || \
	  $(not_inst_headers_is_info_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_headers_is_info.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_headers_is_info_extratags) build constituent_config -out=$(cmt_local_inst_headers_is_info_makefile) inst_headers_is_info; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_inst_headers_is_info_makefile) : $(inst_headers_is_info_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_headers_is_info.make"; \
	  $(cmtexe) -f=$(bin)inst_headers_is_info.in -tag=$(tags) $(inst_headers_is_info_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_headers_is_info_makefile) inst_headers_is_info
else
$(cmt_local_inst_headers_is_info_makefile) : $(inst_headers_is_info_dependencies) $(cmt_build_library_linksstamp) $(bin)inst_headers_is_info.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_headers_is_info) ] || \
	  [ ! -f $(cmt_final_setup_inst_headers_is_info) ] || \
	  $(not_inst_headers_is_info_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_headers_is_info.make"; \
	  $(cmtexe) -f=$(bin)inst_headers_is_info.in -tag=$(tags) $(inst_headers_is_info_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_headers_is_info_makefile) inst_headers_is_info; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(inst_headers_is_info_extratags) build constituent_makefile -out=$(cmt_local_inst_headers_is_info_makefile) inst_headers_is_info

inst_headers_is_info :: $(inst_headers_is_info_dependencies) $(cmt_local_inst_headers_is_info_makefile) dirs inst_headers_is_infodirs
	$(echo) "(constituents.make) Creating inst_headers_is_info${lock_suffix} and Starting inst_headers_is_info"
	@${lock_command} inst_headers_is_info${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} inst_headers_is_info${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_inst_headers_is_info_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_headers_is_info_makefile) inst_headers_is_info; \
	  fi; \
	  retval=$$?; ${unlock_command} inst_headers_is_info${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) inst_headers_is_info done"

clean :: inst_headers_is_infoclean

inst_headers_is_infoclean :: $(inst_headers_is_infoclean_dependencies) ##$(cmt_local_inst_headers_is_info_makefile)
	$(echo) "(constituents.make) Starting inst_headers_is_infoclean"
	@-if test -f $(cmt_local_inst_headers_is_info_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_headers_is_info_makefile) inst_headers_is_infoclean; \
	fi
	$(echo) "(constituents.make) inst_headers_is_infoclean done"
#	@-$(MAKE) -f $(cmt_local_inst_headers_is_info_makefile) inst_headers_is_infoclean

##	  /bin/rm -f $(cmt_local_inst_headers_is_info_makefile) $(bin)inst_headers_is_info_dependencies.make

install :: inst_headers_is_infoinstall ;

inst_headers_is_infoinstall :: $(inst_headers_is_info_dependencies) $(cmt_local_inst_headers_is_info_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_inst_headers_is_info_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_headers_is_info_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_inst_headers_is_info_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : inst_headers_is_infouninstall

$(foreach d,$(inst_headers_is_info_dependencies),$(eval $(d)uninstall_dependencies += inst_headers_is_infouninstall))

inst_headers_is_infouninstall : $(inst_headers_is_infouninstall_dependencies) ##$(cmt_local_inst_headers_is_info_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_inst_headers_is_info_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_headers_is_info_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_inst_headers_is_info_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: inst_headers_is_infouninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ inst_headers_is_info"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ inst_headers_is_info done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_makerpms_rcd_trb_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_makerpms_rcd_trb_has_target_tag

cmt_local_tagfile_makerpms_rcd_trb = $(bin)$(rcd_trb_tag)_makerpms_rcd_trb.make
cmt_final_setup_makerpms_rcd_trb = $(bin)setup_makerpms_rcd_trb.make
cmt_local_makerpms_rcd_trb_makefile = $(bin)makerpms_rcd_trb.make

makerpms_rcd_trb_extratags = -tag_add=target_makerpms_rcd_trb

else

cmt_local_tagfile_makerpms_rcd_trb = $(bin)$(rcd_trb_tag).make
cmt_final_setup_makerpms_rcd_trb = $(bin)setup.make
cmt_local_makerpms_rcd_trb_makefile = $(bin)makerpms_rcd_trb.make

endif

not_makerpms_rcd_trb_dependencies = { n=0; for p in $?; do m=0; for d in $(makerpms_rcd_trb_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
makerpms_rcd_trbdirs :
	@if test ! -d $(bin)makerpms_rcd_trb; then $(mkdir) -p $(bin)makerpms_rcd_trb; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)makerpms_rcd_trb
else
makerpms_rcd_trbdirs : ;
endif

ifdef cmt_makerpms_rcd_trb_has_target_tag

ifndef QUICK
$(cmt_local_makerpms_rcd_trb_makefile) : $(makerpms_rcd_trb_dependencies) build_library_links
	$(echo) "(constituents.make) Building makerpms_rcd_trb.make"; \
	  $(cmtexe) -tag=$(tags) $(makerpms_rcd_trb_extratags) build constituent_config -out=$(cmt_local_makerpms_rcd_trb_makefile) makerpms_rcd_trb
else
$(cmt_local_makerpms_rcd_trb_makefile) : $(makerpms_rcd_trb_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_makerpms_rcd_trb) ] || \
	  [ ! -f $(cmt_final_setup_makerpms_rcd_trb) ] || \
	  $(not_makerpms_rcd_trb_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building makerpms_rcd_trb.make"; \
	  $(cmtexe) -tag=$(tags) $(makerpms_rcd_trb_extratags) build constituent_config -out=$(cmt_local_makerpms_rcd_trb_makefile) makerpms_rcd_trb; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_makerpms_rcd_trb_makefile) : $(makerpms_rcd_trb_dependencies) build_library_links
	$(echo) "(constituents.make) Building makerpms_rcd_trb.make"; \
	  $(cmtexe) -f=$(bin)makerpms_rcd_trb.in -tag=$(tags) $(makerpms_rcd_trb_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_makerpms_rcd_trb_makefile) makerpms_rcd_trb
else
$(cmt_local_makerpms_rcd_trb_makefile) : $(makerpms_rcd_trb_dependencies) $(cmt_build_library_linksstamp) $(bin)makerpms_rcd_trb.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_makerpms_rcd_trb) ] || \
	  [ ! -f $(cmt_final_setup_makerpms_rcd_trb) ] || \
	  $(not_makerpms_rcd_trb_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building makerpms_rcd_trb.make"; \
	  $(cmtexe) -f=$(bin)makerpms_rcd_trb.in -tag=$(tags) $(makerpms_rcd_trb_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_makerpms_rcd_trb_makefile) makerpms_rcd_trb; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(makerpms_rcd_trb_extratags) build constituent_makefile -out=$(cmt_local_makerpms_rcd_trb_makefile) makerpms_rcd_trb

makerpms_rcd_trb :: $(makerpms_rcd_trb_dependencies) $(cmt_local_makerpms_rcd_trb_makefile) dirs makerpms_rcd_trbdirs
	$(echo) "(constituents.make) Creating makerpms_rcd_trb${lock_suffix} and Starting makerpms_rcd_trb"
	@${lock_command} makerpms_rcd_trb${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} makerpms_rcd_trb${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_makerpms_rcd_trb_makefile); then \
	  $(MAKE) -f $(cmt_local_makerpms_rcd_trb_makefile) makerpms_rcd_trb; \
	  fi; \
	  retval=$$?; ${unlock_command} makerpms_rcd_trb${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) makerpms_rcd_trb done"

clean :: makerpms_rcd_trbclean

makerpms_rcd_trbclean :: $(makerpms_rcd_trbclean_dependencies) ##$(cmt_local_makerpms_rcd_trb_makefile)
	$(echo) "(constituents.make) Starting makerpms_rcd_trbclean"
	@-if test -f $(cmt_local_makerpms_rcd_trb_makefile); then \
	  $(MAKE) -f $(cmt_local_makerpms_rcd_trb_makefile) makerpms_rcd_trbclean; \
	fi
	$(echo) "(constituents.make) makerpms_rcd_trbclean done"
#	@-$(MAKE) -f $(cmt_local_makerpms_rcd_trb_makefile) makerpms_rcd_trbclean

##	  /bin/rm -f $(cmt_local_makerpms_rcd_trb_makefile) $(bin)makerpms_rcd_trb_dependencies.make

install :: makerpms_rcd_trbinstall ;

makerpms_rcd_trbinstall :: $(makerpms_rcd_trb_dependencies) $(cmt_local_makerpms_rcd_trb_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_makerpms_rcd_trb_makefile); then \
	  $(MAKE) -f $(cmt_local_makerpms_rcd_trb_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_makerpms_rcd_trb_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : makerpms_rcd_trbuninstall

$(foreach d,$(makerpms_rcd_trb_dependencies),$(eval $(d)uninstall_dependencies += makerpms_rcd_trbuninstall))

makerpms_rcd_trbuninstall : $(makerpms_rcd_trbuninstall_dependencies) ##$(cmt_local_makerpms_rcd_trb_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_makerpms_rcd_trb_makefile); then \
	  $(MAKE) -f $(cmt_local_makerpms_rcd_trb_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_makerpms_rcd_trb_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: makerpms_rcd_trbuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ makerpms_rcd_trb"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ makerpms_rcd_trb done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_inst_headers_auto_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_headers_auto_has_target_tag

cmt_local_tagfile_inst_headers_auto = $(bin)$(rcd_trb_tag)_inst_headers_auto.make
cmt_final_setup_inst_headers_auto = $(bin)setup_inst_headers_auto.make
cmt_local_inst_headers_auto_makefile = $(bin)inst_headers_auto.make

inst_headers_auto_extratags = -tag_add=target_inst_headers_auto

else

cmt_local_tagfile_inst_headers_auto = $(bin)$(rcd_trb_tag).make
cmt_final_setup_inst_headers_auto = $(bin)setup.make
cmt_local_inst_headers_auto_makefile = $(bin)inst_headers_auto.make

endif

not_inst_headers_auto_dependencies = { n=0; for p in $?; do m=0; for d in $(inst_headers_auto_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
inst_headers_autodirs :
	@if test ! -d $(bin)inst_headers_auto; then $(mkdir) -p $(bin)inst_headers_auto; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)inst_headers_auto
else
inst_headers_autodirs : ;
endif

ifdef cmt_inst_headers_auto_has_target_tag

ifndef QUICK
$(cmt_local_inst_headers_auto_makefile) : $(inst_headers_auto_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_headers_auto.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_headers_auto_extratags) build constituent_config -out=$(cmt_local_inst_headers_auto_makefile) inst_headers_auto
else
$(cmt_local_inst_headers_auto_makefile) : $(inst_headers_auto_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_headers_auto) ] || \
	  [ ! -f $(cmt_final_setup_inst_headers_auto) ] || \
	  $(not_inst_headers_auto_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_headers_auto.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_headers_auto_extratags) build constituent_config -out=$(cmt_local_inst_headers_auto_makefile) inst_headers_auto; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_inst_headers_auto_makefile) : $(inst_headers_auto_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_headers_auto.make"; \
	  $(cmtexe) -f=$(bin)inst_headers_auto.in -tag=$(tags) $(inst_headers_auto_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_headers_auto_makefile) inst_headers_auto
else
$(cmt_local_inst_headers_auto_makefile) : $(inst_headers_auto_dependencies) $(cmt_build_library_linksstamp) $(bin)inst_headers_auto.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_headers_auto) ] || \
	  [ ! -f $(cmt_final_setup_inst_headers_auto) ] || \
	  $(not_inst_headers_auto_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_headers_auto.make"; \
	  $(cmtexe) -f=$(bin)inst_headers_auto.in -tag=$(tags) $(inst_headers_auto_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_headers_auto_makefile) inst_headers_auto; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(inst_headers_auto_extratags) build constituent_makefile -out=$(cmt_local_inst_headers_auto_makefile) inst_headers_auto

inst_headers_auto :: $(inst_headers_auto_dependencies) $(cmt_local_inst_headers_auto_makefile) dirs inst_headers_autodirs
	$(echo) "(constituents.make) Creating inst_headers_auto${lock_suffix} and Starting inst_headers_auto"
	@${lock_command} inst_headers_auto${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} inst_headers_auto${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_inst_headers_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_headers_auto_makefile) inst_headers_auto; \
	  fi; \
	  retval=$$?; ${unlock_command} inst_headers_auto${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) inst_headers_auto done"

clean :: inst_headers_autoclean

inst_headers_autoclean :: $(inst_headers_autoclean_dependencies) ##$(cmt_local_inst_headers_auto_makefile)
	$(echo) "(constituents.make) Starting inst_headers_autoclean"
	@-if test -f $(cmt_local_inst_headers_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_headers_auto_makefile) inst_headers_autoclean; \
	fi
	$(echo) "(constituents.make) inst_headers_autoclean done"
#	@-$(MAKE) -f $(cmt_local_inst_headers_auto_makefile) inst_headers_autoclean

##	  /bin/rm -f $(cmt_local_inst_headers_auto_makefile) $(bin)inst_headers_auto_dependencies.make

install :: inst_headers_autoinstall ;

inst_headers_autoinstall :: $(inst_headers_auto_dependencies) $(cmt_local_inst_headers_auto_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_inst_headers_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_headers_auto_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_inst_headers_auto_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : inst_headers_autouninstall

$(foreach d,$(inst_headers_auto_dependencies),$(eval $(d)uninstall_dependencies += inst_headers_autouninstall))

inst_headers_autouninstall : $(inst_headers_autouninstall_dependencies) ##$(cmt_local_inst_headers_auto_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_inst_headers_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_headers_auto_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_inst_headers_auto_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: inst_headers_autouninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ inst_headers_auto"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ inst_headers_auto done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_inst_scripts_auto_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_scripts_auto_has_target_tag

cmt_local_tagfile_inst_scripts_auto = $(bin)$(rcd_trb_tag)_inst_scripts_auto.make
cmt_final_setup_inst_scripts_auto = $(bin)setup_inst_scripts_auto.make
cmt_local_inst_scripts_auto_makefile = $(bin)inst_scripts_auto.make

inst_scripts_auto_extratags = -tag_add=target_inst_scripts_auto

else

cmt_local_tagfile_inst_scripts_auto = $(bin)$(rcd_trb_tag).make
cmt_final_setup_inst_scripts_auto = $(bin)setup.make
cmt_local_inst_scripts_auto_makefile = $(bin)inst_scripts_auto.make

endif

not_inst_scripts_auto_dependencies = { n=0; for p in $?; do m=0; for d in $(inst_scripts_auto_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
inst_scripts_autodirs :
	@if test ! -d $(bin)inst_scripts_auto; then $(mkdir) -p $(bin)inst_scripts_auto; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)inst_scripts_auto
else
inst_scripts_autodirs : ;
endif

ifdef cmt_inst_scripts_auto_has_target_tag

ifndef QUICK
$(cmt_local_inst_scripts_auto_makefile) : $(inst_scripts_auto_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_scripts_auto.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_scripts_auto_extratags) build constituent_config -out=$(cmt_local_inst_scripts_auto_makefile) inst_scripts_auto
else
$(cmt_local_inst_scripts_auto_makefile) : $(inst_scripts_auto_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_scripts_auto) ] || \
	  [ ! -f $(cmt_final_setup_inst_scripts_auto) ] || \
	  $(not_inst_scripts_auto_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_scripts_auto.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_scripts_auto_extratags) build constituent_config -out=$(cmt_local_inst_scripts_auto_makefile) inst_scripts_auto; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_inst_scripts_auto_makefile) : $(inst_scripts_auto_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_scripts_auto.make"; \
	  $(cmtexe) -f=$(bin)inst_scripts_auto.in -tag=$(tags) $(inst_scripts_auto_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_scripts_auto_makefile) inst_scripts_auto
else
$(cmt_local_inst_scripts_auto_makefile) : $(inst_scripts_auto_dependencies) $(cmt_build_library_linksstamp) $(bin)inst_scripts_auto.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_scripts_auto) ] || \
	  [ ! -f $(cmt_final_setup_inst_scripts_auto) ] || \
	  $(not_inst_scripts_auto_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_scripts_auto.make"; \
	  $(cmtexe) -f=$(bin)inst_scripts_auto.in -tag=$(tags) $(inst_scripts_auto_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_scripts_auto_makefile) inst_scripts_auto; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(inst_scripts_auto_extratags) build constituent_makefile -out=$(cmt_local_inst_scripts_auto_makefile) inst_scripts_auto

inst_scripts_auto :: $(inst_scripts_auto_dependencies) $(cmt_local_inst_scripts_auto_makefile) dirs inst_scripts_autodirs
	$(echo) "(constituents.make) Creating inst_scripts_auto${lock_suffix} and Starting inst_scripts_auto"
	@${lock_command} inst_scripts_auto${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} inst_scripts_auto${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_inst_scripts_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_scripts_auto_makefile) inst_scripts_auto; \
	  fi; \
	  retval=$$?; ${unlock_command} inst_scripts_auto${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) inst_scripts_auto done"

clean :: inst_scripts_autoclean

inst_scripts_autoclean :: $(inst_scripts_autoclean_dependencies) ##$(cmt_local_inst_scripts_auto_makefile)
	$(echo) "(constituents.make) Starting inst_scripts_autoclean"
	@-if test -f $(cmt_local_inst_scripts_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_scripts_auto_makefile) inst_scripts_autoclean; \
	fi
	$(echo) "(constituents.make) inst_scripts_autoclean done"
#	@-$(MAKE) -f $(cmt_local_inst_scripts_auto_makefile) inst_scripts_autoclean

##	  /bin/rm -f $(cmt_local_inst_scripts_auto_makefile) $(bin)inst_scripts_auto_dependencies.make

install :: inst_scripts_autoinstall ;

inst_scripts_autoinstall :: $(inst_scripts_auto_dependencies) $(cmt_local_inst_scripts_auto_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_inst_scripts_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_scripts_auto_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_inst_scripts_auto_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : inst_scripts_autouninstall

$(foreach d,$(inst_scripts_auto_dependencies),$(eval $(d)uninstall_dependencies += inst_scripts_autouninstall))

inst_scripts_autouninstall : $(inst_scripts_autouninstall_dependencies) ##$(cmt_local_inst_scripts_auto_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_inst_scripts_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_scripts_auto_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_inst_scripts_auto_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: inst_scripts_autouninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ inst_scripts_auto"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ inst_scripts_auto done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_inst_headers_bin_auto_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_headers_bin_auto_has_target_tag

cmt_local_tagfile_inst_headers_bin_auto = $(bin)$(rcd_trb_tag)_inst_headers_bin_auto.make
cmt_final_setup_inst_headers_bin_auto = $(bin)setup_inst_headers_bin_auto.make
cmt_local_inst_headers_bin_auto_makefile = $(bin)inst_headers_bin_auto.make

inst_headers_bin_auto_extratags = -tag_add=target_inst_headers_bin_auto

else

cmt_local_tagfile_inst_headers_bin_auto = $(bin)$(rcd_trb_tag).make
cmt_final_setup_inst_headers_bin_auto = $(bin)setup.make
cmt_local_inst_headers_bin_auto_makefile = $(bin)inst_headers_bin_auto.make

endif

not_inst_headers_bin_auto_dependencies = { n=0; for p in $?; do m=0; for d in $(inst_headers_bin_auto_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
inst_headers_bin_autodirs :
	@if test ! -d $(bin)inst_headers_bin_auto; then $(mkdir) -p $(bin)inst_headers_bin_auto; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)inst_headers_bin_auto
else
inst_headers_bin_autodirs : ;
endif

ifdef cmt_inst_headers_bin_auto_has_target_tag

ifndef QUICK
$(cmt_local_inst_headers_bin_auto_makefile) : $(inst_headers_bin_auto_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_headers_bin_auto.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_headers_bin_auto_extratags) build constituent_config -out=$(cmt_local_inst_headers_bin_auto_makefile) inst_headers_bin_auto
else
$(cmt_local_inst_headers_bin_auto_makefile) : $(inst_headers_bin_auto_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_headers_bin_auto) ] || \
	  [ ! -f $(cmt_final_setup_inst_headers_bin_auto) ] || \
	  $(not_inst_headers_bin_auto_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_headers_bin_auto.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_headers_bin_auto_extratags) build constituent_config -out=$(cmt_local_inst_headers_bin_auto_makefile) inst_headers_bin_auto; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_inst_headers_bin_auto_makefile) : $(inst_headers_bin_auto_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_headers_bin_auto.make"; \
	  $(cmtexe) -f=$(bin)inst_headers_bin_auto.in -tag=$(tags) $(inst_headers_bin_auto_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_headers_bin_auto_makefile) inst_headers_bin_auto
else
$(cmt_local_inst_headers_bin_auto_makefile) : $(inst_headers_bin_auto_dependencies) $(cmt_build_library_linksstamp) $(bin)inst_headers_bin_auto.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_headers_bin_auto) ] || \
	  [ ! -f $(cmt_final_setup_inst_headers_bin_auto) ] || \
	  $(not_inst_headers_bin_auto_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_headers_bin_auto.make"; \
	  $(cmtexe) -f=$(bin)inst_headers_bin_auto.in -tag=$(tags) $(inst_headers_bin_auto_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_headers_bin_auto_makefile) inst_headers_bin_auto; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(inst_headers_bin_auto_extratags) build constituent_makefile -out=$(cmt_local_inst_headers_bin_auto_makefile) inst_headers_bin_auto

inst_headers_bin_auto :: $(inst_headers_bin_auto_dependencies) $(cmt_local_inst_headers_bin_auto_makefile) dirs inst_headers_bin_autodirs
	$(echo) "(constituents.make) Creating inst_headers_bin_auto${lock_suffix} and Starting inst_headers_bin_auto"
	@${lock_command} inst_headers_bin_auto${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} inst_headers_bin_auto${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_inst_headers_bin_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_headers_bin_auto_makefile) inst_headers_bin_auto; \
	  fi; \
	  retval=$$?; ${unlock_command} inst_headers_bin_auto${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) inst_headers_bin_auto done"

clean :: inst_headers_bin_autoclean

inst_headers_bin_autoclean :: $(inst_headers_bin_autoclean_dependencies) ##$(cmt_local_inst_headers_bin_auto_makefile)
	$(echo) "(constituents.make) Starting inst_headers_bin_autoclean"
	@-if test -f $(cmt_local_inst_headers_bin_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_headers_bin_auto_makefile) inst_headers_bin_autoclean; \
	fi
	$(echo) "(constituents.make) inst_headers_bin_autoclean done"
#	@-$(MAKE) -f $(cmt_local_inst_headers_bin_auto_makefile) inst_headers_bin_autoclean

##	  /bin/rm -f $(cmt_local_inst_headers_bin_auto_makefile) $(bin)inst_headers_bin_auto_dependencies.make

install :: inst_headers_bin_autoinstall ;

inst_headers_bin_autoinstall :: $(inst_headers_bin_auto_dependencies) $(cmt_local_inst_headers_bin_auto_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_inst_headers_bin_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_headers_bin_auto_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_inst_headers_bin_auto_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : inst_headers_bin_autouninstall

$(foreach d,$(inst_headers_bin_auto_dependencies),$(eval $(d)uninstall_dependencies += inst_headers_bin_autouninstall))

inst_headers_bin_autouninstall : $(inst_headers_bin_autouninstall_dependencies) ##$(cmt_local_inst_headers_bin_auto_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_inst_headers_bin_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_headers_bin_auto_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_inst_headers_bin_auto_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: inst_headers_bin_autouninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ inst_headers_bin_auto"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ inst_headers_bin_auto done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_inst_idl_auto_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_idl_auto_has_target_tag

cmt_local_tagfile_inst_idl_auto = $(bin)$(rcd_trb_tag)_inst_idl_auto.make
cmt_final_setup_inst_idl_auto = $(bin)setup_inst_idl_auto.make
cmt_local_inst_idl_auto_makefile = $(bin)inst_idl_auto.make

inst_idl_auto_extratags = -tag_add=target_inst_idl_auto

else

cmt_local_tagfile_inst_idl_auto = $(bin)$(rcd_trb_tag).make
cmt_final_setup_inst_idl_auto = $(bin)setup.make
cmt_local_inst_idl_auto_makefile = $(bin)inst_idl_auto.make

endif

not_inst_idl_auto_dependencies = { n=0; for p in $?; do m=0; for d in $(inst_idl_auto_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
inst_idl_autodirs :
	@if test ! -d $(bin)inst_idl_auto; then $(mkdir) -p $(bin)inst_idl_auto; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)inst_idl_auto
else
inst_idl_autodirs : ;
endif

ifdef cmt_inst_idl_auto_has_target_tag

ifndef QUICK
$(cmt_local_inst_idl_auto_makefile) : $(inst_idl_auto_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_idl_auto.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_idl_auto_extratags) build constituent_config -out=$(cmt_local_inst_idl_auto_makefile) inst_idl_auto
else
$(cmt_local_inst_idl_auto_makefile) : $(inst_idl_auto_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_idl_auto) ] || \
	  [ ! -f $(cmt_final_setup_inst_idl_auto) ] || \
	  $(not_inst_idl_auto_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_idl_auto.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_idl_auto_extratags) build constituent_config -out=$(cmt_local_inst_idl_auto_makefile) inst_idl_auto; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_inst_idl_auto_makefile) : $(inst_idl_auto_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_idl_auto.make"; \
	  $(cmtexe) -f=$(bin)inst_idl_auto.in -tag=$(tags) $(inst_idl_auto_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_idl_auto_makefile) inst_idl_auto
else
$(cmt_local_inst_idl_auto_makefile) : $(inst_idl_auto_dependencies) $(cmt_build_library_linksstamp) $(bin)inst_idl_auto.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_idl_auto) ] || \
	  [ ! -f $(cmt_final_setup_inst_idl_auto) ] || \
	  $(not_inst_idl_auto_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_idl_auto.make"; \
	  $(cmtexe) -f=$(bin)inst_idl_auto.in -tag=$(tags) $(inst_idl_auto_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_idl_auto_makefile) inst_idl_auto; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(inst_idl_auto_extratags) build constituent_makefile -out=$(cmt_local_inst_idl_auto_makefile) inst_idl_auto

inst_idl_auto :: $(inst_idl_auto_dependencies) $(cmt_local_inst_idl_auto_makefile) dirs inst_idl_autodirs
	$(echo) "(constituents.make) Creating inst_idl_auto${lock_suffix} and Starting inst_idl_auto"
	@${lock_command} inst_idl_auto${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} inst_idl_auto${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_inst_idl_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_idl_auto_makefile) inst_idl_auto; \
	  fi; \
	  retval=$$?; ${unlock_command} inst_idl_auto${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) inst_idl_auto done"

clean :: inst_idl_autoclean

inst_idl_autoclean :: $(inst_idl_autoclean_dependencies) ##$(cmt_local_inst_idl_auto_makefile)
	$(echo) "(constituents.make) Starting inst_idl_autoclean"
	@-if test -f $(cmt_local_inst_idl_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_idl_auto_makefile) inst_idl_autoclean; \
	fi
	$(echo) "(constituents.make) inst_idl_autoclean done"
#	@-$(MAKE) -f $(cmt_local_inst_idl_auto_makefile) inst_idl_autoclean

##	  /bin/rm -f $(cmt_local_inst_idl_auto_makefile) $(bin)inst_idl_auto_dependencies.make

install :: inst_idl_autoinstall ;

inst_idl_autoinstall :: $(inst_idl_auto_dependencies) $(cmt_local_inst_idl_auto_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_inst_idl_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_idl_auto_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_inst_idl_auto_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : inst_idl_autouninstall

$(foreach d,$(inst_idl_auto_dependencies),$(eval $(d)uninstall_dependencies += inst_idl_autouninstall))

inst_idl_autouninstall : $(inst_idl_autouninstall_dependencies) ##$(cmt_local_inst_idl_auto_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_inst_idl_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_idl_auto_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_inst_idl_auto_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: inst_idl_autouninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ inst_idl_auto"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ inst_idl_auto done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_inst_docs_auto_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_inst_docs_auto_has_target_tag

cmt_local_tagfile_inst_docs_auto = $(bin)$(rcd_trb_tag)_inst_docs_auto.make
cmt_final_setup_inst_docs_auto = $(bin)setup_inst_docs_auto.make
cmt_local_inst_docs_auto_makefile = $(bin)inst_docs_auto.make

inst_docs_auto_extratags = -tag_add=target_inst_docs_auto

else

cmt_local_tagfile_inst_docs_auto = $(bin)$(rcd_trb_tag).make
cmt_final_setup_inst_docs_auto = $(bin)setup.make
cmt_local_inst_docs_auto_makefile = $(bin)inst_docs_auto.make

endif

not_inst_docs_auto_dependencies = { n=0; for p in $?; do m=0; for d in $(inst_docs_auto_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
inst_docs_autodirs :
	@if test ! -d $(bin)inst_docs_auto; then $(mkdir) -p $(bin)inst_docs_auto; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)inst_docs_auto
else
inst_docs_autodirs : ;
endif

ifdef cmt_inst_docs_auto_has_target_tag

ifndef QUICK
$(cmt_local_inst_docs_auto_makefile) : $(inst_docs_auto_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_docs_auto.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_docs_auto_extratags) build constituent_config -out=$(cmt_local_inst_docs_auto_makefile) inst_docs_auto
else
$(cmt_local_inst_docs_auto_makefile) : $(inst_docs_auto_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_docs_auto) ] || \
	  [ ! -f $(cmt_final_setup_inst_docs_auto) ] || \
	  $(not_inst_docs_auto_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_docs_auto.make"; \
	  $(cmtexe) -tag=$(tags) $(inst_docs_auto_extratags) build constituent_config -out=$(cmt_local_inst_docs_auto_makefile) inst_docs_auto; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_inst_docs_auto_makefile) : $(inst_docs_auto_dependencies) build_library_links
	$(echo) "(constituents.make) Building inst_docs_auto.make"; \
	  $(cmtexe) -f=$(bin)inst_docs_auto.in -tag=$(tags) $(inst_docs_auto_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_docs_auto_makefile) inst_docs_auto
else
$(cmt_local_inst_docs_auto_makefile) : $(inst_docs_auto_dependencies) $(cmt_build_library_linksstamp) $(bin)inst_docs_auto.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_inst_docs_auto) ] || \
	  [ ! -f $(cmt_final_setup_inst_docs_auto) ] || \
	  $(not_inst_docs_auto_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building inst_docs_auto.make"; \
	  $(cmtexe) -f=$(bin)inst_docs_auto.in -tag=$(tags) $(inst_docs_auto_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_inst_docs_auto_makefile) inst_docs_auto; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(inst_docs_auto_extratags) build constituent_makefile -out=$(cmt_local_inst_docs_auto_makefile) inst_docs_auto

inst_docs_auto :: $(inst_docs_auto_dependencies) $(cmt_local_inst_docs_auto_makefile) dirs inst_docs_autodirs
	$(echo) "(constituents.make) Creating inst_docs_auto${lock_suffix} and Starting inst_docs_auto"
	@${lock_command} inst_docs_auto${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} inst_docs_auto${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_inst_docs_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_docs_auto_makefile) inst_docs_auto; \
	  fi; \
	  retval=$$?; ${unlock_command} inst_docs_auto${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) inst_docs_auto done"

clean :: inst_docs_autoclean

inst_docs_autoclean :: $(inst_docs_autoclean_dependencies) ##$(cmt_local_inst_docs_auto_makefile)
	$(echo) "(constituents.make) Starting inst_docs_autoclean"
	@-if test -f $(cmt_local_inst_docs_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_docs_auto_makefile) inst_docs_autoclean; \
	fi
	$(echo) "(constituents.make) inst_docs_autoclean done"
#	@-$(MAKE) -f $(cmt_local_inst_docs_auto_makefile) inst_docs_autoclean

##	  /bin/rm -f $(cmt_local_inst_docs_auto_makefile) $(bin)inst_docs_auto_dependencies.make

install :: inst_docs_autoinstall ;

inst_docs_autoinstall :: $(inst_docs_auto_dependencies) $(cmt_local_inst_docs_auto_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_inst_docs_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_docs_auto_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_inst_docs_auto_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : inst_docs_autouninstall

$(foreach d,$(inst_docs_auto_dependencies),$(eval $(d)uninstall_dependencies += inst_docs_autouninstall))

inst_docs_autouninstall : $(inst_docs_autouninstall_dependencies) ##$(cmt_local_inst_docs_auto_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_inst_docs_auto_makefile); then \
	  $(MAKE) -f $(cmt_local_inst_docs_auto_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_inst_docs_auto_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: inst_docs_autouninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ inst_docs_auto"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ inst_docs_auto done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_make_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_make_has_target_tag

cmt_local_tagfile_make = $(bin)$(rcd_trb_tag)_make.make
cmt_final_setup_make = $(bin)setup_make.make
cmt_local_make_makefile = $(bin)make.make

make_extratags = -tag_add=target_make

else

cmt_local_tagfile_make = $(bin)$(rcd_trb_tag).make
cmt_final_setup_make = $(bin)setup.make
cmt_local_make_makefile = $(bin)make.make

endif

not_make_dependencies = { n=0; for p in $?; do m=0; for d in $(make_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
makedirs :
	@if test ! -d $(bin)make; then $(mkdir) -p $(bin)make; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)make
else
makedirs : ;
endif

ifdef cmt_make_has_target_tag

ifndef QUICK
$(cmt_local_make_makefile) : $(make_dependencies) build_library_links
	$(echo) "(constituents.make) Building make.make"; \
	  $(cmtexe) -tag=$(tags) $(make_extratags) build constituent_config -out=$(cmt_local_make_makefile) make
else
$(cmt_local_make_makefile) : $(make_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_make) ] || \
	  [ ! -f $(cmt_final_setup_make) ] || \
	  $(not_make_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building make.make"; \
	  $(cmtexe) -tag=$(tags) $(make_extratags) build constituent_config -out=$(cmt_local_make_makefile) make; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_make_makefile) : $(make_dependencies) build_library_links
	$(echo) "(constituents.make) Building make.make"; \
	  $(cmtexe) -f=$(bin)make.in -tag=$(tags) $(make_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_make_makefile) make
else
$(cmt_local_make_makefile) : $(make_dependencies) $(cmt_build_library_linksstamp) $(bin)make.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_make) ] || \
	  [ ! -f $(cmt_final_setup_make) ] || \
	  $(not_make_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building make.make"; \
	  $(cmtexe) -f=$(bin)make.in -tag=$(tags) $(make_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_make_makefile) make; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(make_extratags) build constituent_makefile -out=$(cmt_local_make_makefile) make

make :: $(make_dependencies) $(cmt_local_make_makefile) dirs makedirs
	$(echo) "(constituents.make) Creating make${lock_suffix} and Starting make"
	@${lock_command} make${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} make${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_make_makefile); then \
	  $(MAKE) -f $(cmt_local_make_makefile) make; \
	  fi; \
	  retval=$$?; ${unlock_command} make${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) make done"

clean :: makeclean

makeclean :: $(makeclean_dependencies) ##$(cmt_local_make_makefile)
	$(echo) "(constituents.make) Starting makeclean"
	@-if test -f $(cmt_local_make_makefile); then \
	  $(MAKE) -f $(cmt_local_make_makefile) makeclean; \
	fi
	$(echo) "(constituents.make) makeclean done"
#	@-$(MAKE) -f $(cmt_local_make_makefile) makeclean

##	  /bin/rm -f $(cmt_local_make_makefile) $(bin)make_dependencies.make

install :: makeinstall ;

makeinstall :: $(make_dependencies) $(cmt_local_make_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_make_makefile); then \
	  $(MAKE) -f $(cmt_local_make_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_make_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : makeuninstall

$(foreach d,$(make_dependencies),$(eval $(d)uninstall_dependencies += makeuninstall))

makeuninstall : $(makeuninstall_dependencies) ##$(cmt_local_make_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_make_makefile); then \
	  $(MAKE) -f $(cmt_local_make_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_make_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: makeuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ make"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ make done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_install_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_install_has_target_tag

cmt_local_tagfile_install = $(bin)$(rcd_trb_tag)_install.make
cmt_final_setup_install = $(bin)setup_install.make
cmt_local_install_makefile = $(bin)install.make

install_extratags = -tag_add=target_install

else

cmt_local_tagfile_install = $(bin)$(rcd_trb_tag).make
cmt_final_setup_install = $(bin)setup.make
cmt_local_install_makefile = $(bin)install.make

endif

not_install_dependencies = { n=0; for p in $?; do m=0; for d in $(install_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
installdirs :
	@if test ! -d $(bin)install; then $(mkdir) -p $(bin)install; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)install
else
installdirs : ;
endif

ifdef cmt_install_has_target_tag

ifndef QUICK
$(cmt_local_install_makefile) : $(install_dependencies) build_library_links
	$(echo) "(constituents.make) Building install.make"; \
	  $(cmtexe) -tag=$(tags) $(install_extratags) build constituent_config -out=$(cmt_local_install_makefile) install
else
$(cmt_local_install_makefile) : $(install_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_install) ] || \
	  [ ! -f $(cmt_final_setup_install) ] || \
	  $(not_install_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building install.make"; \
	  $(cmtexe) -tag=$(tags) $(install_extratags) build constituent_config -out=$(cmt_local_install_makefile) install; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_install_makefile) : $(install_dependencies) build_library_links
	$(echo) "(constituents.make) Building install.make"; \
	  $(cmtexe) -f=$(bin)install.in -tag=$(tags) $(install_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_install_makefile) install
else
$(cmt_local_install_makefile) : $(install_dependencies) $(cmt_build_library_linksstamp) $(bin)install.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_install) ] || \
	  [ ! -f $(cmt_final_setup_install) ] || \
	  $(not_install_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building install.make"; \
	  $(cmtexe) -f=$(bin)install.in -tag=$(tags) $(install_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_install_makefile) install; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(install_extratags) build constituent_makefile -out=$(cmt_local_install_makefile) install

install :: $(install_dependencies) $(cmt_local_install_makefile) dirs installdirs
	$(echo) "(constituents.make) Creating install${lock_suffix} and Starting install"
	@${lock_command} install${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} install${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_install_makefile); then \
	  $(MAKE) -f $(cmt_local_install_makefile) install; \
	  fi; \
	  retval=$$?; ${unlock_command} install${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) install done"

clean :: installclean

installclean :: $(installclean_dependencies) ##$(cmt_local_install_makefile)
	$(echo) "(constituents.make) Starting installclean"
	@-if test -f $(cmt_local_install_makefile); then \
	  $(MAKE) -f $(cmt_local_install_makefile) installclean; \
	fi
	$(echo) "(constituents.make) installclean done"
#	@-$(MAKE) -f $(cmt_local_install_makefile) installclean

##	  /bin/rm -f $(cmt_local_install_makefile) $(bin)install_dependencies.make

install :: installinstall ;

installinstall :: $(install_dependencies) $(cmt_local_install_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_install_makefile); then \
	  $(MAKE) -f $(cmt_local_install_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_install_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : installuninstall

$(foreach d,$(install_dependencies),$(eval $(d)uninstall_dependencies += installuninstall))

installuninstall : $(installuninstall_dependencies) ##$(cmt_local_install_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_install_makefile); then \
	  $(MAKE) -f $(cmt_local_install_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_install_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: installuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ install"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ install done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_BOOST_external_slinks_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_BOOST_external_slinks_has_target_tag

cmt_local_tagfile_BOOST_external_slinks = $(bin)$(rcd_trb_tag)_BOOST_external_slinks.make
cmt_final_setup_BOOST_external_slinks = $(bin)setup_BOOST_external_slinks.make
cmt_local_BOOST_external_slinks_makefile = $(bin)BOOST_external_slinks.make

BOOST_external_slinks_extratags = -tag_add=target_BOOST_external_slinks

else

cmt_local_tagfile_BOOST_external_slinks = $(bin)$(rcd_trb_tag).make
cmt_final_setup_BOOST_external_slinks = $(bin)setup.make
cmt_local_BOOST_external_slinks_makefile = $(bin)BOOST_external_slinks.make

endif

not_BOOST_external_slinks_dependencies = { n=0; for p in $?; do m=0; for d in $(BOOST_external_slinks_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
BOOST_external_slinksdirs :
	@if test ! -d $(bin)BOOST_external_slinks; then $(mkdir) -p $(bin)BOOST_external_slinks; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)BOOST_external_slinks
else
BOOST_external_slinksdirs : ;
endif

ifdef cmt_BOOST_external_slinks_has_target_tag

ifndef QUICK
$(cmt_local_BOOST_external_slinks_makefile) : $(BOOST_external_slinks_dependencies) build_library_links
	$(echo) "(constituents.make) Building BOOST_external_slinks.make"; \
	  $(cmtexe) -tag=$(tags) $(BOOST_external_slinks_extratags) build constituent_config -out=$(cmt_local_BOOST_external_slinks_makefile) BOOST_external_slinks
else
$(cmt_local_BOOST_external_slinks_makefile) : $(BOOST_external_slinks_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_BOOST_external_slinks) ] || \
	  [ ! -f $(cmt_final_setup_BOOST_external_slinks) ] || \
	  $(not_BOOST_external_slinks_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building BOOST_external_slinks.make"; \
	  $(cmtexe) -tag=$(tags) $(BOOST_external_slinks_extratags) build constituent_config -out=$(cmt_local_BOOST_external_slinks_makefile) BOOST_external_slinks; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_BOOST_external_slinks_makefile) : $(BOOST_external_slinks_dependencies) build_library_links
	$(echo) "(constituents.make) Building BOOST_external_slinks.make"; \
	  $(cmtexe) -f=$(bin)BOOST_external_slinks.in -tag=$(tags) $(BOOST_external_slinks_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_BOOST_external_slinks_makefile) BOOST_external_slinks
else
$(cmt_local_BOOST_external_slinks_makefile) : $(BOOST_external_slinks_dependencies) $(cmt_build_library_linksstamp) $(bin)BOOST_external_slinks.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_BOOST_external_slinks) ] || \
	  [ ! -f $(cmt_final_setup_BOOST_external_slinks) ] || \
	  $(not_BOOST_external_slinks_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building BOOST_external_slinks.make"; \
	  $(cmtexe) -f=$(bin)BOOST_external_slinks.in -tag=$(tags) $(BOOST_external_slinks_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_BOOST_external_slinks_makefile) BOOST_external_slinks; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(BOOST_external_slinks_extratags) build constituent_makefile -out=$(cmt_local_BOOST_external_slinks_makefile) BOOST_external_slinks

BOOST_external_slinks :: $(BOOST_external_slinks_dependencies) $(cmt_local_BOOST_external_slinks_makefile) dirs BOOST_external_slinksdirs
	$(echo) "(constituents.make) Creating BOOST_external_slinks${lock_suffix} and Starting BOOST_external_slinks"
	@${lock_command} BOOST_external_slinks${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} BOOST_external_slinks${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_BOOST_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_BOOST_external_slinks_makefile) BOOST_external_slinks; \
	  fi; \
	  retval=$$?; ${unlock_command} BOOST_external_slinks${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) BOOST_external_slinks done"

clean :: BOOST_external_slinksclean

BOOST_external_slinksclean :: $(BOOST_external_slinksclean_dependencies) ##$(cmt_local_BOOST_external_slinks_makefile)
	$(echo) "(constituents.make) Starting BOOST_external_slinksclean"
	@-if test -f $(cmt_local_BOOST_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_BOOST_external_slinks_makefile) BOOST_external_slinksclean; \
	fi
	$(echo) "(constituents.make) BOOST_external_slinksclean done"
#	@-$(MAKE) -f $(cmt_local_BOOST_external_slinks_makefile) BOOST_external_slinksclean

##	  /bin/rm -f $(cmt_local_BOOST_external_slinks_makefile) $(bin)BOOST_external_slinks_dependencies.make

install :: BOOST_external_slinksinstall ;

BOOST_external_slinksinstall :: $(BOOST_external_slinks_dependencies) $(cmt_local_BOOST_external_slinks_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_BOOST_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_BOOST_external_slinks_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_BOOST_external_slinks_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : BOOST_external_slinksuninstall

$(foreach d,$(BOOST_external_slinks_dependencies),$(eval $(d)uninstall_dependencies += BOOST_external_slinksuninstall))

BOOST_external_slinksuninstall : $(BOOST_external_slinksuninstall_dependencies) ##$(cmt_local_BOOST_external_slinks_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_BOOST_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_BOOST_external_slinks_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_BOOST_external_slinks_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: BOOST_external_slinksuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ BOOST_external_slinks"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ BOOST_external_slinks done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_PYTHON_external_slinks_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_PYTHON_external_slinks_has_target_tag

cmt_local_tagfile_PYTHON_external_slinks = $(bin)$(rcd_trb_tag)_PYTHON_external_slinks.make
cmt_final_setup_PYTHON_external_slinks = $(bin)setup_PYTHON_external_slinks.make
cmt_local_PYTHON_external_slinks_makefile = $(bin)PYTHON_external_slinks.make

PYTHON_external_slinks_extratags = -tag_add=target_PYTHON_external_slinks

else

cmt_local_tagfile_PYTHON_external_slinks = $(bin)$(rcd_trb_tag).make
cmt_final_setup_PYTHON_external_slinks = $(bin)setup.make
cmt_local_PYTHON_external_slinks_makefile = $(bin)PYTHON_external_slinks.make

endif

not_PYTHON_external_slinks_dependencies = { n=0; for p in $?; do m=0; for d in $(PYTHON_external_slinks_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
PYTHON_external_slinksdirs :
	@if test ! -d $(bin)PYTHON_external_slinks; then $(mkdir) -p $(bin)PYTHON_external_slinks; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)PYTHON_external_slinks
else
PYTHON_external_slinksdirs : ;
endif

ifdef cmt_PYTHON_external_slinks_has_target_tag

ifndef QUICK
$(cmt_local_PYTHON_external_slinks_makefile) : $(PYTHON_external_slinks_dependencies) build_library_links
	$(echo) "(constituents.make) Building PYTHON_external_slinks.make"; \
	  $(cmtexe) -tag=$(tags) $(PYTHON_external_slinks_extratags) build constituent_config -out=$(cmt_local_PYTHON_external_slinks_makefile) PYTHON_external_slinks
else
$(cmt_local_PYTHON_external_slinks_makefile) : $(PYTHON_external_slinks_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_PYTHON_external_slinks) ] || \
	  [ ! -f $(cmt_final_setup_PYTHON_external_slinks) ] || \
	  $(not_PYTHON_external_slinks_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building PYTHON_external_slinks.make"; \
	  $(cmtexe) -tag=$(tags) $(PYTHON_external_slinks_extratags) build constituent_config -out=$(cmt_local_PYTHON_external_slinks_makefile) PYTHON_external_slinks; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_PYTHON_external_slinks_makefile) : $(PYTHON_external_slinks_dependencies) build_library_links
	$(echo) "(constituents.make) Building PYTHON_external_slinks.make"; \
	  $(cmtexe) -f=$(bin)PYTHON_external_slinks.in -tag=$(tags) $(PYTHON_external_slinks_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_PYTHON_external_slinks_makefile) PYTHON_external_slinks
else
$(cmt_local_PYTHON_external_slinks_makefile) : $(PYTHON_external_slinks_dependencies) $(cmt_build_library_linksstamp) $(bin)PYTHON_external_slinks.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_PYTHON_external_slinks) ] || \
	  [ ! -f $(cmt_final_setup_PYTHON_external_slinks) ] || \
	  $(not_PYTHON_external_slinks_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building PYTHON_external_slinks.make"; \
	  $(cmtexe) -f=$(bin)PYTHON_external_slinks.in -tag=$(tags) $(PYTHON_external_slinks_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_PYTHON_external_slinks_makefile) PYTHON_external_slinks; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(PYTHON_external_slinks_extratags) build constituent_makefile -out=$(cmt_local_PYTHON_external_slinks_makefile) PYTHON_external_slinks

PYTHON_external_slinks :: $(PYTHON_external_slinks_dependencies) $(cmt_local_PYTHON_external_slinks_makefile) dirs PYTHON_external_slinksdirs
	$(echo) "(constituents.make) Creating PYTHON_external_slinks${lock_suffix} and Starting PYTHON_external_slinks"
	@${lock_command} PYTHON_external_slinks${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} PYTHON_external_slinks${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_PYTHON_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_PYTHON_external_slinks_makefile) PYTHON_external_slinks; \
	  fi; \
	  retval=$$?; ${unlock_command} PYTHON_external_slinks${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) PYTHON_external_slinks done"

clean :: PYTHON_external_slinksclean

PYTHON_external_slinksclean :: $(PYTHON_external_slinksclean_dependencies) ##$(cmt_local_PYTHON_external_slinks_makefile)
	$(echo) "(constituents.make) Starting PYTHON_external_slinksclean"
	@-if test -f $(cmt_local_PYTHON_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_PYTHON_external_slinks_makefile) PYTHON_external_slinksclean; \
	fi
	$(echo) "(constituents.make) PYTHON_external_slinksclean done"
#	@-$(MAKE) -f $(cmt_local_PYTHON_external_slinks_makefile) PYTHON_external_slinksclean

##	  /bin/rm -f $(cmt_local_PYTHON_external_slinks_makefile) $(bin)PYTHON_external_slinks_dependencies.make

install :: PYTHON_external_slinksinstall ;

PYTHON_external_slinksinstall :: $(PYTHON_external_slinks_dependencies) $(cmt_local_PYTHON_external_slinks_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_PYTHON_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_PYTHON_external_slinks_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_PYTHON_external_slinks_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : PYTHON_external_slinksuninstall

$(foreach d,$(PYTHON_external_slinks_dependencies),$(eval $(d)uninstall_dependencies += PYTHON_external_slinksuninstall))

PYTHON_external_slinksuninstall : $(PYTHON_external_slinksuninstall_dependencies) ##$(cmt_local_PYTHON_external_slinks_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_PYTHON_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_PYTHON_external_slinks_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_PYTHON_external_slinks_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: PYTHON_external_slinksuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ PYTHON_external_slinks"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ PYTHON_external_slinks done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_XERCESC_external_slinks_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_XERCESC_external_slinks_has_target_tag

cmt_local_tagfile_XERCESC_external_slinks = $(bin)$(rcd_trb_tag)_XERCESC_external_slinks.make
cmt_final_setup_XERCESC_external_slinks = $(bin)setup_XERCESC_external_slinks.make
cmt_local_XERCESC_external_slinks_makefile = $(bin)XERCESC_external_slinks.make

XERCESC_external_slinks_extratags = -tag_add=target_XERCESC_external_slinks

else

cmt_local_tagfile_XERCESC_external_slinks = $(bin)$(rcd_trb_tag).make
cmt_final_setup_XERCESC_external_slinks = $(bin)setup.make
cmt_local_XERCESC_external_slinks_makefile = $(bin)XERCESC_external_slinks.make

endif

not_XERCESC_external_slinks_dependencies = { n=0; for p in $?; do m=0; for d in $(XERCESC_external_slinks_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
XERCESC_external_slinksdirs :
	@if test ! -d $(bin)XERCESC_external_slinks; then $(mkdir) -p $(bin)XERCESC_external_slinks; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)XERCESC_external_slinks
else
XERCESC_external_slinksdirs : ;
endif

ifdef cmt_XERCESC_external_slinks_has_target_tag

ifndef QUICK
$(cmt_local_XERCESC_external_slinks_makefile) : $(XERCESC_external_slinks_dependencies) build_library_links
	$(echo) "(constituents.make) Building XERCESC_external_slinks.make"; \
	  $(cmtexe) -tag=$(tags) $(XERCESC_external_slinks_extratags) build constituent_config -out=$(cmt_local_XERCESC_external_slinks_makefile) XERCESC_external_slinks
else
$(cmt_local_XERCESC_external_slinks_makefile) : $(XERCESC_external_slinks_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_XERCESC_external_slinks) ] || \
	  [ ! -f $(cmt_final_setup_XERCESC_external_slinks) ] || \
	  $(not_XERCESC_external_slinks_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building XERCESC_external_slinks.make"; \
	  $(cmtexe) -tag=$(tags) $(XERCESC_external_slinks_extratags) build constituent_config -out=$(cmt_local_XERCESC_external_slinks_makefile) XERCESC_external_slinks; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_XERCESC_external_slinks_makefile) : $(XERCESC_external_slinks_dependencies) build_library_links
	$(echo) "(constituents.make) Building XERCESC_external_slinks.make"; \
	  $(cmtexe) -f=$(bin)XERCESC_external_slinks.in -tag=$(tags) $(XERCESC_external_slinks_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_XERCESC_external_slinks_makefile) XERCESC_external_slinks
else
$(cmt_local_XERCESC_external_slinks_makefile) : $(XERCESC_external_slinks_dependencies) $(cmt_build_library_linksstamp) $(bin)XERCESC_external_slinks.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_XERCESC_external_slinks) ] || \
	  [ ! -f $(cmt_final_setup_XERCESC_external_slinks) ] || \
	  $(not_XERCESC_external_slinks_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building XERCESC_external_slinks.make"; \
	  $(cmtexe) -f=$(bin)XERCESC_external_slinks.in -tag=$(tags) $(XERCESC_external_slinks_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_XERCESC_external_slinks_makefile) XERCESC_external_slinks; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(XERCESC_external_slinks_extratags) build constituent_makefile -out=$(cmt_local_XERCESC_external_slinks_makefile) XERCESC_external_slinks

XERCESC_external_slinks :: $(XERCESC_external_slinks_dependencies) $(cmt_local_XERCESC_external_slinks_makefile) dirs XERCESC_external_slinksdirs
	$(echo) "(constituents.make) Creating XERCESC_external_slinks${lock_suffix} and Starting XERCESC_external_slinks"
	@${lock_command} XERCESC_external_slinks${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} XERCESC_external_slinks${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_XERCESC_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_XERCESC_external_slinks_makefile) XERCESC_external_slinks; \
	  fi; \
	  retval=$$?; ${unlock_command} XERCESC_external_slinks${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) XERCESC_external_slinks done"

clean :: XERCESC_external_slinksclean

XERCESC_external_slinksclean :: $(XERCESC_external_slinksclean_dependencies) ##$(cmt_local_XERCESC_external_slinks_makefile)
	$(echo) "(constituents.make) Starting XERCESC_external_slinksclean"
	@-if test -f $(cmt_local_XERCESC_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_XERCESC_external_slinks_makefile) XERCESC_external_slinksclean; \
	fi
	$(echo) "(constituents.make) XERCESC_external_slinksclean done"
#	@-$(MAKE) -f $(cmt_local_XERCESC_external_slinks_makefile) XERCESC_external_slinksclean

##	  /bin/rm -f $(cmt_local_XERCESC_external_slinks_makefile) $(bin)XERCESC_external_slinks_dependencies.make

install :: XERCESC_external_slinksinstall ;

XERCESC_external_slinksinstall :: $(XERCESC_external_slinks_dependencies) $(cmt_local_XERCESC_external_slinks_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_XERCESC_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_XERCESC_external_slinks_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_XERCESC_external_slinks_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : XERCESC_external_slinksuninstall

$(foreach d,$(XERCESC_external_slinks_dependencies),$(eval $(d)uninstall_dependencies += XERCESC_external_slinksuninstall))

XERCESC_external_slinksuninstall : $(XERCESC_external_slinksuninstall_dependencies) ##$(cmt_local_XERCESC_external_slinks_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_XERCESC_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_XERCESC_external_slinks_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_XERCESC_external_slinks_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: XERCESC_external_slinksuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ XERCESC_external_slinks"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ XERCESC_external_slinks done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_processManagerDaemonIs_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_processManagerDaemonIs_has_target_tag

cmt_local_tagfile_processManagerDaemonIs = $(bin)$(rcd_trb_tag)_processManagerDaemonIs.make
cmt_final_setup_processManagerDaemonIs = $(bin)setup_processManagerDaemonIs.make
cmt_local_processManagerDaemonIs_makefile = $(bin)processManagerDaemonIs.make

processManagerDaemonIs_extratags = -tag_add=target_processManagerDaemonIs

else

cmt_local_tagfile_processManagerDaemonIs = $(bin)$(rcd_trb_tag).make
cmt_final_setup_processManagerDaemonIs = $(bin)setup.make
cmt_local_processManagerDaemonIs_makefile = $(bin)processManagerDaemonIs.make

endif

not_processManagerDaemonIs_dependencies = { n=0; for p in $?; do m=0; for d in $(processManagerDaemonIs_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
processManagerDaemonIsdirs :
	@if test ! -d $(bin)processManagerDaemonIs; then $(mkdir) -p $(bin)processManagerDaemonIs; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)processManagerDaemonIs
else
processManagerDaemonIsdirs : ;
endif

ifdef cmt_processManagerDaemonIs_has_target_tag

ifndef QUICK
$(cmt_local_processManagerDaemonIs_makefile) : $(processManagerDaemonIs_dependencies) build_library_links
	$(echo) "(constituents.make) Building processManagerDaemonIs.make"; \
	  $(cmtexe) -tag=$(tags) $(processManagerDaemonIs_extratags) build constituent_config -out=$(cmt_local_processManagerDaemonIs_makefile) processManagerDaemonIs
else
$(cmt_local_processManagerDaemonIs_makefile) : $(processManagerDaemonIs_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_processManagerDaemonIs) ] || \
	  [ ! -f $(cmt_final_setup_processManagerDaemonIs) ] || \
	  $(not_processManagerDaemonIs_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building processManagerDaemonIs.make"; \
	  $(cmtexe) -tag=$(tags) $(processManagerDaemonIs_extratags) build constituent_config -out=$(cmt_local_processManagerDaemonIs_makefile) processManagerDaemonIs; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_processManagerDaemonIs_makefile) : $(processManagerDaemonIs_dependencies) build_library_links
	$(echo) "(constituents.make) Building processManagerDaemonIs.make"; \
	  $(cmtexe) -f=$(bin)processManagerDaemonIs.in -tag=$(tags) $(processManagerDaemonIs_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_processManagerDaemonIs_makefile) processManagerDaemonIs
else
$(cmt_local_processManagerDaemonIs_makefile) : $(processManagerDaemonIs_dependencies) $(cmt_build_library_linksstamp) $(bin)processManagerDaemonIs.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_processManagerDaemonIs) ] || \
	  [ ! -f $(cmt_final_setup_processManagerDaemonIs) ] || \
	  $(not_processManagerDaemonIs_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building processManagerDaemonIs.make"; \
	  $(cmtexe) -f=$(bin)processManagerDaemonIs.in -tag=$(tags) $(processManagerDaemonIs_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_processManagerDaemonIs_makefile) processManagerDaemonIs; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(processManagerDaemonIs_extratags) build constituent_makefile -out=$(cmt_local_processManagerDaemonIs_makefile) processManagerDaemonIs

processManagerDaemonIs :: $(processManagerDaemonIs_dependencies) $(cmt_local_processManagerDaemonIs_makefile) dirs processManagerDaemonIsdirs
	$(echo) "(constituents.make) Creating processManagerDaemonIs${lock_suffix} and Starting processManagerDaemonIs"
	@${lock_command} processManagerDaemonIs${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} processManagerDaemonIs${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_processManagerDaemonIs_makefile); then \
	  $(MAKE) -f $(cmt_local_processManagerDaemonIs_makefile) processManagerDaemonIs; \
	  fi; \
	  retval=$$?; ${unlock_command} processManagerDaemonIs${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) processManagerDaemonIs done"

clean :: processManagerDaemonIsclean

processManagerDaemonIsclean :: $(processManagerDaemonIsclean_dependencies) ##$(cmt_local_processManagerDaemonIs_makefile)
	$(echo) "(constituents.make) Starting processManagerDaemonIsclean"
	@-if test -f $(cmt_local_processManagerDaemonIs_makefile); then \
	  $(MAKE) -f $(cmt_local_processManagerDaemonIs_makefile) processManagerDaemonIsclean; \
	fi
	$(echo) "(constituents.make) processManagerDaemonIsclean done"
#	@-$(MAKE) -f $(cmt_local_processManagerDaemonIs_makefile) processManagerDaemonIsclean

##	  /bin/rm -f $(cmt_local_processManagerDaemonIs_makefile) $(bin)processManagerDaemonIs_dependencies.make

install :: processManagerDaemonIsinstall ;

processManagerDaemonIsinstall :: $(processManagerDaemonIs_dependencies) $(cmt_local_processManagerDaemonIs_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_processManagerDaemonIs_makefile); then \
	  $(MAKE) -f $(cmt_local_processManagerDaemonIs_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_processManagerDaemonIs_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : processManagerDaemonIsuninstall

$(foreach d,$(processManagerDaemonIs_dependencies),$(eval $(d)uninstall_dependencies += processManagerDaemonIsuninstall))

processManagerDaemonIsuninstall : $(processManagerDaemonIsuninstall_dependencies) ##$(cmt_local_processManagerDaemonIs_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_processManagerDaemonIs_makefile); then \
	  $(MAKE) -f $(cmt_local_processManagerDaemonIs_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_processManagerDaemonIs_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: processManagerDaemonIsuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ processManagerDaemonIs"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ processManagerDaemonIs done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_build_ppc_new_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_build_ppc_new_has_target_tag

cmt_local_tagfile_build_ppc_new = $(bin)$(rcd_trb_tag)_build_ppc_new.make
cmt_final_setup_build_ppc_new = $(bin)setup_build_ppc_new.make
cmt_local_build_ppc_new_makefile = $(bin)build_ppc_new.make

build_ppc_new_extratags = -tag_add=target_build_ppc_new

else

cmt_local_tagfile_build_ppc_new = $(bin)$(rcd_trb_tag).make
cmt_final_setup_build_ppc_new = $(bin)setup.make
cmt_local_build_ppc_new_makefile = $(bin)build_ppc_new.make

endif

not_build_ppc_new_dependencies = { n=0; for p in $?; do m=0; for d in $(build_ppc_new_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
build_ppc_newdirs :
	@if test ! -d $(bin)build_ppc_new; then $(mkdir) -p $(bin)build_ppc_new; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)build_ppc_new
else
build_ppc_newdirs : ;
endif

ifdef cmt_build_ppc_new_has_target_tag

ifndef QUICK
$(cmt_local_build_ppc_new_makefile) : $(build_ppc_new_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_ppc_new.make"; \
	  $(cmtexe) -tag=$(tags) $(build_ppc_new_extratags) build constituent_config -out=$(cmt_local_build_ppc_new_makefile) build_ppc_new
else
$(cmt_local_build_ppc_new_makefile) : $(build_ppc_new_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_ppc_new) ] || \
	  [ ! -f $(cmt_final_setup_build_ppc_new) ] || \
	  $(not_build_ppc_new_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_ppc_new.make"; \
	  $(cmtexe) -tag=$(tags) $(build_ppc_new_extratags) build constituent_config -out=$(cmt_local_build_ppc_new_makefile) build_ppc_new; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_build_ppc_new_makefile) : $(build_ppc_new_dependencies) build_library_links
	$(echo) "(constituents.make) Building build_ppc_new.make"; \
	  $(cmtexe) -f=$(bin)build_ppc_new.in -tag=$(tags) $(build_ppc_new_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_ppc_new_makefile) build_ppc_new
else
$(cmt_local_build_ppc_new_makefile) : $(build_ppc_new_dependencies) $(cmt_build_library_linksstamp) $(bin)build_ppc_new.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_build_ppc_new) ] || \
	  [ ! -f $(cmt_final_setup_build_ppc_new) ] || \
	  $(not_build_ppc_new_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building build_ppc_new.make"; \
	  $(cmtexe) -f=$(bin)build_ppc_new.in -tag=$(tags) $(build_ppc_new_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_build_ppc_new_makefile) build_ppc_new; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(build_ppc_new_extratags) build constituent_makefile -out=$(cmt_local_build_ppc_new_makefile) build_ppc_new

build_ppc_new :: $(build_ppc_new_dependencies) $(cmt_local_build_ppc_new_makefile) dirs build_ppc_newdirs
	$(echo) "(constituents.make) Creating build_ppc_new${lock_suffix} and Starting build_ppc_new"
	@${lock_command} build_ppc_new${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} build_ppc_new${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_build_ppc_new_makefile); then \
	  $(MAKE) -f $(cmt_local_build_ppc_new_makefile) build_ppc_new; \
	  fi; \
	  retval=$$?; ${unlock_command} build_ppc_new${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) build_ppc_new done"

clean :: build_ppc_newclean

build_ppc_newclean :: $(build_ppc_newclean_dependencies) ##$(cmt_local_build_ppc_new_makefile)
	$(echo) "(constituents.make) Starting build_ppc_newclean"
	@-if test -f $(cmt_local_build_ppc_new_makefile); then \
	  $(MAKE) -f $(cmt_local_build_ppc_new_makefile) build_ppc_newclean; \
	fi
	$(echo) "(constituents.make) build_ppc_newclean done"
#	@-$(MAKE) -f $(cmt_local_build_ppc_new_makefile) build_ppc_newclean

##	  /bin/rm -f $(cmt_local_build_ppc_new_makefile) $(bin)build_ppc_new_dependencies.make

install :: build_ppc_newinstall ;

build_ppc_newinstall :: $(build_ppc_new_dependencies) $(cmt_local_build_ppc_new_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_build_ppc_new_makefile); then \
	  $(MAKE) -f $(cmt_local_build_ppc_new_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_build_ppc_new_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : build_ppc_newuninstall

$(foreach d,$(build_ppc_new_dependencies),$(eval $(d)uninstall_dependencies += build_ppc_newuninstall))

build_ppc_newuninstall : $(build_ppc_newuninstall_dependencies) ##$(cmt_local_build_ppc_new_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_build_ppc_new_makefile); then \
	  $(MAKE) -f $(cmt_local_build_ppc_new_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_build_ppc_new_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: build_ppc_newuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ build_ppc_new"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ build_ppc_new done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_CPPUNIT_external_slinks_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_CPPUNIT_external_slinks_has_target_tag

cmt_local_tagfile_CPPUNIT_external_slinks = $(bin)$(rcd_trb_tag)_CPPUNIT_external_slinks.make
cmt_final_setup_CPPUNIT_external_slinks = $(bin)setup_CPPUNIT_external_slinks.make
cmt_local_CPPUNIT_external_slinks_makefile = $(bin)CPPUNIT_external_slinks.make

CPPUNIT_external_slinks_extratags = -tag_add=target_CPPUNIT_external_slinks

else

cmt_local_tagfile_CPPUNIT_external_slinks = $(bin)$(rcd_trb_tag).make
cmt_final_setup_CPPUNIT_external_slinks = $(bin)setup.make
cmt_local_CPPUNIT_external_slinks_makefile = $(bin)CPPUNIT_external_slinks.make

endif

not_CPPUNIT_external_slinks_dependencies = { n=0; for p in $?; do m=0; for d in $(CPPUNIT_external_slinks_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
CPPUNIT_external_slinksdirs :
	@if test ! -d $(bin)CPPUNIT_external_slinks; then $(mkdir) -p $(bin)CPPUNIT_external_slinks; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)CPPUNIT_external_slinks
else
CPPUNIT_external_slinksdirs : ;
endif

ifdef cmt_CPPUNIT_external_slinks_has_target_tag

ifndef QUICK
$(cmt_local_CPPUNIT_external_slinks_makefile) : $(CPPUNIT_external_slinks_dependencies) build_library_links
	$(echo) "(constituents.make) Building CPPUNIT_external_slinks.make"; \
	  $(cmtexe) -tag=$(tags) $(CPPUNIT_external_slinks_extratags) build constituent_config -out=$(cmt_local_CPPUNIT_external_slinks_makefile) CPPUNIT_external_slinks
else
$(cmt_local_CPPUNIT_external_slinks_makefile) : $(CPPUNIT_external_slinks_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_CPPUNIT_external_slinks) ] || \
	  [ ! -f $(cmt_final_setup_CPPUNIT_external_slinks) ] || \
	  $(not_CPPUNIT_external_slinks_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building CPPUNIT_external_slinks.make"; \
	  $(cmtexe) -tag=$(tags) $(CPPUNIT_external_slinks_extratags) build constituent_config -out=$(cmt_local_CPPUNIT_external_slinks_makefile) CPPUNIT_external_slinks; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_CPPUNIT_external_slinks_makefile) : $(CPPUNIT_external_slinks_dependencies) build_library_links
	$(echo) "(constituents.make) Building CPPUNIT_external_slinks.make"; \
	  $(cmtexe) -f=$(bin)CPPUNIT_external_slinks.in -tag=$(tags) $(CPPUNIT_external_slinks_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_CPPUNIT_external_slinks_makefile) CPPUNIT_external_slinks
else
$(cmt_local_CPPUNIT_external_slinks_makefile) : $(CPPUNIT_external_slinks_dependencies) $(cmt_build_library_linksstamp) $(bin)CPPUNIT_external_slinks.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_CPPUNIT_external_slinks) ] || \
	  [ ! -f $(cmt_final_setup_CPPUNIT_external_slinks) ] || \
	  $(not_CPPUNIT_external_slinks_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building CPPUNIT_external_slinks.make"; \
	  $(cmtexe) -f=$(bin)CPPUNIT_external_slinks.in -tag=$(tags) $(CPPUNIT_external_slinks_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_CPPUNIT_external_slinks_makefile) CPPUNIT_external_slinks; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(CPPUNIT_external_slinks_extratags) build constituent_makefile -out=$(cmt_local_CPPUNIT_external_slinks_makefile) CPPUNIT_external_slinks

CPPUNIT_external_slinks :: $(CPPUNIT_external_slinks_dependencies) $(cmt_local_CPPUNIT_external_slinks_makefile) dirs CPPUNIT_external_slinksdirs
	$(echo) "(constituents.make) Creating CPPUNIT_external_slinks${lock_suffix} and Starting CPPUNIT_external_slinks"
	@${lock_command} CPPUNIT_external_slinks${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} CPPUNIT_external_slinks${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_CPPUNIT_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_CPPUNIT_external_slinks_makefile) CPPUNIT_external_slinks; \
	  fi; \
	  retval=$$?; ${unlock_command} CPPUNIT_external_slinks${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) CPPUNIT_external_slinks done"

clean :: CPPUNIT_external_slinksclean

CPPUNIT_external_slinksclean :: $(CPPUNIT_external_slinksclean_dependencies) ##$(cmt_local_CPPUNIT_external_slinks_makefile)
	$(echo) "(constituents.make) Starting CPPUNIT_external_slinksclean"
	@-if test -f $(cmt_local_CPPUNIT_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_CPPUNIT_external_slinks_makefile) CPPUNIT_external_slinksclean; \
	fi
	$(echo) "(constituents.make) CPPUNIT_external_slinksclean done"
#	@-$(MAKE) -f $(cmt_local_CPPUNIT_external_slinks_makefile) CPPUNIT_external_slinksclean

##	  /bin/rm -f $(cmt_local_CPPUNIT_external_slinks_makefile) $(bin)CPPUNIT_external_slinks_dependencies.make

install :: CPPUNIT_external_slinksinstall ;

CPPUNIT_external_slinksinstall :: $(CPPUNIT_external_slinks_dependencies) $(cmt_local_CPPUNIT_external_slinks_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_CPPUNIT_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_CPPUNIT_external_slinks_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_CPPUNIT_external_slinks_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : CPPUNIT_external_slinksuninstall

$(foreach d,$(CPPUNIT_external_slinks_dependencies),$(eval $(d)uninstall_dependencies += CPPUNIT_external_slinksuninstall))

CPPUNIT_external_slinksuninstall : $(CPPUNIT_external_slinksuninstall_dependencies) ##$(cmt_local_CPPUNIT_external_slinks_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_CPPUNIT_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_CPPUNIT_external_slinks_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_CPPUNIT_external_slinks_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: CPPUNIT_external_slinksuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ CPPUNIT_external_slinks"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ CPPUNIT_external_slinks done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_XROOTD_external_slinks_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_XROOTD_external_slinks_has_target_tag

cmt_local_tagfile_XROOTD_external_slinks = $(bin)$(rcd_trb_tag)_XROOTD_external_slinks.make
cmt_final_setup_XROOTD_external_slinks = $(bin)setup_XROOTD_external_slinks.make
cmt_local_XROOTD_external_slinks_makefile = $(bin)XROOTD_external_slinks.make

XROOTD_external_slinks_extratags = -tag_add=target_XROOTD_external_slinks

else

cmt_local_tagfile_XROOTD_external_slinks = $(bin)$(rcd_trb_tag).make
cmt_final_setup_XROOTD_external_slinks = $(bin)setup.make
cmt_local_XROOTD_external_slinks_makefile = $(bin)XROOTD_external_slinks.make

endif

not_XROOTD_external_slinks_dependencies = { n=0; for p in $?; do m=0; for d in $(XROOTD_external_slinks_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
XROOTD_external_slinksdirs :
	@if test ! -d $(bin)XROOTD_external_slinks; then $(mkdir) -p $(bin)XROOTD_external_slinks; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)XROOTD_external_slinks
else
XROOTD_external_slinksdirs : ;
endif

ifdef cmt_XROOTD_external_slinks_has_target_tag

ifndef QUICK
$(cmt_local_XROOTD_external_slinks_makefile) : $(XROOTD_external_slinks_dependencies) build_library_links
	$(echo) "(constituents.make) Building XROOTD_external_slinks.make"; \
	  $(cmtexe) -tag=$(tags) $(XROOTD_external_slinks_extratags) build constituent_config -out=$(cmt_local_XROOTD_external_slinks_makefile) XROOTD_external_slinks
else
$(cmt_local_XROOTD_external_slinks_makefile) : $(XROOTD_external_slinks_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_XROOTD_external_slinks) ] || \
	  [ ! -f $(cmt_final_setup_XROOTD_external_slinks) ] || \
	  $(not_XROOTD_external_slinks_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building XROOTD_external_slinks.make"; \
	  $(cmtexe) -tag=$(tags) $(XROOTD_external_slinks_extratags) build constituent_config -out=$(cmt_local_XROOTD_external_slinks_makefile) XROOTD_external_slinks; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_XROOTD_external_slinks_makefile) : $(XROOTD_external_slinks_dependencies) build_library_links
	$(echo) "(constituents.make) Building XROOTD_external_slinks.make"; \
	  $(cmtexe) -f=$(bin)XROOTD_external_slinks.in -tag=$(tags) $(XROOTD_external_slinks_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_XROOTD_external_slinks_makefile) XROOTD_external_slinks
else
$(cmt_local_XROOTD_external_slinks_makefile) : $(XROOTD_external_slinks_dependencies) $(cmt_build_library_linksstamp) $(bin)XROOTD_external_slinks.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_XROOTD_external_slinks) ] || \
	  [ ! -f $(cmt_final_setup_XROOTD_external_slinks) ] || \
	  $(not_XROOTD_external_slinks_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building XROOTD_external_slinks.make"; \
	  $(cmtexe) -f=$(bin)XROOTD_external_slinks.in -tag=$(tags) $(XROOTD_external_slinks_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_XROOTD_external_slinks_makefile) XROOTD_external_slinks; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(XROOTD_external_slinks_extratags) build constituent_makefile -out=$(cmt_local_XROOTD_external_slinks_makefile) XROOTD_external_slinks

XROOTD_external_slinks :: $(XROOTD_external_slinks_dependencies) $(cmt_local_XROOTD_external_slinks_makefile) dirs XROOTD_external_slinksdirs
	$(echo) "(constituents.make) Creating XROOTD_external_slinks${lock_suffix} and Starting XROOTD_external_slinks"
	@${lock_command} XROOTD_external_slinks${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} XROOTD_external_slinks${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_XROOTD_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_XROOTD_external_slinks_makefile) XROOTD_external_slinks; \
	  fi; \
	  retval=$$?; ${unlock_command} XROOTD_external_slinks${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) XROOTD_external_slinks done"

clean :: XROOTD_external_slinksclean

XROOTD_external_slinksclean :: $(XROOTD_external_slinksclean_dependencies) ##$(cmt_local_XROOTD_external_slinks_makefile)
	$(echo) "(constituents.make) Starting XROOTD_external_slinksclean"
	@-if test -f $(cmt_local_XROOTD_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_XROOTD_external_slinks_makefile) XROOTD_external_slinksclean; \
	fi
	$(echo) "(constituents.make) XROOTD_external_slinksclean done"
#	@-$(MAKE) -f $(cmt_local_XROOTD_external_slinks_makefile) XROOTD_external_slinksclean

##	  /bin/rm -f $(cmt_local_XROOTD_external_slinks_makefile) $(bin)XROOTD_external_slinks_dependencies.make

install :: XROOTD_external_slinksinstall ;

XROOTD_external_slinksinstall :: $(XROOTD_external_slinks_dependencies) $(cmt_local_XROOTD_external_slinks_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_XROOTD_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_XROOTD_external_slinks_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_XROOTD_external_slinks_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : XROOTD_external_slinksuninstall

$(foreach d,$(XROOTD_external_slinks_dependencies),$(eval $(d)uninstall_dependencies += XROOTD_external_slinksuninstall))

XROOTD_external_slinksuninstall : $(XROOTD_external_slinksuninstall_dependencies) ##$(cmt_local_XROOTD_external_slinks_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_XROOTD_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_XROOTD_external_slinks_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_XROOTD_external_slinks_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: XROOTD_external_slinksuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ XROOTD_external_slinks"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ XROOTD_external_slinks done"
endif

#-- end of constituent_lock ------
#-- start of constituent_lock ------

cmt_ROOT_external_slinks_has_no_target_tag = 1

#--------------------------------------------------------

ifdef cmt_ROOT_external_slinks_has_target_tag

cmt_local_tagfile_ROOT_external_slinks = $(bin)$(rcd_trb_tag)_ROOT_external_slinks.make
cmt_final_setup_ROOT_external_slinks = $(bin)setup_ROOT_external_slinks.make
cmt_local_ROOT_external_slinks_makefile = $(bin)ROOT_external_slinks.make

ROOT_external_slinks_extratags = -tag_add=target_ROOT_external_slinks

else

cmt_local_tagfile_ROOT_external_slinks = $(bin)$(rcd_trb_tag).make
cmt_final_setup_ROOT_external_slinks = $(bin)setup.make
cmt_local_ROOT_external_slinks_makefile = $(bin)ROOT_external_slinks.make

endif

not_ROOT_external_slinks_dependencies = { n=0; for p in $?; do m=0; for d in $(ROOT_external_slinks_dependencies); do if [ $$p = $$d ]; then m=1; break; fi; done; if [ $$m -eq 0 ]; then n=1; break; fi; done; [ $$n -eq 1 ]; }

ifdef STRUCTURED_OUTPUT
ROOT_external_slinksdirs :
	@if test ! -d $(bin)ROOT_external_slinks; then $(mkdir) -p $(bin)ROOT_external_slinks; fi
	$(echo) "STRUCTURED_OUTPUT="$(bin)ROOT_external_slinks
else
ROOT_external_slinksdirs : ;
endif

ifdef cmt_ROOT_external_slinks_has_target_tag

ifndef QUICK
$(cmt_local_ROOT_external_slinks_makefile) : $(ROOT_external_slinks_dependencies) build_library_links
	$(echo) "(constituents.make) Building ROOT_external_slinks.make"; \
	  $(cmtexe) -tag=$(tags) $(ROOT_external_slinks_extratags) build constituent_config -out=$(cmt_local_ROOT_external_slinks_makefile) ROOT_external_slinks
else
$(cmt_local_ROOT_external_slinks_makefile) : $(ROOT_external_slinks_dependencies) $(cmt_build_library_linksstamp) $(use_requirements)
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_ROOT_external_slinks) ] || \
	  [ ! -f $(cmt_final_setup_ROOT_external_slinks) ] || \
	  $(not_ROOT_external_slinks_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building ROOT_external_slinks.make"; \
	  $(cmtexe) -tag=$(tags) $(ROOT_external_slinks_extratags) build constituent_config -out=$(cmt_local_ROOT_external_slinks_makefile) ROOT_external_slinks; \
	  fi
endif

else

ifndef QUICK
$(cmt_local_ROOT_external_slinks_makefile) : $(ROOT_external_slinks_dependencies) build_library_links
	$(echo) "(constituents.make) Building ROOT_external_slinks.make"; \
	  $(cmtexe) -f=$(bin)ROOT_external_slinks.in -tag=$(tags) $(ROOT_external_slinks_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_ROOT_external_slinks_makefile) ROOT_external_slinks
else
$(cmt_local_ROOT_external_slinks_makefile) : $(ROOT_external_slinks_dependencies) $(cmt_build_library_linksstamp) $(bin)ROOT_external_slinks.in
	@if [ ! -f $@ ] || [ ! -f $(cmt_local_tagfile_ROOT_external_slinks) ] || \
	  [ ! -f $(cmt_final_setup_ROOT_external_slinks) ] || \
	  $(not_ROOT_external_slinks_dependencies) ; then \
	  test -z "$(cmtmsg)" || \
	  echo "$(CMTMSGPREFIX)" "(constituents.make) Building ROOT_external_slinks.make"; \
	  $(cmtexe) -f=$(bin)ROOT_external_slinks.in -tag=$(tags) $(ROOT_external_slinks_extratags) build constituent_makefile -without_cmt -out=$(cmt_local_ROOT_external_slinks_makefile) ROOT_external_slinks; \
	  fi
endif

endif

#	  $(cmtexe) -tag=$(tags) $(ROOT_external_slinks_extratags) build constituent_makefile -out=$(cmt_local_ROOT_external_slinks_makefile) ROOT_external_slinks

ROOT_external_slinks :: $(ROOT_external_slinks_dependencies) $(cmt_local_ROOT_external_slinks_makefile) dirs ROOT_external_slinksdirs
	$(echo) "(constituents.make) Creating ROOT_external_slinks${lock_suffix} and Starting ROOT_external_slinks"
	@${lock_command} ROOT_external_slinks${lock_suffix} || exit $$?; \
	  retval=$$?; \
	  trap '${unlock_command} ROOT_external_slinks${lock_suffix}; exit $${retval}' 1 2 15; \
	  if test -f $(cmt_local_ROOT_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_ROOT_external_slinks_makefile) ROOT_external_slinks; \
	  fi; \
	  retval=$$?; ${unlock_command} ROOT_external_slinks${lock_suffix}; exit $${retval}
	$(echo) "(constituents.make) ROOT_external_slinks done"

clean :: ROOT_external_slinksclean

ROOT_external_slinksclean :: $(ROOT_external_slinksclean_dependencies) ##$(cmt_local_ROOT_external_slinks_makefile)
	$(echo) "(constituents.make) Starting ROOT_external_slinksclean"
	@-if test -f $(cmt_local_ROOT_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_ROOT_external_slinks_makefile) ROOT_external_slinksclean; \
	fi
	$(echo) "(constituents.make) ROOT_external_slinksclean done"
#	@-$(MAKE) -f $(cmt_local_ROOT_external_slinks_makefile) ROOT_external_slinksclean

##	  /bin/rm -f $(cmt_local_ROOT_external_slinks_makefile) $(bin)ROOT_external_slinks_dependencies.make

install :: ROOT_external_slinksinstall ;

ROOT_external_slinksinstall :: $(ROOT_external_slinks_dependencies) $(cmt_local_ROOT_external_slinks_makefile)
	$(echo) "(constituents.make) Starting $@"
	@if test -f $(cmt_local_ROOT_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_ROOT_external_slinks_makefile) install; \
	  fi
#	@-$(MAKE) -f $(cmt_local_ROOT_external_slinks_makefile) install
	$(echo) "(constituents.make) $@ done"

uninstall : ROOT_external_slinksuninstall

$(foreach d,$(ROOT_external_slinks_dependencies),$(eval $(d)uninstall_dependencies += ROOT_external_slinksuninstall))

ROOT_external_slinksuninstall : $(ROOT_external_slinksuninstall_dependencies) ##$(cmt_local_ROOT_external_slinks_makefile)
	$(echo) "(constituents.make) Starting $@"
	@-if test -f $(cmt_local_ROOT_external_slinks_makefile); then \
	  $(MAKE) -f $(cmt_local_ROOT_external_slinks_makefile) uninstall; \
	  fi
#	@$(MAKE) -f $(cmt_local_ROOT_external_slinks_makefile) uninstall
	$(echo) "(constituents.make) $@ done"

remove_library_links :: ROOT_external_slinksuninstall ;

ifndef PEDANTIC
.DEFAULT::
	$(echo) "(constituents.make) Starting $@ ROOT_external_slinks"
	$(echo) Using default action for $@
	$(echo) "(constituents.make) $@ ROOT_external_slinks done"
endif

#-- end of constituent_lock ------
#-- start of constituents_trailer ------

uninstall : remove_library_links ;
clean ::
	$(cleanup_echo) $(cmt_build_library_linksstamp)
	-$(cleanup_silent) \rm -f $(cmt_build_library_linksstamp)
#clean :: remove_library_links

remove_library_links ::
ifndef QUICK
	$(echo) "(constituents.make) Removing library links"; \
	  $(remove_library_links)
else
	$(echo) "(constituents.make) Removing library links"; \
	  $(remove_library_links) -f=$(bin)library_links.in -without_cmt
endif

#-- end of constituents_trailer ------
