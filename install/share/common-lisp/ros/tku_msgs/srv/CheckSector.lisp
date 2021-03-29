; Auto-generated. Do not edit!


(cl:in-package tku_msgs-srv)


;//! \htmlinclude CheckSector-request.msg.html

(cl:defclass <CheckSector-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CheckSector-request (<CheckSector-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckSector-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckSector-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<CheckSector-request> is deprecated: use tku_msgs-srv:CheckSector-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <CheckSector-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:data-val is deprecated.  Use tku_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckSector-request>) ostream)
  "Serializes a message object of type '<CheckSector-request>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckSector-request>) istream)
  "Deserializes a message object of type '<CheckSector-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckSector-request>)))
  "Returns string type for a service object of type '<CheckSector-request>"
  "tku_msgs/CheckSectorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckSector-request)))
  "Returns string type for a service object of type 'CheckSector-request"
  "tku_msgs/CheckSectorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckSector-request>)))
  "Returns md5sum for a message object of type '<CheckSector-request>"
  "7ada61dc8c52272ee0201006887d39b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckSector-request)))
  "Returns md5sum for a message object of type 'CheckSector-request"
  "7ada61dc8c52272ee0201006887d39b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckSector-request>)))
  "Returns full string definition for message of type '<CheckSector-request>"
  (cl:format cl:nil "int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckSector-request)))
  "Returns full string definition for message of type 'CheckSector-request"
  (cl:format cl:nil "int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckSector-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckSector-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckSector-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude CheckSector-response.msg.html

(cl:defclass <CheckSector-response> (roslisp-msg-protocol:ros-message)
  ((checkflag
    :reader checkflag
    :initarg :checkflag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckSector-response (<CheckSector-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckSector-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckSector-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<CheckSector-response> is deprecated: use tku_msgs-srv:CheckSector-response instead.")))

(cl:ensure-generic-function 'checkflag-val :lambda-list '(m))
(cl:defmethod checkflag-val ((m <CheckSector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:checkflag-val is deprecated.  Use tku_msgs-srv:checkflag instead.")
  (checkflag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckSector-response>) ostream)
  "Serializes a message object of type '<CheckSector-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'checkflag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckSector-response>) istream)
  "Deserializes a message object of type '<CheckSector-response>"
    (cl:setf (cl:slot-value msg 'checkflag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckSector-response>)))
  "Returns string type for a service object of type '<CheckSector-response>"
  "tku_msgs/CheckSectorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckSector-response)))
  "Returns string type for a service object of type 'CheckSector-response"
  "tku_msgs/CheckSectorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckSector-response>)))
  "Returns md5sum for a message object of type '<CheckSector-response>"
  "7ada61dc8c52272ee0201006887d39b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckSector-response)))
  "Returns md5sum for a message object of type 'CheckSector-response"
  "7ada61dc8c52272ee0201006887d39b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckSector-response>)))
  "Returns full string definition for message of type '<CheckSector-response>"
  (cl:format cl:nil "bool checkflag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckSector-response)))
  "Returns full string definition for message of type 'CheckSector-response"
  (cl:format cl:nil "bool checkflag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckSector-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckSector-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckSector-response
    (cl:cons ':checkflag (checkflag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckSector)))
  'CheckSector-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckSector)))
  'CheckSector-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckSector)))
  "Returns string type for a service object of type '<CheckSector>"
  "tku_msgs/CheckSector")