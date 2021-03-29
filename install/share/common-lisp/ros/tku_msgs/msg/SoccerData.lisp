; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude SoccerData.msg.html

(cl:defclass <SoccerData> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type tku_msgs-msg:Distance
    :initform (cl:make-instance 'tku_msgs-msg:Distance))
   (object_mode
    :reader object_mode
    :initarg :object_mode
    :type cl:integer
    :initform 0))
)

(cl:defclass SoccerData (<SoccerData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoccerData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoccerData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<SoccerData> is deprecated: use tku_msgs-msg:SoccerData instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SoccerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:x-val is deprecated.  Use tku_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SoccerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:y-val is deprecated.  Use tku_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <SoccerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:height-val is deprecated.  Use tku_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <SoccerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:width-val is deprecated.  Use tku_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <SoccerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:distance-val is deprecated.  Use tku_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'object_mode-val :lambda-list '(m))
(cl:defmethod object_mode-val ((m <SoccerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:object_mode-val is deprecated.  Use tku_msgs-msg:object_mode instead.")
  (object_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoccerData>) ostream)
  "Serializes a message object of type '<SoccerData>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distance) ostream)
  (cl:let* ((signed (cl:slot-value msg 'object_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoccerData>) istream)
  "Deserializes a message object of type '<SoccerData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distance) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoccerData>)))
  "Returns string type for a message object of type '<SoccerData>"
  "tku_msgs/SoccerData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoccerData)))
  "Returns string type for a message object of type 'SoccerData"
  "tku_msgs/SoccerData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoccerData>)))
  "Returns md5sum for a message object of type '<SoccerData>"
  "f053806e000580e82f90d2eca914fb02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoccerData)))
  "Returns md5sum for a message object of type 'SoccerData"
  "f053806e000580e82f90d2eca914fb02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoccerData>)))
  "Returns full string definition for message of type '<SoccerData>"
  (cl:format cl:nil "int32 x~%int32 y~%int32 height~%int32 width~%Distance distance~%int32 object_mode~%~%================================================================================~%MSG: tku_msgs/Distance~%int16 x_dis~%int16 y_dis~%int16 dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoccerData)))
  "Returns full string definition for message of type 'SoccerData"
  (cl:format cl:nil "int32 x~%int32 y~%int32 height~%int32 width~%Distance distance~%int32 object_mode~%~%================================================================================~%MSG: tku_msgs/Distance~%int16 x_dis~%int16 y_dis~%int16 dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoccerData>))
  (cl:+ 0
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distance))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoccerData>))
  "Converts a ROS message object to a list"
  (cl:list 'SoccerData
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':height (height msg))
    (cl:cons ':width (width msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':object_mode (object_mode msg))
))
