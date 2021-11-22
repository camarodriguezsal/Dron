;; Auto-generated. Do not edit!


(when (boundp 'modrob_simulation::RobotConfigCommanded)
  (if (not (find-package "MODROB_SIMULATION"))
    (make-package "MODROB_SIMULATION"))
  (shadow 'RobotConfigCommanded (find-package "MODROB_SIMULATION")))
(unless (find-package "MODROB_SIMULATION::ROBOTCONFIGCOMMANDED")
  (make-package "MODROB_SIMULATION::ROBOTCONFIGCOMMANDED"))

(in-package "ROS")
;;//! \htmlinclude RobotConfigCommanded.msg.html


(defclass modrob_simulation::RobotConfigCommanded
  :super ros::object
  :slots (_joint_config_commanded _tool_activation ))

(defmethod modrob_simulation::RobotConfigCommanded
  (:init
   (&key
    ((:joint_config_commanded __joint_config_commanded) (let (r) (dotimes (i 0) (push (instance modrob_simulation::JointConfigCommanded :init) r)) r))
    ((:tool_activation __tool_activation) nil)
    )
   (send-super :init)
   (setq _joint_config_commanded __joint_config_commanded)
   (setq _tool_activation __tool_activation)
   self)
  (:joint_config_commanded
   (&rest __joint_config_commanded)
   (if (keywordp (car __joint_config_commanded))
       (send* _joint_config_commanded __joint_config_commanded)
     (progn
       (if __joint_config_commanded (setq _joint_config_commanded (car __joint_config_commanded)))
       _joint_config_commanded)))
  (:tool_activation
   (&optional __tool_activation)
   (if __tool_activation (setq _tool_activation __tool_activation)) _tool_activation)
  (:serialization-length
   ()
   (+
    ;; modrob_simulation/JointConfigCommanded[] _joint_config_commanded
    (apply #'+ (send-all _joint_config_commanded :serialization-length)) 4
    ;; bool _tool_activation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; modrob_simulation/JointConfigCommanded[] _joint_config_commanded
     (write-long (length _joint_config_commanded) s)
     (dolist (elem _joint_config_commanded)
       (send elem :serialize s)
       )
     ;; bool _tool_activation
       (if _tool_activation (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; modrob_simulation/JointConfigCommanded[] _joint_config_commanded
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_config_commanded (let (r) (dotimes (i n) (push (instance modrob_simulation::JointConfigCommanded :init) r)) r))
     (dolist (elem- _joint_config_commanded)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _tool_activation
     (setq _tool_activation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get modrob_simulation::RobotConfigCommanded :md5sum-) "317b6847d28ab67b3eb3e1fdec1c5d27")
(setf (get modrob_simulation::RobotConfigCommanded :datatype-) "modrob_simulation/RobotConfigCommanded")
(setf (get modrob_simulation::RobotConfigCommanded :definition-)
      "# This message describes a robot arm movement
# Array indices from 0 to max match joints from base joint to last joint
JointConfigCommanded[] joint_config_commanded
bool tool_activation

================================================================================
MSG: modrob_simulation/JointConfigCommanded
# This message describes a joint movement
float64 joint_angle
float64 joint_velocity
float64 joint_acceleration
float64 joint_torque
")



(provide :modrob_simulation/RobotConfigCommanded "317b6847d28ab67b3eb3e1fdec1c5d27")


