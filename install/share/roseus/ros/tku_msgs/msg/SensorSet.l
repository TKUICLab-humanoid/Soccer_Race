;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::SensorSet)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'SensorSet (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::SENSORSET")
  (make-package "TKU_MSGS::SENSORSET"))

(in-package "ROS")
;;//! \htmlinclude SensorSet.msg.html


(defclass tku_msgs::SensorSet
  :super ros::object
  :slots (_Roll _Pitch _Yaw _GainRoll _GainPitch _GainKP _GainKD _DesireSet _IMUReset _ForceState _GainSet ))

(defmethod tku_msgs::SensorSet
  (:init
   (&key
    ((:Roll __Roll) 0)
    ((:Pitch __Pitch) 0)
    ((:Yaw __Yaw) 0)
    ((:GainRoll __GainRoll) 0)
    ((:GainPitch __GainPitch) 0)
    ((:GainKP __GainKP) 0)
    ((:GainKD __GainKD) 0)
    ((:DesireSet __DesireSet) nil)
    ((:IMUReset __IMUReset) nil)
    ((:ForceState __ForceState) nil)
    ((:GainSet __GainSet) nil)
    )
   (send-super :init)
   (setq _Roll (round __Roll))
   (setq _Pitch (round __Pitch))
   (setq _Yaw (round __Yaw))
   (setq _GainRoll (round __GainRoll))
   (setq _GainPitch (round __GainPitch))
   (setq _GainKP (round __GainKP))
   (setq _GainKD (round __GainKD))
   (setq _DesireSet __DesireSet)
   (setq _IMUReset __IMUReset)
   (setq _ForceState __ForceState)
   (setq _GainSet __GainSet)
   self)
  (:Roll
   (&optional __Roll)
   (if __Roll (setq _Roll __Roll)) _Roll)
  (:Pitch
   (&optional __Pitch)
   (if __Pitch (setq _Pitch __Pitch)) _Pitch)
  (:Yaw
   (&optional __Yaw)
   (if __Yaw (setq _Yaw __Yaw)) _Yaw)
  (:GainRoll
   (&optional __GainRoll)
   (if __GainRoll (setq _GainRoll __GainRoll)) _GainRoll)
  (:GainPitch
   (&optional __GainPitch)
   (if __GainPitch (setq _GainPitch __GainPitch)) _GainPitch)
  (:GainKP
   (&optional __GainKP)
   (if __GainKP (setq _GainKP __GainKP)) _GainKP)
  (:GainKD
   (&optional __GainKD)
   (if __GainKD (setq _GainKD __GainKD)) _GainKD)
  (:DesireSet
   (&optional __DesireSet)
   (if __DesireSet (setq _DesireSet __DesireSet)) _DesireSet)
  (:IMUReset
   (&optional __IMUReset)
   (if __IMUReset (setq _IMUReset __IMUReset)) _IMUReset)
  (:ForceState
   (&optional __ForceState)
   (if __ForceState (setq _ForceState __ForceState)) _ForceState)
  (:GainSet
   (&optional __GainSet)
   (if __GainSet (setq _GainSet __GainSet)) _GainSet)
  (:serialization-length
   ()
   (+
    ;; int32 _Roll
    4
    ;; int32 _Pitch
    4
    ;; int32 _Yaw
    4
    ;; int32 _GainRoll
    4
    ;; int32 _GainPitch
    4
    ;; int32 _GainKP
    4
    ;; int32 _GainKD
    4
    ;; bool _DesireSet
    1
    ;; bool _IMUReset
    1
    ;; bool _ForceState
    1
    ;; bool _GainSet
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Roll
       (write-long _Roll s)
     ;; int32 _Pitch
       (write-long _Pitch s)
     ;; int32 _Yaw
       (write-long _Yaw s)
     ;; int32 _GainRoll
       (write-long _GainRoll s)
     ;; int32 _GainPitch
       (write-long _GainPitch s)
     ;; int32 _GainKP
       (write-long _GainKP s)
     ;; int32 _GainKD
       (write-long _GainKD s)
     ;; bool _DesireSet
       (if _DesireSet (write-byte -1 s) (write-byte 0 s))
     ;; bool _IMUReset
       (if _IMUReset (write-byte -1 s) (write-byte 0 s))
     ;; bool _ForceState
       (if _ForceState (write-byte -1 s) (write-byte 0 s))
     ;; bool _GainSet
       (if _GainSet (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Roll
     (setq _Roll (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Pitch
     (setq _Pitch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Yaw
     (setq _Yaw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _GainRoll
     (setq _GainRoll (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _GainPitch
     (setq _GainPitch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _GainKP
     (setq _GainKP (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _GainKD
     (setq _GainKD (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _DesireSet
     (setq _DesireSet (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _IMUReset
     (setq _IMUReset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ForceState
     (setq _ForceState (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _GainSet
     (setq _GainSet (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tku_msgs::SensorSet :md5sum-) "6c13fdf5a7d05959108eed5391a02dd9")
(setf (get tku_msgs::SensorSet :datatype-) "tku_msgs/SensorSet")
(setf (get tku_msgs::SensorSet :definition-)
      "int32 Roll
int32 Pitch
int32 Yaw
int32 GainRoll
int32 GainPitch
int32 GainKP
int32 GainKD
bool DesireSet
bool IMUReset
bool ForceState
bool GainSet

")



(provide :tku_msgs/SensorSet "6c13fdf5a7d05959108eed5391a02dd9")


