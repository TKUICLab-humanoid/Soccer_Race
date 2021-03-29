;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::SetGoalPoint)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'SetGoalPoint (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::SETGOALPOINT")
  (make-package "TKU_MSGS::SETGOALPOINT"))

(in-package "ROS")
;;//! \htmlinclude SetGoalPoint.msg.html


(defclass tku_msgs::SetGoalPoint
  :super ros::object
  :slots (_number _x _y ))

(defmethod tku_msgs::SetGoalPoint
  (:init
   (&key
    ((:number __number) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _number (round __number))
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int16 _number
    2
    ;; int16 _x
    2
    ;; int16 _y
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _number
       (write-word _number s)
     ;; int16 _x
       (write-word _x s)
     ;; int16 _y
       (write-word _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _number
     (setq _number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get tku_msgs::SetGoalPoint :md5sum-) "13a953e9417e5c884c60d46a1e0ff818")
(setf (get tku_msgs::SetGoalPoint :datatype-) "tku_msgs/SetGoalPoint")
(setf (get tku_msgs::SetGoalPoint :definition-)
      "int16 number
int16 x
int16 y

")



(provide :tku_msgs/SetGoalPoint "13a953e9417e5c884c60d46a1e0ff818")


