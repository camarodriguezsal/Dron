; Auto-generated. Do not edit!


(cl:in-package modrob_simulation-msg)


;//! \htmlinclude RobotConfigMeasured.msg.html

(cl:defclass <RobotConfigMeasured> (roslisp-msg-protocol:ros-message)
  ((joint_config_measured
    :reader joint_config_measured
    :initarg :joint_config_measured
    :type (cl:vector modrob_simulation-msg:JointConfigMeasured)
   :initform (cl:make-array 0 :element-type 'modrob_simulation-msg:JointConfigMeasured :initial-element (cl:make-instance 'modrob_simulation-msg:JointConfigMeasured))))
)

(cl:defclass RobotConfigMeasured (<RobotConfigMeasured>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotConfigMeasured>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotConfigMeasured)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_simulation-msg:<RobotConfigMeasured> is deprecated: use modrob_simulation-msg:RobotConfigMeasured instead.")))

(cl:ensure-generic-function 'joint_config_measured-val :lambda-list '(m))
(cl:defmethod joint_config_measured-val ((m <RobotConfigMeasured>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:joint_config_measured-val is deprecated.  Use modrob_simulation-msg:joint_config_measured instead.")
  (joint_config_measured m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotConfigMeasured>) ostream)
  "Serializes a message object of type '<RobotConfigMeasured>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_config_measured))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joint_config_measured))
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
    (cl:setf (cl:aref vals i) (cl:make-instance 'modrob_simulation-msg:JointConfigMeasured))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotConfigMeasured>)))
  "Returns string type for a message object of type '<RobotConfigMeasured>"
  "modrob_simulation/RobotConfigMeasured")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotConfigMeasured)))
  "Returns string type for a message object of type 'RobotConfigMeasured"
  "modrob_simulation/RobotConfigMeasured")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotConfigMeasured>)))
  "Returns md5sum for a message object of type '<RobotConfigMeasured>"
  "e893c96cbac958ab455a51b048ce201c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotConfigMeasured)))
  "Returns md5sum for a message object of type 'RobotConfigMeasured"
  "e893c96cbac958ab455a51b048ce201c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotConfigMeasured>)))
  "Returns full string definition for message of type '<RobotConfigMeasured>"
  (cl:format cl:nil "# List of joint configurations~%# Array indices from 0 to max match joints from base joint to last joint~%JointConfigMeasured[] joint_config_measured~%~%================================================================================~%MSG: modrob_simulation/JointConfigMeasured~%# This message describes a joint movement~%~%# The angle the joint is currently at~%float64 joint_angle~%~%# The current velocity of the joint~%float64 joint_velocity~%~%# The acceleration the joint currently experiences~%float64 joint_acceleration~%~%# The torque the joint is delivering~%float64 joint_torque~%~%# The current temperature of the joint~%float64 joint_temperature~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotConfigMeasured)))
  "Returns full string definition for message of type 'RobotConfigMeasured"
  (cl:format cl:nil "# List of joint configurations~%# Array indices from 0 to max match joints from base joint to last joint~%JointConfigMeasured[] joint_config_measured~%~%================================================================================~%MSG: modrob_simulation/JointConfigMeasured~%# This message describes a joint movement~%~%# The angle the joint is currently at~%float64 joint_angle~%~%# The current velocity of the joint~%float64 joint_velocity~%~%# The acceleration the joint currently experiences~%float64 joint_acceleration~%~%# The torque the joint is delivering~%float64 joint_torque~%~%# The current temperature of the joint~%float64 joint_temperature~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotConfigMeasured>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_config_measured) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotConfigMeasured>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotConfigMeasured
    (cl:cons ':joint_config_measured (joint_config_measured msg))
))
