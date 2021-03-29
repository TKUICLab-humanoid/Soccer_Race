; Auto-generated. Do not edit!


(cl:in-package tku_msgs-srv)


;//! \htmlinclude CameraInfo-request.msg.html

(cl:defclass <CameraInfo-request> (roslisp-msg-protocol:ros-message)
  ((Load
    :reader Load
    :initarg :Load
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraInfo-request (<CameraInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<CameraInfo-request> is deprecated: use tku_msgs-srv:CameraInfo-request instead.")))

(cl:ensure-generic-function 'Load-val :lambda-list '(m))
(cl:defmethod Load-val ((m <CameraInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Load-val is deprecated.  Use tku_msgs-srv:Load instead.")
  (Load m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraInfo-request>) ostream)
  "Serializes a message object of type '<CameraInfo-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Load) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraInfo-request>) istream)
  "Deserializes a message object of type '<CameraInfo-request>"
    (cl:setf (cl:slot-value msg 'Load) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraInfo-request>)))
  "Returns string type for a service object of type '<CameraInfo-request>"
  "tku_msgs/CameraInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraInfo-request)))
  "Returns string type for a service object of type 'CameraInfo-request"
  "tku_msgs/CameraInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraInfo-request>)))
  "Returns md5sum for a message object of type '<CameraInfo-request>"
  "5d903b0ce533a144da9c4015f43ae098")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraInfo-request)))
  "Returns md5sum for a message object of type 'CameraInfo-request"
  "5d903b0ce533a144da9c4015f43ae098")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraInfo-request>)))
  "Returns full string definition for message of type '<CameraInfo-request>"
  (cl:format cl:nil "bool Load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraInfo-request)))
  "Returns full string definition for message of type 'CameraInfo-request"
  (cl:format cl:nil "bool Load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraInfo-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraInfo-request
    (cl:cons ':Load (Load msg))
))
;//! \htmlinclude CameraInfo-response.msg.html

(cl:defclass <CameraInfo-response> (roslisp-msg-protocol:ros-message)
  ((brightness
    :reader brightness
    :initarg :brightness
    :type cl:integer
    :initform 0)
   (contrast
    :reader contrast
    :initarg :contrast
    :type cl:integer
    :initform 0)
   (saturation
    :reader saturation
    :initarg :saturation
    :type cl:integer
    :initform 0)
   (white_balance
    :reader white_balance
    :initarg :white_balance
    :type cl:integer
    :initform 0)
   (auto_white_balance
    :reader auto_white_balance
    :initarg :auto_white_balance
    :type cl:boolean
    :initform cl:nil)
   (auto_exposure
    :reader auto_exposure
    :initarg :auto_exposure
    :type cl:boolean
    :initform cl:nil)
   (auto_Backlight_Compensation
    :reader auto_Backlight_Compensation
    :initarg :auto_Backlight_Compensation
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraInfo-response (<CameraInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<CameraInfo-response> is deprecated: use tku_msgs-srv:CameraInfo-response instead.")))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <CameraInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:brightness-val is deprecated.  Use tku_msgs-srv:brightness instead.")
  (brightness m))

(cl:ensure-generic-function 'contrast-val :lambda-list '(m))
(cl:defmethod contrast-val ((m <CameraInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:contrast-val is deprecated.  Use tku_msgs-srv:contrast instead.")
  (contrast m))

(cl:ensure-generic-function 'saturation-val :lambda-list '(m))
(cl:defmethod saturation-val ((m <CameraInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:saturation-val is deprecated.  Use tku_msgs-srv:saturation instead.")
  (saturation m))

(cl:ensure-generic-function 'white_balance-val :lambda-list '(m))
(cl:defmethod white_balance-val ((m <CameraInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:white_balance-val is deprecated.  Use tku_msgs-srv:white_balance instead.")
  (white_balance m))

(cl:ensure-generic-function 'auto_white_balance-val :lambda-list '(m))
(cl:defmethod auto_white_balance-val ((m <CameraInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:auto_white_balance-val is deprecated.  Use tku_msgs-srv:auto_white_balance instead.")
  (auto_white_balance m))

(cl:ensure-generic-function 'auto_exposure-val :lambda-list '(m))
(cl:defmethod auto_exposure-val ((m <CameraInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:auto_exposure-val is deprecated.  Use tku_msgs-srv:auto_exposure instead.")
  (auto_exposure m))

(cl:ensure-generic-function 'auto_Backlight_Compensation-val :lambda-list '(m))
(cl:defmethod auto_Backlight_Compensation-val ((m <CameraInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:auto_Backlight_Compensation-val is deprecated.  Use tku_msgs-srv:auto_Backlight_Compensation instead.")
  (auto_Backlight_Compensation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraInfo-response>) ostream)
  "Serializes a message object of type '<CameraInfo-response>"
  (cl:let* ((signed (cl:slot-value msg 'brightness)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'contrast)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'saturation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'white_balance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_white_balance) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_exposure) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_Backlight_Compensation) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraInfo-response>) istream)
  "Deserializes a message object of type '<CameraInfo-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brightness) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'contrast) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'saturation) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'white_balance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'auto_white_balance) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'auto_exposure) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'auto_Backlight_Compensation) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraInfo-response>)))
  "Returns string type for a service object of type '<CameraInfo-response>"
  "tku_msgs/CameraInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraInfo-response)))
  "Returns string type for a service object of type 'CameraInfo-response"
  "tku_msgs/CameraInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraInfo-response>)))
  "Returns md5sum for a message object of type '<CameraInfo-response>"
  "5d903b0ce533a144da9c4015f43ae098")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraInfo-response)))
  "Returns md5sum for a message object of type 'CameraInfo-response"
  "5d903b0ce533a144da9c4015f43ae098")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraInfo-response>)))
  "Returns full string definition for message of type '<CameraInfo-response>"
  (cl:format cl:nil "int32 brightness~%int32 contrast~%int32 saturation~%int32 white_balance~%bool auto_white_balance~%bool auto_exposure~%bool auto_Backlight_Compensation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraInfo-response)))
  "Returns full string definition for message of type 'CameraInfo-response"
  (cl:format cl:nil "int32 brightness~%int32 contrast~%int32 saturation~%int32 white_balance~%bool auto_white_balance~%bool auto_exposure~%bool auto_Backlight_Compensation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraInfo-response>))
  (cl:+ 0
     4
     4
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraInfo-response
    (cl:cons ':brightness (brightness msg))
    (cl:cons ':contrast (contrast msg))
    (cl:cons ':saturation (saturation msg))
    (cl:cons ':white_balance (white_balance msg))
    (cl:cons ':auto_white_balance (auto_white_balance msg))
    (cl:cons ':auto_exposure (auto_exposure msg))
    (cl:cons ':auto_Backlight_Compensation (auto_Backlight_Compensation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraInfo)))
  'CameraInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraInfo)))
  'CameraInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraInfo)))
  "Returns string type for a service object of type '<CameraInfo>"
  "tku_msgs/CameraInfo")