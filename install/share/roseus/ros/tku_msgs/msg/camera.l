;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::camera)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'camera (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::CAMERA")
  (make-package "TKU_MSGS::CAMERA"))

(in-package "ROS")
;;//! \htmlinclude camera.msg.html


(defclass tku_msgs::camera
  :super ros::object
  :slots (_brightness _contrast _saturation _white_balance _auto_white_balance _auto_exposure _auto_Backlight_Compensation ))

(defmethod tku_msgs::camera
  (:init
   (&key
    ((:brightness __brightness) 0.0)
    ((:contrast __contrast) 0.0)
    ((:saturation __saturation) 0.0)
    ((:white_balance __white_balance) 0.0)
    ((:auto_white_balance __auto_white_balance) nil)
    ((:auto_exposure __auto_exposure) nil)
    ((:auto_Backlight_Compensation __auto_Backlight_Compensation) nil)
    )
   (send-super :init)
   (setq _brightness (float __brightness))
   (setq _contrast (float __contrast))
   (setq _saturation (float __saturation))
   (setq _white_balance (float __white_balance))
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
    ;; float32 _brightness
    4
    ;; float32 _contrast
    4
    ;; float32 _saturation
    4
    ;; float32 _white_balance
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
     ;; float32 _brightness
       (sys::poke _brightness (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _contrast
       (sys::poke _contrast (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _saturation
       (sys::poke _saturation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _white_balance
       (sys::poke _white_balance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _brightness
     (setq _brightness (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _contrast
     (setq _contrast (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _saturation
     (setq _saturation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _white_balance
     (setq _white_balance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _auto_white_balance
     (setq _auto_white_balance (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _auto_exposure
     (setq _auto_exposure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _auto_Backlight_Compensation
     (setq _auto_Backlight_Compensation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tku_msgs::camera :md5sum-) "d4530f04f4edaafec1a7e205edfb378a")
(setf (get tku_msgs::camera :datatype-) "tku_msgs/camera")
(setf (get tku_msgs::camera :definition-)
      "float32 brightness
float32 contrast
float32 saturation
float32 white_balance
bool auto_white_balance
bool auto_exposure 
bool auto_Backlight_Compensation                 
")



(provide :tku_msgs/camera "d4530f04f4edaafec1a7e205edfb378a")


