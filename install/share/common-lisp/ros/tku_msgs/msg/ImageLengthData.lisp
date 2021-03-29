; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude ImageLengthData.msg.html

(cl:defclass <ImageLengthData> (roslisp-msg-protocol:ros-message)
  ((focus
    :reader focus
    :initarg :focus
    :type cl:fixnum
    :initform 0)
   (top
    :reader top
    :initarg :top
    :type cl:fixnum
    :initform 0)
   (bottom
    :reader bottom
    :initarg :bottom
    :type cl:fixnum
    :initform 0)
   (top_width
    :reader top_width
    :initarg :top_width
    :type cl:fixnum
    :initform 0)
   (bottom_width
    :reader bottom_width
    :initarg :bottom_width
    :type cl:fixnum
    :initform 0)
   (horizontal_head_angle
    :reader horizontal_head_angle
    :initarg :horizontal_head_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass ImageLengthData (<ImageLengthData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageLengthData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageLengthData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<ImageLengthData> is deprecated: use tku_msgs-msg:ImageLengthData instead.")))

(cl:ensure-generic-function 'focus-val :lambda-list '(m))
(cl:defmethod focus-val ((m <ImageLengthData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:focus-val is deprecated.  Use tku_msgs-msg:focus instead.")
  (focus m))

(cl:ensure-generic-function 'top-val :lambda-list '(m))
(cl:defmethod top-val ((m <ImageLengthData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:top-val is deprecated.  Use tku_msgs-msg:top instead.")
  (top m))

(cl:ensure-generic-function 'bottom-val :lambda-list '(m))
(cl:defmethod bottom-val ((m <ImageLengthData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:bottom-val is deprecated.  Use tku_msgs-msg:bottom instead.")
  (bottom m))

(cl:ensure-generic-function 'top_width-val :lambda-list '(m))
(cl:defmethod top_width-val ((m <ImageLengthData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:top_width-val is deprecated.  Use tku_msgs-msg:top_width instead.")
  (top_width m))

(cl:ensure-generic-function 'bottom_width-val :lambda-list '(m))
(cl:defmethod bottom_width-val ((m <ImageLengthData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:bottom_width-val is deprecated.  Use tku_msgs-msg:bottom_width instead.")
  (bottom_width m))

(cl:ensure-generic-function 'horizontal_head_angle-val :lambda-list '(m))
(cl:defmethod horizontal_head_angle-val ((m <ImageLengthData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:horizontal_head_angle-val is deprecated.  Use tku_msgs-msg:horizontal_head_angle instead.")
  (horizontal_head_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageLengthData>) ostream)
  "Serializes a message object of type '<ImageLengthData>"
  (cl:let* ((signed (cl:slot-value msg 'focus)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'top)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bottom)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'top_width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bottom_width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'horizontal_head_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageLengthData>) istream)
  "Deserializes a message object of type '<ImageLengthData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'focus) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'top) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bottom) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'top_width) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bottom_width) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizontal_head_angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageLengthData>)))
  "Returns string type for a message object of type '<ImageLengthData>"
  "tku_msgs/ImageLengthData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageLengthData)))
  "Returns string type for a message object of type 'ImageLengthData"
  "tku_msgs/ImageLengthData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageLengthData>)))
  "Returns md5sum for a message object of type '<ImageLengthData>"
  "162a1f70ff8cb0ca3417bb2f1837ffa6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageLengthData)))
  "Returns md5sum for a message object of type 'ImageLengthData"
  "162a1f70ff8cb0ca3417bb2f1837ffa6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageLengthData>)))
  "Returns full string definition for message of type '<ImageLengthData>"
  (cl:format cl:nil "int16 focus~%int16 top~%int16 bottom~%int16 top_width~%int16 bottom_width~%float64 horizontal_head_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageLengthData)))
  "Returns full string definition for message of type 'ImageLengthData"
  (cl:format cl:nil "int16 focus~%int16 top~%int16 bottom~%int16 top_width~%int16 bottom_width~%float64 horizontal_head_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageLengthData>))
  (cl:+ 0
     2
     2
     2
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageLengthData>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageLengthData
    (cl:cons ':focus (focus msg))
    (cl:cons ':top (top msg))
    (cl:cons ':bottom (bottom msg))
    (cl:cons ':top_width (top_width msg))
    (cl:cons ':bottom_width (bottom_width msg))
    (cl:cons ':horizontal_head_angle (horizontal_head_angle msg))
))
