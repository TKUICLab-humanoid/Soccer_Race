;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::parameter)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'parameter (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::PARAMETER")
  (make-package "TKU_MSGS::PARAMETER"))

(in-package "ROS")
;;//! \htmlinclude parameter.msg.html


(defclass tku_msgs::parameter
  :super ros::object
  :slots (_mode _X_Swing_Range _Y_Swing_Range _Z_Swing_Range _Period_T _Period_T2 _Sample_Time _OSC_LockRange _BASE_Default_Z _Y_Swing_Shift _X_Swing_COM _BASE_LIFT_Z _B_SplineParam ))

(defmethod tku_msgs::parameter
  (:init
   (&key
    ((:mode __mode) 0)
    ((:X_Swing_Range __X_Swing_Range) 0.0)
    ((:Y_Swing_Range __Y_Swing_Range) 0.0)
    ((:Z_Swing_Range __Z_Swing_Range) 0.0)
    ((:Period_T __Period_T) 0)
    ((:Period_T2 __Period_T2) 0)
    ((:Sample_Time __Sample_Time) 0)
    ((:OSC_LockRange __OSC_LockRange) 0.0)
    ((:BASE_Default_Z __BASE_Default_Z) 0.0)
    ((:Y_Swing_Shift __Y_Swing_Shift) 0.0)
    ((:X_Swing_COM __X_Swing_COM) 0.0)
    ((:BASE_LIFT_Z __BASE_LIFT_Z) 0.0)
    ((:B_SplineParam __B_SplineParam) (instance tku_msgs::B_SplineParam :init))
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _X_Swing_Range (float __X_Swing_Range))
   (setq _Y_Swing_Range (float __Y_Swing_Range))
   (setq _Z_Swing_Range (float __Z_Swing_Range))
   (setq _Period_T (round __Period_T))
   (setq _Period_T2 (round __Period_T2))
   (setq _Sample_Time (round __Sample_Time))
   (setq _OSC_LockRange (float __OSC_LockRange))
   (setq _BASE_Default_Z (float __BASE_Default_Z))
   (setq _Y_Swing_Shift (float __Y_Swing_Shift))
   (setq _X_Swing_COM (float __X_Swing_COM))
   (setq _BASE_LIFT_Z (float __BASE_LIFT_Z))
   (setq _B_SplineParam __B_SplineParam)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
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
    ;; int32 _mode
    4
    ;; float32 _X_Swing_Range
    4
    ;; float32 _Y_Swing_Range
    4
    ;; float32 _Z_Swing_Range
    4
    ;; int32 _Period_T
    4
    ;; int32 _Period_T2
    4
    ;; int32 _Sample_Time
    4
    ;; float32 _OSC_LockRange
    4
    ;; float32 _BASE_Default_Z
    4
    ;; float32 _Y_Swing_Shift
    4
    ;; float32 _X_Swing_COM
    4
    ;; float32 _BASE_LIFT_Z
    4
    ;; tku_msgs/B_SplineParam _B_SplineParam
    (send _B_SplineParam :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;; float32 _X_Swing_Range
       (sys::poke _X_Swing_Range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Y_Swing_Range
       (sys::poke _Y_Swing_Range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Z_Swing_Range
       (sys::poke _Z_Swing_Range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _Period_T
       (write-long _Period_T s)
     ;; int32 _Period_T2
       (write-long _Period_T2 s)
     ;; int32 _Sample_Time
       (write-long _Sample_Time s)
     ;; float32 _OSC_LockRange
       (sys::poke _OSC_LockRange (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _BASE_Default_Z
       (sys::poke _BASE_Default_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Y_Swing_Shift
       (sys::poke _Y_Swing_Shift (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _X_Swing_COM
       (sys::poke _X_Swing_COM (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _BASE_LIFT_Z
       (sys::poke _BASE_LIFT_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; tku_msgs/B_SplineParam _B_SplineParam
       (send _B_SplineParam :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _X_Swing_Range
     (setq _X_Swing_Range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Y_Swing_Range
     (setq _Y_Swing_Range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Z_Swing_Range
     (setq _Z_Swing_Range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _Period_T
     (setq _Period_T (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Period_T2
     (setq _Period_T2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Sample_Time
     (setq _Sample_Time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _OSC_LockRange
     (setq _OSC_LockRange (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _BASE_Default_Z
     (setq _BASE_Default_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Y_Swing_Shift
     (setq _Y_Swing_Shift (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _X_Swing_COM
     (setq _X_Swing_COM (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _BASE_LIFT_Z
     (setq _BASE_LIFT_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; tku_msgs/B_SplineParam _B_SplineParam
     (send _B_SplineParam :deserialize buf ptr-) (incf ptr- (send _B_SplineParam :serialization-length))
   ;;
   self)
  )

(setf (get tku_msgs::parameter :md5sum-) "81e057003163525fc4ab4409674454f8")
(setf (get tku_msgs::parameter :datatype-) "tku_msgs/parameter")
(setf (get tku_msgs::parameter :definition-)
      "int32 mode
float32 X_Swing_Range
float32 Y_Swing_Range
float32 Z_Swing_Range
int32 Period_T
int32 Period_T2
int32 Sample_Time
float32 OSC_LockRange
float32 BASE_Default_Z
float32 Y_Swing_Shift
float32 X_Swing_COM
float32 BASE_LIFT_Z
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



(provide :tku_msgs/parameter "81e057003163525fc4ab4409674454f8")


