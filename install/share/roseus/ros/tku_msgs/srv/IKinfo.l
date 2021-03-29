;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::IKinfo)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'IKinfo (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::IKINFO")
  (make-package "TKU_MSGS::IKINFO"))
(unless (find-package "TKU_MSGS::IKINFOREQUEST")
  (make-package "TKU_MSGS::IKINFOREQUEST"))
(unless (find-package "TKU_MSGS::IKINFORESPONSE")
  (make-package "TKU_MSGS::IKINFORESPONSE"))

(in-package "ROS")





(defclass tku_msgs::IKinfoRequest
  :super ros::object
  :slots (_IK_Point_RX _IK_Point_RY _IK_Point_RZ _IK_Point_RThta _IK_Point_LX _IK_Point_LY _IK_Point_LZ _IK_Point_LThta _Sampletime ))

(defmethod tku_msgs::IKinfoRequest
  (:init
   (&key
    ((:IK_Point_RX __IK_Point_RX) 0.0)
    ((:IK_Point_RY __IK_Point_RY) 0.0)
    ((:IK_Point_RZ __IK_Point_RZ) 0.0)
    ((:IK_Point_RThta __IK_Point_RThta) 0.0)
    ((:IK_Point_LX __IK_Point_LX) 0.0)
    ((:IK_Point_LY __IK_Point_LY) 0.0)
    ((:IK_Point_LZ __IK_Point_LZ) 0.0)
    ((:IK_Point_LThta __IK_Point_LThta) 0.0)
    ((:Sampletime __Sampletime) 0)
    )
   (send-super :init)
   (setq _IK_Point_RX (float __IK_Point_RX))
   (setq _IK_Point_RY (float __IK_Point_RY))
   (setq _IK_Point_RZ (float __IK_Point_RZ))
   (setq _IK_Point_RThta (float __IK_Point_RThta))
   (setq _IK_Point_LX (float __IK_Point_LX))
   (setq _IK_Point_LY (float __IK_Point_LY))
   (setq _IK_Point_LZ (float __IK_Point_LZ))
   (setq _IK_Point_LThta (float __IK_Point_LThta))
   (setq _Sampletime (round __Sampletime))
   self)
  (:IK_Point_RX
   (&optional __IK_Point_RX)
   (if __IK_Point_RX (setq _IK_Point_RX __IK_Point_RX)) _IK_Point_RX)
  (:IK_Point_RY
   (&optional __IK_Point_RY)
   (if __IK_Point_RY (setq _IK_Point_RY __IK_Point_RY)) _IK_Point_RY)
  (:IK_Point_RZ
   (&optional __IK_Point_RZ)
   (if __IK_Point_RZ (setq _IK_Point_RZ __IK_Point_RZ)) _IK_Point_RZ)
  (:IK_Point_RThta
   (&optional __IK_Point_RThta)
   (if __IK_Point_RThta (setq _IK_Point_RThta __IK_Point_RThta)) _IK_Point_RThta)
  (:IK_Point_LX
   (&optional __IK_Point_LX)
   (if __IK_Point_LX (setq _IK_Point_LX __IK_Point_LX)) _IK_Point_LX)
  (:IK_Point_LY
   (&optional __IK_Point_LY)
   (if __IK_Point_LY (setq _IK_Point_LY __IK_Point_LY)) _IK_Point_LY)
  (:IK_Point_LZ
   (&optional __IK_Point_LZ)
   (if __IK_Point_LZ (setq _IK_Point_LZ __IK_Point_LZ)) _IK_Point_LZ)
  (:IK_Point_LThta
   (&optional __IK_Point_LThta)
   (if __IK_Point_LThta (setq _IK_Point_LThta __IK_Point_LThta)) _IK_Point_LThta)
  (:Sampletime
   (&optional __Sampletime)
   (if __Sampletime (setq _Sampletime __Sampletime)) _Sampletime)
  (:serialization-length
   ()
   (+
    ;; float64 _IK_Point_RX
    8
    ;; float64 _IK_Point_RY
    8
    ;; float64 _IK_Point_RZ
    8
    ;; float64 _IK_Point_RThta
    8
    ;; float64 _IK_Point_LX
    8
    ;; float64 _IK_Point_LY
    8
    ;; float64 _IK_Point_LZ
    8
    ;; float64 _IK_Point_LThta
    8
    ;; int32 _Sampletime
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _IK_Point_RX
       (sys::poke _IK_Point_RX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _IK_Point_RY
       (sys::poke _IK_Point_RY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _IK_Point_RZ
       (sys::poke _IK_Point_RZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _IK_Point_RThta
       (sys::poke _IK_Point_RThta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _IK_Point_LX
       (sys::poke _IK_Point_LX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _IK_Point_LY
       (sys::poke _IK_Point_LY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _IK_Point_LZ
       (sys::poke _IK_Point_LZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _IK_Point_LThta
       (sys::poke _IK_Point_LThta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _Sampletime
       (write-long _Sampletime s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _IK_Point_RX
     (setq _IK_Point_RX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _IK_Point_RY
     (setq _IK_Point_RY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _IK_Point_RZ
     (setq _IK_Point_RZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _IK_Point_RThta
     (setq _IK_Point_RThta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _IK_Point_LX
     (setq _IK_Point_LX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _IK_Point_LY
     (setq _IK_Point_LY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _IK_Point_LZ
     (setq _IK_Point_LZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _IK_Point_LThta
     (setq _IK_Point_LThta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _Sampletime
     (setq _Sampletime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass tku_msgs::IKinfoResponse
  :super ros::object
  :slots (_SentData ))

(defmethod tku_msgs::IKinfoResponse
  (:init
   (&key
    ((:SentData __SentData) nil)
    )
   (send-super :init)
   (setq _SentData __SentData)
   self)
  (:SentData
   (&optional __SentData)
   (if __SentData (setq _SentData __SentData)) _SentData)
  (:serialization-length
   ()
   (+
    ;; bool _SentData
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _SentData
       (if _SentData (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _SentData
     (setq _SentData (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tku_msgs::IKinfo
  :super ros::object
  :slots ())

(setf (get tku_msgs::IKinfo :md5sum-) "39b393c013802610229f9ff246da6c06")
(setf (get tku_msgs::IKinfo :datatype-) "tku_msgs/IKinfo")
(setf (get tku_msgs::IKinfo :request) tku_msgs::IKinfoRequest)
(setf (get tku_msgs::IKinfo :response) tku_msgs::IKinfoResponse)

(defmethod tku_msgs::IKinfoRequest
  (:response () (instance tku_msgs::IKinfoResponse :init)))

(setf (get tku_msgs::IKinfoRequest :md5sum-) "39b393c013802610229f9ff246da6c06")
(setf (get tku_msgs::IKinfoRequest :datatype-) "tku_msgs/IKinfoRequest")
(setf (get tku_msgs::IKinfoRequest :definition-)
      "float64 IK_Point_RX
float64 IK_Point_RY
float64 IK_Point_RZ
float64 IK_Point_RThta
float64 IK_Point_LX
float64 IK_Point_LY
float64 IK_Point_LZ 
float64 IK_Point_LThta
int32 Sampletime
---
bool SentData

")

(setf (get tku_msgs::IKinfoResponse :md5sum-) "39b393c013802610229f9ff246da6c06")
(setf (get tku_msgs::IKinfoResponse :datatype-) "tku_msgs/IKinfoResponse")
(setf (get tku_msgs::IKinfoResponse :definition-)
      "float64 IK_Point_RX
float64 IK_Point_RY
float64 IK_Point_RZ
float64 IK_Point_RThta
float64 IK_Point_LX
float64 IK_Point_LY
float64 IK_Point_LZ 
float64 IK_Point_LThta
int32 Sampletime
---
bool SentData

")



(provide :tku_msgs/IKinfo "39b393c013802610229f9ff246da6c06")


