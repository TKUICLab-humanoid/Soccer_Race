;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::wave)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'wave (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::WAVE")
  (make-package "TKU_MSGS::WAVE"))

(in-package "ROS")
;;//! \htmlinclude wave.msg.html


(defclass tku_msgs::wave
  :super ros::object
  :slots (_R_move_X _L_move_X _R_move_Y _L_move_Y _R_move_Z _L_move_Z _move_COM_X _move_COM_Y _move_COM_Z _R_Thta _L_Thta _Point ))

(defmethod tku_msgs::wave
  (:init
   (&key
    ((:R_move_X __R_move_X) 0.0)
    ((:L_move_X __L_move_X) 0.0)
    ((:R_move_Y __R_move_Y) 0.0)
    ((:L_move_Y __L_move_Y) 0.0)
    ((:R_move_Z __R_move_Z) 0.0)
    ((:L_move_Z __L_move_Z) 0.0)
    ((:move_COM_X __move_COM_X) 0.0)
    ((:move_COM_Y __move_COM_Y) 0.0)
    ((:move_COM_Z __move_COM_Z) 0.0)
    ((:R_Thta __R_Thta) 0.0)
    ((:L_Thta __L_Thta) 0.0)
    ((:Point __Point) 0)
    )
   (send-super :init)
   (setq _R_move_X (float __R_move_X))
   (setq _L_move_X (float __L_move_X))
   (setq _R_move_Y (float __R_move_Y))
   (setq _L_move_Y (float __L_move_Y))
   (setq _R_move_Z (float __R_move_Z))
   (setq _L_move_Z (float __L_move_Z))
   (setq _move_COM_X (float __move_COM_X))
   (setq _move_COM_Y (float __move_COM_Y))
   (setq _move_COM_Z (float __move_COM_Z))
   (setq _R_Thta (float __R_Thta))
   (setq _L_Thta (float __L_Thta))
   (setq _Point (round __Point))
   self)
  (:R_move_X
   (&optional __R_move_X)
   (if __R_move_X (setq _R_move_X __R_move_X)) _R_move_X)
  (:L_move_X
   (&optional __L_move_X)
   (if __L_move_X (setq _L_move_X __L_move_X)) _L_move_X)
  (:R_move_Y
   (&optional __R_move_Y)
   (if __R_move_Y (setq _R_move_Y __R_move_Y)) _R_move_Y)
  (:L_move_Y
   (&optional __L_move_Y)
   (if __L_move_Y (setq _L_move_Y __L_move_Y)) _L_move_Y)
  (:R_move_Z
   (&optional __R_move_Z)
   (if __R_move_Z (setq _R_move_Z __R_move_Z)) _R_move_Z)
  (:L_move_Z
   (&optional __L_move_Z)
   (if __L_move_Z (setq _L_move_Z __L_move_Z)) _L_move_Z)
  (:move_COM_X
   (&optional __move_COM_X)
   (if __move_COM_X (setq _move_COM_X __move_COM_X)) _move_COM_X)
  (:move_COM_Y
   (&optional __move_COM_Y)
   (if __move_COM_Y (setq _move_COM_Y __move_COM_Y)) _move_COM_Y)
  (:move_COM_Z
   (&optional __move_COM_Z)
   (if __move_COM_Z (setq _move_COM_Z __move_COM_Z)) _move_COM_Z)
  (:R_Thta
   (&optional __R_Thta)
   (if __R_Thta (setq _R_Thta __R_Thta)) _R_Thta)
  (:L_Thta
   (&optional __L_Thta)
   (if __L_Thta (setq _L_Thta __L_Thta)) _L_Thta)
  (:Point
   (&optional __Point)
   (if __Point (setq _Point __Point)) _Point)
  (:serialization-length
   ()
   (+
    ;; float32 _R_move_X
    4
    ;; float32 _L_move_X
    4
    ;; float32 _R_move_Y
    4
    ;; float32 _L_move_Y
    4
    ;; float32 _R_move_Z
    4
    ;; float32 _L_move_Z
    4
    ;; float32 _move_COM_X
    4
    ;; float32 _move_COM_Y
    4
    ;; float32 _move_COM_Z
    4
    ;; float32 _R_Thta
    4
    ;; float32 _L_Thta
    4
    ;; int32 _Point
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _R_move_X
       (sys::poke _R_move_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_move_X
       (sys::poke _L_move_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_move_Y
       (sys::poke _R_move_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_move_Y
       (sys::poke _L_move_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_move_Z
       (sys::poke _R_move_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_move_Z
       (sys::poke _L_move_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _move_COM_X
       (sys::poke _move_COM_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _move_COM_Y
       (sys::poke _move_COM_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _move_COM_Z
       (sys::poke _move_COM_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _R_Thta
       (sys::poke _R_Thta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _L_Thta
       (sys::poke _L_Thta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _Point
       (write-long _Point s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _R_move_X
     (setq _R_move_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_move_X
     (setq _L_move_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_move_Y
     (setq _R_move_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_move_Y
     (setq _L_move_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_move_Z
     (setq _R_move_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_move_Z
     (setq _L_move_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _move_COM_X
     (setq _move_COM_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _move_COM_Y
     (setq _move_COM_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _move_COM_Z
     (setq _move_COM_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _R_Thta
     (setq _R_Thta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _L_Thta
     (setq _L_Thta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _Point
     (setq _Point (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tku_msgs::wave :md5sum-) "2dde10a25ae38be88936bf8db5ec2f73")
(setf (get tku_msgs::wave :datatype-) "tku_msgs/wave")
(setf (get tku_msgs::wave :definition-)
      "float32 R_move_X
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



(provide :tku_msgs/wave "2dde10a25ae38be88936bf8db5ec2f73")


