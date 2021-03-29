; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude CharacterInfo.msg.html

(cl:defclass <CharacterInfo> (roslisp-msg-protocol:ros-message)
  ((which_robot
    :reader which_robot
    :initarg :which_robot
    :type cl:string
    :initform "")
   (name
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
    :initform (cl:make-instance 'tku_msgs-msg:WitchData))
   (object
    :reader object
    :initarg :object
    :type (cl:vector tku_msgs-msg:ObjectInfo)
   :initform (cl:make-array 0 :element-type 'tku_msgs-msg:ObjectInfo :initial-element (cl:make-instance 'tku_msgs-msg:ObjectInfo)))
   (enemy
    :reader enemy
    :initarg :enemy
    :type (cl:vector tku_msgs-msg:ObjectInfo)
   :initform (cl:make-array 0 :element-type 'tku_msgs-msg:ObjectInfo :initial-element (cl:make-instance 'tku_msgs-msg:ObjectInfo))))
)

(cl:defclass CharacterInfo (<CharacterInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CharacterInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CharacterInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<CharacterInfo> is deprecated: use tku_msgs-msg:CharacterInfo instead.")))

(cl:ensure-generic-function 'which_robot-val :lambda-list '(m))
(cl:defmethod which_robot-val ((m <CharacterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:which_robot-val is deprecated.  Use tku_msgs-msg:which_robot instead.")
  (which_robot m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <CharacterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:name-val is deprecated.  Use tku_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <CharacterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:x-val is deprecated.  Use tku_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <CharacterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:y-val is deprecated.  Use tku_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'exist_flag-val :lambda-list '(m))
(cl:defmethod exist_flag-val ((m <CharacterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:exist_flag-val is deprecated.  Use tku_msgs-msg:exist_flag instead.")
  (exist_flag m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <CharacterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:theta-val is deprecated.  Use tku_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <CharacterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:dist-val is deprecated.  Use tku_msgs-msg:dist instead.")
  (dist m))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <CharacterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:object-val is deprecated.  Use tku_msgs-msg:object instead.")
  (object m))

(cl:ensure-generic-function 'enemy-val :lambda-list '(m))
(cl:defmethod enemy-val ((m <CharacterInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:enemy-val is deprecated.  Use tku_msgs-msg:enemy instead.")
  (enemy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CharacterInfo>) ostream)
  "Serializes a message object of type '<CharacterInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'which_robot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'which_robot))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'enemy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'enemy))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CharacterInfo>) istream)
  "Deserializes a message object of type '<CharacterInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'which_robot) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'which_robot) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tku_msgs-msg:ObjectInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'enemy) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'enemy)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tku_msgs-msg:ObjectInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CharacterInfo>)))
  "Returns string type for a message object of type '<CharacterInfo>"
  "tku_msgs/CharacterInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CharacterInfo)))
  "Returns string type for a message object of type 'CharacterInfo"
  "tku_msgs/CharacterInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CharacterInfo>)))
  "Returns md5sum for a message object of type '<CharacterInfo>"
  "291b746588435b1a71d12e22c696f64a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CharacterInfo)))
  "Returns md5sum for a message object of type 'CharacterInfo"
  "291b746588435b1a71d12e22c696f64a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CharacterInfo>)))
  "Returns full string definition for message of type '<CharacterInfo>"
  (cl:format cl:nil "string which_robot~%string name~%float32 x~%float32 y~%bool exist_flag~%WitchData theta~%WitchData dist~%ObjectInfo[] object~%ObjectInfo[] enemy~%~%================================================================================~%MSG: tku_msgs/WitchData~%float32 local~%float32 global~%~%================================================================================~%MSG: tku_msgs/ObjectInfo~%string name~%float32 x~%float32 y~%bool exist_flag~%WitchData theta~%WitchData dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CharacterInfo)))
  "Returns full string definition for message of type 'CharacterInfo"
  (cl:format cl:nil "string which_robot~%string name~%float32 x~%float32 y~%bool exist_flag~%WitchData theta~%WitchData dist~%ObjectInfo[] object~%ObjectInfo[] enemy~%~%================================================================================~%MSG: tku_msgs/WitchData~%float32 local~%float32 global~%~%================================================================================~%MSG: tku_msgs/ObjectInfo~%string name~%float32 x~%float32 y~%bool exist_flag~%WitchData theta~%WitchData dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CharacterInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'which_robot))
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'theta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dist))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'enemy) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CharacterInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CharacterInfo
    (cl:cons ':which_robot (which_robot msg))
    (cl:cons ':name (name msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':exist_flag (exist_flag msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':dist (dist msg))
    (cl:cons ':object (object msg))
    (cl:cons ':enemy (enemy msg))
))
