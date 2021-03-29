; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude SandHandSpeed.msg.html

(cl:defclass <SandHandSpeed> (roslisp-msg-protocol:ros-message)
  ((sector
    :reader sector
    :initarg :sector
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SandHandSpeed (<SandHandSpeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SandHandSpeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SandHandSpeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<SandHandSpeed> is deprecated: use tku_msgs-msg:SandHandSpeed instead.")))

(cl:ensure-generic-function 'sector-val :lambda-list '(m))
(cl:defmethod sector-val ((m <SandHandSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:sector-val is deprecated.  Use tku_msgs-msg:sector instead.")
  (sector m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <SandHandSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:speed-val is deprecated.  Use tku_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SandHandSpeed>) ostream)
  "Serializes a message object of type '<SandHandSpeed>"
  (cl:let* ((signed (cl:slot-value msg 'sector)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SandHandSpeed>) istream)
  "Deserializes a message object of type '<SandHandSpeed>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sector) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SandHandSpeed>)))
  "Returns string type for a message object of type '<SandHandSpeed>"
  "tku_msgs/SandHandSpeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SandHandSpeed)))
  "Returns string type for a message object of type 'SandHandSpeed"
  "tku_msgs/SandHandSpeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SandHandSpeed>)))
  "Returns md5sum for a message object of type '<SandHandSpeed>"
  "c2d5ef17ed061f55340a6ac0fd02ec93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SandHandSpeed)))
  "Returns md5sum for a message object of type 'SandHandSpeed"
  "c2d5ef17ed061f55340a6ac0fd02ec93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SandHandSpeed>)))
  "Returns full string definition for message of type '<SandHandSpeed>"
  (cl:format cl:nil "int16 sector~%int16 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SandHandSpeed)))
  "Returns full string definition for message of type 'SandHandSpeed"
  (cl:format cl:nil "int16 sector~%int16 speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SandHandSpeed>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SandHandSpeed>))
  "Converts a ROS message object to a list"
  (cl:list 'SandHandSpeed
    (cl:cons ':sector (sector msg))
    (cl:cons ':speed (speed msg))
))
