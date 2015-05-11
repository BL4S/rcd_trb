/********************************************************/
/*							*/
/* Date: 24 April 2015					*/ 
/* Author: Markus Joos					*/
/*							*/
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
      USERWARNING = 1,
      TRB_DUMMY2
    };
    TRBException(ErrorCode errorCode);
    TRBException(ErrorCode errorCode, std::string description);
    TRBException(ErrorCode errorCode, const ers::Context& context);
    TRBException(ErrorCode errorCode, std::string description, const ers::Context& context);
    TRBException(const std::exception& cause, ErrorCode error, std::string description, const ers::Context& context);

    virtual ~TRBException() throw() { }

  protected:
    virtual std::string getErrorString(u_int errorId) const;
  };
  
  inline std::string TRBException::getErrorString(u_int errorId) const 
  {
    std::string rc;
    switch (errorId) 
    {
    case USERWARNING:
      rc = "Something went wrong. Read on:";
      break;
    case TRB_DUMMY2:
      rc = "Dummy2";
      break;
    default:
      rc = "";
      break;
    }
    return rc;
  }
  
}
#endif //TRBEXCEPTION_H
