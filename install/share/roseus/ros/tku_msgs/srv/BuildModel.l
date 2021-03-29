;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::BuildModel)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'BuildModel (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::BUILDMODEL")
  (make-package "TKU_MSGS::BUILDMODEL"))
(unless (find-package "TKU_MSGS::BUILDMODELREQUEST")
  (make-package "TKU_MSGS::BUILDMODELREQUEST"))
(unless (find-package "TKU_MSGS::BUILDMODELRESPONSE")
  (make-package "TKU_MSGS::BUILDMODELRESPONSE"))

(in-package "ROS")





(defclass tku_msgs::BuildModelRequest
  :super ros::object
  :slots (_Build ))

(defmethod tku_msgs::BuildModelRequest
  (:init
   (&key
    ((:Build __Build) nil)
    )
   (send-super :init)
   (setq _Build __Build)
   self)
  (:Build
   (&optional __Build)
   (if __Build (setq _Build __Build)) _Build)
  (:serialization-length
   ()
   (+
    ;; bool _Build
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Build
       (if _Build (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Build
     (setq _Build (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tku_msgs::BuildModelResponse
  :super ros::object
  :slots (_Already ))

(defmethod tku_msgs::BuildModelResponse
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

(defclass tku_msgs::BuildModel
  :super ros::object
  :slots ())

(setf (get tku_msgs::BuildModel :md5sum-) "5a100fc214acb4bef265103a280da05b")
(setf (get tku_msgs::BuildModel :datatype-) "tku_msgs/BuildModel")
(setf (get tku_msgs::BuildModel :request) tku_msgs::BuildModelRequest)
(setf (get tku_msgs::BuildModel :response) tku_msgs::BuildModelResponse)

(defmethod tku_msgs::BuildModelRequest
  (:response () (instance tku_msgs::BuildModelResponse :init)))

(setf (get tku_msgs::BuildModelRequest :md5sum-) "5a100fc214acb4bef265103a280da05b")
(setf (get tku_msgs::BuildModelRequest :datatype-) "tku_msgs/BuildModelRequest")
(setf (get tku_msgs::BuildModelRequest :definition-)
      "bool Build
---
bool Already

")

(setf (get tku_msgs::BuildModelResponse :md5sum-) "5a100fc214acb4bef265103a280da05b")
(setf (get tku_msgs::BuildModelResponse :datatype-) "tku_msgs/BuildModelResponse")
(setf (get tku_msgs::BuildModelResponse :definition-)
      "bool Build
---
bool Already

")



(provide :tku_msgs/BuildModel "5a100fc214acb4bef265103a280da05b")


