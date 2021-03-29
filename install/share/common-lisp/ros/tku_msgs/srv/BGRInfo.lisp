; Auto-generated. Do not edit!


(cl:in-package tku_msgs-srv)


;//! \htmlinclude BGRInfo-request.msg.html

(cl:defclass <BGRInfo-request> (roslisp-msg-protocol:ros-message)
  ((Load
    :reader Load
    :initarg :Load
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BGRInfo-request (<BGRInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BGRInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BGRInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<BGRInfo-request> is deprecated: use tku_msgs-srv:BGRInfo-request instead.")))

(cl:ensure-generic-function 'Load-val :lambda-list '(m))
(cl:defmethod Load-val ((m <BGRInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Load-val is deprecated.  Use tku_msgs-srv:Load instead.")
  (Load m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BGRInfo-request>) ostream)
  "Serializes a message object of type '<BGRInfo-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Load) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BGRInfo-request>) istream)
  "Deserializes a message object of type '<BGRInfo-request>"
    (cl:setf (cl:slot-value msg 'Load) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BGRInfo-request>)))
  "Returns string type for a service object of type '<BGRInfo-request>"
  "tku_msgs/BGRInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BGRInfo-request)))
  "Returns string type for a service object of type 'BGRInfo-request"
  "tku_msgs/BGRInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BGRInfo-request>)))
  "Returns md5sum for a message object of type '<BGRInfo-request>"
  "b03a10dbd390a3bc71ab9139e41340a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BGRInfo-request)))
  "Returns md5sum for a message object of type 'BGRInfo-request"
  "b03a10dbd390a3bc71ab9139e41340a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BGRInfo-request>)))
  "Returns full string definition for message of type '<BGRInfo-request>"
  (cl:format cl:nil "bool Load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BGRInfo-request)))
  "Returns full string definition for message of type 'BGRInfo-request"
  (cl:format cl:nil "bool Load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BGRInfo-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BGRInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BGRInfo-request
    (cl:cons ':Load (Load msg))
))
;//! \htmlinclude BGRInfo-response.msg.html

(cl:defclass <BGRInfo-response> (roslisp-msg-protocol:ros-message)
  ((BValue
    :reader BValue
    :initarg :BValue
    :type cl:integer
    :initform 0)
   (GValue
    :reader GValue
    :initarg :GValue
    :type cl:integer
    :initform 0)
   (RValue
    :reader RValue
    :initarg :RValue
    :type cl:integer
    :initform 0))
)

(cl:defclass BGRInfo-response (<BGRInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BGRInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BGRInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<BGRInfo-response> is deprecated: use tku_msgs-srv:BGRInfo-response instead.")))

(cl:ensure-generic-function 'BValue-val :lambda-list '(m))
(cl:defmethod BValue-val ((m <BGRInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:BValue-val is deprecated.  Use tku_msgs-srv:BValue instead.")
  (BValue m))

(cl:ensure-generic-function 'GValue-val :lambda-list '(m))
(cl:defmethod GValue-val ((m <BGRInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:GValue-val is deprecated.  Use tku_msgs-srv:GValue instead.")
  (GValue m))

(cl:ensure-generic-function 'RValue-val :lambda-list '(m))
(cl:defmethod RValue-val ((m <BGRInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:RValue-val is deprecated.  Use tku_msgs-srv:RValue instead.")
  (RValue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BGRInfo-response>) ostream)
  "Serializes a message object of type '<BGRInfo-response>"
  (cl:let* ((signed (cl:slot-value msg 'BValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'GValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'RValue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BGRInfo-response>) istream)
  "Deserializes a message object of type '<BGRInfo-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'GValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RValue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BGRInfo-response>)))
  "Returns string type for a service object of type '<BGRInfo-response>"
  "tku_msgs/BGRInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BGRInfo-response)))
  "Returns string type for a service object of type 'BGRInfo-response"
  "tku_msgs/BGRInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BGRInfo-response>)))
  "Returns md5sum for a message object of type '<BGRInfo-response>"
  "b03a10dbd390a3bc71ab9139e41340a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BGRInfo-response)))
  "Returns md5sum for a message object of type 'BGRInfo-response"
  "b03a10dbd390a3bc71ab9139e41340a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BGRInfo-response>)))
  "Returns full string definition for message of type '<BGRInfo-response>"
  (cl:format cl:nil "int32 BValue~%int32 GValue~%int32 RValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BGRInfo-response)))
  "Returns full string definition for message of type 'BGRInfo-response"
  (cl:format cl:nil "int32 BValue~%int32 GValue~%int32 RValue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BGRInfo-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BGRInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BGRInfo-response
    (cl:cons ':BValue (BValue msg))
    (cl:cons ':GValue (GValue msg))
    (cl:cons ':RValue (RValue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BGRInfo)))
  'BGRInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BGRInfo)))
  'BGRInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BGRInfo)))
  "Returns string type for a service object of type '<BGRInfo>"
  "tku_msgs/BGRInfo")