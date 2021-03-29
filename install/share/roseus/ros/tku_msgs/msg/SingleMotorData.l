;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::SingleMotorData)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'SingleMotorData (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::SINGLEMOTORDATA")
  (make-package "TKU_MSGS::SINGLEMOTORDATA"))

(in-package "ROS")
;;//! \htmlinclude SingleMotorData.msg.html


(defclass tku_msgs::SingleMotorData
  :super ros::object
  :slots (_ID _Position _Speed ))

(defmethod tku_msgs::SingleMotorData
  (:init
   (&key
    ((:ID __ID) 0)
    ((:Position __Position) 0)
    ((:Speed __Speed) 0)
    )
   (send-super :init)
   (setq _ID (round __ID))
   (setq _Position (round __Position))
   (setq _Speed (round __Speed))
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:Position
   (&optional __Position)
   (if __Position (setq _Position __Position)) _Position)
  (:Speed
   (&optional __Speed)
   (if __Speed (setq _Speed __Speed)) _Speed)
  (:serialization-length
   ()
   (+
    ;; int16 _ID
    2
    ;; int16 _Position
    2
    ;; int16 _Speed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _ID
       (write-word _ID s)
     ;; int16 _Position
       (write-word _Position s)
     ;; int16 _Speed
       (write-word _Speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _ID
     (setq _ID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Position
     (setq _Position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Speed
     (setq _Speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get tku_msgs::SingleMotorData :md5sum-) "500f0005c75401d9e71a90a58a6bbf60")
(setf (get tku_msgs::SingleMotorData :datatype-) "tku_msgs/SingleMotorData")
(setf (get tku_msgs::SingleMotorData :definition-)
      "int16 ID
int16 Position
int16 Speed
")



(provide :tku_msgs/SingleMotorData "500f0005c75401d9e71a90a58a6bbf60")


