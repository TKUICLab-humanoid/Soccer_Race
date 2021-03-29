; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude HoughValue.msg.html

(cl:defclass <HoughValue> (roslisp-msg-protocol:ros-message)
  ((Hough_threshold
    :reader Hough_threshold
    :initarg :Hough_threshold
    :type cl:fixnum
    :initform 0)
   (Hough_minLineLength
    :reader Hough_minLineLength
    :initarg :Hough_minLineLength
    :type cl:fixnum
    :initform 0)
   (Hough_maxLineGap
    :reader Hough_maxLineGap
    :initarg :Hough_maxLineGap
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HoughValue (<HoughValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HoughValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HoughValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<HoughValue> is deprecated: use tku_msgs-msg:HoughValue instead.")))

(cl:ensure-generic-function 'Hough_threshold-val :lambda-list '(m))
(cl:defmethod Hough_threshold-val ((m <HoughValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Hough_threshold-val is deprecated.  Use tku_msgs-msg:Hough_threshold instead.")
  (Hough_threshold m))

(cl:ensure-generic-function 'Hough_minLineLength-val :lambda-list '(m))
(cl:defmethod Hough_minLineLength-val ((m <HoughValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Hough_minLineLength-val is deprecated.  Use tku_msgs-msg:Hough_minLineLength instead.")
  (Hough_minLineLength m))

(cl:ensure-generic-function 'Hough_maxLineGap-val :lambda-list '(m))
(cl:defmethod Hough_maxLineGap-val ((m <HoughValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:Hough_maxLineGap-val is deprecated.  Use tku_msgs-msg:Hough_maxLineGap instead.")
  (Hough_maxLineGap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HoughValue>) ostream)
  "Serializes a message object of type '<HoughValue>"
  (cl:let* ((signed (cl:slot-value msg 'Hough_threshold)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Hough_minLineLength)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Hough_maxLineGap)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HoughValue>) istream)
  "Deserializes a message object of type '<HoughValue>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Hough_threshold) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Hough_minLineLength) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Hough_maxLineGap) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HoughValue>)))
  "Returns string type for a message object of type '<HoughValue>"
  "tku_msgs/HoughValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HoughValue)))
  "Returns string type for a message object of type 'HoughValue"
  "tku_msgs/HoughValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HoughValue>)))
  "Returns md5sum for a message object of type '<HoughValue>"
  "d05e92877df6915f3edc27ac041474d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HoughValue)))
  "Returns md5sum for a message object of type 'HoughValue"
  "d05e92877df6915f3edc27ac041474d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HoughValue>)))
  "Returns full string definition for message of type '<HoughValue>"
  (cl:format cl:nil "int16 Hough_threshold~%int16 Hough_minLineLength~%int16 Hough_maxLineGap~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HoughValue)))
  "Returns full string definition for message of type 'HoughValue"
  (cl:format cl:nil "int16 Hough_threshold~%int16 Hough_minLineLength~%int16 Hough_maxLineGap~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HoughValue>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HoughValue>))
  "Converts a ROS message object to a list"
  (cl:list 'HoughValue
    (cl:cons ':Hough_threshold (Hough_threshold msg))
    (cl:cons ':Hough_minLineLength (Hough_minLineLength msg))
    (cl:cons ':Hough_maxLineGap (Hough_maxLineGap msg))
))
