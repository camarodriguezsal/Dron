; Auto-generated. Do not edit!


(cl:in-package modrob_workstation-msg)


;//! \htmlinclude RobotConfigMeasured.msg.html

(cl:defclass <RobotConfigMeasured> (roslisp-msg-protocol:ros-message)
  ((joint_config_measured
    :reader joint_config_measured
    :initarg :joint_config_measured
    :type (cl:vector modrob_workstation-msg:JointConfigMeasured)
   :initform (cl:make-array 0 :element-type 'modrob_workstation-msg:JointConfigMeasured :initial-element (cl:make-instance 'modrob_workstation-msg:JointConfigMeasured)))
   (measured_robot_state
    :reader measured_robot_state
    :initarg :measured_robot_state
    :type cl:fixnum
    :initform 0)
   (tool_activation
    :reader tool_activation
    :initarg :tool_activation
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotConfigMeasured (<RobotConfigMeasured>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotConfigMeasured>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotConfigMeasured)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_workstation-msg:<RobotConfigMeasured> is deprecated: use modrob_workstation-msg:RobotConfigMeasured instead.")))

(cl:ensure-generic-function 'joint_config_measured-val :lambda-list '(m))
(cl:defmethod joint_config_measured-val ((m <RobotConfigMeasured>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_workstation-msg:joint_config_measured-val is deprecated.  Use modrob_workstation-msg:joint_config_measured instead.")
  (joint_config_measured m))

(cl:ensure-generic-function 'measured_robot_state-val :lambda-list '(m))
(cl:defmethod measured_robot_state-val ((m <RobotConfigMeasured>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_workstation-msg:measured_robot_state-val is deprecated.  Use modrob_workstation-msg:measured_robot_state instead.")
  (measured_robot_state m))

(cl:ensure-generic-function 'tool_activation-val :lambda-list '(m))
(cl:defmethod tool_activation-val ((m <RobotConfigMeasured>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_workstation-msg:tool_activation-val is deprecated.  Use modrob_workstation-msg:tool_activation instead.")
  (tool_activation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotConfigMeasured>) ostream)
  "Serializes a message object of type '<RobotConfigMeasured>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_config_measured))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joint_config_measured))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'measured_robot_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tool_activation) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotConfigMeasured>) istream)
  "Deserializes a message object of type '<RobotConfigMeasured>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_config_measured) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_config_measured)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'modrob_workstation-msg:JointConfigMeasured))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'measured_robot_state)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tool_activation) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotConfigMeasured>)))
  "Returns string type for a message object of type '<RobotConfigMeasured>"
  "modrob_workstation/RobotConfigMeasured")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotConfigMeasured)))
  "Returns string type for a message object of type 'RobotConfigMeasured"
  "modrob_workstation/RobotConfigMeasured")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotConfigMeasured>)))
  "Returns md5sum for a message object of type '<RobotConfigMeasured>"
  "63d934dedb04d4a03a4dbce708629c90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotConfigMeasured)))
  "Returns md5sum for a message object of type 'RobotConfigMeasured"
  "63d934dedb04d4a03a4dbce708629c90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotConfigMeasured>)))
  "Returns full string definition for message of type '<RobotConfigMeasured>"
  (cl:format cl:nil "# List of joint configurations~%# Array indices from 0 to max match joints from base joint to last joint~%JointConfigMeasured[] joint_config_measured~%uint8 measured_robot_state~%bool tool_activation~%~%================================================================================~%MSG: modrob_workstation/JointConfigMeasured~%# This message describes a joint movement~%float64 joint_angle~%float64 joint_velocity~%float64 joint_acceleration~%float64 joint_torque~%float64 joint_temperature~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotConfigMeasured)))
  "Returns full string definition for message of type 'RobotConfigMeasured"
  (cl:format cl:nil "# List of joint configurations~%# Array indices from 0 to max match joints from base joint to last joint~%JointConfigMeasured[] joint_config_measured~%uint8 measured_robot_state~%bool tool_activation~%~%================================================================================~%MSG: modrob_workstation/JointConfigMeasured~%# This message describes a joint movement~%float64 joint_angle~%float64 joint_velocity~%float64 joint_acceleration~%float64 joint_torque~%float64 joint_temperature~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotConfigMeasured>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_config_measured) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotConfigMeasured>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotConfigMeasured
    (cl:cons ':joint_config_measured (joint_config_measured msg))
    (cl:cons ':measured_robot_state (measured_robot_state msg))
    (cl:cons ':tool_activation (tool_activation msg))
))
