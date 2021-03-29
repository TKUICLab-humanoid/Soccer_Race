;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::ColorArray)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'ColorArray (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::COLORARRAY")
  (make-package "TKU_MSGS::COLORARRAY"))

(in-package "ROS")
;;//! \htmlinclude ColorArray.msg.html


(defclass tku_msgs::ColorArray
  :super ros::object
  :slots (_cnt _Colorarray ))

(defmethod tku_msgs::ColorArray
  (:init
   (&key
    ((:cnt __cnt) 0)
    ((:Colorarray __Colorarray) (let (r) (dotimes (i 0) (push (instance tku_msgs::ColorData :init) r)) r))
    )
   (send-super :init)
   (setq _cnt (round __cnt))
   (setq _Colorarray __Colorarray)
   self)
  (:cnt
   (&optional __cnt)
   (if __cnt (setq _cnt __cnt)) _cnt)
  (:Colorarray
   (&rest __Colorarray)
   (if (keywordp (car __Colorarray))
       (send* _Colorarray __Colorarray)
     (progn
       (if __Colorarray (setq _Colorarray (car __Colorarray)))
       _Colorarray)))
  (:serialization-length
   ()
   (+
    ;; int32 _cnt
    4
    ;; tku_msgs/ColorData[] _Colorarray
    (apply #'+ (send-all _Colorarray :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cnt
       (write-long _cnt s)
     ;; tku_msgs/ColorData[] _Colorarray
     (write-long (length _Colorarray) s)
     (dolist (elem _Colorarray)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cnt
     (setq _cnt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; tku_msgs/ColorData[] _Colorarray
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Colorarray (let (r) (dotimes (i n) (push (instance tku_msgs::ColorData :init) r)) r))
     (dolist (elem- _Colorarray)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tku_msgs::ColorArray :md5sum-) "9cb678902d3e5f54cc5645b0e01f2d9e")
(setf (get tku_msgs::ColorArray :datatype-) "tku_msgs/ColorArray")
(setf (get tku_msgs::ColorArray :definition-)
      "int32 cnt
ColorData[] Colorarray

================================================================================
MSG: tku_msgs/ColorData
int32 X
int32 Y
int32 XMin
int32 XMax
int32 YMin
int32 YMax
int32 Width
int32 Height
int32 size                                                 

")



(provide :tku_msgs/ColorArray "9cb678902d3e5f54cc5645b0e01f2d9e")


