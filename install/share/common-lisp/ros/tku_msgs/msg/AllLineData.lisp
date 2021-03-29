; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude AllLineData.msg.html

(cl:defclass <AllLineData> (roslisp-msg-protocol:ros-message)
  ((all_LineData
    :reader all_LineData
    :initarg :all_LineData
    :type (cl:vector tku_msgs-msg:LineData)
   :initform (cl:make-array 0 :element-type 'tku_msgs-msg:LineData :initial-element (cl:make-instance 'tku_msgs-msg:LineData))))
)

(cl:defclass AllLineData (<AllLineData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AllLineData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AllLineData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<AllLineData> is deprecated: use tku_msgs-msg:AllLineData instead.")))

(cl:ensure-generic-function 'all_LineData-val :lambda-list '(m))
(cl:defmethod all_LineData-val ((m <AllLineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:all_LineData-val is deprecated.  Use tku_msgs-msg:all_LineData instead.")
  (all_LineData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AllLineData>) ostream)
  "Serializes a message object of type '<AllLineData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'all_LineData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'all_LineData))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AllLineData>) istream)
  "Deserializes a message object of type '<AllLineData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'all_LineData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'all_LineData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tku_msgs-msg:LineData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AllLineData>)))
  "Returns string type for a message object of type '<AllLineData>"
  "tku_msgs/AllLineData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AllLineData)))
  "Returns string type for a message object of type 'AllLineData"
  "tku_msgs/AllLineData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AllLineData>)))
  "Returns md5sum for a message object of type '<AllLineData>"
  "c89c4722901f5abc77d01bb5fa2b88a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AllLineData)))
  "Returns md5sum for a message object of type 'AllLineData"
  "c89c4722901f5abc77d01bb5fa2b88a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AllLineData>)))
  "Returns full string definition for message of type '<AllLineData>"
  (cl:format cl:nil "LineData[] all_LineData~%~%================================================================================~%MSG: tku_msgs/LineData~%float32 Line_theta~%int16 Line_length~%Cooridinate start_point~%Cooridinate end_point~%Cooridinate center_point~%float32 relative_distance~%Cooridinate Nearest_point~%~%================================================================================~%MSG: tku_msgs/Cooridinate~%int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AllLineData)))
  "Returns full string definition for message of type 'AllLineData"
  (cl:format cl:nil "LineData[] all_LineData~%~%================================================================================~%MSG: tku_msgs/LineData~%float32 Line_theta~%int16 Line_length~%Cooridinate start_point~%Cooridinate end_point~%Cooridinate center_point~%float32 relative_distance~%Cooridinate Nearest_point~%~%================================================================================~%MSG: tku_msgs/Cooridinate~%int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AllLineData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'all_LineData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AllLineData>))
  "Converts a ROS message object to a list"
  (cl:list 'AllLineData
    (cl:cons ':all_LineData (all_LineData msg))
))
