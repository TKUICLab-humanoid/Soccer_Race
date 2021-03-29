; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude ImageProcess.msg.html

(cl:defclass <ImageProcess> (roslisp-msg-protocol:ros-message)
  ((gray_min
    :reader gray_min
    :initarg :gray_min
    :type cl:fixnum
    :initform 0)
   (gray_max
    :reader gray_max
    :initarg :gray_max
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ImageProcess (<ImageProcess>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageProcess>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageProcess)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<ImageProcess> is deprecated: use tku_msgs-msg:ImageProcess instead.")))

(cl:ensure-generic-function 'gray_min-val :lambda-list '(m))
(cl:defmethod gray_min-val ((m <ImageProcess>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:gray_min-val is deprecated.  Use tku_msgs-msg:gray_min instead.")
  (gray_min m))

(cl:ensure-generic-function 'gray_max-val :lambda-list '(m))
(cl:defmethod gray_max-val ((m <ImageProcess>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:gray_max-val is deprecated.  Use tku_msgs-msg:gray_max instead.")
  (gray_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageProcess>) ostream)
  "Serializes a message object of type '<ImageProcess>"
  (cl:let* ((signed (cl:slot-value msg 'gray_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gray_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageProcess>) istream)
  "Deserializes a message object of type '<ImageProcess>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gray_min) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gray_max) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageProcess>)))
  "Returns string type for a message object of type '<ImageProcess>"
  "tku_msgs/ImageProcess")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageProcess)))
  "Returns string type for a message object of type 'ImageProcess"
  "tku_msgs/ImageProcess")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageProcess>)))
  "Returns md5sum for a message object of type '<ImageProcess>"
  "b9172034b9bfb58696ee80ca50817001")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageProcess)))
  "Returns md5sum for a message object of type 'ImageProcess"
  "b9172034b9bfb58696ee80ca50817001")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageProcess>)))
  "Returns full string definition for message of type '<ImageProcess>"
  (cl:format cl:nil "int16 gray_min~%int16 gray_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageProcess)))
  "Returns full string definition for message of type 'ImageProcess"
  (cl:format cl:nil "int16 gray_min~%int16 gray_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageProcess>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageProcess>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageProcess
    (cl:cons ':gray_min (gray_min msg))
    (cl:cons ':gray_max (gray_max msg))
))
