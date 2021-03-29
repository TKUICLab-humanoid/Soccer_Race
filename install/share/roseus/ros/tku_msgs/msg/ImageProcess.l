;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::ImageProcess)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'ImageProcess (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::IMAGEPROCESS")
  (make-package "TKU_MSGS::IMAGEPROCESS"))

(in-package "ROS")
;;//! \htmlinclude ImageProcess.msg.html


(defclass tku_msgs::ImageProcess
  :super ros::object
  :slots (_gray_min _gray_max ))

(defmethod tku_msgs::ImageProcess
  (:init
   (&key
    ((:gray_min __gray_min) 0)
    ((:gray_max __gray_max) 0)
    )
   (send-super :init)
   (setq _gray_min (round __gray_min))
   (setq _gray_max (round __gray_max))
   self)
  (:gray_min
   (&optional __gray_min)
   (if __gray_min (setq _gray_min __gray_min)) _gray_min)
  (:gray_max
   (&optional __gray_max)
   (if __gray_max (setq _gray_max __gray_max)) _gray_max)
  (:serialization-length
   ()
   (+
    ;; int16 _gray_min
    2
    ;; int16 _gray_max
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _gray_min
       (write-word _gray_min s)
     ;; int16 _gray_max
       (write-word _gray_max s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _gray_min
     (setq _gray_min (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gray_max
     (setq _gray_max (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get tku_msgs::ImageProcess :md5sum-) "b9172034b9bfb58696ee80ca50817001")
(setf (get tku_msgs::ImageProcess :datatype-) "tku_msgs/ImageProcess")
(setf (get tku_msgs::ImageProcess :definition-)
      "int16 gray_min
int16 gray_max

")



(provide :tku_msgs/ImageProcess "b9172034b9bfb58696ee80ca50817001")


