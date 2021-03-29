;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::LabelModelObjectList)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'LabelModelObjectList (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::LABELMODELOBJECTLIST")
  (make-package "TKU_MSGS::LABELMODELOBJECTLIST"))

(in-package "ROS")
;;//! \htmlinclude LabelModelObjectList.msg.html


(defclass tku_msgs::LabelModelObjectList
  :super ros::object
  :slots (_LabelModel ))

(defmethod tku_msgs::LabelModelObjectList
  (:init
   (&key
    ((:LabelModel __LabelModel) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _LabelModel __LabelModel)
   self)
  (:LabelModel
   (&optional __LabelModel)
   (if __LabelModel (setq _LabelModel __LabelModel)) _LabelModel)
  (:serialization-length
   ()
   (+
    ;; char[] _LabelModel
    (* 1    (length _LabelModel)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char[] _LabelModel
     (write-long (length _LabelModel) s)
     (dotimes (i (length _LabelModel))
       (write-byte (elt _LabelModel i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char[] _LabelModel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _LabelModel (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _LabelModel i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get tku_msgs::LabelModelObjectList :md5sum-) "d3ec37f0e604748d8ecf9aa0d22ba18e")
(setf (get tku_msgs::LabelModelObjectList :datatype-) "tku_msgs/LabelModelObjectList")
(setf (get tku_msgs::LabelModelObjectList :definition-)
      "char[] LabelModel

")



(provide :tku_msgs/LabelModelObjectList "d3ec37f0e604748d8ecf9aa0d22ba18e")


