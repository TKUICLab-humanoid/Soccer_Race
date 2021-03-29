;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::ReadMotion)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'ReadMotion (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::READMOTION")
  (make-package "TKU_MSGS::READMOTION"))
(unless (find-package "TKU_MSGS::READMOTIONREQUEST")
  (make-package "TKU_MSGS::READMOTIONREQUEST"))
(unless (find-package "TKU_MSGS::READMOTIONRESPONSE")
  (make-package "TKU_MSGS::READMOTIONRESPONSE"))

(in-package "ROS")





(defclass tku_msgs::ReadMotionRequest
  :super ros::object
  :slots (_read _name _readstate ))

(defmethod tku_msgs::ReadMotionRequest
  (:init
   (&key
    ((:read __read) nil)
    ((:name __name) "")
    ((:readstate __readstate) 0)
    )
   (send-super :init)
   (setq _read __read)
   (setq _name (string __name))
   (setq _readstate (round __readstate))
   self)
  (:read
   (&optional __read)
   (if __read (setq _read __read)) _read)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:readstate
   (&optional __readstate)
   (if __readstate (setq _readstate __readstate)) _readstate)
  (:serialization-length
   ()
   (+
    ;; bool _read
    1
    ;; string _name
    4 (length _name)
    ;; int16 _readstate
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _read
       (if _read (write-byte -1 s) (write-byte 0 s))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int16 _readstate
       (write-word _readstate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _read
     (setq _read (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _readstate
     (setq _readstate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass tku_msgs::ReadMotionResponse
  :super ros::object
  :slots (_VectorCnt _motionstate _ID _MotionList _RelativeData _AbsoluteData ))

(defmethod tku_msgs::ReadMotionResponse
  (:init
   (&key
    ((:VectorCnt __VectorCnt) 0)
    ((:motionstate __motionstate) (make-array 0 :initial-element 0 :element-type :integer))
    ((:ID __ID) (make-array 0 :initial-element 0 :element-type :integer))
    ((:MotionList __MotionList) (make-array 0 :initial-element 0 :element-type :integer))
    ((:RelativeData __RelativeData) (make-array 0 :initial-element 0 :element-type :integer))
    ((:AbsoluteData __AbsoluteData) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _VectorCnt (round __VectorCnt))
   (setq _motionstate __motionstate)
   (setq _ID __ID)
   (setq _MotionList __MotionList)
   (setq _RelativeData __RelativeData)
   (setq _AbsoluteData __AbsoluteData)
   self)
  (:VectorCnt
   (&optional __VectorCnt)
   (if __VectorCnt (setq _VectorCnt __VectorCnt)) _VectorCnt)
  (:motionstate
   (&optional __motionstate)
   (if __motionstate (setq _motionstate __motionstate)) _motionstate)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:MotionList
   (&optional __MotionList)
   (if __MotionList (setq _MotionList __MotionList)) _MotionList)
  (:RelativeData
   (&optional __RelativeData)
   (if __RelativeData (setq _RelativeData __RelativeData)) _RelativeData)
  (:AbsoluteData
   (&optional __AbsoluteData)
   (if __AbsoluteData (setq _AbsoluteData __AbsoluteData)) _AbsoluteData)
  (:serialization-length
   ()
   (+
    ;; int16 _VectorCnt
    2
    ;; int16[] _motionstate
    (* 2    (length _motionstate)) 4
    ;; int16[] _ID
    (* 2    (length _ID)) 4
    ;; int16[] _MotionList
    (* 2    (length _MotionList)) 4
    ;; int16[] _RelativeData
    (* 2    (length _RelativeData)) 4
    ;; int16[] _AbsoluteData
    (* 2    (length _AbsoluteData)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _VectorCnt
       (write-word _VectorCnt s)
     ;; int16[] _motionstate
     (write-long (length _motionstate) s)
     (dotimes (i (length _motionstate))
       (write-word (elt _motionstate i) s)
       )
     ;; int16[] _ID
     (write-long (length _ID) s)
     (dotimes (i (length _ID))
       (write-word (elt _ID i) s)
       )
     ;; int16[] _MotionList
     (write-long (length _MotionList) s)
     (dotimes (i (length _MotionList))
       (write-word (elt _MotionList i) s)
       )
     ;; int16[] _RelativeData
     (write-long (length _RelativeData) s)
     (dotimes (i (length _RelativeData))
       (write-word (elt _RelativeData i) s)
       )
     ;; int16[] _AbsoluteData
     (write-long (length _AbsoluteData) s)
     (dotimes (i (length _AbsoluteData))
       (write-word (elt _AbsoluteData i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _VectorCnt
     (setq _VectorCnt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16[] _motionstate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motionstate (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motionstate i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _ID
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ID (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ID i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _MotionList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _MotionList (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _MotionList i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _RelativeData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _RelativeData (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _RelativeData i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _AbsoluteData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _AbsoluteData (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _AbsoluteData i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(defclass tku_msgs::ReadMotion
  :super ros::object
  :slots ())

(setf (get tku_msgs::ReadMotion :md5sum-) "aba192d5d2599c4b6211587c2f618837")
(setf (get tku_msgs::ReadMotion :datatype-) "tku_msgs/ReadMotion")
(setf (get tku_msgs::ReadMotion :request) tku_msgs::ReadMotionRequest)
(setf (get tku_msgs::ReadMotion :response) tku_msgs::ReadMotionResponse)

(defmethod tku_msgs::ReadMotionRequest
  (:response () (instance tku_msgs::ReadMotionResponse :init)))

(setf (get tku_msgs::ReadMotionRequest :md5sum-) "aba192d5d2599c4b6211587c2f618837")
(setf (get tku_msgs::ReadMotionRequest :datatype-) "tku_msgs/ReadMotionRequest")
(setf (get tku_msgs::ReadMotionRequest :definition-)
      "bool read
string name
int16 readstate
---
int16 VectorCnt
int16[] motionstate
int16[] ID
int16[] MotionList
int16[] RelativeData
int16[] AbsoluteData

")

(setf (get tku_msgs::ReadMotionResponse :md5sum-) "aba192d5d2599c4b6211587c2f618837")
(setf (get tku_msgs::ReadMotionResponse :datatype-) "tku_msgs/ReadMotionResponse")
(setf (get tku_msgs::ReadMotionResponse :definition-)
      "bool read
string name
int16 readstate
---
int16 VectorCnt
int16[] motionstate
int16[] ID
int16[] MotionList
int16[] RelativeData
int16[] AbsoluteData

")



(provide :tku_msgs/ReadMotion "aba192d5d2599c4b6211587c2f618837")


