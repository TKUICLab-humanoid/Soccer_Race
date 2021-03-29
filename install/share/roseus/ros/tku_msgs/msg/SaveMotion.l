;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::SaveMotion)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'SaveMotion (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::SAVEMOTION")
  (make-package "TKU_MSGS::SAVEMOTION"))

(in-package "ROS")
;;//! \htmlinclude SaveMotion.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tku_msgs::SaveMotion
  :super ros::object
  :slots (_layout _name _motionstate _ID _savestate _saveflag _MotionList _MotorData ))

(defmethod tku_msgs::SaveMotion
  (:init
   (&key
    ((:layout __layout) (instance std_msgs::MultiArrayLayout :init))
    ((:name __name) "")
    ((:motionstate __motionstate) 0)
    ((:ID __ID) 0)
    ((:savestate __savestate) 0)
    ((:saveflag __saveflag) nil)
    ((:MotionList __MotionList) (make-array 0 :initial-element 0 :element-type :integer))
    ((:MotorData __MotorData) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _layout __layout)
   (setq _name (string __name))
   (setq _motionstate (round __motionstate))
   (setq _ID (round __ID))
   (setq _savestate (round __savestate))
   (setq _saveflag __saveflag)
   (setq _MotionList __MotionList)
   (setq _MotorData __MotorData)
   self)
  (:layout
   (&rest __layout)
   (if (keywordp (car __layout))
       (send* _layout __layout)
     (progn
       (if __layout (setq _layout (car __layout)))
       _layout)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:motionstate
   (&optional __motionstate)
   (if __motionstate (setq _motionstate __motionstate)) _motionstate)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:savestate
   (&optional __savestate)
   (if __savestate (setq _savestate __savestate)) _savestate)
  (:saveflag
   (&optional __saveflag)
   (if __saveflag (setq _saveflag __saveflag)) _saveflag)
  (:MotionList
   (&optional __MotionList)
   (if __MotionList (setq _MotionList __MotionList)) _MotionList)
  (:MotorData
   (&optional __MotorData)
   (if __MotorData (setq _MotorData __MotorData)) _MotorData)
  (:serialization-length
   ()
   (+
    ;; std_msgs/MultiArrayLayout _layout
    (send _layout :serialization-length)
    ;; string _name
    4 (length _name)
    ;; int16 _motionstate
    2
    ;; int16 _ID
    2
    ;; int16 _savestate
    2
    ;; bool _saveflag
    1
    ;; int16[] _MotionList
    (* 2    (length _MotionList)) 4
    ;; int16[] _MotorData
    (* 2    (length _MotorData)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/MultiArrayLayout _layout
       (send _layout :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int16 _motionstate
       (write-word _motionstate s)
     ;; int16 _ID
       (write-word _ID s)
     ;; int16 _savestate
       (write-word _savestate s)
     ;; bool _saveflag
       (if _saveflag (write-byte -1 s) (write-byte 0 s))
     ;; int16[] _MotionList
     (write-long (length _MotionList) s)
     (dotimes (i (length _MotionList))
       (write-word (elt _MotionList i) s)
       )
     ;; int16[] _MotorData
     (write-long (length _MotorData) s)
     (dotimes (i (length _MotorData))
       (write-word (elt _MotorData i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/MultiArrayLayout _layout
     (send _layout :deserialize buf ptr-) (incf ptr- (send _layout :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _motionstate
     (setq _motionstate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ID
     (setq _ID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _savestate
     (setq _savestate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _saveflag
     (setq _saveflag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16[] _MotionList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _MotionList (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _MotionList i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _MotorData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _MotorData (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _MotorData i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get tku_msgs::SaveMotion :md5sum-) "51a8597bb88713732b738b54bba08066")
(setf (get tku_msgs::SaveMotion :datatype-) "tku_msgs/SaveMotion")
(setf (get tku_msgs::SaveMotion :definition-)
      "std_msgs/MultiArrayLayout layout
string name
int16 motionstate
int16 ID
int16 savestate
bool saveflag
int16[] MotionList
int16[] MotorData
================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
")



(provide :tku_msgs/SaveMotion "51a8597bb88713732b738b54bba08066")


