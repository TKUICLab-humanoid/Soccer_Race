
(cl:in-package :asdf)

(defsystem "tku_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CheckSector" :depends-on ("_package_CheckSector"))
    (:file "_package_CheckSector" :depends-on ("_package"))
    (:file "ReadMotion" :depends-on ("_package_ReadMotion"))
    (:file "_package_ReadMotion" :depends-on ("_package"))
    (:file "SendHandSpeed" :depends-on ("_package_SendHandSpeed"))
    (:file "_package_SendHandSpeed" :depends-on ("_package"))
  ))