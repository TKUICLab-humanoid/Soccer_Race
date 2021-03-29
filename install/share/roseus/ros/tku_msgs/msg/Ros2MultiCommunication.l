;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::Ros2MultiCommunication)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'Ros2MultiCommunication (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::ROS2MULTICOMMUNICATION")
  (make-package "TKU_MSGS::ROS2MULTICOMMUNICATION"))

(in-package "ROS")
;;//! \htmlinclude Ros2MultiCommunication.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tku_msgs::Ros2MultiCommunication
  :super ros::object
  :slots (_header _who ))

(defmethod tku_msgs::Ros2MultiCommunication
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:who __who) (let (r) (dotimes (i 0) (push (instance tku_msgs::CharacterInfo :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _who __who)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:who
   (&rest __who)
   (if (keywordp (car __who))
       (send* _who __who)
     (progn
       (if __who (setq _who (car __who)))
       _who)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tku_msgs/CharacterInfo[] _who
    (apply #'+ (send-all _who :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tku_msgs/CharacterInfo[] _who
     (write-long (length _who) s)
     (dolist (elem _who)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tku_msgs/CharacterInfo[] _who
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _who (let (r) (dotimes (i n) (push (instance tku_msgs::CharacterInfo :init) r)) r))
     (dolist (elem- _who)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tku_msgs::Ros2MultiCommunication :md5sum-) "85518ba8fb2f5102548b06829ab94618")
(setf (get tku_msgs::Ros2MultiCommunication :datatype-) "tku_msgs/Ros2MultiCommunication")
(setf (get tku_msgs::Ros2MultiCommunication :definition-)
      "std_msgs/Header header
CharacterInfo[] who

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: tku_msgs/CharacterInfo
string which_robot
string name
float32 x
float32 y
bool exist_flag
WitchData theta
WitchData dist
ObjectInfo[] object
ObjectInfo[] enemy

================================================================================
MSG: tku_msgs/WitchData
float32 local
float32 global

================================================================================
MSG: tku_msgs/ObjectInfo
string name
float32 x
float32 y
bool exist_flag
WitchData theta
WitchData dist

")



(provide :tku_msgs/Ros2MultiCommunication "85518ba8fb2f5102548b06829ab94618")


