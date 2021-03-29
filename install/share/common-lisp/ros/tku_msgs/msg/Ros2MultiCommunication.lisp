; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude Ros2MultiCommunication.msg.html

(cl:defclass <Ros2MultiCommunication> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (who
    :reader who
    :initarg :who
    :type (cl:vector tku_msgs-msg:CharacterInfo)
   :initform (cl:make-array 0 :element-type 'tku_msgs-msg:CharacterInfo :initial-element (cl:make-instance 'tku_msgs-msg:CharacterInfo))))
)

(cl:defclass Ros2MultiCommunication (<Ros2MultiCommunication>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ros2MultiCommunication>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ros2MultiCommunication)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<Ros2MultiCommunication> is deprecated: use tku_msgs-msg:Ros2MultiCommunication instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ros2MultiCommunication>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:header-val is deprecated.  Use tku_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'who-val :lambda-list '(m))
(cl:defmethod who-val ((m <Ros2MultiCommunication>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:who-val is deprecated.  Use tku_msgs-msg:who instead.")
  (who m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ros2MultiCommunication>) ostream)
  "Serializes a message object of type '<Ros2MultiCommunication>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'who))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'who))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ros2MultiCommunication>) istream)
  "Deserializes a message object of type '<Ros2MultiCommunication>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'who) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'who)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tku_msgs-msg:CharacterInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ros2MultiCommunication>)))
  "Returns string type for a message object of type '<Ros2MultiCommunication>"
  "tku_msgs/Ros2MultiCommunication")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ros2MultiCommunication)))
  "Returns string type for a message object of type 'Ros2MultiCommunication"
  "tku_msgs/Ros2MultiCommunication")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ros2MultiCommunication>)))
  "Returns md5sum for a message object of type '<Ros2MultiCommunication>"
  "85518ba8fb2f5102548b06829ab94618")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ros2MultiCommunication)))
  "Returns md5sum for a message object of type 'Ros2MultiCommunication"
  "85518ba8fb2f5102548b06829ab94618")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ros2MultiCommunication>)))
  "Returns full string definition for message of type '<Ros2MultiCommunication>"
  (cl:format cl:nil "std_msgs/Header header~%CharacterInfo[] who~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tku_msgs/CharacterInfo~%string which_robot~%string name~%float32 x~%float32 y~%bool exist_flag~%WitchData theta~%WitchData dist~%ObjectInfo[] object~%ObjectInfo[] enemy~%~%================================================================================~%MSG: tku_msgs/WitchData~%float32 local~%float32 global~%~%================================================================================~%MSG: tku_msgs/ObjectInfo~%string name~%float32 x~%float32 y~%bool exist_flag~%WitchData theta~%WitchData dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ros2MultiCommunication)))
  "Returns full string definition for message of type 'Ros2MultiCommunication"
  (cl:format cl:nil "std_msgs/Header header~%CharacterInfo[] who~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tku_msgs/CharacterInfo~%string which_robot~%string name~%float32 x~%float32 y~%bool exist_flag~%WitchData theta~%WitchData dist~%ObjectInfo[] object~%ObjectInfo[] enemy~%~%================================================================================~%MSG: tku_msgs/WitchData~%float32 local~%float32 global~%~%================================================================================~%MSG: tku_msgs/ObjectInfo~%string name~%float32 x~%float32 y~%bool exist_flag~%WitchData theta~%WitchData dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ros2MultiCommunication>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'who) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ros2MultiCommunication>))
  "Converts a ROS message object to a list"
  (cl:list 'Ros2MultiCommunication
    (cl:cons ':header (header msg))
    (cl:cons ':who (who msg))
))
