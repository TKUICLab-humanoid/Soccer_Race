; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude LineData.msg.html

(cl:defclass <LineData> (roslisp-msg-protocol:ros-message)
  ((Line_theta
    :reader Line_theta
    :initarg :Line_theta
    :type cl:float
    :initform 0.0)
   (Line_length
    :reader Line_length
    :initarg :Line_length
    :type cl:fixnum
    :initform 0)
   (start_point
    :reader start_point
    :initarg :start_point
    :type tku_msgs-msg:Cooridinate
    :initform (cl:make-instance 'tku_msgs-msg:Cooridinate))
   (end_point
    :reader end_point
    :initarg :end_point
    :type tku_msgs-msg:Cooridinate
    :initform (cl:make-instance 'tku_msgs-msg:Cooridinate))
   (center_point
    :reader center_point
    :initarg :center_point
    :type tku_msgs-msg:Cooridinate
    :initform (cl:make-instance 'tku_msgs-msg:Cooridinate))
   (relative_distance
    :reader relative_distance
    :initarg :relative_distance
    :type cl:float
    :initform 0.0)
   (Nearest_point
    :reader Nearest_point
    :initarg :Nearest_point
    :type tku_msgs-msg:Cooridinate
    :initform (cl:make-instance 'tku_msgs-msg:Cooridinate)))
)

(cl:defclass LineData (<LineData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<LineData> is deprecated: use tku_msgs-msg:LineData instead.")))

(cl:ensure-generic-function 'Line_theta-val :lambda-list '(m))
(cl:defmethod Line_theta-val ((m <LineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Line_theta-val is deprecated.  Use tku_msgs-msg:Line_theta instead.")
  (Line_theta m))

(cl:ensure-generic-function 'Line_length-val :lambda-list '(m))
(cl:defmethod Line_length-val ((m <LineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Line_length-val is deprecated.  Use tku_msgs-msg:Line_length instead.")
  (Line_length m))

(cl:ensure-generic-function 'start_point-val :lambda-list '(m))
(cl:defmethod start_point-val ((m <LineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:start_point-val is deprecated.  Use tku_msgs-msg:start_point instead.")
  (start_point m))

(cl:ensure-generic-function 'end_point-val :lambda-list '(m))
(cl:defmethod end_point-val ((m <LineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:end_point-val is deprecated.  Use tku_msgs-msg:end_point instead.")
  (end_point m))

(cl:ensure-generic-function 'center_point-val :lambda-list '(m))
(cl:defmethod center_point-val ((m <LineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:center_point-val is deprecated.  Use tku_msgs-msg:center_point instead.")
  (center_point m))

(cl:ensure-generic-function 'relative_distance-val :lambda-list '(m))
(cl:defmethod relative_distance-val ((m <LineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:relative_distance-val is deprecated.  Use tku_msgs-msg:relative_distance instead.")
  (relative_distance m))

(cl:ensure-generic-function 'Nearest_point-val :lambda-list '(m))
(cl:defmethod Nearest_point-val ((m <LineData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Nearest_point-val is deprecated.  Use tku_msgs-msg:Nearest_point instead.")
  (Nearest_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineData>) ostream)
  "Serializes a message object of type '<LineData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Line_theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Line_length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Nearest_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineData>) istream)
  "Deserializes a message object of type '<LineData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Line_theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Line_length) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_distance) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Nearest_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineData>)))
  "Returns string type for a message object of type '<LineData>"
  "tku_msgs/LineData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineData)))
  "Returns string type for a message object of type 'LineData"
  "tku_msgs/LineData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineData>)))
  "Returns md5sum for a message object of type '<LineData>"
  "286db25d85b96a7f73924a86b3c7e511")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineData)))
  "Returns md5sum for a message object of type 'LineData"
  "286db25d85b96a7f73924a86b3c7e511")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineData>)))
  "Returns full string definition for message of type '<LineData>"
  (cl:format cl:nil "float32 Line_theta~%int16 Line_length~%Cooridinate start_point~%Cooridinate end_point~%Cooridinate center_point~%float32 relative_distance~%Cooridinate Nearest_point~%~%================================================================================~%MSG: tku_msgs/Cooridinate~%int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineData)))
  "Returns full string definition for message of type 'LineData"
  (cl:format cl:nil "float32 Line_theta~%int16 Line_length~%Cooridinate start_point~%Cooridinate end_point~%Cooridinate center_point~%float32 relative_distance~%Cooridinate Nearest_point~%~%================================================================================~%MSG: tku_msgs/Cooridinate~%int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineData>))
  (cl:+ 0
     4
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_point))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Nearest_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineData>))
  "Converts a ROS message object to a list"
  (cl:list 'LineData
    (cl:cons ':Line_theta (Line_theta msg))
    (cl:cons ':Line_length (Line_length msg))
    (cl:cons ':start_point (start_point msg))
    (cl:cons ':end_point (end_point msg))
    (cl:cons ':center_point (center_point msg))
    (cl:cons ':relative_distance (relative_distance msg))
    (cl:cons ':Nearest_point (Nearest_point msg))
))
