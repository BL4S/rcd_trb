/********************************************************/
/*							*/
/* Date:   24 April 2015				*/ 
/* Author: Markus Joos					*/
/*							*/
/*** C 2015 - The software with that certain something **/

#ifndef MODULETRB_H
#define MODULETRB_H

#include "ROSCore/ReadoutModule.h"

namespace ROS 
{
  class ModuleTRB : public ReadoutModule
  {
  public:
    virtual void setup(DFCountedPointer<Config> configuration);
    virtual void configure(const daq::rc::TransitionCmd&);
    virtual void prepareForRun(const daq::rc::TransitionCmd&);
    virtual void stopDC(const daq::rc::TransitionCmd&);
    virtual void unconfigure(const daq::rc::TransitionCmd&);
    virtual void connect(const daq::rc::TransitionCmd&);
    virtual void disconnect(const daq::rc::TransitionCmd&);
    virtual void clearInfo();
    virtual DFCountedPointer < Config > getInfo();
    ModuleTRB();
    virtual ~ModuleTRB()  noexcept;

    virtual const std::vector<DataChannel *> *channels();
    
  private:
    DFCountedPointer<Config> m_configuration;
    std::vector<DataChannel *> m_dataChannels;

    // channel parameters
    u_int m_id;

    // IP parameters of a module
    u_int m_port;
  };

  inline const std::vector<DataChannel *> *ModuleTRB::channels()
  {
    return &m_dataChannels;
  }  
}
#endif // MODULETRB_H
