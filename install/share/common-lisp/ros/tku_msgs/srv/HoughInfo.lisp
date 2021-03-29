; Auto-generated. Do not edit!


(cl:in-package tku_msgs-srv)


;//! \htmlinclude HoughInfo-request.msg.html

(cl:defclass <HoughInfo-request> (roslisp-msg-protocol:ros-message)
  ((Load
    :reader Load
    :initarg :Load
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HoughInfo-request (<HoughInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HoughInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HoughInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<HoughInfo-request> is deprecated: use tku_msgs-srv:HoughInfo-request instead.")))

(cl:ensure-generic-function 'Load-val :lambda-list '(m))
(cl:defmethod Load-val ((m <HoughInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Load-val is deprecated.  Use tku_msgs-srv:Load instead.")
  (Load m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HoughInfo-request>) ostream)
  "Serializes a message object of type '<HoughInfo-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Load) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HoughInfo-request>) istream)
  "Deserializes a message object of type '<HoughInfo-request>"
    (cl:setf (cl:slot-value msg 'Load) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HoughInfo-request>)))
  "Returns string type for a service object of type '<HoughInfo-request>"
  "tku_msgs/HoughInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HoughInfo-request)))
  "Returns string type for a service object of type 'HoughInfo-request"
  "tku_msgs/HoughInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HoughInfo-request>)))
  "Returns md5sum for a message object of type '<HoughInfo-request>"
  "8863b4634d224e62b8e462b542f70e71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HoughInfo-request)))
  "Returns md5sum for a message object of type 'HoughInfo-request"
  "8863b4634d224e62b8e462b542f70e71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HoughInfo-request>)))
  "Returns full string definition for message of type '<HoughInfo-request>"
  (cl:format cl:nil "bool Load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HoughInfo-request)))
  "Returns full string definition for message of type 'HoughInfo-request"
  (cl:format cl:nil "bool Load~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HoughInfo-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HoughInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HoughInfo-request
    (cl:cons ':Load (Load msg))
))
;//! \htmlinclude HoughInfo-response.msg.html

(cl:defclass <HoughInfo-response> (roslisp-msg-protocol:ros-message)
  ((Hough_threshold
    :reader Hough_threshold
    :initarg :Hough_threshold
    :type cl:integer
    :initform 0)
   (Hough_minLineLength
    :reader Hough_minLineLength
    :initarg :Hough_minLineLength
    :type cl:integer
    :initform 0)
   (Hough_maxLineGap
    :reader Hough_maxLineGap
    :initarg :Hough_maxLineGap
    :type cl:integer
    :initform 0))
)

(cl:defclass HoughInfo-response (<HoughInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HoughInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HoughInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<HoughInfo-response> is deprecated: use tku_msgs-srv:HoughInfo-response instead.")))

(cl:ensure-generic-function 'Hough_threshold-val :lambda-list '(m))
(cl:defmethod Hough_threshold-val ((m <HoughInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Hough_threshold-val is deprecated.  Use tku_msgs-srv:Hough_threshold instead.")
  (Hough_threshold m))

(cl:ensure-generic-function 'Hough_minLineLength-val :lambda-list '(m))
(cl:defmethod Hough_minLineLength-val ((m <HoughInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Hough_minLineLength-val is deprecated.  Use tku_msgs-srv:Hough_minLineLength instead.")
  (Hough_minLineLength m))

(cl:ensure-generic-function 'Hough_maxLineGap-val :lambda-list '(m))
(cl:defmethod Hough_maxLineGap-val ((m <HoughInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:Hough_maxLineGap-val is deprecated.  Use tku_msgs-srv:Hough_maxLineGap instead.")
  (Hough_maxLineGap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HoughInfo-response>) ostream)
  "Serializes a message object of type '<HoughInfo-response>"
  (cl:let* ((signed (cl:slot-value msg 'Hough_threshold)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Hough_minLineLength)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Hough_maxLineGap)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HoughInfo-response>) istream)
  "Deserializes a message object of type '<HoughInfo-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Hough_threshold) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Hough_minLineLength) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Hough_maxLineGap) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HoughInfo-response>)))
  "Returns string type for a service object of type '<HoughInfo-response>"
  "tku_msgs/HoughInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HoughInfo-response)))
  "Returns string type for a service object of type 'HoughInfo-response"
  "tku_msgs/HoughInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HoughInfo-response>)))
  "Returns md5sum for a message object of type '<HoughInfo-response>"
  "8863b4634d224e62b8e462b542f70e71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HoughInfo-response)))
  "Returns md5sum for a message object of type 'HoughInfo-response"
  "8863b4634d224e62b8e462b542f70e71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HoughInfo-response>)))
  "Returns full string definition for message of type '<HoughInfo-response>"
  (cl:format cl:nil "int32 Hough_threshold~%int32 Hough_minLineLength~%int32 Hough_maxLineGap~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HoughInfo-response)))
  "Returns full string definition for message of type 'HoughInfo-response"
  (cl:format cl:nil "int32 Hough_threshold~%int32 Hough_minLineLength~%int32 Hough_maxLineGap~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HoughInfo-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HoughInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HoughInfo-response
    (cl:cons ':Hough_threshold (Hough_threshold msg))
    (cl:cons ':Hough_minLineLength (Hough_minLineLength msg))
    (cl:cons ':Hough_maxLineGap (Hough_maxLineGap msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HoughInfo)))
  'HoughInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HoughInfo)))
  'HoughInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HoughInfo)))
  "Returns string type for a service object of type '<HoughInfo>"
  "tku_msgs/HoughInfo")