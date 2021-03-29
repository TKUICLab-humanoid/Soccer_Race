; Auto-generated. Do not edit!


(cl:in-package tku_msgs-srv)


;//! \htmlinclude SaveHSV-request.msg.html

(cl:defclass <SaveHSV-request> (roslisp-msg-protocol:ros-message)
  ((Save
    :reader Save
    :initarg :Save
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveHSV-request (<SaveHSV-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveHSV-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveHSV-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<SaveHSV-request> is deprecated: use tku_msgs-srv:SaveHSV-request instead.")))

(cl:ensure-generic-function 'Save-val :lambda-list '(m))
(cl:defmethod Save-val ((m <SaveHSV-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Save-val is deprecated.  Use tku_msgs-srv:Save instead.")
  (Save m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveHSV-request>) ostream)
  "Serializes a message object of type '<SaveHSV-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Save) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveHSV-request>) istream)
  "Deserializes a message object of type '<SaveHSV-request>"
    (cl:setf (cl:slot-value msg 'Save) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveHSV-request>)))
  "Returns string type for a service object of type '<SaveHSV-request>"
  "tku_msgs/SaveHSVRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveHSV-request)))
  "Returns string type for a service object of type 'SaveHSV-request"
  "tku_msgs/SaveHSVRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveHSV-request>)))
  "Returns md5sum for a message object of type '<SaveHSV-request>"
  "54316e93d45f9c59e17a9d6ba6bb0659")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveHSV-request)))
  "Returns md5sum for a message object of type 'SaveHSV-request"
  "54316e93d45f9c59e17a9d6ba6bb0659")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveHSV-request>)))
  "Returns full string definition for message of type '<SaveHSV-request>"
  (cl:format cl:nil "bool Save~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveHSV-request)))
  "Returns full string definition for message of type 'SaveHSV-request"
  (cl:format cl:nil "bool Save~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveHSV-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveHSV-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveHSV-request
    (cl:cons ':Save (Save msg))
))
;//! \htmlinclude SaveHSV-response.msg.html

(cl:defclass <SaveHSV-response> (roslisp-msg-protocol:ros-message)
  ((Already
    :reader Already
    :initarg :Already
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SaveHSV-response (<SaveHSV-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveHSV-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveHSV-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<SaveHSV-response> is deprecated: use tku_msgs-srv:SaveHSV-response instead.")))

(cl:ensure-generic-function 'Already-val :lambda-list '(m))
(cl:defmethod Already-val ((m <SaveHSV-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Already-val is deprecated.  Use tku_msgs-srv:Already instead.")
  (Already m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveHSV-response>) ostream)
  "Serializes a message object of type '<SaveHSV-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Already) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveHSV-response>) istream)
  "Deserializes a message object of type '<SaveHSV-response>"
    (cl:setf (cl:slot-value msg 'Already) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveHSV-response>)))
  "Returns string type for a service object of type '<SaveHSV-response>"
  "tku_msgs/SaveHSVResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveHSV-response)))
  "Returns string type for a service object of type 'SaveHSV-response"
  "tku_msgs/SaveHSVResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveHSV-response>)))
  "Returns md5sum for a message object of type '<SaveHSV-response>"
  "54316e93d45f9c59e17a9d6ba6bb0659")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveHSV-response)))
  "Returns md5sum for a message object of type 'SaveHSV-response"
  "54316e93d45f9c59e17a9d6ba6bb0659")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveHSV-response>)))
  "Returns full string definition for message of type '<SaveHSV-response>"
  (cl:format cl:nil "bool Already~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveHSV-response)))
  "Returns full string definition for message of type 'SaveHSV-response"
  (cl:format cl:nil "bool Already~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveHSV-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveHSV-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveHSV-response
    (cl:cons ':Already (Already msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveHSV)))
  'SaveHSV-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveHSV)))
  'SaveHSV-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveHSV)))
  "Returns string type for a service object of type '<SaveHSV>"
  "tku_msgs/SaveHSV")