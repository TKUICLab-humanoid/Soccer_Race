; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude ColorArray.msg.html

(cl:defclass <ColorArray> (roslisp-msg-protocol:ros-message)
  ((cnt
    :reader cnt
    :initarg :cnt
    :type cl:integer
    :initform 0)
   (Colorarray
    :reader Colorarray
    :initarg :Colorarray
    :type (cl:vector tku_msgs-msg:ColorData)
   :initform (cl:make-array 0 :element-type 'tku_msgs-msg:ColorData :initial-element (cl:make-instance 'tku_msgs-msg:ColorData))))
)

(cl:defclass ColorArray (<ColorArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<ColorArray> is deprecated: use tku_msgs-msg:ColorArray instead.")))

(cl:ensure-generic-function 'cnt-val :lambda-list '(m))
(cl:defmethod cnt-val ((m <ColorArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:cnt-val is deprecated.  Use tku_msgs-msg:cnt instead.")
  (cnt m))

(cl:ensure-generic-function 'Colorarray-val :lambda-list '(m))
(cl:defmethod Colorarray-val ((m <ColorArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Colorarray-val is deprecated.  Use tku_msgs-msg:Colorarray instead.")
  (Colorarray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorArray>) ostream)
  "Serializes a message object of type '<ColorArray>"
  (cl:let* ((signed (cl:slot-value msg 'cnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Colorarray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Colorarray))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorArray>) istream)
  "Deserializes a message object of type '<ColorArray>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Colorarray) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Colorarray)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tku_msgs-msg:ColorData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorArray>)))
  "Returns string type for a message object of type '<ColorArray>"
  "tku_msgs/ColorArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorArray)))
  "Returns string type for a message object of type 'ColorArray"
  "tku_msgs/ColorArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorArray>)))
  "Returns md5sum for a message object of type '<ColorArray>"
  "9cb678902d3e5f54cc5645b0e01f2d9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorArray)))
  "Returns md5sum for a message object of type 'ColorArray"
  "9cb678902d3e5f54cc5645b0e01f2d9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorArray>)))
  "Returns full string definition for message of type '<ColorArray>"
  (cl:format cl:nil "int32 cnt~%ColorData[] Colorarray~%~%================================================================================~%MSG: tku_msgs/ColorData~%int32 X~%int32 Y~%int32 XMin~%int32 XMax~%int32 YMin~%int32 YMax~%int32 Width~%int32 Height~%int32 size                                                 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorArray)))
  "Returns full string definition for message of type 'ColorArray"
  (cl:format cl:nil "int32 cnt~%ColorData[] Colorarray~%~%================================================================================~%MSG: tku_msgs/ColorData~%int32 X~%int32 Y~%int32 XMin~%int32 XMax~%int32 YMin~%int32 YMax~%int32 Width~%int32 Height~%int32 size                                                 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorArray>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Colorarray) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorArray
    (cl:cons ':cnt (cnt msg))
    (cl:cons ':Colorarray (Colorarray msg))
))
