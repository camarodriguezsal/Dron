;; Auto-generated. Do not edit!


(when (boundp 'modrob_simulation::RobotConfigMeasured)
  (if (not (find-package "MODROB_SIMULATION"))
    (make-package "MODROB_SIMULATION"))
  (shadow 'RobotConfigMeasured (find-package "MODROB_SIMULATION")))
(unless (find-package "MODROB_SIMULATION::ROBOTCONFIGMEASURED")
  (make-package "MODROB_SIMULATION::ROBOTCONFIGMEASURED"))

(in-package "ROS")
;;//! \htmlinclude RobotConfigMeasured.msg.html


(defclass modrob_simulation::RobotConfigMeasured
  :super ros::object
  :slots (_joint_config_measured ))

(defmethod modrob_simulation::RobotConfigMeasured
  (:init
   (&key
    ((:joint_config_measured __joint_config_measured) (let (r) (dotimes (i 0) (push (instance modrob_simulation::JointConfigMeasured :init) r)) r))
    )
   (send-super :init)
   (setq _joint_config_measured __joint_config_measured)
   self)
  (:joint_config_measured
   (&rest __joint_config_measured)
   (if (keywordp (car __joint_config_measured))
       (send* _joint_config_measured __joint_config_measured)
     (progn
       (if __joint_config_measured (setq _joint_config_measured (car __joint_config_measured)))
       _joint_config_measured)))
  (:serialization-length
   ()
   (+
    ;; modrob_simulation/JointConfigMeasured[] _joint_config_measured
    (apply #'+ (send-all _joint_config_measured :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; modrob_simulation/JointConfigMeasured[] _joint_config_measured
     (write-long (length _joint_config_measured) s)
     (dolist (elem _joint_config_measured)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; modrob_simulation/JointConfigMeasured[] _joint_config_measured
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_config_measured (let (r) (dotimes (i n) (push (instance modrob_simulation::JointConfigMeasured :init) r)) r))
     (dolist (elem- _joint_config_measured)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get modrob_simulation::RobotConfigMeasured :md5sum-) "e893c96cbac958ab455a51b048ce201c")
(setf (get modrob_simulation::RobotConfigMeasured :datatype-) "modrob_simulation/RobotConfigMeasured")
(setf (get modrob_simulation::RobotConfigMeasured :definition-)
      "# List of joint configurations
# Array indices from 0 to max match joints from base joint to last joint
JointConfigMeasured[] joint_config_measured

================================================================================
MSG: modrob_simulation/JointConfigMeasured
# This message describes a joint movement

# The angle the joint is currently at
float64 joint_angle

# The current velocity of the joint
float64 joint_velocity

# The acceleration the joint currently experiences
float64 joint_acceleration

# The torque the joint is delivering
float64 joint_torque

# The current temperature of the joint
float64 joint_temperature
")



(provide :modrob_simulation/RobotConfigMeasured "e893c96cbac958ab455a51b048ce201c")


