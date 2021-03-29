; Auto-generated. Do not edit!


(cl:in-package tku_msgs-srv)


;//! \htmlinclude BuildModel-request.msg.html

(cl:defclass <BuildModel-request> (roslisp-msg-protocol:ros-message)
  ((Build
    :reader Build
    :initarg :Build
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BuildModel-request (<BuildModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuildModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuildModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<BuildModel-request> is deprecated: use tku_msgs-srv:BuildModel-request instead.")))

(cl:ensure-generic-function 'Build-val :lambda-list '(m))
(cl:defmethod Build-val ((m <BuildModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Build-val is deprecated.  Use tku_msgs-srv:Build instead.")
  (Build m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuildModel-request>) ostream)
  "Serializes a message object of type '<BuildModel-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Build) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuildModel-request>) istream)
  "Deserializes a message object of type '<BuildModel-request>"
    (cl:setf (cl:slot-value msg 'Build) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuildModel-request>)))
  "Returns string type for a service object of type '<BuildModel-request>"
  "tku_msgs/BuildModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuildModel-request)))
  "Returns string type for a service object of type 'BuildModel-request"
  "tku_msgs/BuildModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuildModel-request>)))
  "Returns md5sum for a message object of type '<BuildModel-request>"
  "5a100fc214acb4bef265103a280da05b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuildModel-request)))
  "Returns md5sum for a message object of type 'BuildModel-request"
  "5a100fc214acb4bef265103a280da05b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuildModel-request>)))
  "Returns full string definition for message of type '<BuildModel-request>"
  (cl:format cl:nil "bool Build~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuildModel-request)))
  "Returns full string definition for message of type 'BuildModel-request"
  (cl:format cl:nil "bool Build~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuildModel-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuildModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BuildModel-request
    (cl:cons ':Build (Build msg))
))
;//! \htmlinclude BuildModel-response.msg.html

(cl:defclass <BuildModel-response> (roslisp-msg-protocol:ros-message)
  ((Already
    :reader Already
    :initarg :Already
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BuildModel-response (<BuildModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BuildModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BuildModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<BuildModel-response> is deprecated: use tku_msgs-srv:BuildModel-response instead.")))

(cl:ensure-generic-function 'Already-val :lambda-list '(m))
(cl:defmethod Already-val ((m <BuildModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Already-val is deprecated.  Use tku_msgs-srv:Already instead.")
  (Already m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BuildModel-response>) ostream)
  "Serializes a message object of type '<BuildModel-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Already) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BuildModel-response>) istream)
  "Deserializes a message object of type '<BuildModel-response>"
    (cl:setf (cl:slot-value msg 'Already) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BuildModel-response>)))
  "Returns string type for a service object of type '<BuildModel-response>"
  "tku_msgs/BuildModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuildModel-response)))
  "Returns string type for a service object of type 'BuildModel-response"
  "tku_msgs/BuildModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BuildModel-response>)))
  "Returns md5sum for a message object of type '<BuildModel-response>"
  "5a100fc214acb4bef265103a280da05b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BuildModel-response)))
  "Returns md5sum for a message object of type 'BuildModel-response"
  "5a100fc214acb4bef265103a280da05b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BuildModel-response>)))
  "Returns full string definition for message of type '<BuildModel-response>"
  (cl:format cl:nil "bool Already~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BuildModel-response)))
  "Returns full string definition for message of type 'BuildModel-response"
  (cl:format cl:nil "bool Already~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BuildModel-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BuildModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BuildModel-response
    (cl:cons ':Already (Already msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BuildModel)))
  'BuildModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BuildModel)))
  'BuildModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BuildModel)))
  "Returns string type for a service object of type '<BuildModel>"
  "tku_msgs/BuildModel")