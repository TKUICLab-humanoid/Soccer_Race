;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::BGRValue)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'BGRValue (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::BGRVALUE")
  (make-package "TKU_MSGS::BGRVALUE"))

(in-package "ROS")
;;//! \htmlinclude BGRValue.msg.html


(defclass tku_msgs::BGRValue
  :super ros::object
  :slots (_BValue _GValue _RValue ))

(defmethod tku_msgs::BGRValue
  (:init
   (&key
    ((:BValue __BValue) 0)
    ((:GValue __GValue) 0)
    ((:RValue __RValue) 0)
    )
   (send-super :init)
   (setq _BValue (round __BValue))
   (setq _GValue (round __GValue))
   (setq _RValue (round __RValue))
   self)
  (:BValue
   (&optional __BValue)
   (if __BValue (setq _BValue __BValue)) _BValue)
  (:GValue
   (&optional __GValue)
   (if __GValue (setq _GValue __GValue)) _GValue)
  (:RValue
   (&optional __RValue)
   (if __RValue (setq _RValue __RValue)) _RValue)
  (:serialization-length
   ()
   (+
    ;; int16 _BValue
    2
    ;; int16 _GValue
    2
    ;; int16 _RValue
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _BValue
       (write-word _BValue s)
     ;; int16 _GValue
       (write-word _GValue s)
     ;; int16 _RValue
       (write-word _RValue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _BValue
     (setq _BValue (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _GValue
     (setq _GValue (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _RValue
     (setq _RValue (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get tku_msgs::BGRValue :md5sum-) "1e44fde246936bf182ab7600000dc57b")
(setf (get tku_msgs::BGRValue :datatype-) "tku_msgs/BGRValue")
(setf (get tku_msgs::BGRValue :definition-)
      "int16 BValue
int16 GValue
int16 RValue



")



(provide :tku_msgs/BGRValue "1e44fde246936bf182ab7600000dc57b")


