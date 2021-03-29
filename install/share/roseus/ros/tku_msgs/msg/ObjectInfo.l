;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::ObjectInfo)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'ObjectInfo (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::OBJECTINFO")
  (make-package "TKU_MSGS::OBJECTINFO"))

(in-package "ROS")
;;//! \htmlinclude ObjectInfo.msg.html


(defclass tku_msgs::ObjectInfo
  :super ros::object
  :slots (_name _x _y _exist_flag _theta _dist ))

(defmethod tku_msgs::ObjectInfo
  (:init
   (&key
    ((:name __name) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:exist_flag __exist_flag) nil)
    ((:theta __theta) (instance tku_msgs::WitchData :init))
    ((:dist __dist) (instance tku_msgs::WitchData :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _exist_flag __exist_flag)
   (setq _theta __theta)
   (setq _dist __dist)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:exist_flag
   (&optional __exist_flag)
   (if __exist_flag (setq _exist_flag __exist_flag)) _exist_flag)
  (:theta
   (&rest __theta)
   (if (keywordp (car __theta))
       (send* _theta __theta)
     (progn
       (if __theta (setq _theta (car __theta)))
       _theta)))
  (:dist
   (&rest __dist)
   (if (keywordp (car __dist))
       (send* _dist __dist)
     (progn
       (if __dist (setq _dist (car __dist)))
       _dist)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; bool _exist_flag
    1
    ;; tku_msgs/WitchData _theta
    (send _theta :serialization-length)
    ;; tku_msgs/WitchData _dist
    (send _dist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _exist_flag
       (if _exist_flag (write-byte -1 s) (write-byte 0 s))
     ;; tku_msgs/WitchData _theta
       (send _theta :serialize s)
     ;; tku_msgs/WitchData _dist
       (send _dist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _exist_flag
     (setq _exist_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; tku_msgs/WitchData _theta
     (send _theta :deserialize buf ptr-) (incf ptr- (send _theta :serialization-length))
   ;; tku_msgs/WitchData _dist
     (send _dist :deserialize buf ptr-) (incf ptr- (send _dist :serialization-length))
   ;;
   self)
  )

(setf (get tku_msgs::ObjectInfo :md5sum-) "47a2b9ccd08f45a927e72a0d6f89a035")
(setf (get tku_msgs::ObjectInfo :datatype-) "tku_msgs/ObjectInfo")
(setf (get tku_msgs::ObjectInfo :definition-)
      "string name
float32 x
float32 y
bool exist_flag
WitchData theta
WitchData dist

================================================================================
MSG: tku_msgs/WitchData
float32 local
float32 global

")



(provide :tku_msgs/ObjectInfo "47a2b9ccd08f45a927e72a0d6f89a035")


