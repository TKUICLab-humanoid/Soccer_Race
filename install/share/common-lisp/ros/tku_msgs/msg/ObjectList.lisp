; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude ObjectList.msg.html

(cl:defclass <ObjectList> (roslisp-msg-protocol:ros-message)
  ((Objectlist
    :reader Objectlist
    :initarg :Objectlist
    :type (cl:vector tku_msgs-msg:ColorArray)
   :initform (cl:make-array 0 :element-type 'tku_msgs-msg:ColorArray :initial-element (cl:make-instance 'tku_msgs-msg:ColorArray))))
)

(cl:defclass ObjectList (<ObjectList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<ObjectList> is deprecated: use tku_msgs-msg:ObjectList instead.")))

(cl:ensure-generic-function 'Objectlist-val :lambda-list '(m))
(cl:defmethod Objectlist-val ((m <ObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Objectlist-val is deprecated.  Use tku_msgs-msg:Objectlist instead.")
  (Objectlist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectList>) ostream)
  "Serializes a message object of type '<ObjectList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Objectlist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Objectlist))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectList>) istream)
  "Deserializes a message object of type '<ObjectList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Objectlist) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Objectlist)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tku_msgs-msg:ColorArray))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectList>)))
  "Returns string type for a message object of type '<ObjectList>"
  "tku_msgs/ObjectList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectList)))
  "Returns string type for a message object of type 'ObjectList"
  "tku_msgs/ObjectList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectList>)))
  "Returns md5sum for a message object of type '<ObjectList>"
  "2c07141cb8eb44d90e2277a09e02ec2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectList)))
  "Returns md5sum for a message object of type 'ObjectList"
  "2c07141cb8eb44d90e2277a09e02ec2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectList>)))
  "Returns full string definition for message of type '<ObjectList>"
  (cl:format cl:nil "ColorArray[] Objectlist~%~%================================================================================~%MSG: tku_msgs/ColorArray~%int32 cnt~%ColorData[] Colorarray~%~%================================================================================~%MSG: tku_msgs/ColorData~%int32 X~%int32 Y~%int32 XMin~%int32 XMax~%int32 YMin~%int32 YMax~%int32 Width~%int32 Height~%int32 size                                                 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectList)))
  "Returns full string definition for message of type 'ObjectList"
  (cl:format cl:nil "ColorArray[] Objectlist~%~%================================================================================~%MSG: tku_msgs/ColorArray~%int32 cnt~%ColorData[] Colorarray~%~%================================================================================~%MSG: tku_msgs/ColorData~%int32 X~%int32 Y~%int32 XMin~%int32 XMax~%int32 YMin~%int32 YMax~%int32 Width~%int32 Height~%int32 size                                                 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Objectlist) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectList>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectList
    (cl:cons ':Objectlist (Objectlist msg))
))
