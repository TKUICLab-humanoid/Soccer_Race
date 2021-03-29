;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::SandHandSpeed)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'SandHandSpeed (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::SANDHANDSPEED")
  (make-package "TKU_MSGS::SANDHANDSPEED"))

(in-package "ROS")
;;//! \htmlinclude SandHandSpeed.msg.html


(defclass tku_msgs::SandHandSpeed
  :super ros::object
  :slots (_sector _speed ))

(defmethod tku_msgs::SandHandSpeed
  (:init
   (&key
    ((:sector __sector) 0)
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _sector (round __sector))
   (setq _speed (round __speed))
   self)
  (:sector
   (&optional __sector)
   (if __sector (setq _sector __sector)) _sector)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; int16 _sector
    2
    ;; int16 _speed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _sector
       (write-word _sector s)
     ;; int16 _speed
       (write-word _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _sector
     (setq _sector (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _speed
     (setq _speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get tku_msgs::SandHandSpeed :md5sum-) "c2d5ef17ed061f55340a6ac0fd02ec93")
(setf (get tku_msgs::SandHandSpeed :datatype-) "tku_msgs/SandHandSpeed")
(setf (get tku_msgs::SandHandSpeed :definition-)
      "int16 sector
int16 speed
")



(provide :tku_msgs/SandHandSpeed "c2d5ef17ed061f55340a6ac0fd02ec93")


