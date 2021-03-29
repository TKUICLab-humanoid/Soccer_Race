;; Auto-generated. Do not edit!


(when (boundp 'strategy::DeepMatrix)
  (if (not (find-package "STRATEGY"))
    (make-package "STRATEGY"))
  (shadow 'DeepMatrix (find-package "STRATEGY")))
(unless (find-package "STRATEGY::DEEPMATRIX")
  (make-package "STRATEGY::DEEPMATRIX"))

(in-package "ROS")
;;//! \htmlinclude DeepMatrix.msg.html


(defclass strategy::DeepMatrix
  :super ros::object
  :slots (_DeepMatrix ))

(defmethod strategy::DeepMatrix
  (:init
   (&key
    ((:DeepMatrix __DeepMatrix) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _DeepMatrix __DeepMatrix)
   self)
  (:DeepMatrix
   (&optional __DeepMatrix)
   (if __DeepMatrix (setq _DeepMatrix __DeepMatrix)) _DeepMatrix)
  (:serialization-length
   ()
   (+
    ;; int32[] _DeepMatrix
    (* 4    (length _DeepMatrix)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _DeepMatrix
     (write-long (length _DeepMatrix) s)
     (dotimes (i (length _DeepMatrix))
       (write-long (elt _DeepMatrix i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _DeepMatrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _DeepMatrix (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _DeepMatrix i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get strategy::DeepMatrix :md5sum-) "3d297606fb900059fdd4f503356c6486")
(setf (get strategy::DeepMatrix :datatype-) "strategy/DeepMatrix")
(setf (get strategy::DeepMatrix :definition-)
      "int32[] DeepMatrix

")



(provide :strategy/DeepMatrix "3d297606fb900059fdd4f503356c6486")


