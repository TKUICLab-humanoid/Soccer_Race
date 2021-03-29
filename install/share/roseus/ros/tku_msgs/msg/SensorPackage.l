;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::SensorPackage)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'SensorPackage (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::SENSORPACKAGE")
  (make-package "TKU_MSGS::SENSORPACKAGE"))

(in-package "ROS")
;;//! \htmlinclude SensorPackage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tku_msgs::SensorPackage
  :super ros::object
  :slots (_layout _IMUData _ForceSensorData ))

(defmethod tku_msgs::SensorPackage
  (:init
   (&key
    ((:layout __layout) (instance std_msgs::MultiArrayLayout :init))
    ((:IMUData __IMUData) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ForceSensorData __ForceSensorData) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _layout __layout)
   (setq _IMUData __IMUData)
   (setq _ForceSensorData __ForceSensorData)
   self)
  (:layout
   (&rest __layout)
   (if (keywordp (car __layout))
       (send* _layout __layout)
     (progn
       (if __layout (setq _layout (car __layout)))
       _layout)))
  (:IMUData
   (&optional __IMUData)
   (if __IMUData (setq _IMUData __IMUData)) _IMUData)
  (:ForceSensorData
   (&optional __ForceSensorData)
   (if __ForceSensorData (setq _ForceSensorData __ForceSensorData)) _ForceSensorData)
  (:serialization-length
   ()
   (+
    ;; std_msgs/MultiArrayLayout _layout
    (send _layout :serialization-length)
    ;; float64[] _IMUData
    (* 8    (length _IMUData)) 4
    ;; int32[] _ForceSensorData
    (* 4    (length _ForceSensorData)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/MultiArrayLayout _layout
       (send _layout :serialize s)
     ;; float64[] _IMUData
     (write-long (length _IMUData) s)
     (dotimes (i (length _IMUData))
       (sys::poke (elt _IMUData i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _ForceSensorData
     (write-long (length _ForceSensorData) s)
     (dotimes (i (length _ForceSensorData))
       (write-long (elt _ForceSensorData i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/MultiArrayLayout _layout
     (send _layout :deserialize buf ptr-) (incf ptr- (send _layout :serialization-length))
   ;; float64[] _IMUData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _IMUData (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _IMUData i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _ForceSensorData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ForceSensorData (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ForceSensorData i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get tku_msgs::SensorPackage :md5sum-) "ec6924184a1ba010caaf387f9200860c")
(setf (get tku_msgs::SensorPackage :datatype-) "tku_msgs/SensorPackage")
(setf (get tku_msgs::SensorPackage :definition-)
      "std_msgs/MultiArrayLayout layout
float64[] IMUData
int32[] ForceSensorData

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



(provide :tku_msgs/SensorPackage "ec6924184a1ba010caaf387f9200860c")


