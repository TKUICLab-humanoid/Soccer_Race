;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::RobotPos)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'RobotPos (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::ROBOTPOS")
  (make-package "TKU_MSGS::ROBOTPOS"))

(in-package "ROS")
;;//! \htmlinclude RobotPos.msg.html


(defclass tku_msgs::RobotPos
  :super ros::object
  :slots (_x _y _dir ))

(defmethod tku_msgs::RobotPos
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:dir __dir) 0.0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _dir (float __dir))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ;; int16 _y
    2
    ;; float32 _dir
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x
       (write-word _x s)
     ;; int16 _y
       (write-word _y s)
     ;; float32 _dir
       (sys::poke _dir (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _dir
     (setq _dir (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tku_msgs::RobotPos :md5sum-) "82b3de07c7c34584e02eba05a4f17bac")
(setf (get tku_msgs::RobotPos :datatype-) "tku_msgs/RobotPos")
(setf (get tku_msgs::RobotPos :definition-)
      "int16 x
int16 y
float32 dir

")



(provide :tku_msgs/RobotPos "82b3de07c7c34584e02eba05a4f17bac")


