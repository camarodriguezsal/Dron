;; Auto-generated. Do not edit!


(when (boundp 'modrob_workstation::RobotConfigMeasured)
  (if (not (find-package "MODROB_WORKSTATION"))
    (make-package "MODROB_WORKSTATION"))
  (shadow 'RobotConfigMeasured (find-package "MODROB_WORKSTATION")))
(unless (find-package "MODROB_WORKSTATION::ROBOTCONFIGMEASURED")
  (make-package "MODROB_WORKSTATION::ROBOTCONFIGMEASURED"))

(in-package "ROS")
;;//! \htmlinclude RobotConfigMeasured.msg.html


(defclass modrob_workstation::RobotConfigMeasured
  :super ros::object
  :slots (_joint_config_measured _measured_robot_state _tool_activation ))

(defmethod modrob_workstation::RobotConfigMeasured
  (:init
   (&key
    ((:joint_config_measured __joint_config_measured) (let (r) (dotimes (i 0) (push (instance modrob_workstation::JointConfigMeasured :init) r)) r))
    ((:measured_robot_state __measured_robot_state) 0)
    ((:tool_activation __tool_activation) nil)
    )
   (send-super :init)
   (setq _joint_config_measured __joint_config_measured)
   (setq _measured_robot_state (round __measured_robot_state))
   (setq _tool_activation __tool_activation)
   self)
  (:joint_config_measured
   (&rest __joint_config_measured)
   (if (keywordp (car __joint_config_measured))
       (send* _joint_config_measured __joint_config_measured)
     (progn
       (if __joint_config_measured (setq _joint_config_measured (car __joint_config_measured)))
       _joint_config_measured)))
  (:measured_robot_state
   (&optional __measured_robot_state)
   (if __measured_robot_state (setq _measured_robot_state __measured_robot_state)) _measured_robot_state)
  (:tool_activation
   (&optional __tool_activation)
   (if __tool_activation (setq _tool_activation __tool_activation)) _tool_activation)
  (:serialization-length
   ()
   (+
    ;; modrob_workstation/JointConfigMeasured[] _joint_config_measured
    (apply #'+ (send-all _joint_config_measured :serialization-length)) 4
    ;; uint8 _measured_robot_state
    1
    ;; bool _tool_activation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; modrob_workstation/JointConfigMeasured[] _joint_config_measured
     (write-long (length _joint_config_measured) s)
     (dolist (elem _joint_config_measured)
       (send elem :serialize s)
       )
     ;; uint8 _measured_robot_state
       (write-byte _measured_robot_state s)
     ;; bool _tool_activation
       (if _tool_activation (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; modrob_workstation/JointConfigMeasured[] _joint_config_measured
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_config_measured (let (r) (dotimes (i n) (push (instance modrob_workstation::JointConfigMeasured :init) r)) r))
     (dolist (elem- _joint_config_measured)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _measured_robot_state
     (setq _measured_robot_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _tool_activation
     (setq _tool_activation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get modrob_workstation::RobotConfigMeasured :md5sum-) "63d934dedb04d4a03a4dbce708629c90")
(setf (get modrob_workstation::RobotConfigMeasured :datatype-) "modrob_workstation/RobotConfigMeasured")
(setf (get modrob_workstation::RobotConfigMeasured :definition-)
      "# List of joint configurations
# Array indices from 0 to max match joints from base joint to last joint
JointConfigMeasured[] joint_config_measured
uint8 measured_robot_state
bool tool_activation

================================================================================
MSG: modrob_workstation/JointConfigMeasured
# This message describes a joint movement
float64 joint_angle
float64 joint_velocity
float64 joint_acceleration
float64 joint_torque
float64 joint_temperature
")



(provide :modrob_workstation/RobotConfigMeasured "63d934dedb04d4a03a4dbce708629c90")


