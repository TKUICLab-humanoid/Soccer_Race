;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::AllLineData)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'AllLineData (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::ALLLINEDATA")
  (make-package "TKU_MSGS::ALLLINEDATA"))

(in-package "ROS")
;;//! \htmlinclude AllLineData.msg.html


(defclass tku_msgs::AllLineData
  :super ros::object
  :slots (_all_LineData ))

(defmethod tku_msgs::AllLineData
  (:init
   (&key
    ((:all_LineData __all_LineData) (let (r) (dotimes (i 0) (push (instance tku_msgs::LineData :init) r)) r))
    )
   (send-super :init)
   (setq _all_LineData __all_LineData)
   self)
  (:all_LineData
   (&rest __all_LineData)
   (if (keywordp (car __all_LineData))
       (send* _all_LineData __all_LineData)
     (progn
       (if __all_LineData (setq _all_LineData (car __all_LineData)))
       _all_LineData)))
  (:serialization-length
   ()
   (+
    ;; tku_msgs/LineData[] _all_LineData
    (apply #'+ (send-all _all_LineData :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tku_msgs/LineData[] _all_LineData
     (write-long (length _all_LineData) s)
     (dolist (elem _all_LineData)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tku_msgs/LineData[] _all_LineData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _all_LineData (let (r) (dotimes (i n) (push (instance tku_msgs::LineData :init) r)) r))
     (dolist (elem- _all_LineData)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tku_msgs::AllLineData :md5sum-) "c89c4722901f5abc77d01bb5fa2b88a2")
(setf (get tku_msgs::AllLineData :datatype-) "tku_msgs/AllLineData")
(setf (get tku_msgs::AllLineData :definition-)
      "LineData[] all_LineData

================================================================================
MSG: tku_msgs/LineData
float32 Line_theta
int16 Line_length
Cooridinate start_point
Cooridinate end_point
Cooridinate center_point
float32 relative_distance
Cooridinate Nearest_point

================================================================================
MSG: tku_msgs/Cooridinate
int16 x
int16 y

")



(provide :tku_msgs/AllLineData "c89c4722901f5abc77d01bb5fa2b88a2")


