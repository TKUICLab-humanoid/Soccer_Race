;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::ImageLengthData)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'ImageLengthData (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::IMAGELENGTHDATA")
  (make-package "TKU_MSGS::IMAGELENGTHDATA"))

(in-package "ROS")
;;//! \htmlinclude ImageLengthData.msg.html


(defclass tku_msgs::ImageLengthData
  :super ros::object
  :slots (_focus _top _bottom _top_width _bottom_width _horizontal_head_angle ))

(defmethod tku_msgs::ImageLengthData
  (:init
   (&key
    ((:focus __focus) 0)
    ((:top __top) 0)
    ((:bottom __bottom) 0)
    ((:top_width __top_width) 0)
    ((:bottom_width __bottom_width) 0)
    ((:horizontal_head_angle __horizontal_head_angle) 0.0)
    )
   (send-super :init)
   (setq _focus (round __focus))
   (setq _top (round __top))
   (setq _bottom (round __bottom))
   (setq _top_width (round __top_width))
   (setq _bottom_width (round __bottom_width))
   (setq _horizontal_head_angle (float __horizontal_head_angle))
   self)
  (:focus
   (&optional __focus)
   (if __focus (setq _focus __focus)) _focus)
  (:top
   (&optional __top)
   (if __top (setq _top __top)) _top)
  (:bottom
   (&optional __bottom)
   (if __bottom (setq _bottom __bottom)) _bottom)
  (:top_width
   (&optional __top_width)
   (if __top_width (setq _top_width __top_width)) _top_width)
  (:bottom_width
   (&optional __bottom_width)
   (if __bottom_width (setq _bottom_width __bottom_width)) _bottom_width)
  (:horizontal_head_angle
   (&optional __horizontal_head_angle)
   (if __horizontal_head_angle (setq _horizontal_head_angle __horizontal_head_angle)) _horizontal_head_angle)
  (:serialization-length
   ()
   (+
    ;; int16 _focus
    2
    ;; int16 _top
    2
    ;; int16 _bottom
    2
    ;; int16 _top_width
    2
    ;; int16 _bottom_width
    2
    ;; float64 _horizontal_head_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _focus
       (write-word _focus s)
     ;; int16 _top
       (write-word _top s)
     ;; int16 _bottom
       (write-word _bottom s)
     ;; int16 _top_width
       (write-word _top_width s)
     ;; int16 _bottom_width
       (write-word _bottom_width s)
     ;; float64 _horizontal_head_angle
       (sys::poke _horizontal_head_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _focus
     (setq _focus (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _top
     (setq _top (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _bottom
     (setq _bottom (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _top_width
     (setq _top_width (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _bottom_width
     (setq _bottom_width (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _horizontal_head_angle
     (setq _horizontal_head_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tku_msgs::ImageLengthData :md5sum-) "162a1f70ff8cb0ca3417bb2f1837ffa6")
(setf (get tku_msgs::ImageLengthData :datatype-) "tku_msgs/ImageLengthData")
(setf (get tku_msgs::ImageLengthData :definition-)
      "int16 focus
int16 top
int16 bottom
int16 top_width
int16 bottom_width
float64 horizontal_head_angle

")



(provide :tku_msgs/ImageLengthData "162a1f70ff8cb0ca3417bb2f1837ffa6")


