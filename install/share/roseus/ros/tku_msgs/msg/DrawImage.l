;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::DrawImage)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'DrawImage (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::DRAWIMAGE")
  (make-package "TKU_MSGS::DRAWIMAGE"))

(in-package "ROS")
;;//! \htmlinclude DrawImage.msg.html


(defclass tku_msgs::DrawImage
  :super ros::object
  :slots (_cnt _Mode _XMin _XMax _YMin _YMax _rValue _gValue _bValue ))

(defmethod tku_msgs::DrawImage
  (:init
   (&key
    ((:cnt __cnt) 0)
    ((:Mode __Mode) 0)
    ((:XMin __XMin) 0)
    ((:XMax __XMax) 0)
    ((:YMin __YMin) 0)
    ((:YMax __YMax) 0)
    ((:rValue __rValue) 0)
    ((:gValue __gValue) 0)
    ((:bValue __bValue) 0)
    )
   (send-super :init)
   (setq _cnt (round __cnt))
   (setq _Mode (round __Mode))
   (setq _XMin (round __XMin))
   (setq _XMax (round __XMax))
   (setq _YMin (round __YMin))
   (setq _YMax (round __YMax))
   (setq _rValue (round __rValue))
   (setq _gValue (round __gValue))
   (setq _bValue (round __bValue))
   self)
  (:cnt
   (&optional __cnt)
   (if __cnt (setq _cnt __cnt)) _cnt)
  (:Mode
   (&optional __Mode)
   (if __Mode (setq _Mode __Mode)) _Mode)
  (:XMin
   (&optional __XMin)
   (if __XMin (setq _XMin __XMin)) _XMin)
  (:XMax
   (&optional __XMax)
   (if __XMax (setq _XMax __XMax)) _XMax)
  (:YMin
   (&optional __YMin)
   (if __YMin (setq _YMin __YMin)) _YMin)
  (:YMax
   (&optional __YMax)
   (if __YMax (setq _YMax __YMax)) _YMax)
  (:rValue
   (&optional __rValue)
   (if __rValue (setq _rValue __rValue)) _rValue)
  (:gValue
   (&optional __gValue)
   (if __gValue (setq _gValue __gValue)) _gValue)
  (:bValue
   (&optional __bValue)
   (if __bValue (setq _bValue __bValue)) _bValue)
  (:serialization-length
   ()
   (+
    ;; int16 _cnt
    2
    ;; int16 _Mode
    2
    ;; int16 _XMin
    2
    ;; int16 _XMax
    2
    ;; int16 _YMin
    2
    ;; int16 _YMax
    2
    ;; int32 _rValue
    4
    ;; int32 _gValue
    4
    ;; int32 _bValue
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _cnt
       (write-word _cnt s)
     ;; int16 _Mode
       (write-word _Mode s)
     ;; int16 _XMin
       (write-word _XMin s)
     ;; int16 _XMax
       (write-word _XMax s)
     ;; int16 _YMin
       (write-word _YMin s)
     ;; int16 _YMax
       (write-word _YMax s)
     ;; int32 _rValue
       (write-long _rValue s)
     ;; int32 _gValue
       (write-long _gValue s)
     ;; int32 _bValue
       (write-long _bValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _cnt
     (setq _cnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Mode
     (setq _Mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _XMin
     (setq _XMin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _XMax
     (setq _XMax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _YMin
     (setq _YMin (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _YMax
     (setq _YMax (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _rValue
     (setq _rValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gValue
     (setq _gValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _bValue
     (setq _bValue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tku_msgs::DrawImage :md5sum-) "4f46c76bfaefb605a36feaa62dd79230")
(setf (get tku_msgs::DrawImage :datatype-) "tku_msgs/DrawImage")
(setf (get tku_msgs::DrawImage :definition-)
      "int16 cnt
int16 Mode
int16 XMin
int16 XMax
int16 YMin
int16 YMax
int32 rValue
int32 gValue
int32 bValue

")



(provide :tku_msgs/DrawImage "4f46c76bfaefb605a36feaa62dd79230")


