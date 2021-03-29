; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude wavelist.msg.html

(cl:defclass <wavelist> (roslisp-msg-protocol:ros-message)
  ((wavelist
    :reader wavelist
    :initarg :wavelist
    :type (cl:vector tku_msgs-msg:wave)
   :initform (cl:make-array 0 :element-type 'tku_msgs-msg:wave :initial-element (cl:make-instance 'tku_msgs-msg:wave))))
)

(cl:defclass wavelist (<wavelist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wavelist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wavelist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<wavelist> is deprecated: use tku_msgs-msg:wavelist instead.")))

(cl:ensure-generic-function 'wavelist-val :lambda-list '(m))
(cl:defmethod wavelist-val ((m <wavelist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:wavelist-val is deprecated.  Use tku_msgs-msg:wavelist instead.")
  (wavelist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wavelist>) ostream)
  "Serializes a message object of type '<wavelist>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wavelist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wavelist))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wavelist>) istream)
  "Deserializes a message object of type '<wavelist>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wavelist) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wavelist)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tku_msgs-msg:wave))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wavelist>)))
  "Returns string type for a message object of type '<wavelist>"
  "tku_msgs/wavelist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wavelist)))
  "Returns string type for a message object of type 'wavelist"
  "tku_msgs/wavelist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wavelist>)))
  "Returns md5sum for a message object of type '<wavelist>"
  "171c41386923a260960e1449234f31a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wavelist)))
  "Returns md5sum for a message object of type 'wavelist"
  "171c41386923a260960e1449234f31a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wavelist>)))
  "Returns full string definition for message of type '<wavelist>"
  (cl:format cl:nil "wave[] wavelist~%================================================================================~%MSG: tku_msgs/wave~%float32 R_move_X~%float32 L_move_X~%float32 R_move_Y~%float32 L_move_Y~%float32 R_move_Z~%float32 L_move_Z~%float32 move_COM_X~%float32 move_COM_Y~%float32 move_COM_Z~%float32 R_Thta~%float32 L_Thta~%int32 Point~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wavelist)))
  "Returns full string definition for message of type 'wavelist"
  (cl:format cl:nil "wave[] wavelist~%================================================================================~%MSG: tku_msgs/wave~%float32 R_move_X~%float32 L_move_X~%float32 R_move_Y~%float32 L_move_Y~%float32 R_move_Z~%float32 L_move_Z~%float32 move_COM_X~%float32 move_COM_Y~%float32 move_COM_Z~%float32 R_Thta~%float32 L_Thta~%int32 Point~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wavelist>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wavelist) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wavelist>))
  "Converts a ROS message object to a list"
  (cl:list 'wavelist
    (cl:cons ':wavelist (wavelist msg))
))
