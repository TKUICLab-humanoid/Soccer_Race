;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::HoughInfo)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'HoughInfo (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::HOUGHINFO")
  (make-package "TKU_MSGS::HOUGHINFO"))
(unless (find-package "TKU_MSGS::HOUGHINFOREQUEST")
  (make-package "TKU_MSGS::HOUGHINFOREQUEST"))
(unless (find-package "TKU_MSGS::HOUGHINFORESPONSE")
  (make-package "TKU_MSGS::HOUGHINFORESPONSE"))

(in-package "ROS")





(defclass tku_msgs::HoughInfoRequest
  :super ros::object
  :slots (_Load ))

(defmethod tku_msgs::HoughInfoRequest
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

(defclass tku_msgs::HoughInfoResponse
  :super ros::object
  :slots (_Hough_threshold _Hough_minLineLength _Hough_maxLineGap ))

(defmethod tku_msgs::HoughInfoResponse
  (:init
   (&key
    ((:Hough_threshold __Hough_threshold) 0)
    ((:Hough_minLineLength __Hough_minLineLength) 0)
    ((:Hough_maxLineGap __Hough_maxLineGap) 0)
    )
   (send-super :init)
   (setq _Hough_threshold (round __Hough_threshold))
   (setq _Hough_minLineLength (round __Hough_minLineLength))
   (setq _Hough_maxLineGap (round __Hough_maxLineGap))
   self)
  (:Hough_threshold
   (&optional __Hough_threshold)
   (if __Hough_threshold (setq _Hough_threshold __Hough_threshold)) _Hough_threshold)
  (:Hough_minLineLength
   (&optional __Hough_minLineLength)
   (if __Hough_minLineLength (setq _Hough_minLineLength __Hough_minLineLength)) _Hough_minLineLength)
  (:Hough_maxLineGap
   (&optional __Hough_maxLineGap)
   (if __Hough_maxLineGap (setq _Hough_maxLineGap __Hough_maxLineGap)) _Hough_maxLineGap)
  (:serialization-length
   ()
   (+
    ;; int32 _Hough_threshold
    4
    ;; int32 _Hough_minLineLength
    4
    ;; int32 _Hough_maxLineGap
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Hough_threshold
       (write-long _Hough_threshold s)
     ;; int32 _Hough_minLineLength
       (write-long _Hough_minLineLength s)
     ;; int32 _Hough_maxLineGap
       (write-long _Hough_maxLineGap s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Hough_threshold
     (setq _Hough_threshold (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Hough_minLineLength
     (setq _Hough_minLineLength (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Hough_maxLineGap
     (setq _Hough_maxLineGap (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass tku_msgs::HoughInfo
  :super ros::object
  :slots ())

(setf (get tku_msgs::HoughInfo :md5sum-) "8863b4634d224e62b8e462b542f70e71")
(setf (get tku_msgs::HoughInfo :datatype-) "tku_msgs/HoughInfo")
(setf (get tku_msgs::HoughInfo :request) tku_msgs::HoughInfoRequest)
(setf (get tku_msgs::HoughInfo :response) tku_msgs::HoughInfoResponse)

(defmethod tku_msgs::HoughInfoRequest
  (:response () (instance tku_msgs::HoughInfoResponse :init)))

(setf (get tku_msgs::HoughInfoRequest :md5sum-) "8863b4634d224e62b8e462b542f70e71")
(setf (get tku_msgs::HoughInfoRequest :datatype-) "tku_msgs/HoughInfoRequest")
(setf (get tku_msgs::HoughInfoRequest :definition-)
      "bool Load
---
int32 Hough_threshold
int32 Hough_minLineLength
int32 Hough_maxLineGap

")

(setf (get tku_msgs::HoughInfoResponse :md5sum-) "8863b4634d224e62b8e462b542f70e71")
(setf (get tku_msgs::HoughInfoResponse :datatype-) "tku_msgs/HoughInfoResponse")
(setf (get tku_msgs::HoughInfoResponse :definition-)
      "bool Load
---
int32 Hough_threshold
int32 Hough_minLineLength
int32 Hough_maxLineGap

")



(provide :tku_msgs/HoughInfo "8863b4634d224e62b8e462b542f70e71")


