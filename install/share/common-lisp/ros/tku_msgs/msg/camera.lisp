; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude camera.msg.html

(cl:defclass <camera> (roslisp-msg-protocol:ros-message)
  ((brightness
    :reader brightness
    :initarg :brightness
    :type cl:float
    :initform 0.0)
   (contrast
    :reader contrast
    :initarg :contrast
    :type cl:float
    :initform 0.0)
   (saturation
    :reader saturation
    :initarg :saturation
    :type cl:float
    :initform 0.0)
   (white_balance
    :reader white_balance
    :initarg :white_balance
    :type cl:float
    :initform 0.0)
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

(cl:defclass camera (<camera>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <camera>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'camera)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<camera> is deprecated: use tku_msgs-msg:camera instead.")))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:brightness-val is deprecated.  Use tku_msgs-msg:brightness instead.")
  (brightness m))

(cl:ensure-generic-function 'contrast-val :lambda-list '(m))
(cl:defmethod contrast-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:contrast-val is deprecated.  Use tku_msgs-msg:contrast instead.")
  (contrast m))

(cl:ensure-generic-function 'saturation-val :lambda-list '(m))
(cl:defmethod saturation-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:saturation-val is deprecated.  Use tku_msgs-msg:saturation instead.")
  (saturation m))

(cl:ensure-generic-function 'white_balance-val :lambda-list '(m))
(cl:defmethod white_balance-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:white_balance-val is deprecated.  Use tku_msgs-msg:white_balance instead.")
  (white_balance m))

(cl:ensure-generic-function 'auto_white_balance-val :lambda-list '(m))
(cl:defmethod auto_white_balance-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:auto_white_balance-val is deprecated.  Use tku_msgs-msg:auto_white_balance instead.")
  (auto_white_balance m))

(cl:ensure-generic-function 'auto_exposure-val :lambda-list '(m))
(cl:defmethod auto_exposure-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:auto_exposure-val is deprecated.  Use tku_msgs-msg:auto_exposure instead.")
  (auto_exposure m))

(cl:ensure-generic-function 'auto_Backlight_Compensation-val :lambda-list '(m))
(cl:defmethod auto_Backlight_Compensation-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:auto_Backlight_Compensation-val is deprecated.  Use tku_msgs-msg:auto_Backlight_Compensation instead.")
  (auto_Backlight_Compensation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <camera>) ostream)
  "Serializes a message object of type '<camera>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brightness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'contrast))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'saturation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'white_balance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_white_balance) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_exposure) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_Backlight_Compensation) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <camera>) istream)
  "Deserializes a message object of type '<camera>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brightness) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'contrast) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'saturation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'white_balance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'auto_white_balance) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'auto_exposure) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'auto_Backlight_Compensation) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<camera>)))
  "Returns string type for a message object of type '<camera>"
  "tku_msgs/camera")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera)))
  "Returns string type for a message object of type 'camera"
  "tku_msgs/camera")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<camera>)))
  "Returns md5sum for a message object of type '<camera>"
  "d4530f04f4edaafec1a7e205edfb378a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'camera)))
  "Returns md5sum for a message object of type 'camera"
  "d4530f04f4edaafec1a7e205edfb378a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<camera>)))
  "Returns full string definition for message of type '<camera>"
  (cl:format cl:nil "float32 brightness~%float32 contrast~%float32 saturation~%float32 white_balance~%bool auto_white_balance~%bool auto_exposure ~%bool auto_Backlight_Compensation                 ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'camera)))
  "Returns full string definition for message of type 'camera"
  (cl:format cl:nil "float32 brightness~%float32 contrast~%float32 saturation~%float32 white_balance~%bool auto_white_balance~%bool auto_exposure ~%bool auto_Backlight_Compensation                 ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <camera>))
  (cl:+ 0
     4
     4
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <camera>))
  "Converts a ROS message object to a list"
  (cl:list 'camera
    (cl:cons ':brightness (brightness msg))
    (cl:cons ':contrast (contrast msg))
    (cl:cons ':saturation (saturation msg))
    (cl:cons ':white_balance (white_balance msg))
    (cl:cons ':auto_white_balance (auto_white_balance msg))
    (cl:cons ':auto_exposure (auto_exposure msg))
    (cl:cons ':auto_Backlight_Compensation (auto_Backlight_Compensation msg))
))
