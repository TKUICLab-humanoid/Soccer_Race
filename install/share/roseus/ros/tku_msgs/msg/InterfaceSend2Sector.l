;; Auto-generated. Do not edit!


(when (boundp 'tku_msgs::InterfaceSend2Sector)
  (if (not (find-package "TKU_MSGS"))
    (make-package "TKU_MSGS"))
  (shadow 'InterfaceSend2Sector (find-package "TKU_MSGS")))
(unless (find-package "TKU_MSGS::INTERFACESEND2SECTOR")
  (make-package "TKU_MSGS::INTERFACESEND2SECTOR"))

(in-package "ROS")
;;//! \htmlinclude InterfaceSend2Sector.msg.html


(defclass tku_msgs::InterfaceSend2Sector
  :super ros::object
  :slots (_Package _sectorname ))

(defmethod tku_msgs::InterfaceSend2Sector
  (:init
   (&key
    ((:Package __Package) 0)
    ((:sectorname __sectorname) "")
    )
   (send-super :init)
   (setq _Package (round __Package))
   (setq _sectorname (string __sectorname))
   self)
  (:Package
   (&optional __Package)
   (if __Package (setq _Package __Package)) _Package)
  (:sectorname
   (&optional __sectorname)
   (if __sectorname (setq _sectorname __sectorname)) _sectorname)
  (:serialization-length
   ()
   (+
    ;; int16 _Package
    2
    ;; string _sectorname
    4 (length _sectorname)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _Package
       (write-word _Package s)
     ;; string _sectorname
       (write-long (length _sectorname) s) (princ _sectorname s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _Package
     (setq _Package (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _sectorname
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sectorname (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tku_msgs::InterfaceSend2Sector :md5sum-) "259b9b823a54b61e8ccd5c2bcb938816")
(setf (get tku_msgs::InterfaceSend2Sector :datatype-) "tku_msgs/InterfaceSend2Sector")
(setf (get tku_msgs::InterfaceSend2Sector :definition-)
      "int16 Package
string sectorname

")



(provide :tku_msgs/InterfaceSend2Sector "259b9b823a54b61e8ccd5c2bcb938816")


