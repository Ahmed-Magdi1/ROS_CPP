// Generated by gencpp from file count/cont.msg
// DO NOT EDIT!


#ifndef COUNT_MESSAGE_CONT_H
#define COUNT_MESSAGE_CONT_H

#include <ros/service_traits.h>


#include <count/contRequest.h>
#include <count/contResponse.h>


namespace count
{

struct cont
{

typedef contRequest Request;
typedef contResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct cont
} // namespace count


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::count::cont > {
  static const char* value()
  {
    return "58903d21a3264f3408d79ba79e9f7c7e";
  }

  static const char* value(const ::count::cont&) { return value(); }
};

template<>
struct DataType< ::count::cont > {
  static const char* value()
  {
    return "count/cont";
  }

  static const char* value(const ::count::cont&) { return value(); }
};


// service_traits::MD5Sum< ::count::contRequest> should match
// service_traits::MD5Sum< ::count::cont >
template<>
struct MD5Sum< ::count::contRequest>
{
  static const char* value()
  {
    return MD5Sum< ::count::cont >::value();
  }
  static const char* value(const ::count::contRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::count::contRequest> should match
// service_traits::DataType< ::count::cont >
template<>
struct DataType< ::count::contRequest>
{
  static const char* value()
  {
    return DataType< ::count::cont >::value();
  }
  static const char* value(const ::count::contRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::count::contResponse> should match
// service_traits::MD5Sum< ::count::cont >
template<>
struct MD5Sum< ::count::contResponse>
{
  static const char* value()
  {
    return MD5Sum< ::count::cont >::value();
  }
  static const char* value(const ::count::contResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::count::contResponse> should match
// service_traits::DataType< ::count::cont >
template<>
struct DataType< ::count::contResponse>
{
  static const char* value()
  {
    return DataType< ::count::cont >::value();
  }
  static const char* value(const ::count::contResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // COUNT_MESSAGE_CONT_H
