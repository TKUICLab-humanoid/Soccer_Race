; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude DrawImage.msg.html

(cl:defclass <DrawImage> (roslisp-msg-protocol:ros-message)
  ((cnt
    :reader cnt
    :initarg :cnt
    :type cl:fixnum
    :initform 0)
   (Mode
    :reader Mode
    :initarg :Mode
    :type cl:fixnum
    :initform 0)
   (XMin
    :reader XMin
    :initarg :XMin
    :type cl:fixnum
    :initform 0)
   (XMax
    :reader XMax
    :initarg :XMax
    :type cl:fixnum
    :initform 0)
   (YMin
    :reader YMin
    :initarg :YMin
    :type cl:fixnum
    :initform 0)
   (YMax
    :reader YMax
    :initarg :YMax
    :type cl:fixnum
    :initform 0)
   (rValue
    :reader rValue
    :initarg :rValue
    :type cl:integer
    :initform 0)
   (gValue
    :reader gValue
    :initarg :gValue
    :type cl:integer
    :initform 0)
   (bValue
    :reader bValue
    :initarg :bValue
    :type cl:integer
    :initform 0))
)

(cl:defclass DrawImage (<DrawImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DrawImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DrawImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<DrawImage> is deprecated: use tku_msgs-msg:DrawImage instead.")))

(cl:ensure-generic-function 'cnt-val :lambda-list '(m))
(cl:defmethod cnt-val ((m <DrawImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:cnt-val is deprecated.  Use tku_msgs-msg:cnt instead.")
  (cnt m))

(cl:ensure-generic-function 'Mode-val :lambda-list '(m))
(cl:defmethod Mode-val ((m <DrawImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Mode-val is deprecated.  Use tku_msgs-msg:Mode instead.")
  (Mode m))

(cl:ensure-generic-function 'XMin-val :lambda-list '(m))
(cl:defmethod XMin-val ((m <DrawImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:XMin-val is deprecated.  Use tku_msgs-msg:XMin instead.")
  (XMin m))

(cl:ensure-generic-function 'XMax-val :lambda-list '(m))
(cl:defmethod XMax-val ((m <DrawImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:XMax-val is deprecated.  Use tku_msgs-msg:XMax instead.")
  (XMax m))

(cl:ensure-generic-function 'YMin-val :lambda-list '(m))
(cl:defmethod YMin-val ((m <DrawImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:YMin-val is deprecated.  Use tku_msgs-msg:YMin instead.")
  (YMin m))

(cl:ensure-generic-function 'YMax-val :lambda-list '(m))
(cl:defmethod YMax-val ((m <DrawImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:YMax-val is deprecated.  Use tku_msgs-msg:YMax instead.")
  (YMax m))

(cl:ensure-generic-function 'rValue-val :lambda-list '(m))
(cl:defmethod rValue-val ((m <DrawImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:rValue-val is deprecated.  Use tku_msgs-msg:rValue instead.")
  (rValue m))

(cl:ensure-generic-function 'gValue-val :lambda-list '(m))
(cl:defmethod gValue-val ((m <DrawImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:gValue-val is deprecated.  Use tku_msgs-msg:gValue instead.")
  (gValue m))

(cl:ensure-generic-function 'bValue-val :lambda-list '(m))
(cl:defmethod bValue-val ((m <DrawImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:bValue-val is deprecated.  Use tku_msgs-msg:bValue instead.")
  (bValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DrawImage>) ostream)
  "Serializes a message object of type '<DrawImage>"
  (cl:let* ((signed (cl:slot-value msg 'cnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'XMin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'XMax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'YMin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'YMax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DrawImage>) istream)
  "Deserializes a message object of type '<DrawImage>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cnt) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Mode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'XMin) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'XMax) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'YMin) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'YMax) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DrawImage>)))
  "Returns string type for a message object of type '<DrawImage>"
  "tku_msgs/DrawImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrawImage)))
  "Returns string type for a message object of type 'DrawImage"
  "tku_msgs/DrawImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DrawImage>)))
  "Returns md5sum for a message object of type '<DrawImage>"
  "4f46c76bfaefb605a36feaa62dd79230")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DrawImage)))
  "Returns md5sum for a message object of type 'DrawImage"
  "4f46c76bfaefb605a36feaa62dd79230")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DrawImage>)))
  "Returns full string definition for message of type '<DrawImage>"
  (cl:format cl:nil "int16 cnt~%int16 Mode~%int16 XMin~%int16 XMax~%int16 YMin~%int16 YMax~%int32 rValue~%int32 gValue~%int32 bValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DrawImage)))
  "Returns full string definition for message of type 'DrawImage"
  (cl:format cl:nil "int16 cnt~%int16 Mode~%int16 XMin~%int16 XMax~%int16 YMin~%int16 YMax~%int32 rValue~%int32 gValue~%int32 bValue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DrawImage>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DrawImage>))
  "Converts a ROS message object to a list"
  (cl:list 'DrawImage
    (cl:cons ':cnt (cnt msg))
    (cl:cons ':Mode (Mode msg))
    (cl:cons ':XMin (XMin msg))
    (cl:cons ':XMax (XMax msg))
    (cl:cons ':YMin (YMin msg))
    (cl:cons ':YMax (YMax msg))
    (cl:cons ':rValue (rValue msg))
    (cl:cons ':gValue (gValue msg))
    (cl:cons ':bValue (bValue msg))
))
