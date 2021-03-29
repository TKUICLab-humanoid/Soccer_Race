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
  :slots (_x _y _thta ))

(defmethod tku_msgs::GetVelocity
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:thta __thta) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _thta (round __thta))
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
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _thta
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
   ;;
   self)
  )

(setf (get tku_msgs::GetVelocity :md5sum-) "608e030db4b1da323a9f83bf257ec356")
(setf (get tku_msgs::GetVelocity :datatype-) "tku_msgs/GetVelocity")
(setf (get tku_msgs::GetVelocity :definition-)
      "int32 x
int32 y
int32 thta
")



(provide :tku_msgs/GetVelocity "608e030db4b1da323a9f83bf257ec356")


