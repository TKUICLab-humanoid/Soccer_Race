;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::BGRInfo)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'BGRInfo (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::BGRINFO")
  (make-package "TKU_MSGS::BGRINFO"))
(unless (find-package "TKU_MSGS::BGRINFOREQUEST")
  (make-package "TKU_MSGS::BGRINFOREQUEST"))
(unless (find-package "TKU_MSGS::BGRINFORESPONSE")
  (make-package "TKU_MSGS::BGRINFORESPONSE"))

(in-package "ROS")





(defclass tku_msgs::BGRInfoRequest
  :super ros::object
  :slots (_Load ))

(defmethod tku_msgs::BGRInfoRequest
  (:init
   (&key
    ((:Load __Load) nil)
    )
   (send-super :init)
   (setq _Load __Load)
   self)
  (:Load
   (&optional __Load)
   (if __Load (setq _Load __Load)) _Load)
  (:serialization-length
   ()
   (+
    ;; bool _Load
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Load
       (if _Load (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Load
     (setq _Load (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tku_msgs::BGRInfoResponse
  :super ros::object
  :slots (_BValue _GValue _RValue ))

(defmethod tku_msgs::BGRInfoResponse
  (:init
   (&key
    ((:BValue __BValue) 0)
    ((:GValue __GValue) 0)
    ((:RValue __RValue) 0)
    )
   (send-super :init)
   (setq _BValue (round __BValue))
   (setq _GValue (round __GValue))
   (setq _RValue (round __RValue))
   self)
  (:BValue
   (&optional __BValue)
   (if __BValue (setq _BValue __BValue)) _BValue)
  (:GValue
   (&optional __GValue)
   (if __GValue (setq _GValue __GValue)) _GValue)
  (:RValue
   (&optional __RValue)
   (if __RValue (setq _RValue __RValue)) _RValue)
  (:serialization-length
   ()
   (+
    ;; int32 _BValue
    4
    ;; int32 _GValue
    4
    ;; int32 _RValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _BValue
       (write-long _BValue s)
     ;; int32 _GValue
       (write-long _GValue s)
     ;; int32 _RValue
       (write-long _RValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _BValue
     (setq _BValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _GValue
     (setq _GValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _RValue
     (setq _RValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass tku_msgs::BGRInfo
  :super ros::object
  :slots ())

(setf (get tku_msgs::BGRInfo :md5sum-) "b03a10dbd390a3bc71ab9139e41340a6")
(setf (get tku_msgs::BGRInfo :datatype-) "tku_msgs/BGRInfo")
(setf (get tku_msgs::BGRInfo :request) tku_msgs::BGRInfoRequest)
(setf (get tku_msgs::BGRInfo :response) tku_msgs::BGRInfoResponse)

(defmethod tku_msgs::BGRInfoRequest
  (:response () (instance tku_msgs::BGRInfoResponse :init)))

(setf (get tku_msgs::BGRInfoRequest :md5sum-) "b03a10dbd390a3bc71ab9139e41340a6")
(setf (get tku_msgs::BGRInfoRequest :datatype-) "tku_msgs/BGRInfoRequest")
(setf (get tku_msgs::BGRInfoRequest :definition-)
      "bool Load
---
int32 BValue
int32 GValue
int32 RValue

")

(setf (get tku_msgs::BGRInfoResponse :md5sum-) "b03a10dbd390a3bc71ab9139e41340a6")
(setf (get tku_msgs::BGRInfoResponse :datatype-) "tku_msgs/BGRInfoResponse")
(setf (get tku_msgs::BGRInfoResponse :definition-)
      "bool Load
---
int32 BValue
int32 GValue
int32 RValue

")



(provide :tku_msgs/BGRInfo "b03a10dbd390a3bc71ab9139e41340a6")


