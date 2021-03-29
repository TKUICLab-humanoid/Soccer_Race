;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::HSVInfo)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'HSVInfo (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::HSVINFO")
  (make-package "TKU_MSGS::HSVINFO"))
(unless (find-package "TKU_MSGS::HSVINFOREQUEST")
  (make-package "TKU_MSGS::HSVINFOREQUEST"))
(unless (find-package "TKU_MSGS::HSVINFORESPONSE")
  (make-package "TKU_MSGS::HSVINFORESPONSE"))

(in-package "ROS")





(defclass tku_msgs::HSVInfoRequest
  :super ros::object
  :slots (_ColorLabel ))

(defmethod tku_msgs::HSVInfoRequest
  (:init
   (&key
    ((:ColorLabel __ColorLabel) 0)
    )
   (send-super :init)
   (setq _ColorLabel (round __ColorLabel))
   self)
  (:ColorLabel
   (&optional __ColorLabel)
   (if __ColorLabel (setq _ColorLabel __ColorLabel)) _ColorLabel)
  (:serialization-length
   ()
   (+
    ;; int16 _ColorLabel
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _ColorLabel
       (write-word _ColorLabel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _ColorLabel
     (setq _ColorLabel (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass tku_msgs::HSVInfoResponse
  :super ros::object
  :slots (_Hmin _Hmax _Smin _Smax _Vmin _Vmax ))

(defmethod tku_msgs::HSVInfoResponse
  (:init
   (&key
    ((:Hmin __Hmin) 0)
    ((:Hmax __Hmax) 0)
    ((:Smin __Smin) 0)
    ((:Smax __Smax) 0)
    ((:Vmin __Vmin) 0)
    ((:Vmax __Vmax) 0)
    )
   (send-super :init)
   (setq _Hmin (round __Hmin))
   (setq _Hmax (round __Hmax))
   (setq _Smin (round __Smin))
   (setq _Smax (round __Smax))
   (setq _Vmin (round __Vmin))
   (setq _Vmax (round __Vmax))
   self)
  (:Hmin
   (&optional __Hmin)
   (if __Hmin (setq _Hmin __Hmin)) _Hmin)
  (:Hmax
   (&optional __Hmax)
   (if __Hmax (setq _Hmax __Hmax)) _Hmax)
  (:Smin
   (&optional __Smin)
   (if __Smin (setq _Smin __Smin)) _Smin)
  (:Smax
   (&optional __Smax)
   (if __Smax (setq _Smax __Smax)) _Smax)
  (:Vmin
   (&optional __Vmin)
   (if __Vmin (setq _Vmin __Vmin)) _Vmin)
  (:Vmax
   (&optional __Vmax)
   (if __Vmax (setq _Vmax __Vmax)) _Vmax)
  (:serialization-length
   ()
   (+
    ;; int32 _Hmin
    4
    ;; int32 _Hmax
    4
    ;; int32 _Smin
    4
    ;; int32 _Smax
    4
    ;; int32 _Vmin
    4
    ;; int32 _Vmax
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Hmin
       (write-long _Hmin s)
     ;; int32 _Hmax
       (write-long _Hmax s)
     ;; int32 _Smin
       (write-long _Smin s)
     ;; int32 _Smax
       (write-long _Smax s)
     ;; int32 _Vmin
       (write-long _Vmin s)
     ;; int32 _Vmax
       (write-long _Vmax s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Hmin
     (setq _Hmin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Hmax
     (setq _Hmax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Smin
     (setq _Smin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Smax
     (setq _Smax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Vmin
     (setq _Vmin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Vmax
     (setq _Vmax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass tku_msgs::HSVInfo
  :super ros::object
  :slots ())

(setf (get tku_msgs::HSVInfo :md5sum-) "e67cb823b89b43c54c3cf2f810ee06c4")
(setf (get tku_msgs::HSVInfo :datatype-) "tku_msgs/HSVInfo")
(setf (get tku_msgs::HSVInfo :request) tku_msgs::HSVInfoRequest)
(setf (get tku_msgs::HSVInfo :response) tku_msgs::HSVInfoResponse)

(defmethod tku_msgs::HSVInfoRequest
  (:response () (instance tku_msgs::HSVInfoResponse :init)))

(setf (get tku_msgs::HSVInfoRequest :md5sum-) "e67cb823b89b43c54c3cf2f810ee06c4")
(setf (get tku_msgs::HSVInfoRequest :datatype-) "tku_msgs/HSVInfoRequest")
(setf (get tku_msgs::HSVInfoRequest :definition-)
      "int16 ColorLabel
---
int32 Hmin
int32 Hmax
int32 Smin
int32 Smax
int32 Vmin
int32 Vmax

")

(setf (get tku_msgs::HSVInfoResponse :md5sum-) "e67cb823b89b43c54c3cf2f810ee06c4")
(setf (get tku_msgs::HSVInfoResponse :datatype-) "tku_msgs/HSVInfoResponse")
(setf (get tku_msgs::HSVInfoResponse :definition-)
      "int16 ColorLabel
---
int32 Hmin
int32 Hmax
int32 Smin
int32 Smax
int32 Vmin
int32 Vmax

")



(provide :tku_msgs/HSVInfo "e67cb823b89b43c54c3cf2f810ee06c4")


