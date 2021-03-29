; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude HSVValue.msg.html

(cl:defclass <HSVValue> (roslisp-msg-protocol:ros-message)
  ((HMin
    :reader HMin
    :initarg :HMin
    :type cl:fixnum
    :initform 0)
   (HMax
    :reader HMax
    :initarg :HMax
    :type cl:fixnum
    :initform 0)
   (SMin
    :reader SMin
    :initarg :SMin
    :type cl:fixnum
    :initform 0)
   (SMax
    :reader SMax
    :initarg :SMax
    :type cl:fixnum
    :initform 0)
   (VMin
    :reader VMin
    :initarg :VMin
    :type cl:fixnum
    :initform 0)
   (VMax
    :reader VMax
    :initarg :VMax
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HSVValue (<HSVValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HSVValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HSVValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<HSVValue> is deprecated: use tku_msgs-msg:HSVValue instead.")))

(cl:ensure-generic-function 'HMin-val :lambda-list '(m))
(cl:defmethod HMin-val ((m <HSVValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:HMin-val is deprecated.  Use tku_msgs-msg:HMin instead.")
  (HMin m))

(cl:ensure-generic-function 'HMax-val :lambda-list '(m))
(cl:defmethod HMax-val ((m <HSVValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:HMax-val is deprecated.  Use tku_msgs-msg:HMax instead.")
  (HMax m))

(cl:ensure-generic-function 'SMin-val :lambda-list '(m))
(cl:defmethod SMin-val ((m <HSVValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:SMin-val is deprecated.  Use tku_msgs-msg:SMin instead.")
  (SMin m))

(cl:ensure-generic-function 'SMax-val :lambda-list '(m))
(cl:defmethod SMax-val ((m <HSVValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:SMax-val is deprecated.  Use tku_msgs-msg:SMax instead.")
  (SMax m))

(cl:ensure-generic-function 'VMin-val :lambda-list '(m))
(cl:defmethod VMin-val ((m <HSVValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:VMin-val is deprecated.  Use tku_msgs-msg:VMin instead.")
  (VMin m))

(cl:ensure-generic-function 'VMax-val :lambda-list '(m))
(cl:defmethod VMax-val ((m <HSVValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:VMax-val is deprecated.  Use tku_msgs-msg:VMax instead.")
  (VMax m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HSVValue>) ostream)
  "Serializes a message object of type '<HSVValue>"
  (cl:let* ((signed (cl:slot-value msg 'HMin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'HMax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'SMin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'SMax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'VMin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'VMax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HSVValue>) istream)
  "Deserializes a message object of type '<HSVValue>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'HMin) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'HMax) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SMin) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SMax) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'VMin) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'VMax) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HSVValue>)))
  "Returns string type for a message object of type '<HSVValue>"
  "tku_msgs/HSVValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HSVValue)))
  "Returns string type for a message object of type 'HSVValue"
  "tku_msgs/HSVValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HSVValue>)))
  "Returns md5sum for a message object of type '<HSVValue>"
  "a3f516b6603d2233bee0097ee5df3644")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HSVValue)))
  "Returns md5sum for a message object of type 'HSVValue"
  "a3f516b6603d2233bee0097ee5df3644")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HSVValue>)))
  "Returns full string definition for message of type '<HSVValue>"
  (cl:format cl:nil "int16 HMin~%int16 HMax~%int16 SMin~%int16 SMax~%int16 VMin~%int16 VMax~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HSVValue)))
  "Returns full string definition for message of type 'HSVValue"
  (cl:format cl:nil "int16 HMin~%int16 HMax~%int16 SMin~%int16 SMax~%int16 VMin~%int16 VMax~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HSVValue>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HSVValue>))
  "Converts a ROS message object to a list"
  (cl:list 'HSVValue
    (cl:cons ':HMin (HMin msg))
    (cl:cons ':HMax (HMax msg))
    (cl:cons ':SMin (SMin msg))
    (cl:cons ':SMax (SMax msg))
    (cl:cons ':VMin (VMin msg))
    (cl:cons ':VMax (VMax msg))
))
