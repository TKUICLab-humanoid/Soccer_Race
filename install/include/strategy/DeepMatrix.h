// Generated by gencpp from file strategy/DeepMatrix.msg
// DO NOT EDIT!


#ifndef STRATEGY_MESSAGE_DEEPMATRIX_H
#define STRATEGY_MESSAGE_DEEPMATRIX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace strategy
{
template <class ContainerAllocator>
struct DeepMatrix_
{
  typedef DeepMatrix_<ContainerAllocator> Type;

  DeepMatrix_()
    : DeepMatrix()  {
    }
  DeepMatrix_(const ContainerAllocator& _alloc)
    : DeepMatrix(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _DeepMatrix_type;
  _DeepMatrix_type DeepMatrix;





  typedef boost::shared_ptr< ::strategy::DeepMatrix_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::strategy::DeepMatrix_<ContainerAllocator> const> ConstPtr;

}; // struct DeepMatrix_

typedef ::strategy::DeepMatrix_<std::allocator<void> > DeepMatrix;

typedef boost::shared_ptr< ::strategy::DeepMatrix > DeepMatrixPtr;
typedef boost::shared_ptr< ::strategy::DeepMatrix const> DeepMatrixConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::strategy::DeepMatrix_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::strategy::DeepMatrix_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::strategy::DeepMatrix_<ContainerAllocator1> & lhs, const ::strategy::DeepMatrix_<ContainerAllocator2> & rhs)
{
  return lhs.DeepMatrix == rhs.DeepMatrix;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::strategy::DeepMatrix_<ContainerAllocator1> & lhs, const ::strategy::DeepMatrix_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace strategy

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::strategy::DeepMatrix_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::strategy::DeepMatrix_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::strategy::DeepMatrix_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::strategy::DeepMatrix_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::strategy::DeepMatrix_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::strategy::DeepMatrix_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::strategy::DeepMatrix_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3d297606fb900059fdd4f503356c6486";
  }

  static const char* value(const ::strategy::DeepMatrix_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3d297606fb900059ULL;
  static const uint64_t static_value2 = 0xfdd4f503356c6486ULL;
};

template<class ContainerAllocator>
struct DataType< ::strategy::DeepMatrix_<ContainerAllocator> >
{
  static const char* value()
  {
    return "strategy/DeepMatrix";
  }

  static const char* value(const ::strategy::DeepMatrix_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::strategy::DeepMatrix_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32[] DeepMatrix\n"
;
  }

  static const char* value(const ::strategy::DeepMatrix_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::strategy::DeepMatrix_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.DeepMatrix);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DeepMatrix_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::strategy::DeepMatrix_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::strategy::DeepMatrix_<ContainerAllocator>& v)
  {
    s << indent << "DeepMatrix[]" << std::endl;
    for (size_t i = 0; i < v.DeepMatrix.size(); ++i)
    {
      s << indent << "  DeepMatrix[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.DeepMatrix[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // STRATEGY_MESSAGE_DEEPMATRIX_H