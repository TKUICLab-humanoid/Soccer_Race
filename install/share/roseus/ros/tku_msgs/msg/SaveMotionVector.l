;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::SaveMotionVector)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'SaveMotionVector (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::SAVEMOTIONVECTOR")
  (make-package "TKU_MSGS::SAVEMOTIONVECTOR"))

(in-package "ROS")
;;//! \htmlinclude SaveMotionVector.msg.html


(defclass tku_msgs::SaveMotionVector
  :super ros::object
  :slots (_SaveMotionVector ))

(defmethod tku_msgs::SaveMotionVector
  (:init
   (&key
    ((:SaveMotionVector __SaveMotionVector) (let (r) (dotimes (i 0) (push (instance tku_msgs::SaveMotion :init) r)) r))
    )
   (send-super :init)
   (setq _SaveMotionVector __SaveMotionVector)
   self)
  (:SaveMotionVector
   (&rest __SaveMotionVector)
   (if (keywordp (car __SaveMotionVector))
       (send* _SaveMotionVector __SaveMotionVector)
     (progn
       (if __SaveMotionVector (setq _SaveMotionVector (car __SaveMotionVector)))
       _SaveMotionVector)))
  (:serialization-length
   ()
   (+
    ;; tku_msgs/SaveMotion[] _SaveMotionVector
    (apply #'+ (send-all _SaveMotionVector :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tku_msgs/SaveMotion[] _SaveMotionVector
     (write-long (length _SaveMotionVector) s)
     (dolist (elem _SaveMotionVector)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tku_msgs/SaveMotion[] _SaveMotionVector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _SaveMotionVector (let (r) (dotimes (i n) (push (instance tku_msgs::SaveMotion :init) r)) r))
     (dolist (elem- _SaveMotionVector)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tku_msgs::SaveMotionVector :md5sum-) "67e1cd0228979aba8328714863431170")
(setf (get tku_msgs::SaveMotionVector :datatype-) "tku_msgs/SaveMotionVector")
(setf (get tku_msgs::SaveMotionVector :definition-)
      "SaveMotion[] SaveMotionVector
================================================================================
MSG: tku_msgs/SaveMotion
std_msgs/MultiArrayLayout layout
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



(provide :tku_msgs/SaveMotionVector "67e1cd0228979aba8328714863431170")


