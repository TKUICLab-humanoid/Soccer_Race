;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::SoccerData)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'SoccerData (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::SOCCERDATA")
  (make-package "TKU_MSGS::SOCCERDATA"))

(in-package "ROS")
;;//! \htmlinclude SoccerData.msg.html


(defclass tku_msgs::SoccerData
  :super ros::object
  :slots (_x _y _height _width _distance _object_mode ))

(defmethod tku_msgs::SoccerData
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:height __height) 0)
    ((:width __width) 0)
    ((:distance __distance) (instance tku_msgs::Distance :init))
    ((:object_mode __object_mode) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _height (round __height))
   (setq _width (round __width))
   (setq _distance __distance)
   (setq _object_mode (round __object_mode))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:distance
   (&rest __distance)
   (if (keywordp (car __distance))
       (send* _distance __distance)
     (progn
       (if __distance (setq _distance (car __distance)))
       _distance)))
  (:object_mode
   (&optional __object_mode)
   (if __object_mode (setq _object_mode __object_mode)) _object_mode)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _height
    4
    ;; int32 _width
    4
    ;; tku_msgs/Distance _distance
    (send _distance :serialization-length)
    ;; int32 _object_mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _width
       (write-long _width s)
     ;; tku_msgs/Distance _distance
       (send _distance :serialize s)
     ;; int32 _object_mode
       (write-long _object_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; tku_msgs/Distance _distance
     (send _distance :deserialize buf ptr-) (incf ptr- (send _distance :serialization-length))
   ;; int32 _object_mode
     (setq _object_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tku_msgs::SoccerData :md5sum-) "f053806e000580e82f90d2eca914fb02")
(setf (get tku_msgs::SoccerData :datatype-) "tku_msgs/SoccerData")
(setf (get tku_msgs::SoccerData :definition-)
      "int32 x
int32 y
int32 height
int32 width
Distance distance
int32 object_mode

================================================================================
MSG: tku_msgs/Distance
int16 x_dis
int16 y_dis
int16 dis

")



(provide :tku_msgs/SoccerData "f053806e000580e82f90d2eca914fb02")


