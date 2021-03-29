;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::LineData)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'LineData (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::LINEDATA")
  (make-package "TKU_MSGS::LINEDATA"))

(in-package "ROS")
;;//! \htmlinclude LineData.msg.html


(defclass tku_msgs::LineData
  :super ros::object
  :slots (_Line_theta _Line_length _start_point _end_point _center_point _relative_distance _Nearest_point ))

(defmethod tku_msgs::LineData
  (:init
   (&key
    ((:Line_theta __Line_theta) 0.0)
    ((:Line_length __Line_length) 0)
    ((:start_point __start_point) (instance tku_msgs::Cooridinate :init))
    ((:end_point __end_point) (instance tku_msgs::Cooridinate :init))
    ((:center_point __center_point) (instance tku_msgs::Cooridinate :init))
    ((:relative_distance __relative_distance) 0.0)
    ((:Nearest_point __Nearest_point) (instance tku_msgs::Cooridinate :init))
    )
   (send-super :init)
   (setq _Line_theta (float __Line_theta))
   (setq _Line_length (round __Line_length))
   (setq _start_point __start_point)
   (setq _end_point __end_point)
   (setq _center_point __center_point)
   (setq _relative_distance (float __relative_distance))
   (setq _Nearest_point __Nearest_point)
   self)
  (:Line_theta
   (&optional __Line_theta)
   (if __Line_theta (setq _Line_theta __Line_theta)) _Line_theta)
  (:Line_length
   (&optional __Line_length)
   (if __Line_length (setq _Line_length __Line_length)) _Line_length)
  (:start_point
   (&rest __start_point)
   (if (keywordp (car __start_point))
       (send* _start_point __start_point)
     (progn
       (if __start_point (setq _start_point (car __start_point)))
       _start_point)))
  (:end_point
   (&rest __end_point)
   (if (keywordp (car __end_point))
       (send* _end_point __end_point)
     (progn
       (if __end_point (setq _end_point (car __end_point)))
       _end_point)))
  (:center_point
   (&rest __center_point)
   (if (keywordp (car __center_point))
       (send* _center_point __center_point)
     (progn
       (if __center_point (setq _center_point (car __center_point)))
       _center_point)))
  (:relative_distance
   (&optional __relative_distance)
   (if __relative_distance (setq _relative_distance __relative_distance)) _relative_distance)
  (:Nearest_point
   (&rest __Nearest_point)
   (if (keywordp (car __Nearest_point))
       (send* _Nearest_point __Nearest_point)
     (progn
       (if __Nearest_point (setq _Nearest_point (car __Nearest_point)))
       _Nearest_point)))
  (:serialization-length
   ()
   (+
    ;; float32 _Line_theta
    4
    ;; int16 _Line_length
    2
    ;; tku_msgs/Cooridinate _start_point
    (send _start_point :serialization-length)
    ;; tku_msgs/Cooridinate _end_point
    (send _end_point :serialization-length)
    ;; tku_msgs/Cooridinate _center_point
    (send _center_point :serialization-length)
    ;; float32 _relative_distance
    4
    ;; tku_msgs/Cooridinate _Nearest_point
    (send _Nearest_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Line_theta
       (sys::poke _Line_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _Line_length
       (write-word _Line_length s)
     ;; tku_msgs/Cooridinate _start_point
       (send _start_point :serialize s)
     ;; tku_msgs/Cooridinate _end_point
       (send _end_point :serialize s)
     ;; tku_msgs/Cooridinate _center_point
       (send _center_point :serialize s)
     ;; float32 _relative_distance
       (sys::poke _relative_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; tku_msgs/Cooridinate _Nearest_point
       (send _Nearest_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Line_theta
     (setq _Line_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _Line_length
     (setq _Line_length (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; tku_msgs/Cooridinate _start_point
     (send _start_point :deserialize buf ptr-) (incf ptr- (send _start_point :serialization-length))
   ;; tku_msgs/Cooridinate _end_point
     (send _end_point :deserialize buf ptr-) (incf ptr- (send _end_point :serialization-length))
   ;; tku_msgs/Cooridinate _center_point
     (send _center_point :deserialize buf ptr-) (incf ptr- (send _center_point :serialization-length))
   ;; float32 _relative_distance
     (setq _relative_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; tku_msgs/Cooridinate _Nearest_point
     (send _Nearest_point :deserialize buf ptr-) (incf ptr- (send _Nearest_point :serialization-length))
   ;;
   self)
  )

(setf (get tku_msgs::LineData :md5sum-) "286db25d85b96a7f73924a86b3c7e511")
(setf (get tku_msgs::LineData :datatype-) "tku_msgs/LineData")
(setf (get tku_msgs::LineData :definition-)
      "float32 Line_theta
int16 Line_length
Cooridinate start_point
Cooridinate end_point
Cooridinate center_point
float32 relative_distance
Cooridinate Nearest_point

================================================================================
MSG: tku_msgs/Cooridinate
int16 x
int16 y

")



(provide :tku_msgs/LineData "286db25d85b96a7f73924a86b3c7e511")


