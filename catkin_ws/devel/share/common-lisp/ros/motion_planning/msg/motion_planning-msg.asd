
(cl:in-package :asdf)

(defsystem "motion_planning-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :moveit_msgs-msg
)
  :components ((:file "_package")
    (:file "Environment" :depends-on ("_package_Environment"))
    (:file "_package_Environment" :depends-on ("_package"))
    (:file "Poses" :depends-on ("_package_Poses"))
    (:file "_package_Poses" :depends-on ("_package"))
  ))