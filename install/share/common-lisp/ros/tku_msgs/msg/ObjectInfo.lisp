; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude ObjectInfo.msg.html

(cl:defclass <ObjectInfo> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (exist_flag
    :reader exist_flag
    :initarg :exist_flag
    :type cl:boolean
    :initform cl:nil)
   (theta
    :reader theta
    :initarg :theta
    :type tku_msgs-msg:WitchData
    :initform (cl:make-instance 'tku_msgs-msg:WitchData))
   (dist
    :reader dist
    :initarg :dist
    :type tku_msgs-msg:WitchData
    :initform (cl:make-instance 'tku_msgs-msg:WitchData)))
)

(cl:defclass ObjectInfo (<ObjectInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<ObjectInfo> is deprecated: use tku_msgs-msg:ObjectInfo instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ObjectInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:name-val is deprecated.  Use tku_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ObjectInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:x-val is deprecated.  Use tku_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <ObjectInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:y-val is deprecated.  Use tku_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'exist_flag-val :lambda-list '(m))
(cl:defmethod exist_flag-val ((m <ObjectInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:exist_flag-val is deprecated.  Use tku_msgs-msg:exist_flag instead.")
  (exist_flag m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <ObjectInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:theta-val is deprecated.  Use tku_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <ObjectInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:dist-val is deprecated.  Use tku_msgs-msg:dist instead.")
  (dist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectInfo>) ostream)
  "Serializes a message object of type '<ObjectInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'exist_flag) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'theta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectInfo>) istream)
  "Deserializes a message object of type '<ObjectInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'exist_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'theta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectInfo>)))
  "Returns string type for a message object of type '<ObjectInfo>"
  "tku_msgs/ObjectInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectInfo)))
  "Returns string type for a message object of type 'ObjectInfo"
  "tku_msgs/ObjectInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectInfo>)))
  "Returns md5sum for a message object of type '<ObjectInfo>"
  "47a2b9ccd08f45a927e72a0d6f89a035")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectInfo)))
  "Returns md5sum for a message object of type 'ObjectInfo"
  "47a2b9ccd08f45a927e72a0d6f89a035")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectInfo>)))
  "Returns full string definition for message of type '<ObjectInfo>"
  (cl:format cl:nil "string name~%float32 x~%float32 y~%bool exist_flag~%WitchData theta~%WitchData dist~%~%================================================================================~%MSG: tku_msgs/WitchData~%float32 local~%float32 global~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectInfo)))
  "Returns full string definition for message of type 'ObjectInfo"
  (cl:format cl:nil "string name~%float32 x~%float32 y~%bool exist_flag~%WitchData theta~%WitchData dist~%~%================================================================================~%MSG: tku_msgs/WitchData~%float32 local~%float32 global~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'theta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectInfo
    (cl:cons ':name (name msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':exist_flag (exist_flag msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':dist (dist msg))
))
