;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::SoccerDataList)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'SoccerDataList (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::SOCCERDATALIST")
  (make-package "TKU_MSGS::SOCCERDATALIST"))

(in-package "ROS")
;;//! \htmlinclude SoccerDataList.msg.html


(defclass tku_msgs::SoccerDataList
  :super ros::object
  :slots (_object_cnt _ObjectList ))

(defmethod tku_msgs::SoccerDataList
  (:init
   (&key
    ((:object_cnt __object_cnt) 0)
    ((:ObjectList __ObjectList) (let (r) (dotimes (i 0) (push (instance tku_msgs::SoccerData :init) r)) r))
    )
   (send-super :init)
   (setq _object_cnt (round __object_cnt))
   (setq _ObjectList __ObjectList)
   self)
  (:object_cnt
   (&optional __object_cnt)
   (if __object_cnt (setq _object_cnt __object_cnt)) _object_cnt)
  (:ObjectList
   (&rest __ObjectList)
   (if (keywordp (car __ObjectList))
       (send* _ObjectList __ObjectList)
     (progn
       (if __ObjectList (setq _ObjectList (car __ObjectList)))
       _ObjectList)))
  (:serialization-length
   ()
   (+
    ;; int16 _object_cnt
    2
    ;; tku_msgs/SoccerData[] _ObjectList
    (apply #'+ (send-all _ObjectList :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _object_cnt
       (write-word _object_cnt s)
     ;; tku_msgs/SoccerData[] _ObjectList
     (write-long (length _ObjectList) s)
     (dolist (elem _ObjectList)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _object_cnt
     (setq _object_cnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; tku_msgs/SoccerData[] _ObjectList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ObjectList (let (r) (dotimes (i n) (push (instance tku_msgs::SoccerData :init) r)) r))
     (dolist (elem- _ObjectList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tku_msgs::SoccerDataList :md5sum-) "4bf9f67971129bb91670b6e5affb7fa2")
(setf (get tku_msgs::SoccerDataList :datatype-) "tku_msgs/SoccerDataList")
(setf (get tku_msgs::SoccerDataList :definition-)
      "int16 object_cnt
SoccerData[] ObjectList

================================================================================
MSG: tku_msgs/SoccerData
int32 x
int32 y
int32 height
int32 width
Distance distance
int32 object_mode

================================================================================
MSG: tku_msgs/Distance
int16 x_dis
int16 y_dis
int16 dis

")



(provide :tku_msgs/SoccerDataList "4bf9f67971129bb91670b6e5affb7fa2")


