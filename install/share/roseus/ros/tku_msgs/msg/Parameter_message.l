;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::Parameter_message)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'Parameter_message (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::PARAMETER_MESSAGE")
  (make-package "TKU_MSGS::PARAMETER_MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude Parameter_message.msg.html


(defclass tku_msgs::Parameter_message
  :super ros::object
  :slots (_Walking_Mode _X_Swing_Range _Y_Swing_Range _Z_Swing_Range _Period_T _Period_T2 _Sample_Time _OSC_LockRange _BASE_Default_Z _Y_Swing_Shift _X_Swing_COM _BASE_LIFT_Z _B_SplineParam ))

(defmethod tku_msgs::Parameter_message
  (:init
   (&key
    ((:Walking_Mode __Walking_Mode) 0)
    ((:X_Swing_Range __X_Swing_Range) 0.0)
    ((:Y_Swing_Range __Y_Swing_Range) 0.0)
    ((:Z_Swing_Range __Z_Swing_Range) 0.0)
    ((:Period_T __Period_T) 0)
    ((:Period_T2 __Period_T2) 0)
    ((:Sample_Time __Sample_Time) 0)
    ((:OSC_LockRange __OSC_LockRange) 0.0)
    ((:BASE_Default_Z __BASE_Default_Z) 0.0)
    ((:Y_Swing_Shift __Y_Swing_Shift) 0)
    ((:X_Swing_COM __X_Swing_COM) 0)
    ((:BASE_LIFT_Z __BASE_LIFT_Z) 0)
    ((:B_SplineParam __B_SplineParam) (instance tku_msgs::B_SplineParam :init))
    )
   (send-super :init)
   (setq _Walking_Mode (round __Walking_Mode))
   (setq _X_Swing_Range (float __X_Swing_Range))
   (setq _Y_Swing_Range (float __Y_Swing_Range))
   (setq _Z_Swing_Range (float __Z_Swing_Range))
   (setq _Period_T (round __Period_T))
   (setq _Period_T2 (round __Period_T2))
   (setq _Sample_Time (round __Sample_Time))
   (setq _OSC_LockRange (float __OSC_LockRange))
   (setq _BASE_Default_Z (float __BASE_Default_Z))
   (setq _Y_Swing_Shift (round __Y_Swing_Shift))
   (setq _X_Swing_COM (round __X_Swing_COM))
   (setq _BASE_LIFT_Z (round __BASE_LIFT_Z))
   (setq _B_SplineParam __B_SplineParam)
   self)
  (:Walking_Mode
   (&optional __Walking_Mode)
   (if __Walking_Mode (setq _Walking_Mode __Walking_Mode)) _Walking_Mode)
  (:X_Swing_Range
   (&optional __X_Swing_Range)
   (if __X_Swing_Range (setq _X_Swing_Range __X_Swing_Range)) _X_Swing_Range)
  (:Y_Swing_Range
   (&optional __Y_Swing_Range)
   (if __Y_Swing_Range (setq _Y_Swing_Range __Y_Swing_Range)) _Y_Swing_Range)
  (:Z_Swing_Range
   (&optional __Z_Swing_Range)
   (if __Z_Swing_Range (setq _Z_Swing_Range __Z_Swing_Range)) _Z_Swing_Range)
  (:Period_T
   (&optional __Period_T)
   (if __Period_T (setq _Period_T __Period_T)) _Period_T)
  (:Period_T2
   (&optional __Period_T2)
   (if __Period_T2 (setq _Period_T2 __Period_T2)) _Period_T2)
  (:Sample_Time
   (&optional __Sample_Time)
   (if __Sample_Time (setq _Sample_Time __Sample_Time)) _Sample_Time)
  (:OSC_LockRange
   (&optional __OSC_LockRange)
   (if __OSC_LockRange (setq _OSC_LockRange __OSC_LockRange)) _OSC_LockRange)
  (:BASE_Default_Z
   (&optional __BASE_Default_Z)
   (if __BASE_Default_Z (setq _BASE_Default_Z __BASE_Default_Z)) _BASE_Default_Z)
  (:Y_Swing_Shift
   (&optional __Y_Swing_Shift)
   (if __Y_Swing_Shift (setq _Y_Swing_Shift __Y_Swing_Shift)) _Y_Swing_Shift)
  (:X_Swing_COM
   (&optional __X_Swing_COM)
   (if __X_Swing_COM (setq _X_Swing_COM __X_Swing_COM)) _X_Swing_COM)
  (:BASE_LIFT_Z
   (&optional __BASE_LIFT_Z)
   (if __BASE_LIFT_Z (setq _BASE_LIFT_Z __BASE_LIFT_Z)) _BASE_LIFT_Z)
  (:B_SplineParam
   (&rest __B_SplineParam)
   (if (keywordp (car __B_SplineParam))
       (send* _B_SplineParam __B_SplineParam)
     (progn
       (if __B_SplineParam (setq _B_SplineParam (car __B_SplineParam)))
       _B_SplineParam)))
  (:serialization-length
   ()
   (+
    ;; int32 _Walking_Mode
    4
    ;; float64 _X_Swing_Range
    8
    ;; float64 _Y_Swing_Range
    8
    ;; float64 _Z_Swing_Range
    8
    ;; int32 _Period_T
    4
    ;; int32 _Period_T2
    4
    ;; int32 _Sample_Time
    4
    ;; float64 _OSC_LockRange
    8
    ;; float64 _BASE_Default_Z
    8
    ;; int32 _Y_Swing_Shift
    4
    ;; int32 _X_Swing_COM
    4
    ;; int32 _BASE_LIFT_Z
    4
    ;; tku_msgs/B_SplineParam _B_SplineParam
    (send _B_SplineParam :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Walking_Mode
       (write-long _Walking_Mode s)
     ;; float64 _X_Swing_Range
       (sys::poke _X_Swing_Range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Y_Swing_Range
       (sys::poke _Y_Swing_Range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Z_Swing_Range
       (sys::poke _Z_Swing_Range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _Period_T
       (write-long _Period_T s)
     ;; int32 _Period_T2
       (write-long _Period_T2 s)
     ;; int32 _Sample_Time
       (write-long _Sample_Time s)
     ;; float64 _OSC_LockRange
       (sys::poke _OSC_LockRange (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _BASE_Default_Z
       (sys::poke _BASE_Default_Z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _Y_Swing_Shift
       (write-long _Y_Swing_Shift s)
     ;; int32 _X_Swing_COM
       (write-long _X_Swing_COM s)
     ;; int32 _BASE_LIFT_Z
       (write-long _BASE_LIFT_Z s)
     ;; tku_msgs/B_SplineParam _B_SplineParam
       (send _B_SplineParam :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Walking_Mode
     (setq _Walking_Mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _X_Swing_Range
     (setq _X_Swing_Range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Y_Swing_Range
     (setq _Y_Swing_Range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Z_Swing_Range
     (setq _Z_Swing_Range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _Period_T
     (setq _Period_T (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Period_T2
     (setq _Period_T2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Sample_Time
     (setq _Sample_Time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _OSC_LockRange
     (setq _OSC_LockRange (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _BASE_Default_Z
     (setq _BASE_Default_Z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _Y_Swing_Shift
     (setq _Y_Swing_Shift (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _X_Swing_COM
     (setq _X_Swing_COM (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _BASE_LIFT_Z
     (setq _BASE_LIFT_Z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; tku_msgs/B_SplineParam _B_SplineParam
     (send _B_SplineParam :deserialize buf ptr-) (incf ptr- (send _B_SplineParam :serialization-length))
   ;;
   self)
  )

(setf (get tku_msgs::Parameter_message :md5sum-) "0ff3428b87b449995d8490e48a39ea2e")
(setf (get tku_msgs::Parameter_message :datatype-) "tku_msgs/Parameter_message")
(setf (get tku_msgs::Parameter_message :definition-)
      "int32 Walking_Mode
float64 X_Swing_Range
float64 Y_Swing_Range
float64 Z_Swing_Range
int32 Period_T
int32 Period_T2
int32 Sample_Time
float64 OSC_LockRange 
float64 BASE_Default_Z
int32 Y_Swing_Shift
int32 X_Swing_COM
int32 BASE_LIFT_Z
B_SplineParam B_SplineParam

================================================================================
MSG: tku_msgs/B_SplineParam
float32 Kick_Point_X
float32 Kick_Point_Y
float32 Kick_Point_Z
float32 Back_Point_X
float32 Back_Point_Z
float32 Support_Foot_Hip_Upper_Pitch
float32 Kick_Foot_Ankle_Upper_Pitch
float32 Support_Foot_Ankle_Upper_Pitch
")



(provide :tku_msgs/Parameter_message "0ff3428b87b449995d8490e48a39ea2e")


