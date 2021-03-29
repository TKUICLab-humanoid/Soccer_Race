; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude IKinfo_message.msg.html

(cl:defclass <IKinfo_message> (roslisp-msg-protocol:ros-message)
  ((IK_Point_RX
    :reader IK_Point_RX
    :initarg :IK_Point_RX
    :type cl:float
    :initform 0.0)
   (IK_Point_RY
    :reader IK_Point_RY
    :initarg :IK_Point_RY
    :type cl:float
    :initform 0.0)
   (IK_Point_RZ
    :reader IK_Point_RZ
    :initarg :IK_Point_RZ
    :type cl:float
    :initform 0.0)
   (IK_Point_RThta
    :reader IK_Point_RThta
    :initarg :IK_Point_RThta
    :type cl:float
    :initform 0.0)
   (IK_Point_LX
    :reader IK_Point_LX
    :initarg :IK_Point_LX
    :type cl:float
    :initform 0.0)
   (IK_Point_LY
    :reader IK_Point_LY
    :initarg :IK_Point_LY
    :type cl:float
    :initform 0.0)
   (IK_Point_LZ
    :reader IK_Point_LZ
    :initarg :IK_Point_LZ
    :type cl:float
    :initform 0.0)
   (IK_Point_LThta
    :reader IK_Point_LThta
    :initarg :IK_Point_LThta
    :type cl:float
    :initform 0.0)
   (Period_T
    :reader Period_T
    :initarg :Period_T
    :type cl:integer
    :initform 0)
   (Sampletime
    :reader Sampletime
    :initarg :Sampletime
    :type cl:integer
    :initform 0)
   (Walking_State
    :reader Walking_State
    :initarg :Walking_State
    :type cl:integer
    :initform 0)
   (Sensor_Mode
    :reader Sensor_Mode
    :initarg :Sensor_Mode
    :type cl:integer
    :initform 0))
)

(cl:defclass IKinfo_message (<IKinfo_message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IKinfo_message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IKinfo_message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<IKinfo_message> is deprecated: use tku_msgs-msg:IKinfo_message instead.")))

(cl:ensure-generic-function 'IK_Point_RX-val :lambda-list '(m))
(cl:defmethod IK_Point_RX-val ((m <IKinfo_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:IK_Point_RX-val is deprecated.  Use tku_msgs-msg:IK_Point_RX instead.")
  (IK_Point_RX m))

(cl:ensure-generic-function 'IK_Point_RY-val :lambda-list '(m))
(cl:defmethod IK_Point_RY-val ((m <IKinfo_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:IK_Point_RY-val is deprecated.  Use tku_msgs-msg:IK_Point_RY instead.")
  (IK_Point_RY m))

(cl:ensure-generic-function 'IK_Point_RZ-val :lambda-list '(m))
(cl:defmethod IK_Point_RZ-val ((m <IKinfo_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:IK_Point_RZ-val is deprecated.  Use tku_msgs-msg:IK_Point_RZ instead.")
  (IK_Point_RZ m))

(cl:ensure-generic-function 'IK_Point_RThta-val :lambda-list '(m))
(cl:defmethod IK_Point_RThta-val ((m <IKinfo_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:IK_Point_RThta-val is deprecated.  Use tku_msgs-msg:IK_Point_RThta instead.")
  (IK_Point_RThta m))

(cl:ensure-generic-function 'IK_Point_LX-val :lambda-list '(m))
(cl:defmethod IK_Point_LX-val ((m <IKinfo_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:IK_Point_LX-val is deprecated.  Use tku_msgs-msg:IK_Point_LX instead.")
  (IK_Point_LX m))

(cl:ensure-generic-function 'IK_Point_LY-val :lambda-list '(m))
(cl:defmethod IK_Point_LY-val ((m <IKinfo_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:IK_Point_LY-val is deprecated.  Use tku_msgs-msg:IK_Point_LY instead.")
  (IK_Point_LY m))

(cl:ensure-generic-function 'IK_Point_LZ-val :lambda-list '(m))
(cl:defmethod IK_Point_LZ-val ((m <IKinfo_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:IK_Point_LZ-val is deprecated.  Use tku_msgs-msg:IK_Point_LZ instead.")
  (IK_Point_LZ m))

(cl:ensure-generic-function 'IK_Point_LThta-val :lambda-list '(m))
(cl:defmethod IK_Point_LThta-val ((m <IKinfo_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:IK_Point_LThta-val is deprecated.  Use tku_msgs-msg:IK_Point_LThta instead.")
  (IK_Point_LThta m))

(cl:ensure-generic-function 'Period_T-val :lambda-list '(m))
(cl:defmethod Period_T-val ((m <IKinfo_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Period_T-val is deprecated.  Use tku_msgs-msg:Period_T instead.")
  (Period_T m))

(cl:ensure-generic-function 'Sampletime-val :lambda-list '(m))
(cl:defmethod Sampletime-val ((m <IKinfo_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Sampletime-val is deprecated.  Use tku_msgs-msg:Sampletime instead.")
  (Sampletime m))

(cl:ensure-generic-function 'Walking_State-val :lambda-list '(m))
(cl:defmethod Walking_State-val ((m <IKinfo_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Walking_State-val is deprecated.  Use tku_msgs-msg:Walking_State instead.")
  (Walking_State m))

(cl:ensure-generic-function 'Sensor_Mode-val :lambda-list '(m))
(cl:defmethod Sensor_Mode-val ((m <IKinfo_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Sensor_Mode-val is deprecated.  Use tku_msgs-msg:Sensor_Mode instead.")
  (Sensor_Mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IKinfo_message>) ostream)
  "Serializes a message object of type '<IKinfo_message>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'IK_Point_RX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'IK_Point_RY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'IK_Point_RZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'IK_Point_RThta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'IK_Point_LX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'IK_Point_LY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'IK_Point_LZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'IK_Point_LThta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Period_T)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Sampletime)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Walking_State)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IKinfo_message>) istream)
  "Deserializes a message object of type '<IKinfo_message>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'IK_Point_RX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'IK_Point_RY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'IK_Point_RZ) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'IK_Point_RThta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'IK_Point_LX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'IK_Point_LY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'IK_Point_LZ) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'IK_Point_LThta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Period_T) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Sampletime) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Walking_State) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Sensor_Mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IKinfo_message>)))
  "Returns string type for a message object of type '<IKinfo_message>"
  "tku_msgs/IKinfo_message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IKinfo_message)))
  "Returns string type for a message object of type 'IKinfo_message"
  "tku_msgs/IKinfo_message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IKinfo_message>)))
  "Returns md5sum for a message object of type '<IKinfo_message>"
  "9899904ffd0ecd709bdf1dcea6bf4ab5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IKinfo_message)))
  "Returns md5sum for a message object of type 'IKinfo_message"
  "9899904ffd0ecd709bdf1dcea6bf4ab5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IKinfo_message>)))
  "Returns full string definition for message of type '<IKinfo_message>"
  (cl:format cl:nil "float64 IK_Point_RX~%float64 IK_Point_RY~%float64 IK_Point_RZ~%float64 IK_Point_RThta~%float64 IK_Point_LX~%float64 IK_Point_LY~%float64 IK_Point_LZ ~%float64 IK_Point_LThta~%int32 Period_T~%int32 Sampletime~%int32 Walking_State~%int32 Sensor_Mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IKinfo_message)))
  "Returns full string definition for message of type 'IKinfo_message"
  (cl:format cl:nil "float64 IK_Point_RX~%float64 IK_Point_RY~%float64 IK_Point_RZ~%float64 IK_Point_RThta~%float64 IK_Point_LX~%float64 IK_Point_LY~%float64 IK_Point_LZ ~%float64 IK_Point_LThta~%int32 Period_T~%int32 Sampletime~%int32 Walking_State~%int32 Sensor_Mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IKinfo_message>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IKinfo_message>))
  "Converts a ROS message object to a list"
  (cl:list 'IKinfo_message
    (cl:cons ':IK_Point_RX (IK_Point_RX msg))
    (cl:cons ':IK_Point_RY (IK_Point_RY msg))
    (cl:cons ':IK_Point_RZ (IK_Point_RZ msg))
    (cl:cons ':IK_Point_RThta (IK_Point_RThta msg))
    (cl:cons ':IK_Point_LX (IK_Point_LX msg))
    (cl:cons ':IK_Point_LY (IK_Point_LY msg))
    (cl:cons ':IK_Point_LZ (IK_Point_LZ msg))
    (cl:cons ':IK_Point_LThta (IK_Point_LThta msg))
    (cl:cons ':Period_T (Period_T msg))
    (cl:cons ':Sampletime (Sampletime msg))
    (cl:cons ':Walking_State (Walking_State msg))
    (cl:cons ':Sensor_Mode (Sensor_Mode msg))
))
