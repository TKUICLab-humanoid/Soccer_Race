; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude ObservationData.msg.html

(cl:defclass <ObservationData> (roslisp-msg-protocol:ros-message)
  ((imagestate
    :reader imagestate
    :initarg :imagestate
    :type cl:boolean
    :initform cl:nil)
   (scan_line
    :reader scan_line
    :initarg :scan_line
    :type (cl:vector tku_msgs-msg:FeaturePoint)
   :initform (cl:make-array 0 :element-type 'tku_msgs-msg:FeaturePoint :initial-element (cl:make-instance 'tku_msgs-msg:FeaturePoint)))
   (landmark
    :reader landmark
    :initarg :landmark
    :type (cl:vector tku_msgs-msg:LineData)
   :initform (cl:make-array 0 :element-type 'tku_msgs-msg:LineData :initial-element (cl:make-instance 'tku_msgs-msg:LineData))))
)

(cl:defclass ObservationData (<ObservationData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObservationData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObservationData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<ObservationData> is deprecated: use tku_msgs-msg:ObservationData instead.")))

(cl:ensure-generic-function 'imagestate-val :lambda-list '(m))
(cl:defmethod imagestate-val ((m <ObservationData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:imagestate-val is deprecated.  Use tku_msgs-msg:imagestate instead.")
  (imagestate m))

(cl:ensure-generic-function 'scan_line-val :lambda-list '(m))
(cl:defmethod scan_line-val ((m <ObservationData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:scan_line-val is deprecated.  Use tku_msgs-msg:scan_line instead.")
  (scan_line m))

(cl:ensure-generic-function 'landmark-val :lambda-list '(m))
(cl:defmethod landmark-val ((m <ObservationData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:landmark-val is deprecated.  Use tku_msgs-msg:landmark instead.")
  (landmark m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObservationData>) ostream)
  "Serializes a message object of type '<ObservationData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imagestate) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scan_line))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'scan_line))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmark))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmark))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObservationData>) istream)
  "Deserializes a message object of type '<ObservationData>"
    (cl:setf (cl:slot-value msg 'imagestate) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scan_line) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scan_line)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tku_msgs-msg:FeaturePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmark) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmark)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tku_msgs-msg:LineData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObservationData>)))
  "Returns string type for a message object of type '<ObservationData>"
  "tku_msgs/ObservationData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObservationData)))
  "Returns string type for a message object of type 'ObservationData"
  "tku_msgs/ObservationData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObservationData>)))
  "Returns md5sum for a message object of type '<ObservationData>"
  "196e119e4514ee1b9806ec236748745a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObservationData)))
  "Returns md5sum for a message object of type 'ObservationData"
  "196e119e4514ee1b9806ec236748745a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObservationData>)))
  "Returns full string definition for message of type '<ObservationData>"
  (cl:format cl:nil "bool imagestate~%FeaturePoint[] scan_line~%LineData[] landmark~%~%================================================================================~%MSG: tku_msgs/FeaturePoint~%Distance[] feature_point~%~%================================================================================~%MSG: tku_msgs/Distance~%int16 x_dis~%int16 y_dis~%int16 dis~%~%================================================================================~%MSG: tku_msgs/LineData~%float32 Line_theta~%int16 Line_length~%Cooridinate start_point~%Cooridinate end_point~%Cooridinate center_point~%float32 relative_distance~%Cooridinate Nearest_point~%~%================================================================================~%MSG: tku_msgs/Cooridinate~%int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObservationData)))
  "Returns full string definition for message of type 'ObservationData"
  (cl:format cl:nil "bool imagestate~%FeaturePoint[] scan_line~%LineData[] landmark~%~%================================================================================~%MSG: tku_msgs/FeaturePoint~%Distance[] feature_point~%~%================================================================================~%MSG: tku_msgs/Distance~%int16 x_dis~%int16 y_dis~%int16 dis~%~%================================================================================~%MSG: tku_msgs/LineData~%float32 Line_theta~%int16 Line_length~%Cooridinate start_point~%Cooridinate end_point~%Cooridinate center_point~%float32 relative_distance~%Cooridinate Nearest_point~%~%================================================================================~%MSG: tku_msgs/Cooridinate~%int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObservationData>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scan_line) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmark) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObservationData>))
  "Converts a ROS message object to a list"
  (cl:list 'ObservationData
    (cl:cons ':imagestate (imagestate msg))
    (cl:cons ':scan_line (scan_line msg))
    (cl:cons ':landmark (landmark msg))
))
