;; Auto-generated. Do not edit!


(when (boundp 'modrob_control_kinematics::ControlVelocityDesired)
  (if (not (find-package "MODROB_CONTROL_KINEMATICS"))
    (make-package "MODROB_CONTROL_KINEMATICS"))
  (shadow 'ControlVelocityDesired (find-package "MODROB_CONTROL_KINEMATICS")))
(unless (find-package "MODROB_CONTROL_KINEMATICS::CONTROLVELOCITYDESIRED")
  (make-package "MODROB_CONTROL_KINEMATICS::CONTROLVELOCITYDESIRED"))

(in-package "ROS")
;;//! \htmlinclude ControlVelocityDesired.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass modrob_control_kinematics::ControlVelocityDesired
  :super ros::object
  :slots (_joint_velocities _workspace_velocities _isJointspace _tool_activation ))

(defmethod modrob_control_kinematics::ControlVelocityDesired
  (:init
   (&key
    ((:joint_velocities __joint_velocities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:workspace_velocities __workspace_velocities) (instance geometry_msgs::Twist :init))
    ((:isJointspace __isJointspace) nil)
    ((:tool_activation __tool_activation) nil)
    )
   (send-super :init)
   (setq _joint_velocities __joint_velocities)
   (setq _workspace_velocities __workspace_velocities)
   (setq _isJointspace __isJointspace)
   (setq _tool_activation __tool_activation)
   self)
  (:joint_velocities
   (&optional __joint_velocities)
   (if __joint_velocities (setq _joint_velocities __joint_velocities)) _joint_velocities)
  (:workspace_velocities
   (&rest __workspace_velocities)
   (if (keywordp (car __workspace_velocities))
       (send* _workspace_velocities __workspace_velocities)
     (progn
       (if __workspace_velocities (setq _workspace_velocities (car __workspace_velocities)))
       _workspace_velocities)))
  (:isJointspace
   (&optional __isJointspace)
   (if __isJointspace (setq _isJointspace __isJointspace)) _isJointspace)
  (:tool_activation
   (&optional __tool_activation)
   (if __tool_activation (setq _tool_activation __tool_activation)) _tool_activation)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_velocities
    (* 8    (length _joint_velocities)) 4
    ;; geometry_msgs/Twist _workspace_velocities
    (send _workspace_velocities :serialization-length)
    ;; bool _isJointspace
    1
    ;; bool _tool_activation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint_velocities
     (write-long (length _joint_velocities) s)
     (dotimes (i (length _joint_velocities))
       (sys::poke (elt _joint_velocities i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Twist _workspace_velocities
       (send _workspace_velocities :serialize s)
     ;; bool _isJointspace
       (if _isJointspace (write-byte -1 s) (write-byte 0 s))
     ;; bool _tool_activation
       (if _tool_activation (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint_velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_velocities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_velocities i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Twist _workspace_velocities
     (send _workspace_velocities :deserialize buf ptr-) (incf ptr- (send _workspace_velocities :serialization-length))
   ;; bool _isJointspace
     (setq _isJointspace (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tool_activation
     (setq _tool_activation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get modrob_control_kinematics::ControlVelocityDesired :md5sum-) "9f1126242bb2728989806e997a6c03bf")
(setf (get modrob_control_kinematics::ControlVelocityDesired :datatype-) "modrob_control_kinematics/ControlVelocityDesired")
(setf (get modrob_control_kinematics::ControlVelocityDesired :definition-)
      "# Message containing all posible velocities for Jointspace control and Workspace control and a bool for activating the tool
# This message should be used to tell the kinematics node the desired velocities coming from a control device

# Joint velocities for joint control
# Array indices from 0 to max joints starting at the base joint
float64[] joint_velocities

# Cartesian velocities for workspace control
geometry_msgs/Twist workspace_velocities

# Boolean to indicate if joint space or workspace data is valid
bool isJointspace

# Boolean for toolactivation
bool tool_activation

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :modrob_control_kinematics/ControlVelocityDesired "9f1126242bb2728989806e997a6c03bf")


