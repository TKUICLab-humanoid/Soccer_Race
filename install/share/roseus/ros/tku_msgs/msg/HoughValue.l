;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::HoughValue)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'HoughValue (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::HOUGHVALUE")
  (make-package "TKU_MSGS::HOUGHVALUE"))

(in-package "ROS")
;;//! \htmlinclude HoughValue.msg.html


(defclass tku_msgs::HoughValue
  :super ros::object
  :slots (_Hough_threshold _Hough_minLineLength _Hough_maxLineGap ))

(defmethod tku_msgs::HoughValue
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
    ;; int16 _Hough_threshold
    2
    ;; int16 _Hough_minLineLength
    2
    ;; int16 _Hough_maxLineGap
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _Hough_threshold
       (write-word _Hough_threshold s)
     ;; int16 _Hough_minLineLength
       (write-word _Hough_minLineLength s)
     ;; int16 _Hough_maxLineGap
       (write-word _Hough_maxLineGap s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _Hough_threshold
     (setq _Hough_threshold (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Hough_minLineLength
     (setq _Hough_minLineLength (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Hough_maxLineGap
     (setq _Hough_maxLineGap (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get tku_msgs::HoughValue :md5sum-) "d05e92877df6915f3edc27ac041474d7")
(setf (get tku_msgs::HoughValue :datatype-) "tku_msgs/HoughValue")
(setf (get tku_msgs::HoughValue :definition-)
      "int16 Hough_threshold
int16 Hough_minLineLength
int16 Hough_maxLineGap



")



(provide :tku_msgs/HoughValue "d05e92877df6915f3edc27ac041474d7")


