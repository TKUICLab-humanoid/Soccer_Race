; Auto-generated. Do not edit!


(cl:in-package tku_msgs-srv)


;//! \htmlinclude SendHandSpeed-request.msg.html

(cl:defclass <SendHandSpeed-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SendHandSpeed-request (<SendHandSpeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendHandSpeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendHandSpeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<SendHandSpeed-request> is deprecated: use tku_msgs-srv:SendHandSpeed-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SendHandSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:data-val is deprecated.  Use tku_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendHandSpeed-request>) ostream)
  "Serializes a message object of type '<SendHandSpeed-request>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendHandSpeed-request>) istream)
  "Deserializes a message object of type '<SendHandSpeed-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendHandSpeed-request>)))
  "Returns string type for a service object of type '<SendHandSpeed-request>"
  "tku_msgs/SendHandSpeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendHandSpeed-request)))
  "Returns string type for a service object of type 'SendHandSpeed-request"
  "tku_msgs/SendHandSpeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendHandSpeed-request>)))
  "Returns md5sum for a message object of type '<SendHandSpeed-request>"
  "bc50a7044f9f4fe078550b5db785f63d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendHandSpeed-request)))
  "Returns md5sum for a message object of type 'SendHandSpeed-request"
  "bc50a7044f9f4fe078550b5db785f63d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendHandSpeed-request>)))
  "Returns full string definition for message of type '<SendHandSpeed-request>"
  (cl:format cl:nil "int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendHandSpeed-request)))
  "Returns full string definition for message of type 'SendHandSpeed-request"
  (cl:format cl:nil "int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendHandSpeed-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendHandSpeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendHandSpeed-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SendHandSpeed-response.msg.html

(cl:defclass <SendHandSpeed-response> (roslisp-msg-protocol:ros-message)
  ((Already
    :reader Already
    :initarg :Already
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SendHandSpeed-response (<SendHandSpeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendHandSpeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendHandSpeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<SendHandSpeed-response> is deprecated: use tku_msgs-srv:SendHandSpeed-response instead.")))

(cl:ensure-generic-function 'Already-val :lambda-list '(m))
(cl:defmethod Already-val ((m <SendHandSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Already-val is deprecated.  Use tku_msgs-srv:Already instead.")
  (Already m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendHandSpeed-response>) ostream)
  "Serializes a message object of type '<SendHandSpeed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Already) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendHandSpeed-response>) istream)
  "Deserializes a message object of type '<SendHandSpeed-response>"
    (cl:setf (cl:slot-value msg 'Already) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendHandSpeed-response>)))
  "Returns string type for a service object of type '<SendHandSpeed-response>"
  "tku_msgs/SendHandSpeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendHandSpeed-response)))
  "Returns string type for a service object of type 'SendHandSpeed-response"
  "tku_msgs/SendHandSpeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendHandSpeed-response>)))
  "Returns md5sum for a message object of type '<SendHandSpeed-response>"
  "bc50a7044f9f4fe078550b5db785f63d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendHandSpeed-response)))
  "Returns md5sum for a message object of type 'SendHandSpeed-response"
  "bc50a7044f9f4fe078550b5db785f63d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendHandSpeed-response>)))
  "Returns full string definition for message of type '<SendHandSpeed-response>"
  (cl:format cl:nil "bool Already~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendHandSpeed-response)))
  "Returns full string definition for message of type 'SendHandSpeed-response"
  (cl:format cl:nil "bool Already~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendHandSpeed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendHandSpeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendHandSpeed-response
    (cl:cons ':Already (Already msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendHandSpeed)))
  'SendHandSpeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendHandSpeed)))
  'SendHandSpeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendHandSpeed)))
  "Returns string type for a service object of type '<SendHandSpeed>"
  "tku_msgs/SendHandSpeed")