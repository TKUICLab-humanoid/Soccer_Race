
(cl:in-package :asdf)

(defsystem "strategy-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DeepMatrix" :depends-on ("_package_DeepMatrix"))
    (:file "_package_DeepMatrix" :depends-on ("_package"))
    (:file "example" :depends-on ("_package_example"))
    (:file "_package_example" :depends-on ("_package"))
  ))