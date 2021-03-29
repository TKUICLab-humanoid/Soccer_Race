;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::WitchData)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'WitchData (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::WITCHDATA")
  (make-package "TKU_MSGS::WITCHDATA"))

(in-package "ROS")
;;//! \htmlinclude WitchData.msg.html


(defclass tku_msgs::WitchData
  :super ros::object
  :slots (_local _global ))

(defmethod tku_msgs::WitchData
  (:init
   (&key
    ((:local __local) 0.0)
    ((:global __global) 0.0)
    )
   (send-super :init)
   (setq _local (float __local))
   (setq _global (float __global))
   self)
  (:local
   (&optional __local)
   (if __local (setq _local __local)) _local)
  (:global
   (&optional __global)
   (if __global (setq _global __global)) _global)
  (:serialization-length
   ()
   (+
    ;; float32 _local
    4
    ;; float32 _global
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _local
       (sys::poke _local (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _global
       (sys::poke _global (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _local
     (setq _local (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _global
     (setq _global (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tku_msgs::WitchData :md5sum-) "3c4765c233d983bd19b05cf6077eb24f")
(setf (get tku_msgs::WitchData :datatype-) "tku_msgs/WitchData")
(setf (get tku_msgs::WitchData :definition-)
      "float32 local
float32 global

")



(provide :tku_msgs/WitchData "3c4765c233d983bd19b05cf6077eb24f")


