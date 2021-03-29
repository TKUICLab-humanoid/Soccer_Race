; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude BGRValue.msg.html

(cl:defclass <BGRValue> (roslisp-msg-protocol:ros-message)
  ((BValue
    :reader BValue
    :initarg :BValue
    :type cl:fixnum
    :initform 0)
   (GValue
    :reader GValue
    :initarg :GValue
    :type cl:fixnum
    :initform 0)
   (RValue
    :reader RValue
    :initarg :RValue
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BGRValue (<BGRValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BGRValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BGRValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<BGRValue> is deprecated: use tku_msgs-msg:BGRValue instead.")))

(cl:ensure-generic-function 'BValue-val :lambda-list '(m))
(cl:defmethod BValue-val ((m <BGRValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:BValue-val is deprecated.  Use tku_msgs-msg:BValue instead.")
  (BValue m))

(cl:ensure-generic-function 'GValue-val :lambda-list '(m))
(cl:defmethod GValue-val ((m <BGRValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:GValue-val is deprecated.  Use tku_msgs-msg:GValue instead.")
  (GValue m))

(cl:ensure-generic-function 'RValue-val :lambda-list '(m))
(cl:defmethod RValue-val ((m <BGRValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:RValue-val is deprecated.  Use tku_msgs-msg:RValue instead.")
  (RValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BGRValue>) ostream)
  "Serializes a message object of type '<BGRValue>"
  (cl:let* ((signed (cl:slot-value msg 'BValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'GValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'RValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BGRValue>) istream)
  "Deserializes a message object of type '<BGRValue>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BValue) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'GValue) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RValue) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BGRValue>)))
  "Returns string type for a message object of type '<BGRValue>"
  "tku_msgs/BGRValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BGRValue)))
  "Returns string type for a message object of type 'BGRValue"
  "tku_msgs/BGRValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BGRValue>)))
  "Returns md5sum for a message object of type '<BGRValue>"
  "1e44fde246936bf182ab7600000dc57b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BGRValue)))
  "Returns md5sum for a message object of type 'BGRValue"
  "1e44fde246936bf182ab7600000dc57b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BGRValue>)))
  "Returns full string definition for message of type '<BGRValue>"
  (cl:format cl:nil "int16 BValue~%int16 GValue~%int16 RValue~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BGRValue)))
  "Returns full string definition for message of type 'BGRValue"
  (cl:format cl:nil "int16 BValue~%int16 GValue~%int16 RValue~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BGRValue>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BGRValue>))
  "Converts a ROS message object to a list"
  (cl:list 'BGRValue
    (cl:cons ':BValue (BValue msg))
    (cl:cons ':GValue (GValue msg))
    (cl:cons ':RValue (RValue msg))
))
