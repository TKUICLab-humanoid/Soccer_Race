; Auto-generated. Do not edit!


(cl:in-package strategy-msg)


;//! \htmlinclude DeepMatrix.msg.html

(cl:defclass <DeepMatrix> (roslisp-msg-protocol:ros-message)
  ((DeepMatrix
    :reader DeepMatrix
    :initarg :DeepMatrix
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass DeepMatrix (<DeepMatrix>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeepMatrix>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeepMatrix)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name strategy-msg:<DeepMatrix> is deprecated: use strategy-msg:DeepMatrix instead.")))

(cl:ensure-generic-function 'DeepMatrix-val :lambda-list '(m))
(cl:defmethod DeepMatrix-val ((m <DeepMatrix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader strategy-msg:DeepMatrix-val is deprecated.  Use strategy-msg:DeepMatrix instead.")
  (DeepMatrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeepMatrix>) ostream)
  "Serializes a message object of type '<DeepMatrix>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'DeepMatrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'DeepMatrix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeepMatrix>) istream)
  "Deserializes a message object of type '<DeepMatrix>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'DeepMatrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'DeepMatrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeepMatrix>)))
  "Returns string type for a message object of type '<DeepMatrix>"
  "strategy/DeepMatrix")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeepMatrix)))
  "Returns string type for a message object of type 'DeepMatrix"
  "strategy/DeepMatrix")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeepMatrix>)))
  "Returns md5sum for a message object of type '<DeepMatrix>"
  "3d297606fb900059fdd4f503356c6486")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeepMatrix)))
  "Returns md5sum for a message object of type 'DeepMatrix"
  "3d297606fb900059fdd4f503356c6486")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeepMatrix>)))
  "Returns full string definition for message of type '<DeepMatrix>"
  (cl:format cl:nil "int32[] DeepMatrix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeepMatrix)))
  "Returns full string definition for message of type 'DeepMatrix"
  (cl:format cl:nil "int32[] DeepMatrix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeepMatrix>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'DeepMatrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeepMatrix>))
  "Converts a ROS message object to a list"
  (cl:list 'DeepMatrix
    (cl:cons ':DeepMatrix (DeepMatrix msg))
))
