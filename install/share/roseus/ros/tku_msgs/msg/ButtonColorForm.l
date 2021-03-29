;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::ButtonColorForm)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'ButtonColorForm (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::BUTTONCOLORFORM")
  (make-package "TKU_MSGS::BUTTONCOLORFORM"))

(in-package "ROS")
;;//! \htmlinclude ButtonColorForm.msg.html


(defclass tku_msgs::ButtonColorForm
  :super ros::object
  :slots (_BuildingModel ))

(defmethod tku_msgs::ButtonColorForm
  (:init
   (&key
    ((:BuildingModel __BuildingModel) nil)
    )
   (send-super :init)
   (setq _BuildingModel __BuildingModel)
   self)
  (:BuildingModel
   (&optional __BuildingModel)
   (if __BuildingModel (setq _BuildingModel __BuildingModel)) _BuildingModel)
  (:serialization-length
   ()
   (+
    ;; bool _BuildingModel
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _BuildingModel
       (if _BuildingModel (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _BuildingModel
     (setq _BuildingModel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tku_msgs::ButtonColorForm :md5sum-) "8c88544105f68a71d5b5064eb3340fd1")
(setf (get tku_msgs::ButtonColorForm :datatype-) "tku_msgs/ButtonColorForm")
(setf (get tku_msgs::ButtonColorForm :definition-)
      "bool BuildingModel

")



(provide :tku_msgs/ButtonColorForm "8c88544105f68a71d5b5064eb3340fd1")


