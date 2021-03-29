;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::HSVValue)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'HSVValue (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::HSVVALUE")
  (make-package "TKU_MSGS::HSVVALUE"))

(in-package "ROS")
;;//! \htmlinclude HSVValue.msg.html


(defclass tku_msgs::HSVValue
  :super ros::object
  :slots (_HMin _HMax _SMin _SMax _VMin _VMax ))

(defmethod tku_msgs::HSVValue
  (:init
   (&key
    ((:HMin __HMin) 0)
    ((:HMax __HMax) 0)
    ((:SMin __SMin) 0)
    ((:SMax __SMax) 0)
    ((:VMin __VMin) 0)
    ((:VMax __VMax) 0)
    )
   (send-super :init)
   (setq _HMin (round __HMin))
   (setq _HMax (round __HMax))
   (setq _SMin (round __SMin))
   (setq _SMax (round __SMax))
   (setq _VMin (round __VMin))
   (setq _VMax (round __VMax))
   self)
  (:HMin
   (&optional __HMin)
   (if __HMin (setq _HMin __HMin)) _HMin)
  (:HMax
   (&optional __HMax)
   (if __HMax (setq _HMax __HMax)) _HMax)
  (:SMin
   (&optional __SMin)
   (if __SMin (setq _SMin __SMin)) _SMin)
  (:SMax
   (&optional __SMax)
   (if __SMax (setq _SMax __SMax)) _SMax)
  (:VMin
   (&optional __VMin)
   (if __VMin (setq _VMin __VMin)) _VMin)
  (:VMax
   (&optional __VMax)
   (if __VMax (setq _VMax __VMax)) _VMax)
  (:serialization-length
   ()
   (+
    ;; int16 _HMin
    2
    ;; int16 _HMax
    2
    ;; int16 _SMin
    2
    ;; int16 _SMax
    2
    ;; int16 _VMin
    2
    ;; int16 _VMax
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _HMin
       (write-word _HMin s)
     ;; int16 _HMax
       (write-word _HMax s)
     ;; int16 _SMin
       (write-word _SMin s)
     ;; int16 _SMax
       (write-word _SMax s)
     ;; int16 _VMin
       (write-word _VMin s)
     ;; int16 _VMax
       (write-word _VMax s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _HMin
     (setq _HMin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _HMax
     (setq _HMax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _SMin
     (setq _SMin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _SMax
     (setq _SMax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _VMin
     (setq _VMin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _VMax
     (setq _VMax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get tku_msgs::HSVValue :md5sum-) "a3f516b6603d2233bee0097ee5df3644")
(setf (get tku_msgs::HSVValue :datatype-) "tku_msgs/HSVValue")
(setf (get tku_msgs::HSVValue :definition-)
      "int16 HMin
int16 HMax
int16 SMin
int16 SMax
int16 VMin
int16 VMax


")



(provide :tku_msgs/HSVValue "a3f516b6603d2233bee0097ee5df3644")


