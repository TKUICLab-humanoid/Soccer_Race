; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude wave.msg.html

(cl:defclass <wave> (roslisp-msg-protocol:ros-message)
  ((R_move_X
    :reader R_move_X
    :initarg :R_move_X
    :type cl:float
    :initform 0.0)
   (L_move_X
    :reader L_move_X
    :initarg :L_move_X
    :type cl:float
    :initform 0.0)
   (R_move_Y
    :reader R_move_Y
    :initarg :R_move_Y
    :type cl:float
    :initform 0.0)
   (L_move_Y
    :reader L_move_Y
    :initarg :L_move_Y
    :type cl:float
    :initform 0.0)
   (R_move_Z
    :reader R_move_Z
    :initarg :R_move_Z
    :type cl:float
    :initform 0.0)
   (L_move_Z
    :reader L_move_Z
    :initarg :L_move_Z
    :type cl:float
    :initform 0.0)
   (move_COM_X
    :reader move_COM_X
    :initarg :move_COM_X
    :type cl:float
    :initform 0.0)
   (move_COM_Y
    :reader move_COM_Y
    :initarg :move_COM_Y
    :type cl:float
    :initform 0.0)
   (move_COM_Z
    :reader move_COM_Z
    :initarg :move_COM_Z
    :type cl:float
    :initform 0.0)
   (R_Thta
    :reader R_Thta
    :initarg :R_Thta
    :type cl:float
    :initform 0.0)
   (L_Thta
    :reader L_Thta
    :initarg :L_Thta
    :type cl:float
    :initform 0.0)
   (Point
    :reader Point
    :initarg :Point
    :type cl:integer
    :initform 0))
)

(cl:defclass wave (<wave>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wave>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wave)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<wave> is deprecated: use tku_msgs-msg:wave instead.")))

(cl:ensure-generic-function 'R_move_X-val :lambda-list '(m))
(cl:defmethod R_move_X-val ((m <wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:R_move_X-val is deprecated.  Use tku_msgs-msg:R_move_X instead.")
  (R_move_X m))

(cl:ensure-generic-function 'L_move_X-val :lambda-list '(m))
(cl:defmethod L_move_X-val ((m <wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:L_move_X-val is deprecated.  Use tku_msgs-msg:L_move_X instead.")
  (L_move_X m))

(cl:ensure-generic-function 'R_move_Y-val :lambda-list '(m))
(cl:defmethod R_move_Y-val ((m <wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:R_move_Y-val is deprecated.  Use tku_msgs-msg:R_move_Y instead.")
  (R_move_Y m))

(cl:ensure-generic-function 'L_move_Y-val :lambda-list '(m))
(cl:defmethod L_move_Y-val ((m <wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:L_move_Y-val is deprecated.  Use tku_msgs-msg:L_move_Y instead.")
  (L_move_Y m))

(cl:ensure-generic-function 'R_move_Z-val :lambda-list '(m))
(cl:defmethod R_move_Z-val ((m <wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:R_move_Z-val is deprecated.  Use tku_msgs-msg:R_move_Z instead.")
  (R_move_Z m))

(cl:ensure-generic-function 'L_move_Z-val :lambda-list '(m))
(cl:defmethod L_move_Z-val ((m <wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:L_move_Z-val is deprecated.  Use tku_msgs-msg:L_move_Z instead.")
  (L_move_Z m))

(cl:ensure-generic-function 'move_COM_X-val :lambda-list '(m))
(cl:defmethod move_COM_X-val ((m <wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:move_COM_X-val is deprecated.  Use tku_msgs-msg:move_COM_X instead.")
  (move_COM_X m))

(cl:ensure-generic-function 'move_COM_Y-val :lambda-list '(m))
(cl:defmethod move_COM_Y-val ((m <wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:move_COM_Y-val is deprecated.  Use tku_msgs-msg:move_COM_Y instead.")
  (move_COM_Y m))

(cl:ensure-generic-function 'move_COM_Z-val :lambda-list '(m))
(cl:defmethod move_COM_Z-val ((m <wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:move_COM_Z-val is deprecated.  Use tku_msgs-msg:move_COM_Z instead.")
  (move_COM_Z m))

(cl:ensure-generic-function 'R_Thta-val :lambda-list '(m))
(cl:defmethod R_Thta-val ((m <wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:R_Thta-val is deprecated.  Use tku_msgs-msg:R_Thta instead.")
  (R_Thta m))

(cl:ensure-generic-function 'L_Thta-val :lambda-list '(m))
(cl:defmethod L_Thta-val ((m <wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:L_Thta-val is deprecated.  Use tku_msgs-msg:L_Thta instead.")
  (L_Thta m))

(cl:ensure-generic-function 'Point-val :lambda-list '(m))
(cl:defmethod Point-val ((m <wave>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Point-val is deprecated.  Use tku_msgs-msg:Point instead.")
  (Point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wave>) ostream)
  "Serializes a message object of type '<wave>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_move_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_move_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_move_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_move_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_move_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_move_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'move_COM_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'move_COM_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'move_COM_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'R_Thta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'L_Thta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Point)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wave>) istream)
  "Deserializes a message object of type '<wave>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_move_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_move_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_move_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_move_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_move_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_move_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'move_COM_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'move_COM_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'move_COM_Z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R_Thta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'L_Thta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Point) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wave>)))
  "Returns string type for a message object of type '<wave>"
  "tku_msgs/wave")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wave)))
  "Returns string type for a message object of type 'wave"
  "tku_msgs/wave")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wave>)))
  "Returns md5sum for a message object of type '<wave>"
  "2dde10a25ae38be88936bf8db5ec2f73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wave)))
  "Returns md5sum for a message object of type 'wave"
  "2dde10a25ae38be88936bf8db5ec2f73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wave>)))
  "Returns full string definition for message of type '<wave>"
  (cl:format cl:nil "float32 R_move_X~%float32 L_move_X~%float32 R_move_Y~%float32 L_move_Y~%float32 R_move_Z~%float32 L_move_Z~%float32 move_COM_X~%float32 move_COM_Y~%float32 move_COM_Z~%float32 R_Thta~%float32 L_Thta~%int32 Point~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wave)))
  "Returns full string definition for message of type 'wave"
  (cl:format cl:nil "float32 R_move_X~%float32 L_move_X~%float32 R_move_Y~%float32 L_move_Y~%float32 R_move_Z~%float32 L_move_Z~%float32 move_COM_X~%float32 move_COM_Y~%float32 move_COM_Z~%float32 R_Thta~%float32 L_Thta~%int32 Point~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wave>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wave>))
  "Converts a ROS message object to a list"
  (cl:list 'wave
    (cl:cons ':R_move_X (R_move_X msg))
    (cl:cons ':L_move_X (L_move_X msg))
    (cl:cons ':R_move_Y (R_move_Y msg))
    (cl:cons ':L_move_Y (L_move_Y msg))
    (cl:cons ':R_move_Z (R_move_Z msg))
    (cl:cons ':L_move_Z (L_move_Z msg))
    (cl:cons ':move_COM_X (move_COM_X msg))
    (cl:cons ':move_COM_Y (move_COM_Y msg))
    (cl:cons ':move_COM_Z (move_COM_Z msg))
    (cl:cons ':R_Thta (R_Thta msg))
    (cl:cons ':L_Thta (L_Thta msg))
    (cl:cons ':Point (Point msg))
))
