;; Auto-generated. Do not edit!


(when (boundp 'modrob_workstation::RobotConfigCommanded)
  (if (not (find-package "MODROB_WORKSTATION"))
    (make-package "MODROB_WORKSTATION"))
  (shadow 'RobotConfigCommanded (find-package "MODROB_WORKSTATION")))
(unless (find-package "MODROB_WORKSTATION::ROBOTCONFIGCOMMANDED")
  (make-package "MODROB_WORKSTATION::ROBOTCONFIGCOMMANDED"))

(in-package "ROS")
;;//! \htmlinclude RobotConfigCommanded.msg.html


(defclass modrob_workstation::RobotConfigCommanded
  :super ros::object
  :slots (_tool_activation _joint_moves ))

(defmethod modrob_workstation::RobotConfigCommanded
  (:init
   (&key
    ((:tool_activation __tool_activation) nil)
    ((:joint_moves __joint_moves) (let (r) (dotimes (i 0) (push (instance modrob_workstation::JointConfigCommanded :init) r)) r))
    )
   (send-super :init)
   (setq _tool_activation __tool_activation)
   (setq _joint_moves __joint_moves)
   self)
  (:tool_activation
   (&optional __tool_activation)
   (if __tool_activation (setq _tool_activation __tool_activation)) _tool_activation)
  (:joint_moves
   (&rest __joint_moves)
   (if (keywordp (car __joint_moves))
       (send* _joint_moves __joint_moves)
     (progn
       (if __joint_moves (setq _joint_moves (car __joint_moves)))
       _joint_moves)))
  (:serialization-length
   ()
   (+
    ;; bool _tool_activation
    1
    ;; modrob_workstation/JointConfigCommanded[] _joint_moves
    (apply #'+ (send-all _joint_moves :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _tool_activation
       (if _tool_activation (write-byte -1 s) (write-byte 0 s))
     ;; modrob_workstation/JointConfigCommanded[] _joint_moves
     (write-long (length _joint_moves) s)
     (dolist (elem _joint_moves)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _tool_activation
     (setq _tool_activation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; modrob_workstation/JointConfigCommanded[] _joint_moves
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_moves (let (r) (dotimes (i n) (push (instance modrob_workstation::JointConfigCommanded :init) r)) r))
     (dolist (elem- _joint_moves)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get modrob_workstation::RobotConfigCommanded :md5sum-) "2bac2996406eb87049714c95e451ba2c")
(setf (get modrob_workstation::RobotConfigCommanded :datatype-) "modrob_workstation/RobotConfigCommanded")
(setf (get modrob_workstation::RobotConfigCommanded :definition-)
      "# This message describes a robot arm movement
# Array indices from 0 to max match joints from base joint to last joint
bool tool_activation
JointConfigCommanded[] joint_moves


================================================================================
MSG: modrob_workstation/JointConfigCommanded
# This message describes a joint movement
float64 joint_angle
float64 joint_velocity
float64 joint_acceleration
float64 joint_torque
")



(provide :modrob_workstation/RobotConfigCommanded "2bac2996406eb87049714c95e451ba2c")


