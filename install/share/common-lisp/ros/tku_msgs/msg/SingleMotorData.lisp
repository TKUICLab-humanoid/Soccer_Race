; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude SingleMotorData.msg.html

(cl:defclass <SingleMotorData> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:fixnum
    :initform 0)
   (Position
    :reader Position
    :initarg :Position
    :type cl:fixnum
    :initform 0)
   (Speed
    :reader Speed
    :initarg :Speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SingleMotorData (<SingleMotorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SingleMotorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SingleMotorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<SingleMotorData> is deprecated: use tku_msgs-msg:SingleMotorData instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <SingleMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:ID-val is deprecated.  Use tku_msgs-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'Position-val :lambda-list '(m))
(cl:defmethod Position-val ((m <SingleMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Position-val is deprecated.  Use tku_msgs-msg:Position instead.")
  (Position m))

(cl:ensure-generic-function 'Speed-val :lambda-list '(m))
(cl:defmethod Speed-val ((m <SingleMotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Speed-val is deprecated.  Use tku_msgs-msg:Speed instead.")
  (Speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SingleMotorData>) ostream)
  "Serializes a message object of type '<SingleMotorData>"
  (cl:let* ((signed (cl:slot-value msg 'ID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SingleMotorData>) istream)
  "Deserializes a message object of type '<SingleMotorData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Position) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SingleMotorData>)))
  "Returns string type for a message object of type '<SingleMotorData>"
  "tku_msgs/SingleMotorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleMotorData)))
  "Returns string type for a message object of type 'SingleMotorData"
  "tku_msgs/SingleMotorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SingleMotorData>)))
  "Returns md5sum for a message object of type '<SingleMotorData>"
  "500f0005c75401d9e71a90a58a6bbf60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SingleMotorData)))
  "Returns md5sum for a message object of type 'SingleMotorData"
  "500f0005c75401d9e71a90a58a6bbf60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SingleMotorData>)))
  "Returns full string definition for message of type '<SingleMotorData>"
  (cl:format cl:nil "int16 ID~%int16 Position~%int16 Speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SingleMotorData)))
  "Returns full string definition for message of type 'SingleMotorData"
  (cl:format cl:nil "int16 ID~%int16 Position~%int16 Speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SingleMotorData>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SingleMotorData>))
  "Converts a ROS message object to a list"
  (cl:list 'SingleMotorData
    (cl:cons ':ID (ID msg))
    (cl:cons ':Position (Position msg))
    (cl:cons ':Speed (Speed msg))
))
