;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::ColorData)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'ColorData (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::COLORDATA")
  (make-package "TKU_MSGS::COLORDATA"))

(in-package "ROS")
;;//! \htmlinclude ColorData.msg.html


(defclass tku_msgs::ColorData
  :super ros::object
  :slots (_X _Y _XMin _XMax _YMin _YMax _Width _Height _size ))

(defmethod tku_msgs::ColorData
  (:init
   (&key
    ((:X __X) 0)
    ((:Y __Y) 0)
    ((:XMin __XMin) 0)
    ((:XMax __XMax) 0)
    ((:YMin __YMin) 0)
    ((:YMax __YMax) 0)
    ((:Width __Width) 0)
    ((:Height __Height) 0)
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _X (round __X))
   (setq _Y (round __Y))
   (setq _XMin (round __XMin))
   (setq _XMax (round __XMax))
   (setq _YMin (round __YMin))
   (setq _YMax (round __YMax))
   (setq _Width (round __Width))
   (setq _Height (round __Height))
   (setq _size (round __size))
   self)
  (:X
   (&optional __X)
   (if __X (setq _X __X)) _X)
  (:Y
   (&optional __Y)
   (if __Y (setq _Y __Y)) _Y)
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
  (:Width
   (&optional __Width)
   (if __Width (setq _Width __Width)) _Width)
  (:Height
   (&optional __Height)
   (if __Height (setq _Height __Height)) _Height)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; int32 _X
    4
    ;; int32 _Y
    4
    ;; int32 _XMin
    4
    ;; int32 _XMax
    4
    ;; int32 _YMin
    4
    ;; int32 _YMax
    4
    ;; int32 _Width
    4
    ;; int32 _Height
    4
    ;; int32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _X
       (write-long _X s)
     ;; int32 _Y
       (write-long _Y s)
     ;; int32 _XMin
       (write-long _XMin s)
     ;; int32 _XMax
       (write-long _XMax s)
     ;; int32 _YMin
       (write-long _YMin s)
     ;; int32 _YMax
       (write-long _YMax s)
     ;; int32 _Width
       (write-long _Width s)
     ;; int32 _Height
       (write-long _Height s)
     ;; int32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _X
     (setq _X (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Y
     (setq _Y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _XMin
     (setq _XMin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _XMax
     (setq _XMax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _YMin
     (setq _YMin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _YMax
     (setq _YMax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Width
     (setq _Width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Height
     (setq _Height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tku_msgs::ColorData :md5sum-) "5b2d8bae9bd6b77219cd9e9c64987ae9")
(setf (get tku_msgs::ColorData :datatype-) "tku_msgs/ColorData")
(setf (get tku_msgs::ColorData :definition-)
      "int32 X
int32 Y
int32 XMin
int32 XMax
int32 YMin
int32 YMax
int32 Width
int32 Height
int32 size                                                 

")



(provide :tku_msgs/ColorData "5b2d8bae9bd6b77219cd9e9c64987ae9")


