; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude callback.msg.html

(cl:defclass <callback> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil)
   (sector
    :reader sector
    :initarg :sector
    :type cl:fixnum
    :initform 0))
)

(cl:defclass callback (<callback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <callback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'callback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<callback> is deprecated: use tku_msgs-msg:callback instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <callback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:data-val is deprecated.  Use tku_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'sector-val :lambda-list '(m))
(cl:defmethod sector-val ((m <callback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:sector-val is deprecated.  Use tku_msgs-msg:sector instead.")
  (sector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <callback>) ostream)
  "Serializes a message object of type '<callback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sector)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <callback>) istream)
  "Deserializes a message object of type '<callback>"
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sector) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<callback>)))
  "Returns string type for a message object of type '<callback>"
  "tku_msgs/callback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'callback)))
  "Returns string type for a message object of type 'callback"
  "tku_msgs/callback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<callback>)))
  "Returns md5sum for a message object of type '<callback>"
  "6b3cc904e6f0eab1b5086fa228da4f91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'callback)))
  "Returns md5sum for a message object of type 'callback"
  "6b3cc904e6f0eab1b5086fa228da4f91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<callback>)))
  "Returns full string definition for message of type '<callback>"
  (cl:format cl:nil "bool data~%int16 sector~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'callback)))
  "Returns full string definition for message of type 'callback"
  (cl:format cl:nil "bool data~%int16 sector~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <callback>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <callback>))
  "Converts a ROS message object to a list"
  (cl:list 'callback
    (cl:cons ':data (data msg))
    (cl:cons ':sector (sector msg))
))
