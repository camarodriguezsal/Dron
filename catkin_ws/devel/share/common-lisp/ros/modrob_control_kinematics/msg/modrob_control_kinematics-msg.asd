
(cl:in-package :asdf)

(defsystem "modrob_control_kinematics-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ControlVelocityDesired" :depends-on ("_package_ControlVelocityDesired"))
    (:file "_package_ControlVelocityDesired" :depends-on ("_package"))
  ))