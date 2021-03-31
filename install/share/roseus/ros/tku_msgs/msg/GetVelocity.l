;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::GetVelocity)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'GetVelocity (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::GETVELOCITY")
  (make-package "TKU_MSGS::GETVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude GetVelocity.msg.html


(defclass tku_msgs::GetVelocity
  :super ros::object
  :slots (_x _y _thta _moving _dt ))

(defmethod tku_msgs::GetVelocity
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:thta __thta) 0)
    ((:moving __moving) 0)
    ((:dt __dt) 0.0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _thta (round __thta))
   (setq _moving (round __moving))
   (setq _dt (float __dt))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:thta
   (&optional __thta)
   (if __thta (setq _thta __thta)) _thta)
  (:moving
   (&optional __moving)
   (if __moving (setq _moving __moving)) _moving)
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _thta
    4
    ;; int32 _moving
    4
    ;; float32 _dt
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
     ;; int32 _thta
       (write-long _thta s)
     ;; int32 _moving
       (write-long _moving s)
     ;; float32 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _thta
     (setq _thta (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _moving
     (setq _moving (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _dt
     (setq _dt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tku_msgs::GetVelocity :md5sum-) "9c1928b39f88a3cb1c7d866aa8964520")
(setf (get tku_msgs::GetVelocity :datatype-) "tku_msgs/GetVelocity")
(setf (get tku_msgs::GetVelocity :definition-)
      "int32 x
int32 y
int32 thta
int32 moving
float32 dt

")



(provide :tku_msgs/GetVelocity "9c1928b39f88a3cb1c7d866aa8964520")


