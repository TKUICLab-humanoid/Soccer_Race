; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude Walking_message.msg.html

(cl:defclass <Walking_message> (roslisp-msg-protocol:ros-message)
  ((X
    :reader X
    :initarg :X
    :type cl:integer
    :initform 0)
   (Y
    :reader Y
    :initarg :Y
    :type cl:integer
    :initform 0)
   (Z
    :reader Z
    :initarg :Z
    :type cl:integer
    :initform 0)
   (THETA
    :reader THETA
    :initarg :THETA
    :type cl:integer
    :initform 0)
   (Walking_Cmd
    :reader Walking_Cmd
    :initarg :Walking_Cmd
    :type cl:integer
    :initform 0)
   (Sensor_Mode
    :reader Sensor_Mode
    :initarg :Sensor_Mode
    :type cl:integer
    :initform 0))
)

(cl:defclass Walking_message (<Walking_message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Walking_message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Walking_message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<Walking_message> is deprecated: use tku_msgs-msg:Walking_message instead.")))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <Walking_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:X-val is deprecated.  Use tku_msgs-msg:X instead.")
  (X m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <Walking_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Y-val is deprecated.  Use tku_msgs-msg:Y instead.")
  (Y m))

(cl:ensure-generic-function 'Z-val :lambda-list '(m))
(cl:defmethod Z-val ((m <Walking_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Z-val is deprecated.  Use tku_msgs-msg:Z instead.")
  (Z m))

(cl:ensure-generic-function 'THETA-val :lambda-list '(m))
(cl:defmethod THETA-val ((m <Walking_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:THETA-val is deprecated.  Use tku_msgs-msg:THETA instead.")
  (THETA m))

(cl:ensure-generic-function 'Walking_Cmd-val :lambda-list '(m))
(cl:defmethod Walking_Cmd-val ((m <Walking_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Walking_Cmd-val is deprecated.  Use tku_msgs-msg:Walking_Cmd instead.")
  (Walking_Cmd m))

(cl:ensure-generic-function 'Sensor_Mode-val :lambda-list '(m))
(cl:defmethod Sensor_Mode-val ((m <Walking_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Sensor_Mode-val is deprecated.  Use tku_msgs-msg:Sensor_Mode instead.")
  (Sensor_Mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Walking_message>) ostream)
  "Serializes a message object of type '<Walking_message>"
  (cl:let* ((signed (cl:slot-value msg 'X)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'THETA)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Walking_Cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Sensor_Mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Walking_message>) istream)
  "Deserializes a message object of type '<Walking_message>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'X) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Z) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'THETA) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Walking_Cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Sensor_Mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Walking_message>)))
  "Returns string type for a message object of type '<Walking_message>"
  "tku_msgs/Walking_message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Walking_message)))
  "Returns string type for a message object of type 'Walking_message"
  "tku_msgs/Walking_message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Walking_message>)))
  "Returns md5sum for a message object of type '<Walking_message>"
  "b0d0a5fcb9aac712e8b8ff719a5c6246")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Walking_message)))
  "Returns md5sum for a message object of type 'Walking_message"
  "b0d0a5fcb9aac712e8b8ff719a5c6246")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Walking_message>)))
  "Returns full string definition for message of type '<Walking_message>"
  (cl:format cl:nil "int32 X~%int32 Y~%int32 Z~%int32 THETA~%int32 Walking_Cmd~%int32 Sensor_Mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Walking_message)))
  "Returns full string definition for message of type 'Walking_message"
  (cl:format cl:nil "int32 X~%int32 Y~%int32 Z~%int32 THETA~%int32 Walking_Cmd~%int32 Sensor_Mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Walking_message>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Walking_message>))
  "Converts a ROS message object to a list"
  (cl:list 'Walking_message
    (cl:cons ':X (X msg))
    (cl:cons ':Y (Y msg))
    (cl:cons ':Z (Z msg))
    (cl:cons ':THETA (THETA msg))
    (cl:cons ':Walking_Cmd (Walking_Cmd msg))
    (cl:cons ':Sensor_Mode (Sensor_Mode msg))
))
