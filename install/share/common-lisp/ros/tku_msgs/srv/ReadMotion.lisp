; Auto-generated. Do not edit!


(cl:in-package tku_msgs-srv)


;//! \htmlinclude ReadMotion-request.msg.html

(cl:defclass <ReadMotion-request> (roslisp-msg-protocol:ros-message)
  ((read
    :reader read
    :initarg :read
    :type cl:boolean
    :initform cl:nil)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (readstate
    :reader readstate
    :initarg :readstate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReadMotion-request (<ReadMotion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadMotion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadMotion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<ReadMotion-request> is deprecated: use tku_msgs-srv:ReadMotion-request instead.")))

(cl:ensure-generic-function 'read-val :lambda-list '(m))
(cl:defmethod read-val ((m <ReadMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:read-val is deprecated.  Use tku_msgs-srv:read instead.")
  (read m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ReadMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:name-val is deprecated.  Use tku_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'readstate-val :lambda-list '(m))
(cl:defmethod readstate-val ((m <ReadMotion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:readstate-val is deprecated.  Use tku_msgs-srv:readstate instead.")
  (readstate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadMotion-request>) ostream)
  "Serializes a message object of type '<ReadMotion-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'read) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'readstate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadMotion-request>) istream)
  "Deserializes a message object of type '<ReadMotion-request>"
    (cl:setf (cl:slot-value msg 'read) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'readstate) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadMotion-request>)))
  "Returns string type for a service object of type '<ReadMotion-request>"
  "tku_msgs/ReadMotionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadMotion-request)))
  "Returns string type for a service object of type 'ReadMotion-request"
  "tku_msgs/ReadMotionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadMotion-request>)))
  "Returns md5sum for a message object of type '<ReadMotion-request>"
  "aba192d5d2599c4b6211587c2f618837")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadMotion-request)))
  "Returns md5sum for a message object of type 'ReadMotion-request"
  "aba192d5d2599c4b6211587c2f618837")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadMotion-request>)))
  "Returns full string definition for message of type '<ReadMotion-request>"
  (cl:format cl:nil "bool read~%string name~%int16 readstate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadMotion-request)))
  "Returns full string definition for message of type 'ReadMotion-request"
  (cl:format cl:nil "bool read~%string name~%int16 readstate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadMotion-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadMotion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadMotion-request
    (cl:cons ':read (read msg))
    (cl:cons ':name (name msg))
    (cl:cons ':readstate (readstate msg))
))
;//! \htmlinclude ReadMotion-response.msg.html

(cl:defclass <ReadMotion-response> (roslisp-msg-protocol:ros-message)
  ((VectorCnt
    :reader VectorCnt
    :initarg :VectorCnt
    :type cl:fixnum
    :initform 0)
   (motionstate
    :reader motionstate
    :initarg :motionstate
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (ID
    :reader ID
    :initarg :ID
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (MotionList
    :reader MotionList
    :initarg :MotionList
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (RelativeData
    :reader RelativeData
    :initarg :RelativeData
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (AbsoluteData
    :reader AbsoluteData
    :initarg :AbsoluteData
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ReadMotion-response (<ReadMotion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadMotion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadMotion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-srv:<ReadMotion-response> is deprecated: use tku_msgs-srv:ReadMotion-response instead.")))

(cl:ensure-generic-function 'VectorCnt-val :lambda-list '(m))
(cl:defmethod VectorCnt-val ((m <ReadMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:VectorCnt-val is deprecated.  Use tku_msgs-srv:VectorCnt instead.")
  (VectorCnt m))

(cl:ensure-generic-function 'motionstate-val :lambda-list '(m))
(cl:defmethod motionstate-val ((m <ReadMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:motionstate-val is deprecated.  Use tku_msgs-srv:motionstate instead.")
  (motionstate m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <ReadMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:ID-val is deprecated.  Use tku_msgs-srv:ID instead.")
  (ID m))

(cl:ensure-generic-function 'MotionList-val :lambda-list '(m))
(cl:defmethod MotionList-val ((m <ReadMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:MotionList-val is deprecated.  Use tku_msgs-srv:MotionList instead.")
  (MotionList m))

(cl:ensure-generic-function 'RelativeData-val :lambda-list '(m))
(cl:defmethod RelativeData-val ((m <ReadMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:RelativeData-val is deprecated.  Use tku_msgs-srv:RelativeData instead.")
  (RelativeData m))

(cl:ensure-generic-function 'AbsoluteData-val :lambda-list '(m))
(cl:defmethod AbsoluteData-val ((m <ReadMotion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-srv:AbsoluteData-val is deprecated.  Use tku_msgs-srv:AbsoluteData instead.")
  (AbsoluteData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadMotion-response>) ostream)
  "Serializes a message object of type '<ReadMotion-response>"
  (cl:let* ((signed (cl:slot-value msg 'VectorCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motionstate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'motionstate))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'ID))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'MotionList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'MotionList))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'RelativeData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'RelativeData))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'AbsoluteData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'AbsoluteData))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadMotion-response>) istream)
  "Deserializes a message object of type '<ReadMotion-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'VectorCnt) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motionstate) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motionstate)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ID) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ID)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'MotionList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'MotionList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'RelativeData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'RelativeData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'AbsoluteData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'AbsoluteData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadMotion-response>)))
  "Returns string type for a service object of type '<ReadMotion-response>"
  "tku_msgs/ReadMotionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadMotion-response)))
  "Returns string type for a service object of type 'ReadMotion-response"
  "tku_msgs/ReadMotionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadMotion-response>)))
  "Returns md5sum for a message object of type '<ReadMotion-response>"
  "aba192d5d2599c4b6211587c2f618837")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadMotion-response)))
  "Returns md5sum for a message object of type 'ReadMotion-response"
  "aba192d5d2599c4b6211587c2f618837")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadMotion-response>)))
  "Returns full string definition for message of type '<ReadMotion-response>"
  (cl:format cl:nil "int16 VectorCnt~%int16[] motionstate~%int16[] ID~%int16[] MotionList~%int16[] RelativeData~%int16[] AbsoluteData~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadMotion-response)))
  "Returns full string definition for message of type 'ReadMotion-response"
  (cl:format cl:nil "int16 VectorCnt~%int16[] motionstate~%int16[] ID~%int16[] MotionList~%int16[] RelativeData~%int16[] AbsoluteData~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadMotion-response>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motionstate) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ID) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'MotionList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'RelativeData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'AbsoluteData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadMotion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadMotion-response
    (cl:cons ':VectorCnt (VectorCnt msg))
    (cl:cons ':motionstate (motionstate msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':MotionList (MotionList msg))
    (cl:cons ':RelativeData (RelativeData msg))
    (cl:cons ':AbsoluteData (AbsoluteData msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReadMotion)))
  'ReadMotion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReadMotion)))
  'ReadMotion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadMotion)))
  "Returns string type for a service object of type '<ReadMotion>"
  "tku_msgs/ReadMotion")