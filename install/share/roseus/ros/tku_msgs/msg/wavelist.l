;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::wavelist)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'wavelist (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::WAVELIST")
  (make-package "TKU_MSGS::WAVELIST"))

(in-package "ROS")
;;//! \htmlinclude wavelist.msg.html


(defclass tku_msgs::wavelist
  :super ros::object
  :slots (_wavelist ))

(defmethod tku_msgs::wavelist
  (:init
   (&key
    ((:wavelist __wavelist) (let (r) (dotimes (i 0) (push (instance tku_msgs::wave :init) r)) r))
    )
   (send-super :init)
   (setq _wavelist __wavelist)
   self)
  (:wavelist
   (&rest __wavelist)
   (if (keywordp (car __wavelist))
       (send* _wavelist __wavelist)
     (progn
       (if __wavelist (setq _wavelist (car __wavelist)))
       _wavelist)))
  (:serialization-length
   ()
   (+
    ;; tku_msgs/wave[] _wavelist
    (apply #'+ (send-all _wavelist :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tku_msgs/wave[] _wavelist
     (write-long (length _wavelist) s)
     (dolist (elem _wavelist)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tku_msgs/wave[] _wavelist
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wavelist (let (r) (dotimes (i n) (push (instance tku_msgs::wave :init) r)) r))
     (dolist (elem- _wavelist)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tku_msgs::wavelist :md5sum-) "171c41386923a260960e1449234f31a2")
(setf (get tku_msgs::wavelist :datatype-) "tku_msgs/wavelist")
(setf (get tku_msgs::wavelist :definition-)
      "wave[] wavelist
================================================================================
MSG: tku_msgs/wave
float32 R_move_X
float32 L_move_X
float32 R_move_Y
float32 L_move_Y
float32 R_move_Z
float32 L_move_Z
float32 move_COM_X
float32 move_COM_Y
float32 move_COM_Z
float32 R_Thta
float32 L_Thta
int32 Point


")



(provide :tku_msgs/wavelist "171c41386923a260960e1449234f31a2")


