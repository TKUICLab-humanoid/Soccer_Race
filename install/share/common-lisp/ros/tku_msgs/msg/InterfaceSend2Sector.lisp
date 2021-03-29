; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude InterfaceSend2Sector.msg.html

(cl:defclass <InterfaceSend2Sector> (roslisp-msg-protocol:ros-message)
  ((Package
    :reader Package
    :initarg :Package
    :type cl:fixnum
    :initform 0)
   (sectorname
    :reader sectorname
    :initarg :sectorname
    :type cl:string
    :initform ""))
)

(cl:defclass InterfaceSend2Sector (<InterfaceSend2Sector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InterfaceSend2Sector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InterfaceSend2Sector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<InterfaceSend2Sector> is deprecated: use tku_msgs-msg:InterfaceSend2Sector instead.")))

(cl:ensure-generic-function 'Package-val :lambda-list '(m))
(cl:defmethod Package-val ((m <InterfaceSend2Sector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Package-val is deprecated.  Use tku_msgs-msg:Package instead.")
  (Package m))

(cl:ensure-generic-function 'sectorname-val :lambda-list '(m))
(cl:defmethod sectorname-val ((m <InterfaceSend2Sector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:sectorname-val is deprecated.  Use tku_msgs-msg:sectorname instead.")
  (sectorname m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InterfaceSend2Sector>) ostream)
  "Serializes a message object of type '<InterfaceSend2Sector>"
  (cl:let* ((signed (cl:slot-value msg 'Package)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sectorname))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sectorname))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InterfaceSend2Sector>) istream)
  "Deserializes a message object of type '<InterfaceSend2Sector>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Package) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sectorname) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sectorname) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InterfaceSend2Sector>)))
  "Returns string type for a message object of type '<InterfaceSend2Sector>"
  "tku_msgs/InterfaceSend2Sector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InterfaceSend2Sector)))
  "Returns string type for a message object of type 'InterfaceSend2Sector"
  "tku_msgs/InterfaceSend2Sector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InterfaceSend2Sector>)))
  "Returns md5sum for a message object of type '<InterfaceSend2Sector>"
  "259b9b823a54b61e8ccd5c2bcb938816")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InterfaceSend2Sector)))
  "Returns md5sum for a message object of type 'InterfaceSend2Sector"
  "259b9b823a54b61e8ccd5c2bcb938816")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InterfaceSend2Sector>)))
  "Returns full string definition for message of type '<InterfaceSend2Sector>"
  (cl:format cl:nil "int16 Package~%string sectorname~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InterfaceSend2Sector)))
  "Returns full string definition for message of type 'InterfaceSend2Sector"
  (cl:format cl:nil "int16 Package~%string sectorname~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InterfaceSend2Sector>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'sectorname))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InterfaceSend2Sector>))
  "Converts a ROS message object to a list"
  (cl:list 'InterfaceSend2Sector
    (cl:cons ':Package (Package msg))
    (cl:cons ':sectorname (sectorname msg))
))
