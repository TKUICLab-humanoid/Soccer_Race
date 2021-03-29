;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::CheckSector)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'CheckSector (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::CHECKSECTOR")
  (make-package "TKU_MSGS::CHECKSECTOR"))
(unless (find-package "TKU_MSGS::CHECKSECTORREQUEST")
  (make-package "TKU_MSGS::CHECKSECTORREQUEST"))
(unless (find-package "TKU_MSGS::CHECKSECTORRESPONSE")
  (make-package "TKU_MSGS::CHECKSECTORRESPONSE"))

(in-package "ROS")





(defclass tku_msgs::CheckSectorRequest
  :super ros::object
  :slots (_data ))

(defmethod tku_msgs::CheckSectorRequest
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

(defclass tku_msgs::CheckSectorResponse
  :super ros::object
  :slots (_checkflag ))

(defmethod tku_msgs::CheckSectorResponse
  (:init
   (&key
    ((:checkflag __checkflag) nil)
    )
   (send-super :init)
   (setq _checkflag __checkflag)
   self)
  (:checkflag
   (&optional __checkflag)
   (if __checkflag (setq _checkflag __checkflag)) _checkflag)
  (:serialization-length
   ()
   (+
    ;; bool _checkflag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _checkflag
       (if _checkflag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _checkflag
     (setq _checkflag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tku_msgs::CheckSector
  :super ros::object
  :slots ())

(setf (get tku_msgs::CheckSector :md5sum-) "7ada61dc8c52272ee0201006887d39b5")
(setf (get tku_msgs::CheckSector :datatype-) "tku_msgs/CheckSector")
(setf (get tku_msgs::CheckSector :request) tku_msgs::CheckSectorRequest)
(setf (get tku_msgs::CheckSector :response) tku_msgs::CheckSectorResponse)

(defmethod tku_msgs::CheckSectorRequest
  (:response () (instance tku_msgs::CheckSectorResponse :init)))

(setf (get tku_msgs::CheckSectorRequest :md5sum-) "7ada61dc8c52272ee0201006887d39b5")
(setf (get tku_msgs::CheckSectorRequest :datatype-) "tku_msgs/CheckSectorRequest")
(setf (get tku_msgs::CheckSectorRequest :definition-)
      "int16 data
---
bool checkflag
")

(setf (get tku_msgs::CheckSectorResponse :md5sum-) "7ada61dc8c52272ee0201006887d39b5")
(setf (get tku_msgs::CheckSectorResponse :datatype-) "tku_msgs/CheckSectorResponse")
(setf (get tku_msgs::CheckSectorResponse :definition-)
      "int16 data
---
bool checkflag
")



(provide :tku_msgs/CheckSector "7ada61dc8c52272ee0201006887d39b5")


