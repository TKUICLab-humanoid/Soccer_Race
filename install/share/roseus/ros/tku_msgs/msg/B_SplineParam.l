;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::B_SplineParam)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'B_SplineParam (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::B_SPLINEPARAM")
  (make-package "TKU_MSGS::B_SPLINEPARAM"))

(in-package "ROS")
;;//! \htmlinclude B_SplineParam.msg.html


(defclass tku_msgs::B_SplineParam
  :super ros::object
  :slots (_Kick_Point_X _Kick_Point_Y _Kick_Point_Z _Back_Point_X _Back_Point_Z _Support_Foot_Hip_Upper_Pitch _Kick_Foot_Ankle_Upper_Pitch _Support_Foot_Ankle_Upper_Pitch ))

(defmethod tku_msgs::B_SplineParam
  (:init
   (&key
    ((:Kick_Point_X __Kick_Point_X) 0.0)
    ((:Kick_Point_Y __Kick_Point_Y) 0.0)
    ((:Kick_Point_Z __Kick_Point_Z) 0.0)
    ((:Back_Point_X __Back_Point_X) 0.0)
    ((:Back_Point_Z __Back_Point_Z) 0.0)
    ((:Support_Foot_Hip_Upper_Pitch __Support_Foot_Hip_Upper_Pitch) 0.0)
    ((:Kick_Foot_Ankle_Upper_Pitch __Kick_Foot_Ankle_Upper_Pitch) 0.0)
    ((:Support_Foot_Ankle_Upper_Pitch __Support_Foot_Ankle_Upper_Pitch) 0.0)
    )
   (send-super :init)
   (setq _Kick_Point_X (float __Kick_Point_X))
   (setq _Kick_Point_Y (float __Kick_Point_Y))
   (setq _Kick_Point_Z (float __Kick_Point_Z))
   (setq _Back_Point_X (float __Back_Point_X))
   (setq _Back_Point_Z (float __Back_Point_Z))
   (setq _Support_Foot_Hip_Upper_Pitch (float __Support_Foot_Hip_Upper_Pitch))
   (setq _Kick_Foot_Ankle_Upper_Pitch (float __Kick_Foot_Ankle_Upper_Pitch))
   (setq _Support_Foot_Ankle_Upper_Pitch (float __Support_Foot_Ankle_Upper_Pitch))
   self)
  (:Kick_Point_X
   (&optional __Kick_Point_X)
   (if __Kick_Point_X (setq _Kick_Point_X __Kick_Point_X)) _Kick_Point_X)
  (:Kick_Point_Y
   (&optional __Kick_Point_Y)
   (if __Kick_Point_Y (setq _Kick_Point_Y __Kick_Point_Y)) _Kick_Point_Y)
  (:Kick_Point_Z
   (&optional __Kick_Point_Z)
   (if __Kick_Point_Z (setq _Kick_Point_Z __Kick_Point_Z)) _Kick_Point_Z)
  (:Back_Point_X
   (&optional __Back_Point_X)
   (if __Back_Point_X (setq _Back_Point_X __Back_Point_X)) _Back_Point_X)
  (:Back_Point_Z
   (&optional __Back_Point_Z)
   (if __Back_Point_Z (setq _Back_Point_Z __Back_Point_Z)) _Back_Point_Z)
  (:Support_Foot_Hip_Upper_Pitch
   (&optional __Support_Foot_Hip_Upper_Pitch)
   (if __Support_Foot_Hip_Upper_Pitch (setq _Support_Foot_Hip_Upper_Pitch __Support_Foot_Hip_Upper_Pitch)) _Support_Foot_Hip_Upper_Pitch)
  (:Kick_Foot_Ankle_Upper_Pitch
   (&optional __Kick_Foot_Ankle_Upper_Pitch)
   (if __Kick_Foot_Ankle_Upper_Pitch (setq _Kick_Foot_Ankle_Upper_Pitch __Kick_Foot_Ankle_Upper_Pitch)) _Kick_Foot_Ankle_Upper_Pitch)
  (:Support_Foot_Ankle_Upper_Pitch
   (&optional __Support_Foot_Ankle_Upper_Pitch)
   (if __Support_Foot_Ankle_Upper_Pitch (setq _Support_Foot_Ankle_Upper_Pitch __Support_Foot_Ankle_Upper_Pitch)) _Support_Foot_Ankle_Upper_Pitch)
  (:serialization-length
   ()
   (+
    ;; float32 _Kick_Point_X
    4
    ;; float32 _Kick_Point_Y
    4
    ;; float32 _Kick_Point_Z
    4
    ;; float32 _Back_Point_X
    4
    ;; float32 _Back_Point_Z
    4
    ;; float32 _Support_Foot_Hip_Upper_Pitch
    4
    ;; float32 _Kick_Foot_Ankle_Upper_Pitch
    4
    ;; float32 _Support_Foot_Ankle_Upper_Pitch
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Kick_Point_X
       (sys::poke _Kick_Point_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Kick_Point_Y
       (sys::poke _Kick_Point_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Kick_Point_Z
       (sys::poke _Kick_Point_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Back_Point_X
       (sys::poke _Back_Point_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Back_Point_Z
       (sys::poke _Back_Point_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Support_Foot_Hip_Upper_Pitch
       (sys::poke _Support_Foot_Hip_Upper_Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Kick_Foot_Ankle_Upper_Pitch
       (sys::poke _Kick_Foot_Ankle_Upper_Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Support_Foot_Ankle_Upper_Pitch
       (sys::poke _Support_Foot_Ankle_Upper_Pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Kick_Point_X
     (setq _Kick_Point_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Kick_Point_Y
     (setq _Kick_Point_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Kick_Point_Z
     (setq _Kick_Point_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Back_Point_X
     (setq _Back_Point_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Back_Point_Z
     (setq _Back_Point_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Support_Foot_Hip_Upper_Pitch
     (setq _Support_Foot_Hip_Upper_Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Kick_Foot_Ankle_Upper_Pitch
     (setq _Kick_Foot_Ankle_Upper_Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Support_Foot_Ankle_Upper_Pitch
     (setq _Support_Foot_Ankle_Upper_Pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tku_msgs::B_SplineParam :md5sum-) "de6e7c118c1a5ca63d7d6831ee0bf34c")
(setf (get tku_msgs::B_SplineParam :datatype-) "tku_msgs/B_SplineParam")
(setf (get tku_msgs::B_SplineParam :definition-)
      "float32 Kick_Point_X
float32 Kick_Point_Y
float32 Kick_Point_Z
float32 Back_Point_X
float32 Back_Point_Z
float32 Support_Foot_Hip_Upper_Pitch
float32 Kick_Foot_Ankle_Upper_Pitch
float32 Support_Foot_Ankle_Upper_Pitch
")



(provide :tku_msgs/B_SplineParam "de6e7c118c1a5ca63d7d6831ee0bf34c")


