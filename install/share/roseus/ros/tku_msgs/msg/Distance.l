;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::Distance)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'Distance (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::DISTANCE")
  (make-package "TKU_MSGS::DISTANCE"))

(in-package "ROS")
;;//! \htmlinclude Distance.msg.html


(defclass tku_msgs::Distance
  :super ros::object
  :slots (_x_dis _y_dis _dis ))

(defmethod tku_msgs::Distance
  (:init
   (&key
    ((:x_dis __x_dis) 0)
    ((:y_dis __y_dis) 0)
    ((:dis __dis) 0)
    )
   (send-super :init)
   (setq _x_dis (round __x_dis))
   (setq _y_dis (round __y_dis))
   (setq _dis (round __dis))
   self)
  (:x_dis
   (&optional __x_dis)
   (if __x_dis (setq _x_dis __x_dis)) _x_dis)
  (:y_dis
   (&optional __y_dis)
   (if __y_dis (setq _y_dis __y_dis)) _y_dis)
  (:dis
   (&optional __dis)
   (if __dis (setq _dis __dis)) _dis)
  (:serialization-length
   ()
   (+
    ;; int16 _x_dis
    2
    ;; int16 _y_dis
    2
    ;; int16 _dis
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x_dis
       (write-word _x_dis s)
     ;; int16 _y_dis
       (write-word _y_dis s)
     ;; int16 _dis
       (write-word _dis s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x_dis
     (setq _x_dis (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y_dis
     (setq _y_dis (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _dis
     (setq _dis (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get tku_msgs::Distance :md5sum-) "3321358cdd898a39621fbe77e10211cf")
(setf (get tku_msgs::Distance :datatype-) "tku_msgs/Distance")
(setf (get tku_msgs::Distance :definition-)
      "int16 x_dis
int16 y_dis
int16 dis

")



(provide :tku_msgs/Distance "3321358cdd898a39621fbe77e10211cf")


