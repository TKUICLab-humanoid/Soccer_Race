; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude SaveMotionVector.msg.html

(cl:defclass <SaveMotionVector> (roslisp-msg-protocol:ros-message)
  ((SaveMotionVector
    :reader SaveMotionVector
    :initarg :SaveMotionVector
    :type (cl:vector tku_msgs-msg:SaveMotion)
   :initform (cl:make-array 0 :element-type 'tku_msgs-msg:SaveMotion :initial-element (cl:make-instance 'tku_msgs-msg:SaveMotion))))
)

(cl:defclass SaveMotionVector (<SaveMotionVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveMotionVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveMotionVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<SaveMotionVector> is deprecated: use tku_msgs-msg:SaveMotionVector instead.")))

(cl:ensure-generic-function 'SaveMotionVector-val :lambda-list '(m))
(cl:defmethod SaveMotionVector-val ((m <SaveMotionVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:SaveMotionVector-val is deprecated.  Use tku_msgs-msg:SaveMotionVector instead.")
  (SaveMotionVector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveMotionVector>) ostream)
  "Serializes a message object of type '<SaveMotionVector>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'SaveMotionVector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'SaveMotionVector))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveMotionVector>) istream)
  "Deserializes a message object of type '<SaveMotionVector>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'SaveMotionVector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'SaveMotionVector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tku_msgs-msg:SaveMotion))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveMotionVector>)))
  "Returns string type for a message object of type '<SaveMotionVector>"
  "tku_msgs/SaveMotionVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveMotionVector)))
  "Returns string type for a message object of type 'SaveMotionVector"
  "tku_msgs/SaveMotionVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveMotionVector>)))
  "Returns md5sum for a message object of type '<SaveMotionVector>"
  "67e1cd0228979aba8328714863431170")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveMotionVector)))
  "Returns md5sum for a message object of type 'SaveMotionVector"
  "67e1cd0228979aba8328714863431170")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveMotionVector>)))
  "Returns full string definition for message of type '<SaveMotionVector>"
  (cl:format cl:nil "SaveMotion[] SaveMotionVector~%================================================================================~%MSG: tku_msgs/SaveMotion~%std_msgs/MultiArrayLayout layout~%string name~%int16 motionstate~%int16 ID~%int16 savestate~%bool saveflag~%int16[] MotionList~%int16[] MotorData~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveMotionVector)))
  "Returns full string definition for message of type 'SaveMotionVector"
  (cl:format cl:nil "SaveMotion[] SaveMotionVector~%================================================================================~%MSG: tku_msgs/SaveMotion~%std_msgs/MultiArrayLayout layout~%string name~%int16 motionstate~%int16 ID~%int16 savestate~%bool saveflag~%int16[] MotionList~%int16[] MotorData~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveMotionVector>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'SaveMotionVector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveMotionVector>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveMotionVector
    (cl:cons ':SaveMotionVector (SaveMotionVector msg))
))
