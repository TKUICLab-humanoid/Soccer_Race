;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::CameraInfo)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'CameraInfo (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::CAMERAINFO")
  (make-package "TKU_MSGS::CAMERAINFO"))
(unless (find-package "TKU_MSGS::CAMERAINFOREQUEST")
  (make-package "TKU_MSGS::CAMERAINFOREQUEST"))
(unless (find-package "TKU_MSGS::CAMERAINFORESPONSE")
  (make-package "TKU_MSGS::CAMERAINFORESPONSE"))

(in-package "ROS")





(defclass tku_msgs::CameraInfoRequest
  :super ros::object
  :slots (_Load ))

(defmethod tku_msgs::CameraInfoRequest
  (:init
   (&key
    ((:Load __Load) nil)
    )
   (send-super :init)
   (setq _Load __Load)
   self)
  (:Load
   (&optional __Load)
   (if __Load (setq _Load __Load)) _Load)
  (:serialization-length
   ()
   (+
    ;; bool _Load
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Load
       (if _Load (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Load
     (setq _Load (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tku_msgs::CameraInfoResponse
  :super ros::object
  :slots (_brightness _contrast _saturation _white_balance _auto_white_balance _auto_exposure _auto_Backlight_Compensation ))

(defmethod tku_msgs::CameraInfoResponse
  (:init
   (&key
    ((:brightness __brightness) 0)
    ((:contrast __contrast) 0)
    ((:saturation __saturation) 0)
    ((:white_balance __white_balance) 0)
    ((:auto_white_balance __auto_white_balance) nil)
    ((:auto_exposure __auto_exposure) nil)
    ((:auto_Backlight_Compensation __auto_Backlight_Compensation) nil)
    )
   (send-super :init)
   (setq _brightness (round __brightness))
   (setq _contrast (round __contrast))
   (setq _saturation (round __saturation))
   (setq _white_balance (round __white_balance))
   (setq _auto_white_balance __auto_white_balance)
   (setq _auto_exposure __auto_exposure)
   (setq _auto_Backlight_Compensation __auto_Backlight_Compensation)
   self)
  (:brightness
   (&optional __brightness)
   (if __brightness (setq _brightness __brightness)) _brightness)
  (:contrast
   (&optional __contrast)
   (if __contrast (setq _contrast __contrast)) _contrast)
  (:saturation
   (&optional __saturation)
   (if __saturation (setq _saturation __saturation)) _saturation)
  (:white_balance
   (&optional __white_balance)
   (if __white_balance (setq _white_balance __white_balance)) _white_balance)
  (:auto_white_balance
   (&optional __auto_white_balance)
   (if __auto_white_balance (setq _auto_white_balance __auto_white_balance)) _auto_white_balance)
  (:auto_exposure
   (&optional __auto_exposure)
   (if __auto_exposure (setq _auto_exposure __auto_exposure)) _auto_exposure)
  (:auto_Backlight_Compensation
   (&optional __auto_Backlight_Compensation)
   (if __auto_Backlight_Compensation (setq _auto_Backlight_Compensation __auto_Backlight_Compensation)) _auto_Backlight_Compensation)
  (:serialization-length
   ()
   (+
    ;; int32 _brightness
    4
    ;; int32 _contrast
    4
    ;; int32 _saturation
    4
    ;; int32 _white_balance
    4
    ;; bool _auto_white_balance
    1
    ;; bool _auto_exposure
    1
    ;; bool _auto_Backlight_Compensation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _brightness
       (write-long _brightness s)
     ;; int32 _contrast
       (write-long _contrast s)
     ;; int32 _saturation
       (write-long _saturation s)
     ;; int32 _white_balance
       (write-long _white_balance s)
     ;; bool _auto_white_balance
       (if _auto_white_balance (write-byte -1 s) (write-byte 0 s))
     ;; bool _auto_exposure
       (if _auto_exposure (write-byte -1 s) (write-byte 0 s))
     ;; bool _auto_Backlight_Compensation
       (if _auto_Backlight_Compensation (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _brightness
     (setq _brightness (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _contrast
     (setq _contrast (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _saturation
     (setq _saturation (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _white_balance
     (setq _white_balance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _auto_white_balance
     (setq _auto_white_balance (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _auto_exposure
     (setq _auto_exposure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _auto_Backlight_Compensation
     (setq _auto_Backlight_Compensation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tku_msgs::CameraInfo
  :super ros::object
  :slots ())

(setf (get tku_msgs::CameraInfo :md5sum-) "5d903b0ce533a144da9c4015f43ae098")
(setf (get tku_msgs::CameraInfo :datatype-) "tku_msgs/CameraInfo")
(setf (get tku_msgs::CameraInfo :request) tku_msgs::CameraInfoRequest)
(setf (get tku_msgs::CameraInfo :response) tku_msgs::CameraInfoResponse)

(defmethod tku_msgs::CameraInfoRequest
  (:response () (instance tku_msgs::CameraInfoResponse :init)))

(setf (get tku_msgs::CameraInfoRequest :md5sum-) "5d903b0ce533a144da9c4015f43ae098")
(setf (get tku_msgs::CameraInfoRequest :datatype-) "tku_msgs/CameraInfoRequest")
(setf (get tku_msgs::CameraInfoRequest :definition-)
      "bool Load
---
int32 brightness
int32 contrast
int32 saturation
int32 white_balance
bool auto_white_balance
bool auto_exposure
bool auto_Backlight_Compensation
")

(setf (get tku_msgs::CameraInfoResponse :md5sum-) "5d903b0ce533a144da9c4015f43ae098")
(setf (get tku_msgs::CameraInfoResponse :datatype-) "tku_msgs/CameraInfoResponse")
(setf (get tku_msgs::CameraInfoResponse :definition-)
      "bool Load
---
int32 brightness
int32 contrast
int32 saturation
int32 white_balance
bool auto_white_balance
bool auto_exposure
bool auto_Backlight_Compensation
")



(provide :tku_msgs/CameraInfo "5d903b0ce533a144da9c4015f43ae098")


