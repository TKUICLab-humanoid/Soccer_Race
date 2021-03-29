;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::SaveHSV)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'SaveHSV (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::SAVEHSV")
  (make-package "TKU_MSGS::SAVEHSV"))
(unless (find-package "TKU_MSGS::SAVEHSVREQUEST")
  (make-package "TKU_MSGS::SAVEHSVREQUEST"))
(unless (find-package "TKU_MSGS::SAVEHSVRESPONSE")
  (make-package "TKU_MSGS::SAVEHSVRESPONSE"))

(in-package "ROS")





(defclass tku_msgs::SaveHSVRequest
  :super ros::object
  :slots (_Save ))

(defmethod tku_msgs::SaveHSVRequest
  (:init
   (&key
    ((:Save __Save) nil)
    )
   (send-super :init)
   (setq _Save __Save)
   self)
  (:Save
   (&optional __Save)
   (if __Save (setq _Save __Save)) _Save)
  (:serialization-length
   ()
   (+
    ;; bool _Save
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Save
       (if _Save (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Save
     (setq _Save (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tku_msgs::SaveHSVResponse
  :super ros::object
  :slots (_Already ))

(defmethod tku_msgs::SaveHSVResponse
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

(defclass tku_msgs::SaveHSV
  :super ros::object
  :slots ())

(setf (get tku_msgs::SaveHSV :md5sum-) "54316e93d45f9c59e17a9d6ba6bb0659")
(setf (get tku_msgs::SaveHSV :datatype-) "tku_msgs/SaveHSV")
(setf (get tku_msgs::SaveHSV :request) tku_msgs::SaveHSVRequest)
(setf (get tku_msgs::SaveHSV :response) tku_msgs::SaveHSVResponse)

(defmethod tku_msgs::SaveHSVRequest
  (:response () (instance tku_msgs::SaveHSVResponse :init)))

(setf (get tku_msgs::SaveHSVRequest :md5sum-) "54316e93d45f9c59e17a9d6ba6bb0659")
(setf (get tku_msgs::SaveHSVRequest :datatype-) "tku_msgs/SaveHSVRequest")
(setf (get tku_msgs::SaveHSVRequest :definition-)
      "bool Save
---
bool Already

")

(setf (get tku_msgs::SaveHSVResponse :md5sum-) "54316e93d45f9c59e17a9d6ba6bb0659")
(setf (get tku_msgs::SaveHSVResponse :datatype-) "tku_msgs/SaveHSVResponse")
(setf (get tku_msgs::SaveHSVResponse :definition-)
      "bool Save
---
bool Already

")



(provide :tku_msgs/SaveHSV "54316e93d45f9c59e17a9d6ba6bb0659")


