;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::SendHandSpeed)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'SendHandSpeed (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::SENDHANDSPEED")
  (make-package "TKU_MSGS::SENDHANDSPEED"))
(unless (find-package "TKU_MSGS::SENDHANDSPEEDREQUEST")
  (make-package "TKU_MSGS::SENDHANDSPEEDREQUEST"))
(unless (find-package "TKU_MSGS::SENDHANDSPEEDRESPONSE")
  (make-package "TKU_MSGS::SENDHANDSPEEDRESPONSE"))

(in-package "ROS")





(defclass tku_msgs::SendHandSpeedRequest
  :super ros::object
  :slots (_data ))

(defmethod tku_msgs::SendHandSpeedRequest
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int16 _data
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _data
       (write-word _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _data
     (setq _data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass tku_msgs::SendHandSpeedResponse
  :super ros::object
  :slots (_Already ))

(defmethod tku_msgs::SendHandSpeedResponse
  (:init
   (&key
    ((:Already __Already) nil)
    )
   (send-super :init)
   (setq _Already __Already)
   self)
  (:Already
   (&optional __Already)
   (if __Already (setq _Already __Already)) _Already)
  (:serialization-length
   ()
   (+
    ;; bool _Already
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Already
       (if _Already (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Already
     (setq _Already (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tku_msgs::SendHandSpeed
  :super ros::object
  :slots ())

(setf (get tku_msgs::SendHandSpeed :md5sum-) "bc50a7044f9f4fe078550b5db785f63d")
(setf (get tku_msgs::SendHandSpeed :datatype-) "tku_msgs/SendHandSpeed")
(setf (get tku_msgs::SendHandSpeed :request) tku_msgs::SendHandSpeedRequest)
(setf (get tku_msgs::SendHandSpeed :response) tku_msgs::SendHandSpeedResponse)

(defmethod tku_msgs::SendHandSpeedRequest
  (:response () (instance tku_msgs::SendHandSpeedResponse :init)))

(setf (get tku_msgs::SendHandSpeedRequest :md5sum-) "bc50a7044f9f4fe078550b5db785f63d")
(setf (get tku_msgs::SendHandSpeedRequest :datatype-) "tku_msgs/SendHandSpeedRequest")
(setf (get tku_msgs::SendHandSpeedRequest :definition-)
      "int16 data
---
bool Already

")

(setf (get tku_msgs::SendHandSpeedResponse :md5sum-) "bc50a7044f9f4fe078550b5db785f63d")
(setf (get tku_msgs::SendHandSpeedResponse :datatype-) "tku_msgs/SendHandSpeedResponse")
(setf (get tku_msgs::SendHandSpeedResponse :definition-)
      "int16 data
---
bool Already

")



(provide :tku_msgs/SendHandSpeed "bc50a7044f9f4fe078550b5db785f63d")


