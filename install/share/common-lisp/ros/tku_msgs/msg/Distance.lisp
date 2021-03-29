; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude Distance.msg.html

(cl:defclass <Distance> (roslisp-msg-protocol:ros-message)
  ((x_dis
    :reader x_dis
    :initarg :x_dis
    :type cl:fixnum
    :initform 0)
   (y_dis
    :reader y_dis
    :initarg :y_dis
    :type cl:fixnum
    :initform 0)
   (dis
    :reader dis
    :initarg :dis
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Distance (<Distance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Distance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Distance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<Distance> is deprecated: use tku_msgs-msg:Distance instead.")))

(cl:ensure-generic-function 'x_dis-val :lambda-list '(m))
(cl:defmethod x_dis-val ((m <Distance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:x_dis-val is deprecated.  Use tku_msgs-msg:x_dis instead.")
  (x_dis m))

(cl:ensure-generic-function 'y_dis-val :lambda-list '(m))
(cl:defmethod y_dis-val ((m <Distance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:y_dis-val is deprecated.  Use tku_msgs-msg:y_dis instead.")
  (y_dis m))

(cl:ensure-generic-function 'dis-val :lambda-list '(m))
(cl:defmethod dis-val ((m <Distance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:dis-val is deprecated.  Use tku_msgs-msg:dis instead.")
  (dis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Distance>) ostream)
  "Serializes a message object of type '<Distance>"
  (cl:let* ((signed (cl:slot-value msg 'x_dis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_dis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Distance>) istream)
  "Deserializes a message object of type '<Distance>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_dis) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_dis) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dis) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Distance>)))
  "Returns string type for a message object of type '<Distance>"
  "tku_msgs/Distance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Distance)))
  "Returns string type for a message object of type 'Distance"
  "tku_msgs/Distance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Distance>)))
  "Returns md5sum for a message object of type '<Distance>"
  "3321358cdd898a39621fbe77e10211cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Distance)))
  "Returns md5sum for a message object of type 'Distance"
  "3321358cdd898a39621fbe77e10211cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Distance>)))
  "Returns full string definition for message of type '<Distance>"
  (cl:format cl:nil "int16 x_dis~%int16 y_dis~%int16 dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Distance)))
  "Returns full string definition for message of type 'Distance"
  (cl:format cl:nil "int16 x_dis~%int16 y_dis~%int16 dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Distance>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Distance>))
  "Converts a ROS message object to a list"
  (cl:list 'Distance
    (cl:cons ':x_dis (x_dis msg))
    (cl:cons ':y_dis (y_dis msg))
    (cl:cons ':dis (dis msg))
))
