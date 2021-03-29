; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude SensorSet.msg.html

(cl:defclass <SensorSet> (roslisp-msg-protocol:ros-message)
  ((Roll
    :reader Roll
    :initarg :Roll
    :type cl:integer
    :initform 0)
   (Pitch
    :reader Pitch
    :initarg :Pitch
    :type cl:integer
    :initform 0)
   (Yaw
    :reader Yaw
    :initarg :Yaw
    :type cl:integer
    :initform 0)
   (GainRoll
    :reader GainRoll
    :initarg :GainRoll
    :type cl:integer
    :initform 0)
   (GainPitch
    :reader GainPitch
    :initarg :GainPitch
    :type cl:integer
    :initform 0)
   (GainKP
    :reader GainKP
    :initarg :GainKP
    :type cl:integer
    :initform 0)
   (GainKD
    :reader GainKD
    :initarg :GainKD
    :type cl:integer
    :initform 0)
   (DesireSet
    :reader DesireSet
    :initarg :DesireSet
    :type cl:boolean
    :initform cl:nil)
   (IMUReset
    :reader IMUReset
    :initarg :IMUReset
    :type cl:boolean
    :initform cl:nil)
   (ForceState
    :reader ForceState
    :initarg :ForceState
    :type cl:boolean
    :initform cl:nil)
   (GainSet
    :reader GainSet
    :initarg :GainSet
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SensorSet (<SensorSet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorSet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorSet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<SensorSet> is deprecated: use tku_msgs-msg:SensorSet instead.")))

(cl:ensure-generic-function 'Roll-val :lambda-list '(m))
(cl:defmethod Roll-val ((m <SensorSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Roll-val is deprecated.  Use tku_msgs-msg:Roll instead.")
  (Roll m))

(cl:ensure-generic-function 'Pitch-val :lambda-list '(m))
(cl:defmethod Pitch-val ((m <SensorSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Pitch-val is deprecated.  Use tku_msgs-msg:Pitch instead.")
  (Pitch m))

(cl:ensure-generic-function 'Yaw-val :lambda-list '(m))
(cl:defmethod Yaw-val ((m <SensorSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Yaw-val is deprecated.  Use tku_msgs-msg:Yaw instead.")
  (Yaw m))

(cl:ensure-generic-function 'GainRoll-val :lambda-list '(m))
(cl:defmethod GainRoll-val ((m <SensorSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:GainRoll-val is deprecated.  Use tku_msgs-msg:GainRoll instead.")
  (GainRoll m))

(cl:ensure-generic-function 'GainPitch-val :lambda-list '(m))
(cl:defmethod GainPitch-val ((m <SensorSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:GainPitch-val is deprecated.  Use tku_msgs-msg:GainPitch instead.")
  (GainPitch m))

(cl:ensure-generic-function 'GainKP-val :lambda-list '(m))
(cl:defmethod GainKP-val ((m <SensorSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:GainKP-val is deprecated.  Use tku_msgs-msg:GainKP instead.")
  (GainKP m))

(cl:ensure-generic-function 'GainKD-val :lambda-list '(m))
(cl:defmethod GainKD-val ((m <SensorSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:GainKD-val is deprecated.  Use tku_msgs-msg:GainKD instead.")
  (GainKD m))

(cl:ensure-generic-function 'DesireSet-val :lambda-list '(m))
(cl:defmethod DesireSet-val ((m <SensorSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:DesireSet-val is deprecated.  Use tku_msgs-msg:DesireSet instead.")
  (DesireSet m))

(cl:ensure-generic-function 'IMUReset-val :lambda-list '(m))
(cl:defmethod IMUReset-val ((m <SensorSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:IMUReset-val is deprecated.  Use tku_msgs-msg:IMUReset instead.")
  (IMUReset m))

(cl:ensure-generic-function 'ForceState-val :lambda-list '(m))
(cl:defmethod ForceState-val ((m <SensorSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:ForceState-val is deprecated.  Use tku_msgs-msg:ForceState instead.")
  (ForceState m))

(cl:ensure-generic-function 'GainSet-val :lambda-list '(m))
(cl:defmethod GainSet-val ((m <SensorSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:GainSet-val is deprecated.  Use tku_msgs-msg:GainSet instead.")
  (GainSet m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorSet>) ostream)
  "Serializes a message object of type '<SensorSet>"
  (cl:let* ((signed (cl:slot-value msg 'Roll)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Pitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Yaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'GainRoll)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'GainPitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'GainKP)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'GainKD)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'DesireSet) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'IMUReset) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ForceState) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'GainSet) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorSet>) istream)
  "Deserializes a message object of type '<SensorSet>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Roll) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Pitch) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Yaw) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'GainRoll) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'GainPitch) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'GainKP) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'GainKD) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'DesireSet) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'IMUReset) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ForceState) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'GainSet) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorSet>)))
  "Returns string type for a message object of type '<SensorSet>"
  "tku_msgs/SensorSet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorSet)))
  "Returns string type for a message object of type 'SensorSet"
  "tku_msgs/SensorSet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorSet>)))
  "Returns md5sum for a message object of type '<SensorSet>"
  "6c13fdf5a7d05959108eed5391a02dd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorSet)))
  "Returns md5sum for a message object of type 'SensorSet"
  "6c13fdf5a7d05959108eed5391a02dd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorSet>)))
  "Returns full string definition for message of type '<SensorSet>"
  (cl:format cl:nil "int32 Roll~%int32 Pitch~%int32 Yaw~%int32 GainRoll~%int32 GainPitch~%int32 GainKP~%int32 GainKD~%bool DesireSet~%bool IMUReset~%bool ForceState~%bool GainSet~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorSet)))
  "Returns full string definition for message of type 'SensorSet"
  (cl:format cl:nil "int32 Roll~%int32 Pitch~%int32 Yaw~%int32 GainRoll~%int32 GainPitch~%int32 GainKP~%int32 GainKD~%bool DesireSet~%bool IMUReset~%bool ForceState~%bool GainSet~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorSet>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorSet>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorSet
    (cl:cons ':Roll (Roll msg))
    (cl:cons ':Pitch (Pitch msg))
    (cl:cons ':Yaw (Yaw msg))
    (cl:cons ':GainRoll (GainRoll msg))
    (cl:cons ':GainPitch (GainPitch msg))
    (cl:cons ':GainKP (GainKP msg))
    (cl:cons ':GainKD (GainKD msg))
    (cl:cons ':DesireSet (DesireSet msg))
    (cl:cons ':IMUReset (IMUReset msg))
    (cl:cons ':ForceState (ForceState msg))
    (cl:cons ':GainSet (GainSet msg))
))
