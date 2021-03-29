; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude Parameter_message.msg.html

(cl:defclass <Parameter_message> (roslisp-msg-protocol:ros-message)
  ((Walking_Mode
    :reader Walking_Mode
    :initarg :Walking_Mode
    :type cl:integer
    :initform 0)
   (X_Swing_Range
    :reader X_Swing_Range
    :initarg :X_Swing_Range
    :type cl:float
    :initform 0.0)
   (Y_Swing_Range
    :reader Y_Swing_Range
    :initarg :Y_Swing_Range
    :type cl:float
    :initform 0.0)
   (Z_Swing_Range
    :reader Z_Swing_Range
    :initarg :Z_Swing_Range
    :type cl:float
    :initform 0.0)
   (Period_T
    :reader Period_T
    :initarg :Period_T
    :type cl:integer
    :initform 0)
   (Period_T2
    :reader Period_T2
    :initarg :Period_T2
    :type cl:integer
    :initform 0)
   (Sample_Time
    :reader Sample_Time
    :initarg :Sample_Time
    :type cl:integer
    :initform 0)
   (OSC_LockRange
    :reader OSC_LockRange
    :initarg :OSC_LockRange
    :type cl:float
    :initform 0.0)
   (BASE_Default_Z
    :reader BASE_Default_Z
    :initarg :BASE_Default_Z
    :type cl:float
    :initform 0.0)
   (Y_Swing_Shift
    :reader Y_Swing_Shift
    :initarg :Y_Swing_Shift
    :type cl:integer
    :initform 0)
   (X_Swing_COM
    :reader X_Swing_COM
    :initarg :X_Swing_COM
    :type cl:integer
    :initform 0)
   (BASE_LIFT_Z
    :reader BASE_LIFT_Z
    :initarg :BASE_LIFT_Z
    :type cl:integer
    :initform 0)
   (B_SplineParam
    :reader B_SplineParam
    :initarg :B_SplineParam
    :type tku_msgs-msg:B_SplineParam
    :initform (cl:make-instance 'tku_msgs-msg:B_SplineParam)))
)

(cl:defclass Parameter_message (<Parameter_message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Parameter_message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Parameter_message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<Parameter_message> is deprecated: use tku_msgs-msg:Parameter_message instead.")))

(cl:ensure-generic-function 'Walking_Mode-val :lambda-list '(m))
(cl:defmethod Walking_Mode-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Walking_Mode-val is deprecated.  Use tku_msgs-msg:Walking_Mode instead.")
  (Walking_Mode m))

(cl:ensure-generic-function 'X_Swing_Range-val :lambda-list '(m))
(cl:defmethod X_Swing_Range-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:X_Swing_Range-val is deprecated.  Use tku_msgs-msg:X_Swing_Range instead.")
  (X_Swing_Range m))

(cl:ensure-generic-function 'Y_Swing_Range-val :lambda-list '(m))
(cl:defmethod Y_Swing_Range-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Y_Swing_Range-val is deprecated.  Use tku_msgs-msg:Y_Swing_Range instead.")
  (Y_Swing_Range m))

(cl:ensure-generic-function 'Z_Swing_Range-val :lambda-list '(m))
(cl:defmethod Z_Swing_Range-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Z_Swing_Range-val is deprecated.  Use tku_msgs-msg:Z_Swing_Range instead.")
  (Z_Swing_Range m))

(cl:ensure-generic-function 'Period_T-val :lambda-list '(m))
(cl:defmethod Period_T-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Period_T-val is deprecated.  Use tku_msgs-msg:Period_T instead.")
  (Period_T m))

(cl:ensure-generic-function 'Period_T2-val :lambda-list '(m))
(cl:defmethod Period_T2-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Period_T2-val is deprecated.  Use tku_msgs-msg:Period_T2 instead.")
  (Period_T2 m))

(cl:ensure-generic-function 'Sample_Time-val :lambda-list '(m))
(cl:defmethod Sample_Time-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Sample_Time-val is deprecated.  Use tku_msgs-msg:Sample_Time instead.")
  (Sample_Time m))

(cl:ensure-generic-function 'OSC_LockRange-val :lambda-list '(m))
(cl:defmethod OSC_LockRange-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:OSC_LockRange-val is deprecated.  Use tku_msgs-msg:OSC_LockRange instead.")
  (OSC_LockRange m))

(cl:ensure-generic-function 'BASE_Default_Z-val :lambda-list '(m))
(cl:defmethod BASE_Default_Z-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:BASE_Default_Z-val is deprecated.  Use tku_msgs-msg:BASE_Default_Z instead.")
  (BASE_Default_Z m))

(cl:ensure-generic-function 'Y_Swing_Shift-val :lambda-list '(m))
(cl:defmethod Y_Swing_Shift-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Y_Swing_Shift-val is deprecated.  Use tku_msgs-msg:Y_Swing_Shift instead.")
  (Y_Swing_Shift m))

(cl:ensure-generic-function 'X_Swing_COM-val :lambda-list '(m))
(cl:defmethod X_Swing_COM-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:X_Swing_COM-val is deprecated.  Use tku_msgs-msg:X_Swing_COM instead.")
  (X_Swing_COM m))

(cl:ensure-generic-function 'BASE_LIFT_Z-val :lambda-list '(m))
(cl:defmethod BASE_LIFT_Z-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:BASE_LIFT_Z-val is deprecated.  Use tku_msgs-msg:BASE_LIFT_Z instead.")
  (BASE_LIFT_Z m))

(cl:ensure-generic-function 'B_SplineParam-val :lambda-list '(m))
(cl:defmethod B_SplineParam-val ((m <Parameter_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:B_SplineParam-val is deprecated.  Use tku_msgs-msg:B_SplineParam instead.")
  (B_SplineParam m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Parameter_message>) ostream)
  "Serializes a message object of type '<Parameter_message>"
  (cl:let* ((signed (cl:slot-value msg 'Walking_Mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'X_Swing_Range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Y_Swing_Range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Z_Swing_Range))))
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
  (cl:let* ((signed (cl:slot-value msg 'Period_T2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Sample_Time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'OSC_LockRange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'BASE_Default_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Y_Swing_Shift)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'X_Swing_COM)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'BASE_LIFT_Z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'B_SplineParam) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Parameter_message>) istream)
  "Deserializes a message object of type '<Parameter_message>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Walking_Mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'X_Swing_Range) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Y_Swing_Range) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Z_Swing_Range) (roslisp-utils:decode-double-float-bits bits)))
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
      (cl:setf (cl:slot-value msg 'Period_T2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Sample_Time) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'OSC_LockRange) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BASE_Default_Z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Y_Swing_Shift) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'X_Swing_COM) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BASE_LIFT_Z) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'B_SplineParam) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Parameter_message>)))
  "Returns string type for a message object of type '<Parameter_message>"
  "tku_msgs/Parameter_message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Parameter_message)))
  "Returns string type for a message object of type 'Parameter_message"
  "tku_msgs/Parameter_message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Parameter_message>)))
  "Returns md5sum for a message object of type '<Parameter_message>"
  "0ff3428b87b449995d8490e48a39ea2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Parameter_message)))
  "Returns md5sum for a message object of type 'Parameter_message"
  "0ff3428b87b449995d8490e48a39ea2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Parameter_message>)))
  "Returns full string definition for message of type '<Parameter_message>"
  (cl:format cl:nil "int32 Walking_Mode~%float64 X_Swing_Range~%float64 Y_Swing_Range~%float64 Z_Swing_Range~%int32 Period_T~%int32 Period_T2~%int32 Sample_Time~%float64 OSC_LockRange ~%float64 BASE_Default_Z~%int32 Y_Swing_Shift~%int32 X_Swing_COM~%int32 BASE_LIFT_Z~%B_SplineParam B_SplineParam~%~%================================================================================~%MSG: tku_msgs/B_SplineParam~%float32 Kick_Point_X~%float32 Kick_Point_Y~%float32 Kick_Point_Z~%float32 Back_Point_X~%float32 Back_Point_Z~%float32 Support_Foot_Hip_Upper_Pitch~%float32 Kick_Foot_Ankle_Upper_Pitch~%float32 Support_Foot_Ankle_Upper_Pitch~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Parameter_message)))
  "Returns full string definition for message of type 'Parameter_message"
  (cl:format cl:nil "int32 Walking_Mode~%float64 X_Swing_Range~%float64 Y_Swing_Range~%float64 Z_Swing_Range~%int32 Period_T~%int32 Period_T2~%int32 Sample_Time~%float64 OSC_LockRange ~%float64 BASE_Default_Z~%int32 Y_Swing_Shift~%int32 X_Swing_COM~%int32 BASE_LIFT_Z~%B_SplineParam B_SplineParam~%~%================================================================================~%MSG: tku_msgs/B_SplineParam~%float32 Kick_Point_X~%float32 Kick_Point_Y~%float32 Kick_Point_Z~%float32 Back_Point_X~%float32 Back_Point_Z~%float32 Support_Foot_Hip_Upper_Pitch~%float32 Kick_Foot_Ankle_Upper_Pitch~%float32 Support_Foot_Ankle_Upper_Pitch~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Parameter_message>))
  (cl:+ 0
     4
     8
     8
     8
     4
     4
     4
     8
     8
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'B_SplineParam))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Parameter_message>))
  "Converts a ROS message object to a list"
  (cl:list 'Parameter_message
    (cl:cons ':Walking_Mode (Walking_Mode msg))
    (cl:cons ':X_Swing_Range (X_Swing_Range msg))
    (cl:cons ':Y_Swing_Range (Y_Swing_Range msg))
    (cl:cons ':Z_Swing_Range (Z_Swing_Range msg))
    (cl:cons ':Period_T (Period_T msg))
    (cl:cons ':Period_T2 (Period_T2 msg))
    (cl:cons ':Sample_Time (Sample_Time msg))
    (cl:cons ':OSC_LockRange (OSC_LockRange msg))
    (cl:cons ':BASE_Default_Z (BASE_Default_Z msg))
    (cl:cons ':Y_Swing_Shift (Y_Swing_Shift msg))
    (cl:cons ':X_Swing_COM (X_Swing_COM msg))
    (cl:cons ':BASE_LIFT_Z (BASE_LIFT_Z msg))
    (cl:cons ':B_SplineParam (B_SplineParam msg))
))
