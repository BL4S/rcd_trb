/********************************************************/
/*							*/
/* Date: 24 April 2015					*/ 
/* Author: Markus Joos					*/
/*							*/
/* add error codes for UDP                              */
/* J.O.Petersen                                         */
/*                                                      */
/*** C 2015 - The software with that certain something **/

#ifndef TRBEXCEPTION_H
#define TRBEXCEPTION_H

#include "DFExceptions/ROSException.h"
#include <string>
#include <iostream>

namespace RCD 
{
  using namespace ROS;

  class TRBException : public ROSException 
  {
  public:
    enum ErrorCode 
    {
      UDP_OPEN = 100,
      UDP_BIND,
      UDP_CLOSE,
      UDP_RECEIVE
    };
    TRBException(ErrorCode error);
    TRBException(ErrorCode error, std::string description);
    TRBException(ErrorCode error, const ers::Context& context);
    TRBException(ErrorCode error, std::string description, const ers::Context& context);
    TRBException(const std::exception& cause, ErrorCode error, std::string description, const ers::Context& context);

    virtual ~TRBException() throw() { }

  protected:
    virtual std::string getErrorString(u_int errorId) const;
  };

  inline TRBException::TRBException(TRBException::ErrorCode error, std::string description)
   : ROSException("TRBModule",error,getErrorString(error),description) { }

  inline TRBException::TRBException(TRBException::ErrorCode error)
   : ROSException("TRBModule",error,getErrorString(error)) { }

  inline TRBException::TRBException(TRBException::ErrorCode error, std::string description, const ers::Context& context)
   : ROSException("TRBModule",error,getErrorString(error),description,context) { }

  inline TRBException::TRBException(TRBException::ErrorCode error, const ers::Context& context)
   : ROSException("TRBModule",error,getErrorString(error),context) { }

  inline TRBException::TRBException(const std::exception& cause, ErrorCode error, std::string description, const ers::Context& context)
                                 : ROSException(cause, "TRBModule", error, getErrorString(error), description, context) {}

  
  inline std::string TRBException::getErrorString(u_int errorId) const 
  {
    std::string rc;
    switch (errorId) 
    {
    case UDP_OPEN:
      rc = " UDP Open socket failed";
      break;
    case UDP_BIND:
      rc = " UDP Bind socket failed";
      break;
    case UDP_CLOSE:
      rc = " UDP Close socket failed";
      break;
    case UDP_RECEIVE:
      rc = " UDP receive failed";
      break;
    default:
      rc = "";
      break;
    }
    return rc;
  }
  
}
#endif //TRBEXCEPTION_H
