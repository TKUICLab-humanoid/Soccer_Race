;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::Walking_message)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'Walking_message (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::WALKING_MESSAGE")
  (make-package "TKU_MSGS::WALKING_MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude Walking_message.msg.html


(defclass tku_msgs::Walking_message
  :super ros::object
  :slots (_X _Y _Z _THETA _Walking_Cmd _Sensor_Mode ))

(defmethod tku_msgs::Walking_message
  (:init
   (&key
    ((:X __X) 0)
    ((:Y __Y) 0)
    ((:Z __Z) 0)
    ((:THETA __THETA) 0)
    ((:Walking_Cmd __Walking_Cmd) 0)
    ((:Sensor_Mode __Sensor_Mode) 0)
    )
   (send-super :init)
   (setq _X (round __X))
   (setq _Y (round __Y))
   (setq _Z (round __Z))
   (setq _THETA (round __THETA))
   (setq _Walking_Cmd (round __Walking_Cmd))
   (setq _Sensor_Mode (round __Sensor_Mode))
   self)
  (:X
   (&optional __X)
   (if __X (setq _X __X)) _X)
  (:Y
   (&optional __Y)
   (if __Y (setq _Y __Y)) _Y)
  (:Z
   (&optional __Z)
   (if __Z (setq _Z __Z)) _Z)
  (:THETA
   (&optional __THETA)
   (if __THETA (setq _THETA __THETA)) _THETA)
  (:Walking_Cmd
   (&optional __Walking_Cmd)
   (if __Walking_Cmd (setq _Walking_Cmd __Walking_Cmd)) _Walking_Cmd)
  (:Sensor_Mode
   (&optional __Sensor_Mode)
   (if __Sensor_Mode (setq _Sensor_Mode __Sensor_Mode)) _Sensor_Mode)
  (:serialization-length
   ()
   (+
    ;; int32 _X
    4
    ;; int32 _Y
    4
    ;; int32 _Z
    4
    ;; int32 _THETA
    4
    ;; int32 _Walking_Cmd
    4
    ;; int32 _Sensor_Mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _X
       (write-long _X s)
     ;; int32 _Y
       (write-long _Y s)
     ;; int32 _Z
       (write-long _Z s)
     ;; int32 _THETA
       (write-long _THETA s)
     ;; int32 _Walking_Cmd
       (write-long _Walking_Cmd s)
     ;; int32 _Sensor_Mode
       (write-long _Sensor_Mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _X
     (setq _X (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Y
     (setq _Y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Z
     (setq _Z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _THETA
     (setq _THETA (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Walking_Cmd
     (setq _Walking_Cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Sensor_Mode
     (setq _Sensor_Mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tku_msgs::Walking_message :md5sum-) "b0d0a5fcb9aac712e8b8ff719a5c6246")
(setf (get tku_msgs::Walking_message :datatype-) "tku_msgs/Walking_message")
(setf (get tku_msgs::Walking_message :definition-)
      "int32 X
int32 Y
int32 Z
int32 THETA
int32 Walking_Cmd
int32 Sensor_Mode

")



(provide :tku_msgs/Walking_message "b0d0a5fcb9aac712e8b8ff719a5c6246")


