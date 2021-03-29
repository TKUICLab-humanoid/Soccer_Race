;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::callback)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'callback (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::CALLBACK")
  (make-package "TKU_MSGS::CALLBACK"))

(in-package "ROS")
;;//! \htmlinclude callback.msg.html


(defclass tku_msgs::callback
  :super ros::object
  :slots (_data _sector ))

(defmethod tku_msgs::callback
  (:init
   (&key
    ((:data __data) nil)
    ((:sector __sector) 0)
    )
   (send-super :init)
   (setq _data __data)
   (setq _sector (round __sector))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:sector
   (&optional __sector)
   (if __sector (setq _sector __sector)) _sector)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ;; int16 _sector
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;; int16 _sector
       (write-word _sector s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _sector
     (setq _sector (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get tku_msgs::callback :md5sum-) "6b3cc904e6f0eab1b5086fa228da4f91")
(setf (get tku_msgs::callback :datatype-) "tku_msgs/callback")
(setf (get tku_msgs::callback :definition-)
      "bool data
int16 sector


")



(provide :tku_msgs/callback "6b3cc904e6f0eab1b5086fa228da4f91")


