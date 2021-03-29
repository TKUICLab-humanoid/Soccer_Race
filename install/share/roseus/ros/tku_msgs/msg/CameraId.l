;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::CameraId)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'CameraId (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::CAMERAID")
  (make-package "TKU_MSGS::CAMERAID"))

(in-package "ROS")
;;//! \htmlinclude CameraId.msg.html


(defclass tku_msgs::CameraId
  :super ros::object
  :slots (_checkcameraid _cameraid ))

(defmethod tku_msgs::CameraId
  (:init
   (&key
    ((:checkcameraid __checkcameraid) nil)
    ((:cameraid __cameraid) 0)
    )
   (send-super :init)
   (setq _checkcameraid __checkcameraid)
   (setq _cameraid (round __cameraid))
   self)
  (:checkcameraid
   (&optional __checkcameraid)
   (if __checkcameraid (setq _checkcameraid __checkcameraid)) _checkcameraid)
  (:cameraid
   (&optional __cameraid)
   (if __cameraid (setq _cameraid __cameraid)) _cameraid)
  (:serialization-length
   ()
   (+
    ;; bool _checkcameraid
    1
    ;; int16 _cameraid
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _checkcameraid
       (if _checkcameraid (write-byte -1 s) (write-byte 0 s))
     ;; int16 _cameraid
       (write-word _cameraid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _checkcameraid
     (setq _checkcameraid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _cameraid
     (setq _cameraid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get tku_msgs::CameraId :md5sum-) "3cc97f36ddee60a3976eec15137b52b9")
(setf (get tku_msgs::CameraId :datatype-) "tku_msgs/CameraId")
(setf (get tku_msgs::CameraId :definition-)
      "bool checkcameraid
int16 cameraid

")



(provide :tku_msgs/CameraId "3cc97f36ddee60a3976eec15137b52b9")


