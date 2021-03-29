;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::CharacterInfo)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'CharacterInfo (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::CHARACTERINFO")
  (make-package "TKU_MSGS::CHARACTERINFO"))

(in-package "ROS")
;;//! \htmlinclude CharacterInfo.msg.html


(defclass tku_msgs::CharacterInfo
  :super ros::object
  :slots (_which_robot _name _x _y _exist_flag _theta _dist _object _enemy ))

(defmethod tku_msgs::CharacterInfo
  (:init
   (&key
    ((:which_robot __which_robot) "")
    ((:name __name) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:exist_flag __exist_flag) nil)
    ((:theta __theta) (instance tku_msgs::WitchData :init))
    ((:dist __dist) (instance tku_msgs::WitchData :init))
    ((:object __object) (let (r) (dotimes (i 0) (push (instance tku_msgs::ObjectInfo :init) r)) r))
    ((:enemy __enemy) (let (r) (dotimes (i 0) (push (instance tku_msgs::ObjectInfo :init) r)) r))
    )
   (send-super :init)
   (setq _which_robot (string __which_robot))
   (setq _name (string __name))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _exist_flag __exist_flag)
   (setq _theta __theta)
   (setq _dist __dist)
   (setq _object __object)
   (setq _enemy __enemy)
   self)
  (:which_robot
   (&optional __which_robot)
   (if __which_robot (setq _which_robot __which_robot)) _which_robot)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:exist_flag
   (&optional __exist_flag)
   (if __exist_flag (setq _exist_flag __exist_flag)) _exist_flag)
  (:theta
   (&rest __theta)
   (if (keywordp (car __theta))
       (send* _theta __theta)
     (progn
       (if __theta (setq _theta (car __theta)))
       _theta)))
  (:dist
   (&rest __dist)
   (if (keywordp (car __dist))
       (send* _dist __dist)
     (progn
       (if __dist (setq _dist (car __dist)))
       _dist)))
  (:object
   (&rest __object)
   (if (keywordp (car __object))
       (send* _object __object)
     (progn
       (if __object (setq _object (car __object)))
       _object)))
  (:enemy
   (&rest __enemy)
   (if (keywordp (car __enemy))
       (send* _enemy __enemy)
     (progn
       (if __enemy (setq _enemy (car __enemy)))
       _enemy)))
  (:serialization-length
   ()
   (+
    ;; string _which_robot
    4 (length _which_robot)
    ;; string _name
    4 (length _name)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; bool _exist_flag
    1
    ;; tku_msgs/WitchData _theta
    (send _theta :serialization-length)
    ;; tku_msgs/WitchData _dist
    (send _dist :serialization-length)
    ;; tku_msgs/ObjectInfo[] _object
    (apply #'+ (send-all _object :serialization-length)) 4
    ;; tku_msgs/ObjectInfo[] _enemy
    (apply #'+ (send-all _enemy :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _which_robot
       (write-long (length _which_robot) s) (princ _which_robot s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _exist_flag
       (if _exist_flag (write-byte -1 s) (write-byte 0 s))
     ;; tku_msgs/WitchData _theta
       (send _theta :serialize s)
     ;; tku_msgs/WitchData _dist
       (send _dist :serialize s)
     ;; tku_msgs/ObjectInfo[] _object
     (write-long (length _object) s)
     (dolist (elem _object)
       (send elem :serialize s)
       )
     ;; tku_msgs/ObjectInfo[] _enemy
     (write-long (length _enemy) s)
     (dolist (elem _enemy)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _which_robot
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _which_robot (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _exist_flag
     (setq _exist_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; tku_msgs/WitchData _theta
     (send _theta :deserialize buf ptr-) (incf ptr- (send _theta :serialization-length))
   ;; tku_msgs/WitchData _dist
     (send _dist :deserialize buf ptr-) (incf ptr- (send _dist :serialization-length))
   ;; tku_msgs/ObjectInfo[] _object
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object (let (r) (dotimes (i n) (push (instance tku_msgs::ObjectInfo :init) r)) r))
     (dolist (elem- _object)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; tku_msgs/ObjectInfo[] _enemy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _enemy (let (r) (dotimes (i n) (push (instance tku_msgs::ObjectInfo :init) r)) r))
     (dolist (elem- _enemy)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tku_msgs::CharacterInfo :md5sum-) "291b746588435b1a71d12e22c696f64a")
(setf (get tku_msgs::CharacterInfo :datatype-) "tku_msgs/CharacterInfo")
(setf (get tku_msgs::CharacterInfo :definition-)
      "string which_robot
string name
float32 x
float32 y
bool exist_flag
WitchData theta
WitchData dist
ObjectInfo[] object
ObjectInfo[] enemy

================================================================================
MSG: tku_msgs/WitchData
float32 local
float32 global

================================================================================
MSG: tku_msgs/ObjectInfo
string name
float32 x
float32 y
bool exist_flag
WitchData theta
WitchData dist

")



(provide :tku_msgs/CharacterInfo "291b746588435b1a71d12e22c696f64a")


