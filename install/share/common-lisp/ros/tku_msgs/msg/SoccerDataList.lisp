; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude SoccerDataList.msg.html

(cl:defclass <SoccerDataList> (roslisp-msg-protocol:ros-message)
  ((object_cnt
    :reader object_cnt
    :initarg :object_cnt
    :type cl:fixnum
    :initform 0)
   (ObjectList
    :reader ObjectList
    :initarg :ObjectList
    :type (cl:vector tku_msgs-msg:SoccerData)
   :initform (cl:make-array 0 :element-type 'tku_msgs-msg:SoccerData :initial-element (cl:make-instance 'tku_msgs-msg:SoccerData))))
)

(cl:defclass SoccerDataList (<SoccerDataList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoccerDataList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoccerDataList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<SoccerDataList> is deprecated: use tku_msgs-msg:SoccerDataList instead.")))

(cl:ensure-generic-function 'object_cnt-val :lambda-list '(m))
(cl:defmethod object_cnt-val ((m <SoccerDataList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:object_cnt-val is deprecated.  Use tku_msgs-msg:object_cnt instead.")
  (object_cnt m))

(cl:ensure-generic-function 'ObjectList-val :lambda-list '(m))
(cl:defmethod ObjectList-val ((m <SoccerDataList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:ObjectList-val is deprecated.  Use tku_msgs-msg:ObjectList instead.")
  (ObjectList m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoccerDataList>) ostream)
  "Serializes a message object of type '<SoccerDataList>"
  (cl:let* ((signed (cl:slot-value msg 'object_cnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ObjectList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ObjectList))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoccerDataList>) istream)
  "Deserializes a message object of type '<SoccerDataList>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_cnt) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ObjectList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ObjectList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tku_msgs-msg:SoccerData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoccerDataList>)))
  "Returns string type for a message object of type '<SoccerDataList>"
  "tku_msgs/SoccerDataList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoccerDataList)))
  "Returns string type for a message object of type 'SoccerDataList"
  "tku_msgs/SoccerDataList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoccerDataList>)))
  "Returns md5sum for a message object of type '<SoccerDataList>"
  "4bf9f67971129bb91670b6e5affb7fa2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoccerDataList)))
  "Returns md5sum for a message object of type 'SoccerDataList"
  "4bf9f67971129bb91670b6e5affb7fa2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoccerDataList>)))
  "Returns full string definition for message of type '<SoccerDataList>"
  (cl:format cl:nil "int16 object_cnt~%SoccerData[] ObjectList~%~%================================================================================~%MSG: tku_msgs/SoccerData~%int32 x~%int32 y~%int32 height~%int32 width~%Distance distance~%int32 object_mode~%~%================================================================================~%MSG: tku_msgs/Distance~%int16 x_dis~%int16 y_dis~%int16 dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoccerDataList)))
  "Returns full string definition for message of type 'SoccerDataList"
  (cl:format cl:nil "int16 object_cnt~%SoccerData[] ObjectList~%~%================================================================================~%MSG: tku_msgs/SoccerData~%int32 x~%int32 y~%int32 height~%int32 width~%Distance distance~%int32 object_mode~%~%================================================================================~%MSG: tku_msgs/Distance~%int16 x_dis~%int16 y_dis~%int16 dis~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoccerDataList>))
  (cl:+ 0
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ObjectList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoccerDataList>))
  "Converts a ROS message object to a list"
  (cl:list 'SoccerDataList
    (cl:cons ':object_cnt (object_cnt msg))
    (cl:cons ':ObjectList (ObjectList msg))
))
