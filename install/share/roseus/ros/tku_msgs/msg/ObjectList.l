;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::ObjectList)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'ObjectList (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::OBJECTLIST")
  (make-package "TKU_MSGS::OBJECTLIST"))

(in-package "ROS")
;;//! \htmlinclude ObjectList.msg.html


(defclass tku_msgs::ObjectList
  :super ros::object
  :slots (_Objectlist ))

(defmethod tku_msgs::ObjectList
  (:init
   (&key
    ((:Objectlist __Objectlist) (let (r) (dotimes (i 0) (push (instance tku_msgs::ColorArray :init) r)) r))
    )
   (send-super :init)
   (setq _Objectlist __Objectlist)
   self)
  (:Objectlist
   (&rest __Objectlist)
   (if (keywordp (car __Objectlist))
       (send* _Objectlist __Objectlist)
     (progn
       (if __Objectlist (setq _Objectlist (car __Objectlist)))
       _Objectlist)))
  (:serialization-length
   ()
   (+
    ;; tku_msgs/ColorArray[] _Objectlist
    (apply #'+ (send-all _Objectlist :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tku_msgs/ColorArray[] _Objectlist
     (write-long (length _Objectlist) s)
     (dolist (elem _Objectlist)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tku_msgs/ColorArray[] _Objectlist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Objectlist (let (r) (dotimes (i n) (push (instance tku_msgs::ColorArray :init) r)) r))
     (dolist (elem- _Objectlist)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tku_msgs::ObjectList :md5sum-) "2c07141cb8eb44d90e2277a09e02ec2c")
(setf (get tku_msgs::ObjectList :datatype-) "tku_msgs/ObjectList")
(setf (get tku_msgs::ObjectList :definition-)
      "ColorArray[] Objectlist

================================================================================
MSG: tku_msgs/ColorArray
int32 cnt
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



(provide :tku_msgs/ObjectList "2c07141cb8eb44d90e2277a09e02ec2c")


