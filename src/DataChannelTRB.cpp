/********************************************************/
/*							*/
/* Date: 24 April 2015					*/ 
/* Author: Markus Joos					*/
/*							*/
/*** C 2015 - The software with that certain something **/

#include <stdint.h>
#include "ROSUtilities/ROSErrorReporting.h"
#include "DFDebug/DFDebug.h"
#include "DFSubSystemItem/Config.h"
#include "rcd_trb/ExceptionTrb.h"
#include "rcd_trb/trb.h"
#include "rcd_trb/DataChannelTrb.h"


using namespace ROS;
using namespace RCD;


/*******************************************************************************************/
DataChannelTRB::DataChannelTRB(u_int channelId,
				 u_int channelIndex,
				 u_int trbport,
				 DFCountedPointer<Config> configuration,
				 DataChannelTRBInfo *info) :
  SingleFragmentDataChannel(channelId, channelIndex, 0, configuration, info)
/*******************************************************************************************/
{ 
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 15, "DataChannelTRB::constructor: Entered");
  m_statistics = info;
  m_channelId = channelId;
  m_port = trbport;
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 20, "DataChannelTRB::constructor: channelId = " << m_channelId);
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 20, "DataChannelTRB::constructor: port = " << m_port);
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 15, "DataChannelTRB::constructor: Done");
}


/*********************************/
DataChannelTRB::~DataChannelTRB() 
/*********************************/
{
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 15, "DataChannelTRB::destructor: Entered");
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 15, "DataChannelTRB::destructor: Done");
}


/*****************************************************************************************************/
int DataChannelTRB::getNextFragment(u_int* buffer, int max_size, u_int* status, u_long /*pciAddress*/)
/*****************************************************************************************************/
{
  int fsize = 0;
    
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 15, "DataChannelTRB::getNextFragment: Entered for channel = " << m_channel_number);
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 15, "DataChannelTRB::getNextFragment: max_size = " << max_size);

  u_int* bufPtr = buffer;        // the buffer address

  //Write the channel number
  *bufPtr++ = m_channelId;
  fsize += 4;

  //Wait until there is an event ready
  //poll UDP port

  
  //For now we return the raw data from the TRB

//  for (loop = 0; loop < num; loop++)
//  {
//    data = m_trb->output_buffer;
//    if (fsize == (u_int)max_size)
//      toomuch = 1;
//      
//    if (!toomuch)
//    {
//      *bufPtr++ = data;
//      fsize += 4;
//    }  
//  }
//int n = recvfrom(sock_receive,bufPtr, max_size*4, 0, (struct sockaddr *)&from,&fromlen);
  *bufPtr++ = 0x22abcd22;  fsize += 4;
  *bufPtr++ = 0x01020304;  fsize += 4;
  *bufPtr++ = 0x05060708;  fsize += 4;
  *bufPtr++ = 0x22abcd22;  fsize += 4;

  if(fsize > max_size)
  { 
    fsize = max_size;
    DEBUG_TEXT(DFDB_RCDEXAMPLE, 5, "DataChannelTRB::getNextFragment fsize > max_size.");
  }
   
  *status = S_OK;
  
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 15, "DataChannelTRB::getNextFragment getNextFragment with fsize = " << fsize);
  return fsize;	// bytes ..
}


/**********************************/
ISInfo *DataChannelTRB::getISInfo()
/**********************************/
{
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 15, "TRBDataChannel::getIsInfo: called");
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 15, "TRBDataChannel::getIsInfo: done");
  return m_statistics;
}


/************************************/
void DataChannelTRB::clearInfo(void)
/************************************/
{
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 5, "TRBDataChannel::clearInfo: entered");
  SingleFragmentDataChannel::clearInfo();
  DEBUG_TEXT(DFDB_RCDEXAMPLE, 5, "TRBDataChannel::clearInfo: done");
}




