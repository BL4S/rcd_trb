/********************************************************/
/*							*/
/* Date: 24 April 2015					*/ 
/* Author: Markus Joos					*/
/*							*/
/*** C 2015 - The software with that certain something **/

#ifndef DATACHANNELTRB_H
#define DATACHANNELTRB_H

#include "ROSInfo/DataChannelTRBInfo.h"
#include "ROSCore/SingleFragmentDataChannel.h"

namespace ROS 
{
  class DataChannelTRB : public SingleFragmentDataChannel 
  {
  public:    
    DataChannelTRB(u_int id,
		    u_int configId,
		    int trbport,
		    DFCountedPointer<Config> configuration,
		    DataChannelTRBInfo* = new DataChannelTRBInfo());
    virtual ~DataChannelTRB() ;
    virtual int getNextFragment(u_int* buffer, int max_size, u_int* status, u_long pciAddress = 0);
    void clearInfo(void);
    virtual ISInfo *getISInfo(void);

  private:
    DataChannelTRBInfo *m_statistics;  //for IS
    u_int m_channel_number;    
    u_int m_channelId;
    int m_socket;
    
    enum Statuswords 
    {
      S_OK = 0,
      S_TIMEOUT,
      S_OVERFLOW,
      S_NODATA
    };
  };
}
#endif //DATACHANNELTRB_H
