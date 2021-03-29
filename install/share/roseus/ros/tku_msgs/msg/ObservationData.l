;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::ObservationData)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'ObservationData (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::OBSERVATIONDATA")
  (make-package "TKU_MSGS::OBSERVATIONDATA"))

(in-package "ROS")
;;//! \htmlinclude ObservationData.msg.html


(defclass tku_msgs::ObservationData
  :super ros::object
  :slots (_imagestate _scan_line _landmark ))

(defmethod tku_msgs::ObservationData
  (:init
   (&key
    ((:imagestate __imagestate) nil)
    ((:scan_line __scan_line) (let (r) (dotimes (i 0) (push (instance tku_msgs::FeaturePoint :init) r)) r))
    ((:landmark __landmark) (let (r) (dotimes (i 0) (push (instance tku_msgs::LineData :init) r)) r))
    )
   (send-super :init)
   (setq _imagestate __imagestate)
   (setq _scan_line __scan_line)
   (setq _landmark __landmark)
   self)
  (:imagestate
   (&optional __imagestate)
   (if __imagestate (setq _imagestate __imagestate)) _imagestate)
  (:scan_line
   (&rest __scan_line)
   (if (keywordp (car __scan_line))
       (send* _scan_line __scan_line)
     (progn
       (if __scan_line (setq _scan_line (car __scan_line)))
       _scan_line)))
  (:landmark
   (&rest __landmark)
   (if (keywordp (car __landmark))
       (send* _landmark __landmark)
     (progn
       (if __landmark (setq _landmark (car __landmark)))
       _landmark)))
  (:serialization-length
   ()
   (+
    ;; bool _imagestate
    1
    ;; tku_msgs/FeaturePoint[] _scan_line
    (apply #'+ (send-all _scan_line :serialization-length)) 4
    ;; tku_msgs/LineData[] _landmark
    (apply #'+ (send-all _landmark :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _imagestate
       (if _imagestate (write-byte -1 s) (write-byte 0 s))
     ;; tku_msgs/FeaturePoint[] _scan_line
     (write-long (length _scan_line) s)
     (dolist (elem _scan_line)
       (send elem :serialize s)
       )
     ;; tku_msgs/LineData[] _landmark
     (write-long (length _landmark) s)
     (dolist (elem _landmark)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _imagestate
     (setq _imagestate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; tku_msgs/FeaturePoint[] _scan_line
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scan_line (let (r) (dotimes (i n) (push (instance tku_msgs::FeaturePoint :init) r)) r))
     (dolist (elem- _scan_line)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tku_msgs/LineData[] _landmark
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmark (let (r) (dotimes (i n) (push (instance tku_msgs::LineData :init) r)) r))
     (dolist (elem- _landmark)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tku_msgs::ObservationData :md5sum-) "196e119e4514ee1b9806ec236748745a")
(setf (get tku_msgs::ObservationData :datatype-) "tku_msgs/ObservationData")
(setf (get tku_msgs::ObservationData :definition-)
      "bool imagestate
FeaturePoint[] scan_line
LineData[] landmark

================================================================================
MSG: tku_msgs/FeaturePoint
Distance[] feature_point

================================================================================
MSG: tku_msgs/Distance
int16 x_dis
int16 y_dis
int16 dis

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



(provide :tku_msgs/ObservationData "196e119e4514ee1b9806ec236748745a")


