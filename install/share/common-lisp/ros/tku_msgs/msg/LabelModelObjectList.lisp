; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude LabelModelObjectList.msg.html

(cl:defclass <LabelModelObjectList> (roslisp-msg-protocol:ros-message)
  ((LabelModel
    :reader LabelModel
    :initarg :LabelModel
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass LabelModelObjectList (<LabelModelObjectList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LabelModelObjectList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LabelModelObjectList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<LabelModelObjectList> is deprecated: use tku_msgs-msg:LabelModelObjectList instead.")))

(cl:ensure-generic-function 'LabelModel-val :lambda-list '(m))
(cl:defmethod LabelModel-val ((m <LabelModelObjectList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:LabelModel-val is deprecated.  Use tku_msgs-msg:LabelModel instead.")
  (LabelModel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LabelModelObjectList>) ostream)
  "Serializes a message object of type '<LabelModelObjectList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'LabelModel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'LabelModel))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LabelModelObjectList>) istream)
  "Deserializes a message object of type '<LabelModelObjectList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'LabelModel) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'LabelModel)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LabelModelObjectList>)))
  "Returns string type for a message object of type '<LabelModelObjectList>"
  "tku_msgs/LabelModelObjectList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LabelModelObjectList)))
  "Returns string type for a message object of type 'LabelModelObjectList"
  "tku_msgs/LabelModelObjectList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LabelModelObjectList>)))
  "Returns md5sum for a message object of type '<LabelModelObjectList>"
  "d3ec37f0e604748d8ecf9aa0d22ba18e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LabelModelObjectList)))
  "Returns md5sum for a message object of type 'LabelModelObjectList"
  "d3ec37f0e604748d8ecf9aa0d22ba18e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LabelModelObjectList>)))
  "Returns full string definition for message of type '<LabelModelObjectList>"
  (cl:format cl:nil "char[] LabelModel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LabelModelObjectList)))
  "Returns full string definition for message of type 'LabelModelObjectList"
  (cl:format cl:nil "char[] LabelModel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LabelModelObjectList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'LabelModel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LabelModelObjectList>))
  "Converts a ROS message object to a list"
  (cl:list 'LabelModelObjectList
    (cl:cons ':LabelModel (LabelModel msg))
))
