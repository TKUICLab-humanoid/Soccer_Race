; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude SetGoalPoint.msg.html

(cl:defclass <SetGoalPoint> (roslisp-msg-protocol:ros-message)
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
    :initform 0))
)

(cl:defclass SetGoalPoint (<SetGoalPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoalPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoalPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<SetGoalPoint> is deprecated: use tku_msgs-msg:SetGoalPoint instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <SetGoalPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:number-val is deprecated.  Use tku_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SetGoalPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:x-val is deprecated.  Use tku_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SetGoalPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:y-val is deprecated.  Use tku_msgs-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoalPoint>) ostream)
  "Serializes a message object of type '<SetGoalPoint>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoalPoint>) istream)
  "Deserializes a message object of type '<SetGoalPoint>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoalPoint>)))
  "Returns string type for a message object of type '<SetGoalPoint>"
  "tku_msgs/SetGoalPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoalPoint)))
  "Returns string type for a message object of type 'SetGoalPoint"
  "tku_msgs/SetGoalPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoalPoint>)))
  "Returns md5sum for a message object of type '<SetGoalPoint>"
  "13a953e9417e5c884c60d46a1e0ff818")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoalPoint)))
  "Returns md5sum for a message object of type 'SetGoalPoint"
  "13a953e9417e5c884c60d46a1e0ff818")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoalPoint>)))
  "Returns full string definition for message of type '<SetGoalPoint>"
  (cl:format cl:nil "int16 number~%int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoalPoint)))
  "Returns full string definition for message of type 'SetGoalPoint"
  (cl:format cl:nil "int16 number~%int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoalPoint>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoalPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoalPoint
    (cl:cons ':number (number msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
