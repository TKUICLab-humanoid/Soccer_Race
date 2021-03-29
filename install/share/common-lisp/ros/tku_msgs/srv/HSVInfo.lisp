; Auto-generated. Do not edit!


(cl:in-package tku_msgs-srv)


;//! \htmlinclude HSVInfo-request.msg.html

(cl:defclass <HSVInfo-request> (roslisp-msg-protocol:ros-message)
  ((ColorLabel
    :reader ColorLabel
    :initarg :ColorLabel
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HSVInfo-request (<HSVInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HSVInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HSVInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<HSVInfo-request> is deprecated: use tku_msgs-srv:HSVInfo-request instead.")))

(cl:ensure-generic-function 'ColorLabel-val :lambda-list '(m))
(cl:defmethod ColorLabel-val ((m <HSVInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:ColorLabel-val is deprecated.  Use tku_msgs-srv:ColorLabel instead.")
  (ColorLabel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HSVInfo-request>) ostream)
  "Serializes a message object of type '<HSVInfo-request>"
  (cl:let* ((signed (cl:slot-value msg 'ColorLabel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HSVInfo-request>) istream)
  "Deserializes a message object of type '<HSVInfo-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ColorLabel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HSVInfo-request>)))
  "Returns string type for a service object of type '<HSVInfo-request>"
  "tku_msgs/HSVInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HSVInfo-request)))
  "Returns string type for a service object of type 'HSVInfo-request"
  "tku_msgs/HSVInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HSVInfo-request>)))
  "Returns md5sum for a message object of type '<HSVInfo-request>"
  "e67cb823b89b43c54c3cf2f810ee06c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HSVInfo-request)))
  "Returns md5sum for a message object of type 'HSVInfo-request"
  "e67cb823b89b43c54c3cf2f810ee06c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HSVInfo-request>)))
  "Returns full string definition for message of type '<HSVInfo-request>"
  (cl:format cl:nil "int16 ColorLabel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HSVInfo-request)))
  "Returns full string definition for message of type 'HSVInfo-request"
  (cl:format cl:nil "int16 ColorLabel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HSVInfo-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HSVInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HSVInfo-request
    (cl:cons ':ColorLabel (ColorLabel msg))
))
;//! \htmlinclude HSVInfo-response.msg.html

(cl:defclass <HSVInfo-response> (roslisp-msg-protocol:ros-message)
  ((Hmin
    :reader Hmin
    :initarg :Hmin
    :type cl:integer
    :initform 0)
   (Hmax
    :reader Hmax
    :initarg :Hmax
    :type cl:integer
    :initform 0)
   (Smin
    :reader Smin
    :initarg :Smin
    :type cl:integer
    :initform 0)
   (Smax
    :reader Smax
    :initarg :Smax
    :type cl:integer
    :initform 0)
   (Vmin
    :reader Vmin
    :initarg :Vmin
    :type cl:integer
    :initform 0)
   (Vmax
    :reader Vmax
    :initarg :Vmax
    :type cl:integer
    :initform 0))
)

(cl:defclass HSVInfo-response (<HSVInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HSVInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HSVInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<HSVInfo-response> is deprecated: use tku_msgs-srv:HSVInfo-response instead.")))

(cl:ensure-generic-function 'Hmin-val :lambda-list '(m))
(cl:defmethod Hmin-val ((m <HSVInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Hmin-val is deprecated.  Use tku_msgs-srv:Hmin instead.")
  (Hmin m))

(cl:ensure-generic-function 'Hmax-val :lambda-list '(m))
(cl:defmethod Hmax-val ((m <HSVInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Hmax-val is deprecated.  Use tku_msgs-srv:Hmax instead.")
  (Hmax m))

(cl:ensure-generic-function 'Smin-val :lambda-list '(m))
(cl:defmethod Smin-val ((m <HSVInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Smin-val is deprecated.  Use tku_msgs-srv:Smin instead.")
  (Smin m))

(cl:ensure-generic-function 'Smax-val :lambda-list '(m))
(cl:defmethod Smax-val ((m <HSVInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Smax-val is deprecated.  Use tku_msgs-srv:Smax instead.")
  (Smax m))

(cl:ensure-generic-function 'Vmin-val :lambda-list '(m))
(cl:defmethod Vmin-val ((m <HSVInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Vmin-val is deprecated.  Use tku_msgs-srv:Vmin instead.")
  (Vmin m))

(cl:ensure-generic-function 'Vmax-val :lambda-list '(m))
(cl:defmethod Vmax-val ((m <HSVInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Vmax-val is deprecated.  Use tku_msgs-srv:Vmax instead.")
  (Vmax m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HSVInfo-response>) ostream)
  "Serializes a message object of type '<HSVInfo-response>"
  (cl:let* ((signed (cl:slot-value msg 'Hmin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Hmax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Smin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Smax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Vmin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Vmax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HSVInfo-response>) istream)
  "Deserializes a message object of type '<HSVInfo-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Hmin) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Hmax) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Smin) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Smax) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Vmin) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Vmax) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HSVInfo-response>)))
  "Returns string type for a service object of type '<HSVInfo-response>"
  "tku_msgs/HSVInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HSVInfo-response)))
  "Returns string type for a service object of type 'HSVInfo-response"
  "tku_msgs/HSVInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HSVInfo-response>)))
  "Returns md5sum for a message object of type '<HSVInfo-response>"
  "e67cb823b89b43c54c3cf2f810ee06c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HSVInfo-response)))
  "Returns md5sum for a message object of type 'HSVInfo-response"
  "e67cb823b89b43c54c3cf2f810ee06c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HSVInfo-response>)))
  "Returns full string definition for message of type '<HSVInfo-response>"
  (cl:format cl:nil "int32 Hmin~%int32 Hmax~%int32 Smin~%int32 Smax~%int32 Vmin~%int32 Vmax~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HSVInfo-response)))
  "Returns full string definition for message of type 'HSVInfo-response"
  (cl:format cl:nil "int32 Hmin~%int32 Hmax~%int32 Smin~%int32 Smax~%int32 Vmin~%int32 Vmax~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HSVInfo-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HSVInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HSVInfo-response
    (cl:cons ':Hmin (Hmin msg))
    (cl:cons ':Hmax (Hmax msg))
    (cl:cons ':Smin (Smin msg))
    (cl:cons ':Smax (Smax msg))
    (cl:cons ':Vmin (Vmin msg))
    (cl:cons ':Vmax (Vmax msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HSVInfo)))
  'HSVInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HSVInfo)))
  'HSVInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HSVInfo)))
  "Returns string type for a service object of type '<HSVInfo>"
  "tku_msgs/HSVInfo")