;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::Interface)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'Interface (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::INTERFACE")
  (make-package "TKU_MSGS::INTERFACE"))

(in-package "ROS")
;;//! \htmlinclude Interface.msg.html


(defclass tku_msgs::Interface
  :super ros::object
  :slots (_x _y _z _theta _walking_mode _walking_state _sensor_mode ))

(defmethod tku_msgs::Interface
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
    ((:theta __theta) 0)
    ((:walking_mode __walking_mode) 0)
    ((:walking_state __walking_state) 0)
    ((:sensor_mode __sensor_mode) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   (setq _theta (round __theta))
   (setq _walking_mode (round __walking_mode))
   (setq _walking_state (round __walking_state))
   (setq _sensor_mode (round __sensor_mode))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:walking_mode
   (&optional __walking_mode)
   (if __walking_mode (setq _walking_mode __walking_mode)) _walking_mode)
  (:walking_state
   (&optional __walking_state)
   (if __walking_state (setq _walking_state __walking_state)) _walking_state)
  (:sensor_mode
   (&optional __sensor_mode)
   (if __sensor_mode (setq _sensor_mode __sensor_mode)) _sensor_mode)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _z
    4
    ;; int32 _theta
    4
    ;; int32 _walking_mode
    4
    ;; int32 _walking_state
    4
    ;; int32 _sensor_mode
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
     ;; int32 _z
       (write-long _z s)
     ;; int32 _theta
       (write-long _theta s)
     ;; int32 _walking_mode
       (write-long _walking_mode s)
     ;; int32 _walking_state
       (write-long _walking_state s)
     ;; int32 _sensor_mode
       (write-long _sensor_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _z
     (setq _z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _theta
     (setq _theta (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _walking_mode
     (setq _walking_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _walking_state
     (setq _walking_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _sensor_mode
     (setq _sensor_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tku_msgs::Interface :md5sum-) "a32964c985d90b8b5d57327f44b9e2d5")
(setf (get tku_msgs::Interface :datatype-) "tku_msgs/Interface")
(setf (get tku_msgs::Interface :definition-)
      "int32 x
int32 y
int32 z
int32 theta
int32 walking_mode
int32 walking_state
int32 sensor_mode

")



(provide :tku_msgs/Interface "a32964c985d90b8b5d57327f44b9e2d5")


