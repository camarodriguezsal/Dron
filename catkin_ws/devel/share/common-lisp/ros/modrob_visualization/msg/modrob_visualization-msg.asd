
(cl:in-package :asdf)

(defsystem "modrob_visualization-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Modes" :depends-on ("_package_Modes"))
    (:file "_package_Modes" :depends-on ("_package"))
    (:file "Modes" :depends-on ("_package_Modes"))
    (:file "_package_Modes" :depends-on ("_package"))
  ))