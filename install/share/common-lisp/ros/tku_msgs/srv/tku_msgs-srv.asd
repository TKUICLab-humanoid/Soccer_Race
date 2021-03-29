
(cl:in-package :asdf)

(defsystem "tku_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BGRInfo" :depends-on ("_package_BGRInfo"))
    (:file "_package_BGRInfo" :depends-on ("_package"))
    (:file "BuildModel" :depends-on ("_package_BuildModel"))
    (:file "_package_BuildModel" :depends-on ("_package"))
    (:file "HSVInfo" :depends-on ("_package_HSVInfo"))
    (:file "_package_HSVInfo" :depends-on ("_package"))
    (:file "HoughInfo" :depends-on ("_package_HoughInfo"))
    (:file "_package_HoughInfo" :depends-on ("_package"))
    (:file "SaveHSV" :depends-on ("_package_SaveHSV"))
    (:file "_package_SaveHSV" :depends-on ("_package"))
  ))