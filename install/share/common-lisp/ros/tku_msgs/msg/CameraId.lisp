; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude CameraId.msg.html

(cl:defclass <CameraId> (roslisp-msg-protocol:ros-message)
  ((checkcameraid
    :reader checkcameraid
    :initarg :checkcameraid
    :type cl:boolean
    :initform cl:nil)
   (cameraid
    :reader cameraid
    :initarg :cameraid
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraId (<CameraId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<CameraId> is deprecated: use tku_msgs-msg:CameraId instead.")))

(cl:ensure-generic-function 'checkcameraid-val :lambda-list '(m))
(cl:defmethod checkcameraid-val ((m <CameraId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:checkcameraid-val is deprecated.  Use tku_msgs-msg:checkcameraid instead.")
  (checkcameraid m))

(cl:ensure-generic-function 'cameraid-val :lambda-list '(m))
(cl:defmethod cameraid-val ((m <CameraId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:cameraid-val is deprecated.  Use tku_msgs-msg:cameraid instead.")
  (cameraid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraId>) ostream)
  "Serializes a message object of type '<CameraId>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'checkcameraid) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'cameraid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraId>) istream)
  "Deserializes a message object of type '<CameraId>"
    (cl:setf (cl:slot-value msg 'checkcameraid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cameraid) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraId>)))
  "Returns string type for a message object of type '<CameraId>"
  "tku_msgs/CameraId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraId)))
  "Returns string type for a message object of type 'CameraId"
  "tku_msgs/CameraId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraId>)))
  "Returns md5sum for a message object of type '<CameraId>"
  "3cc97f36ddee60a3976eec15137b52b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraId)))
  "Returns md5sum for a message object of type 'CameraId"
  "3cc97f36ddee60a3976eec15137b52b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraId>)))
  "Returns full string definition for message of type '<CameraId>"
  (cl:format cl:nil "bool checkcameraid~%int16 cameraid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraId)))
  "Returns full string definition for message of type 'CameraId"
  (cl:format cl:nil "bool checkcameraid~%int16 cameraid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraId>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraId>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraId
    (cl:cons ':checkcameraid (checkcameraid msg))
    (cl:cons ':cameraid (cameraid msg))
))
