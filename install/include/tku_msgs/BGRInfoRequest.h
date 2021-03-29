// Generated by gencpp from file tku_msgs/BGRInfoRequest.msg
// DO NOT EDIT!


#ifndef TKU_MSGS_MESSAGE_BGRINFOREQUEST_H
#define TKU_MSGS_MESSAGE_BGRINFOREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tku_msgs
{
template <class ContainerAllocator>
struct BGRInfoRequest_
{
  typedef BGRInfoRequest_<ContainerAllocator> Type;

  BGRInfoRequest_()
    : Load(false)  {
    }
  BGRInfoRequest_(const ContainerAllocator& _alloc)
    : Load(false)  {
  (void)_alloc;
    }



   typedef uint8_t _Load_type;
  _Load_type Load;





  typedef boost::shared_ptr< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> const> ConstPtr;

}; // struct BGRInfoRequest_

typedef ::tku_msgs::BGRInfoRequest_<std::allocator<void> > BGRInfoRequest;

typedef boost::shared_ptr< ::tku_msgs::BGRInfoRequest > BGRInfoRequestPtr;
typedef boost::shared_ptr< ::tku_msgs::BGRInfoRequest const> BGRInfoRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tku_msgs::BGRInfoRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tku_msgs::BGRInfoRequest_<ContainerAllocator1> & lhs, const ::tku_msgs::BGRInfoRequest_<ContainerAllocator2> & rhs)
{
  return lhs.Load == rhs.Load;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tku_msgs::BGRInfoRequest_<ContainerAllocator1> & lhs, const ::tku_msgs::BGRInfoRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tku_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2a0ee7dd7db7d3262047f4747a0d46cc";
  }

  static const char* value(const ::tku_msgs::BGRInfoRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2a0ee7dd7db7d326ULL;
  static const uint64_t static_value2 = 0x2047f4747a0d46ccULL;
};

template<class ContainerAllocator>
struct DataType< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tku_msgs/BGRInfoRequest";
  }

  static const char* value(const ::tku_msgs::BGRInfoRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool Load\n"
;
  }

  static const char* value(const ::tku_msgs::BGRInfoRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Load);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BGRInfoRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tku_msgs::BGRInfoRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tku_msgs::BGRInfoRequest_<ContainerAllocator>& v)
  {
    s << indent << "Load: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.Load);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TKU_MSGS_MESSAGE_BGRINFOREQUEST_H