; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude SetRobotPos.msg.html

(cl:defclass <SetRobotPos> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:fixnum
    :initform 0)
   (x
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
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetRobotPos (<SetRobotPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRobotPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRobotPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<SetRobotPos> is deprecated: use tku_msgs-msg:SetRobotPos instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <SetRobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:number-val is deprecated.  Use tku_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SetRobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:x-val is deprecated.  Use tku_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SetRobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:y-val is deprecated.  Use tku_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'dir-val :lambda-list '(m))
(cl:defmethod dir-val ((m <SetRobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:dir-val is deprecated.  Use tku_msgs-msg:dir instead.")
  (dir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRobotPos>) ostream)
  "Serializes a message object of type '<SetRobotPos>"
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dir)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRobotPos>) istream)
  "Deserializes a message object of type '<SetRobotPos>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dir) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRobotPos>)))
  "Returns string type for a message object of type '<SetRobotPos>"
  "tku_msgs/SetRobotPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRobotPos)))
  "Returns string type for a message object of type 'SetRobotPos"
  "tku_msgs/SetRobotPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRobotPos>)))
  "Returns md5sum for a message object of type '<SetRobotPos>"
  "19f4baebbc12c880780ca548bf4b0c0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRobotPos)))
  "Returns md5sum for a message object of type 'SetRobotPos"
  "19f4baebbc12c880780ca548bf4b0c0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRobotPos>)))
  "Returns full string definition for message of type '<SetRobotPos>"
  (cl:format cl:nil "int16 number~%int16 x~%int16 y~%int16 dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRobotPos)))
  "Returns full string definition for message of type 'SetRobotPos"
  (cl:format cl:nil "int16 number~%int16 x~%int16 y~%int16 dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRobotPos>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRobotPos>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRobotPos
    (cl:cons ':number (number msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':dir (dir msg))
))
