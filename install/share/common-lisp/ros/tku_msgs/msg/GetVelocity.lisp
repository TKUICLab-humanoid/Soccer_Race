; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude GetVelocity.msg.html

(cl:defclass <GetVelocity> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (thta
    :reader thta
    :initarg :thta
    :type cl:integer
    :initform 0))
)

(cl:defclass GetVelocity (<GetVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<GetVelocity> is deprecated: use tku_msgs-msg:GetVelocity instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:x-val is deprecated.  Use tku_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:y-val is deprecated.  Use tku_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'thta-val :lambda-list '(m))
(cl:defmethod thta-val ((m <GetVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:thta-val is deprecated.  Use tku_msgs-msg:thta instead.")
  (thta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVelocity>) ostream)
  "Serializes a message object of type '<GetVelocity>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'thta)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVelocity>) istream)
  "Deserializes a message object of type '<GetVelocity>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'thta) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVelocity>)))
  "Returns string type for a message object of type '<GetVelocity>"
  "tku_msgs/GetVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVelocity)))
  "Returns string type for a message object of type 'GetVelocity"
  "tku_msgs/GetVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVelocity>)))
  "Returns md5sum for a message object of type '<GetVelocity>"
  "608e030db4b1da323a9f83bf257ec356")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVelocity)))
  "Returns md5sum for a message object of type 'GetVelocity"
  "608e030db4b1da323a9f83bf257ec356")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVelocity>)))
  "Returns full string definition for message of type '<GetVelocity>"
  (cl:format cl:nil "int32 x~%int32 y~%int32 thta~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVelocity)))
  "Returns full string definition for message of type 'GetVelocity"
  (cl:format cl:nil "int32 x~%int32 y~%int32 thta~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVelocity>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVelocity
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':thta (thta msg))
))
