; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude B_SplineParam.msg.html

(cl:defclass <B_SplineParam> (roslisp-msg-protocol:ros-message)
  ((Kick_Point_X
    :reader Kick_Point_X
    :initarg :Kick_Point_X
    :type cl:float
    :initform 0.0)
   (Kick_Point_Y
    :reader Kick_Point_Y
    :initarg :Kick_Point_Y
    :type cl:float
    :initform 0.0)
   (Kick_Point_Z
    :reader Kick_Point_Z
    :initarg :Kick_Point_Z
    :type cl:float
    :initform 0.0)
   (Back_Point_X
    :reader Back_Point_X
    :initarg :Back_Point_X
    :type cl:float
    :initform 0.0)
   (Back_Point_Z
    :reader Back_Point_Z
    :initarg :Back_Point_Z
    :type cl:float
    :initform 0.0)
   (Support_Foot_Hip_Upper_Pitch
    :reader Support_Foot_Hip_Upper_Pitch
    :initarg :Support_Foot_Hip_Upper_Pitch
    :type cl:float
    :initform 0.0)
   (Kick_Foot_Ankle_Upper_Pitch
    :reader Kick_Foot_Ankle_Upper_Pitch
    :initarg :Kick_Foot_Ankle_Upper_Pitch
    :type cl:float
    :initform 0.0)
   (Support_Foot_Ankle_Upper_Pitch
    :reader Support_Foot_Ankle_Upper_Pitch
    :initarg :Support_Foot_Ankle_Upper_Pitch
    :type cl:float
    :initform 0.0))
)

(cl:defclass B_SplineParam (<B_SplineParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <B_SplineParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'B_SplineParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<B_SplineParam> is deprecated: use tku_msgs-msg:B_SplineParam instead.")))

(cl:ensure-generic-function 'Kick_Point_X-val :lambda-list '(m))
(cl:defmethod Kick_Point_X-val ((m <B_SplineParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Kick_Point_X-val is deprecated.  Use tku_msgs-msg:Kick_Point_X instead.")
  (Kick_Point_X m))

(cl:ensure-generic-function 'Kick_Point_Y-val :lambda-list '(m))
(cl:defmethod Kick_Point_Y-val ((m <B_SplineParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Kick_Point_Y-val is deprecated.  Use tku_msgs-msg:Kick_Point_Y instead.")
  (Kick_Point_Y m))

(cl:ensure-generic-function 'Kick_Point_Z-val :lambda-list '(m))
(cl:defmethod Kick_Point_Z-val ((m <B_SplineParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Kick_Point_Z-val is deprecated.  Use tku_msgs-msg:Kick_Point_Z instead.")
  (Kick_Point_Z m))

(cl:ensure-generic-function 'Back_Point_X-val :lambda-list '(m))
(cl:defmethod Back_Point_X-val ((m <B_SplineParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Back_Point_X-val is deprecated.  Use tku_msgs-msg:Back_Point_X instead.")
  (Back_Point_X m))

(cl:ensure-generic-function 'Back_Point_Z-val :lambda-list '(m))
(cl:defmethod Back_Point_Z-val ((m <B_SplineParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Back_Point_Z-val is deprecated.  Use tku_msgs-msg:Back_Point_Z instead.")
  (Back_Point_Z m))

(cl:ensure-generic-function 'Support_Foot_Hip_Upper_Pitch-val :lambda-list '(m))
(cl:defmethod Support_Foot_Hip_Upper_Pitch-val ((m <B_SplineParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Support_Foot_Hip_Upper_Pitch-val is deprecated.  Use tku_msgs-msg:Support_Foot_Hip_Upper_Pitch instead.")
  (Support_Foot_Hip_Upper_Pitch m))

(cl:ensure-generic-function 'Kick_Foot_Ankle_Upper_Pitch-val :lambda-list '(m))
(cl:defmethod Kick_Foot_Ankle_Upper_Pitch-val ((m <B_SplineParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Kick_Foot_Ankle_Upper_Pitch-val is deprecated.  Use tku_msgs-msg:Kick_Foot_Ankle_Upper_Pitch instead.")
  (Kick_Foot_Ankle_Upper_Pitch m))

(cl:ensure-generic-function 'Support_Foot_Ankle_Upper_Pitch-val :lambda-list '(m))
(cl:defmethod Support_Foot_Ankle_Upper_Pitch-val ((m <B_SplineParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Support_Foot_Ankle_Upper_Pitch-val is deprecated.  Use tku_msgs-msg:Support_Foot_Ankle_Upper_Pitch instead.")
  (Support_Foot_Ankle_Upper_Pitch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <B_SplineParam>) ostream)
  "Serializes a message object of type '<B_SplineParam>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Kick_Point_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Kick_Point_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Kick_Point_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Back_Point_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Back_Point_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Support_Foot_Hip_Upper_Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Kick_Foot_Ankle_Upper_Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Support_Foot_Ankle_Upper_Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <B_SplineParam>) istream)
  "Deserializes a message object of type '<B_SplineParam>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Kick_Point_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Kick_Point_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Kick_Point_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Back_Point_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Back_Point_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Support_Foot_Hip_Upper_Pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Kick_Foot_Ankle_Upper_Pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Support_Foot_Ankle_Upper_Pitch) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<B_SplineParam>)))
  "Returns string type for a message object of type '<B_SplineParam>"
  "tku_msgs/B_SplineParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'B_SplineParam)))
  "Returns string type for a message object of type 'B_SplineParam"
  "tku_msgs/B_SplineParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<B_SplineParam>)))
  "Returns md5sum for a message object of type '<B_SplineParam>"
  "de6e7c118c1a5ca63d7d6831ee0bf34c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'B_SplineParam)))
  "Returns md5sum for a message object of type 'B_SplineParam"
  "de6e7c118c1a5ca63d7d6831ee0bf34c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<B_SplineParam>)))
  "Returns full string definition for message of type '<B_SplineParam>"
  (cl:format cl:nil "float32 Kick_Point_X~%float32 Kick_Point_Y~%float32 Kick_Point_Z~%float32 Back_Point_X~%float32 Back_Point_Z~%float32 Support_Foot_Hip_Upper_Pitch~%float32 Kick_Foot_Ankle_Upper_Pitch~%float32 Support_Foot_Ankle_Upper_Pitch~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'B_SplineParam)))
  "Returns full string definition for message of type 'B_SplineParam"
  (cl:format cl:nil "float32 Kick_Point_X~%float32 Kick_Point_Y~%float32 Kick_Point_Z~%float32 Back_Point_X~%float32 Back_Point_Z~%float32 Support_Foot_Hip_Upper_Pitch~%float32 Kick_Foot_Ankle_Upper_Pitch~%float32 Support_Foot_Ankle_Upper_Pitch~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <B_SplineParam>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <B_SplineParam>))
  "Converts a ROS message object to a list"
  (cl:list 'B_SplineParam
    (cl:cons ':Kick_Point_X (Kick_Point_X msg))
    (cl:cons ':Kick_Point_Y (Kick_Point_Y msg))
    (cl:cons ':Kick_Point_Z (Kick_Point_Z msg))
    (cl:cons ':Back_Point_X (Back_Point_X msg))
    (cl:cons ':Back_Point_Z (Back_Point_Z msg))
    (cl:cons ':Support_Foot_Hip_Upper_Pitch (Support_Foot_Hip_Upper_Pitch msg))
    (cl:cons ':Kick_Foot_Ankle_Upper_Pitch (Kick_Foot_Ankle_Upper_Pitch msg))
    (cl:cons ':Support_Foot_Ankle_Upper_Pitch (Support_Foot_Ankle_Upper_Pitch msg))
))
