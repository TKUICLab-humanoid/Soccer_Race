; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude WitchData.msg.html

(cl:defclass <WitchData> (roslisp-msg-protocol:ros-message)
  ((local
    :reader local
    :initarg :local
    :type cl:float
    :initform 0.0)
   (global
    :reader global
    :initarg :global
    :type cl:float
    :initform 0.0))
)

(cl:defclass WitchData (<WitchData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WitchData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WitchData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<WitchData> is deprecated: use tku_msgs-msg:WitchData instead.")))

(cl:ensure-generic-function 'local-val :lambda-list '(m))
(cl:defmethod local-val ((m <WitchData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:local-val is deprecated.  Use tku_msgs-msg:local instead.")
  (local m))

(cl:ensure-generic-function 'global-val :lambda-list '(m))
(cl:defmethod global-val ((m <WitchData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:global-val is deprecated.  Use tku_msgs-msg:global instead.")
  (global m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WitchData>) ostream)
  "Serializes a message object of type '<WitchData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'local))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'global))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WitchData>) istream)
  "Deserializes a message object of type '<WitchData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'local) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'global) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WitchData>)))
  "Returns string type for a message object of type '<WitchData>"
  "tku_msgs/WitchData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WitchData)))
  "Returns string type for a message object of type 'WitchData"
  "tku_msgs/WitchData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WitchData>)))
  "Returns md5sum for a message object of type '<WitchData>"
  "3c4765c233d983bd19b05cf6077eb24f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WitchData)))
  "Returns md5sum for a message object of type 'WitchData"
  "3c4765c233d983bd19b05cf6077eb24f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WitchData>)))
  "Returns full string definition for message of type '<WitchData>"
  (cl:format cl:nil "float32 local~%float32 global~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WitchData)))
  "Returns full string definition for message of type 'WitchData"
  (cl:format cl:nil "float32 local~%float32 global~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WitchData>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WitchData>))
  "Converts a ROS message object to a list"
  (cl:list 'WitchData
    (cl:cons ':local (local msg))
    (cl:cons ':global (global msg))
))
