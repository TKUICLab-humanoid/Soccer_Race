; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude FeaturePoint.msg.html

(cl:defclass <FeaturePoint> (roslisp-msg-protocol:ros-message)
  ((feature_point
    :reader feature_point
    :initarg :feature_point
    :type (cl:vector tku_msgs-msg:Distance)
   :initform (cl:make-array 0 :element-type 'tku_msgs-msg:Distance :initial-element (cl:make-instance 'tku_msgs-msg:Distance))))
)

(cl:defclass FeaturePoint (<FeaturePoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeaturePoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeaturePoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<FeaturePoint> is deprecated: use tku_msgs-msg:FeaturePoint instead.")))

(cl:ensure-generic-function 'feature_point-val :lambda-list '(m))
(cl:defmethod feature_point-val ((m <FeaturePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:feature_point-val is deprecated.  Use tku_msgs-msg:feature_point instead.")
  (feature_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeaturePoint>) ostream)
  "Serializes a message object of type '<FeaturePoint>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feature_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'feature_point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeaturePoint>) istream)
  "Deserializes a message object of type '<FeaturePoint>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feature_point) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feature_point)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tku_msgs-msg:Distance))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeaturePoint>)))
  "Returns string type for a message object of type '<FeaturePoint>"
  "tku_msgs/FeaturePoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeaturePoint)))
  "Returns string type for a message object of type 'FeaturePoint"
  "tku_msgs/FeaturePoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeaturePoint>)))
  "Returns md5sum for a message object of type '<FeaturePoint>"
  "e3a2ec9f1de9fdc200c3e7d29ae54450")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeaturePoint)))
  "Returns md5sum for a message object of type 'FeaturePoint"
  "e3a2ec9f1de9fdc200c3e7d29ae54450")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeaturePoint>)))
  "Returns full string definition for message of type '<FeaturePoint>"
  (cl:format cl:nil "Distance[] feature_point~%~%================================================================================~%MSG: tku_msgs/Distance~%int16 x_dis~%int16 y_dis~%int16 dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeaturePoint)))
  "Returns full string definition for message of type 'FeaturePoint"
  (cl:format cl:nil "Distance[] feature_point~%~%================================================================================~%MSG: tku_msgs/Distance~%int16 x_dis~%int16 y_dis~%int16 dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeaturePoint>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feature_point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeaturePoint>))
  "Converts a ROS message object to a list"
  (cl:list 'FeaturePoint
    (cl:cons ':feature_point (feature_point msg))
))
