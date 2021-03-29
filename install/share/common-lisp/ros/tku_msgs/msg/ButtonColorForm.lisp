; Auto-generated. Do not edit!


(cl:in-package tku_msgs-msg)


;//! \htmlinclude ButtonColorForm.msg.html

(cl:defclass <ButtonColorForm> (roslisp-msg-protocol:ros-message)
  ((BuildingModel
    :reader BuildingModel
    :initarg :BuildingModel
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ButtonColorForm (<ButtonColorForm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonColorForm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonColorForm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tku_msgs-msg:<ButtonColorForm> is deprecated: use tku_msgs-msg:ButtonColorForm instead.")))

(cl:ensure-generic-function 'BuildingModel-val :lambda-list '(m))
(cl:defmethod BuildingModel-val ((m <ButtonColorForm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tku_msgs-msg:BuildingModel-val is deprecated.  Use tku_msgs-msg:BuildingModel instead.")
  (BuildingModel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonColorForm>) ostream)
  "Serializes a message object of type '<ButtonColorForm>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'BuildingModel) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonColorForm>) istream)
  "Deserializes a message object of type '<ButtonColorForm>"
    (cl:setf (cl:slot-value msg 'BuildingModel) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonColorForm>)))
  "Returns string type for a message object of type '<ButtonColorForm>"
  "tku_msgs/ButtonColorForm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonColorForm)))
  "Returns string type for a message object of type 'ButtonColorForm"
  "tku_msgs/ButtonColorForm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonColorForm>)))
  "Returns md5sum for a message object of type '<ButtonColorForm>"
  "8c88544105f68a71d5b5064eb3340fd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonColorForm)))
  "Returns md5sum for a message object of type 'ButtonColorForm"
  "8c88544105f68a71d5b5064eb3340fd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonColorForm>)))
  "Returns full string definition for message of type '<ButtonColorForm>"
  (cl:format cl:nil "bool BuildingModel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonColorForm)))
  "Returns full string definition for message of type 'ButtonColorForm"
  (cl:format cl:nil "bool BuildingModel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonColorForm>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonColorForm>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonColorForm
    (cl:cons ':BuildingModel (BuildingModel msg))
))
