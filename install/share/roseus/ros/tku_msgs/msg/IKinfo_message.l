;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::IKinfo_message)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'IKinfo_message (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::IKINFO_MESSAGE")
  (make-package "TKU_MSGS::IKINFO_MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude IKinfo_message.msg.html


(defclass tku_msgs::IKinfo_message
  :super ros::object
  :slots (_IK_Point_RX _IK_Point_RY _IK_Point_RZ _IK_Point_RThta _IK_Point_LX _IK_Point_LY _IK_Point_LZ _IK_Point_LThta _Period_T _Sampletime _Walking_State _Sensor_Mode ))

(defmethod tku_msgs::IKinfo_message
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
    ((:Period_T __Period_T) 0)
    ((:Sampletime __Sampletime) 0)
    ((:Walking_State __Walking_State) 0)
    ((:Sensor_Mode __Sensor_Mode) 0)
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
   (setq _Period_T (round __Period_T))
   (setq _Sampletime (round __Sampletime))
   (setq _Walking_State (round __Walking_State))
   (setq _Sensor_Mode (round __Sensor_Mode))
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
  (:Period_T
   (&optional __Period_T)
   (if __Period_T (setq _Period_T __Period_T)) _Period_T)
  (:Sampletime
   (&optional __Sampletime)
   (if __Sampletime (setq _Sampletime __Sampletime)) _Sampletime)
  (:Walking_State
   (&optional __Walking_State)
   (if __Walking_State (setq _Walking_State __Walking_State)) _Walking_State)
  (:Sensor_Mode
   (&optional __Sensor_Mode)
   (if __Sensor_Mode (setq _Sensor_Mode __Sensor_Mode)) _Sensor_Mode)
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
    ;; int32 _Period_T
    4
    ;; int32 _Sampletime
    4
    ;; int32 _Walking_State
    4
    ;; int32 _Sensor_Mode
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
     ;; int32 _Period_T
       (write-long _Period_T s)
     ;; int32 _Sampletime
       (write-long _Sampletime s)
     ;; int32 _Walking_State
       (write-long _Walking_State s)
     ;; int32 _Sensor_Mode
       (write-long _Sensor_Mode s)
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
   ;; int32 _Period_T
     (setq _Period_T (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Sampletime
     (setq _Sampletime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Walking_State
     (setq _Walking_State (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Sensor_Mode
     (setq _Sensor_Mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tku_msgs::IKinfo_message :md5sum-) "9899904ffd0ecd709bdf1dcea6bf4ab5")
(setf (get tku_msgs::IKinfo_message :datatype-) "tku_msgs/IKinfo_message")
(setf (get tku_msgs::IKinfo_message :definition-)
      "float64 IK_Point_RX
float64 IK_Point_RY
float64 IK_Point_RZ
float64 IK_Point_RThta
float64 IK_Point_LX
float64 IK_Point_LY
float64 IK_Point_LZ 
float64 IK_Point_LThta
int32 Period_T
int32 Sampletime
int32 Walking_State
int32 Sensor_Mode

")



(provide :tku_msgs/IKinfo_message "9899904ffd0ecd709bdf1dcea6bf4ab5")


