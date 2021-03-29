;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::FeaturePoint)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'FeaturePoint (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::FEATUREPOINT")
  (make-package "TKU_MSGS::FEATUREPOINT"))

(in-package "ROS")
;;//! \htmlinclude FeaturePoint.msg.html


(defclass tku_msgs::FeaturePoint
  :super ros::object
  :slots (_feature_point ))

(defmethod tku_msgs::FeaturePoint
  (:init
   (&key
    ((:feature_point __feature_point) (let (r) (dotimes (i 0) (push (instance tku_msgs::Distance :init) r)) r))
    )
   (send-super :init)
   (setq _feature_point __feature_point)
   self)
  (:feature_point
   (&rest __feature_point)
   (if (keywordp (car __feature_point))
       (send* _feature_point __feature_point)
     (progn
       (if __feature_point (setq _feature_point (car __feature_point)))
       _feature_point)))
  (:serialization-length
   ()
   (+
    ;; tku_msgs/Distance[] _feature_point
    (apply #'+ (send-all _feature_point :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tku_msgs/Distance[] _feature_point
     (write-long (length _feature_point) s)
     (dolist (elem _feature_point)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tku_msgs/Distance[] _feature_point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feature_point (let (r) (dotimes (i n) (push (instance tku_msgs::Distance :init) r)) r))
     (dolist (elem- _feature_point)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tku_msgs::FeaturePoint :md5sum-) "e3a2ec9f1de9fdc200c3e7d29ae54450")
(setf (get tku_msgs::FeaturePoint :datatype-) "tku_msgs/FeaturePoint")
(setf (get tku_msgs::FeaturePoint :definition-)
      "Distance[] feature_point

================================================================================
MSG: tku_msgs/Distance
int16 x_dis
int16 y_dis
int16 dis

")



(provide :tku_msgs/FeaturePoint "e3a2ec9f1de9fdc200c3e7d29ae54450")


