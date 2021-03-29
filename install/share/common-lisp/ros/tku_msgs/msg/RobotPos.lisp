; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude RobotPos.msg.html

(cl:defclass <RobotPos> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0)
   (dir
    :reader dir
    :initarg :dir
    :type cl:float
    :initform 0.0))
)

(cl:defclass RobotPos (<RobotPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<RobotPos> is deprecated: use tku_msgs-msg:RobotPos instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <RobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:x-val is deprecated.  Use tku_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <RobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:y-val is deprecated.  Use tku_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <RobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:dir-val is deprecated.  Use tku_msgs-msg:dir instead.")
  (dir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotPos>) ostream)
  "Serializes a message object of type '<RobotPos>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotPos>) istream)
  "Deserializes a message object of type '<RobotPos>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dir) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotPos>)))
  "Returns string type for a message object of type '<RobotPos>"
  "tku_msgs/RobotPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotPos)))
  "Returns string type for a message object of type 'RobotPos"
  "tku_msgs/RobotPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotPos>)))
  "Returns md5sum for a message object of type '<RobotPos>"
  "82b3de07c7c34584e02eba05a4f17bac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotPos)))
  "Returns md5sum for a message object of type 'RobotPos"
  "82b3de07c7c34584e02eba05a4f17bac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotPos>)))
  "Returns full string definition for message of type '<RobotPos>"
  (cl:format cl:nil "int16 x~%int16 y~%float32 dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotPos)))
  "Returns full string definition for message of type 'RobotPos"
  (cl:format cl:nil "int16 x~%int16 y~%float32 dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotPos>))
  (cl:+ 0
     2
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotPos>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotPos
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':dir (dir msg))
))
