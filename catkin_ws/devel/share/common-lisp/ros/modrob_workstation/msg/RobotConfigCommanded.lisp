; Auto-generated. Do not edit!


(cl:in-package modrob_workstation-msg)


;//! \htmlinclude RobotConfigCommanded.msg.html

(cl:defclass <RobotConfigCommanded> (roslisp-msg-protocol:ros-message)
  ((tool_activation
    :reader tool_activation
    :initarg :tool_activation
    :type cl:boolean
    :initform cl:nil)
   (joint_moves
    :reader joint_moves
    :initarg :joint_moves
    :type (cl:vector modrob_workstation-msg:JointConfigCommanded)
   :initform (cl:make-array 0 :element-type 'modrob_workstation-msg:JointConfigCommanded :initial-element (cl:make-instance 'modrob_workstation-msg:JointConfigCommanded))))
)

(cl:defclass RobotConfigCommanded (<RobotConfigCommanded>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotConfigCommanded>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotConfigCommanded)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_workstation-msg:<RobotConfigCommanded> is deprecated: use modrob_workstation-msg:RobotConfigCommanded instead.")))

(cl:ensure-generic-function 'tool_activation-val :lambda-list '(m))
(cl:defmethod tool_activation-val ((m <RobotConfigCommanded>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_workstation-msg:tool_activation-val is deprecated.  Use modrob_workstation-msg:tool_activation instead.")
  (tool_activation m))

(cl:ensure-generic-function 'joint_moves-val :lambda-list '(m))
(cl:defmethod joint_moves-val ((m <RobotConfigCommanded>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_workstation-msg:joint_moves-val is deprecated.  Use modrob_workstation-msg:joint_moves instead.")
  (joint_moves m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotConfigCommanded>) ostream)
  "Serializes a message object of type '<RobotConfigCommanded>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tool_activation) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_moves))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joint_moves))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotConfigCommanded>) istream)
  "Deserializes a message object of type '<RobotConfigCommanded>"
    (cl:setf (cl:slot-value msg 'tool_activation) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_moves) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_moves)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'modrob_workstation-msg:JointConfigCommanded))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotConfigCommanded>)))
  "Returns string type for a message object of type '<RobotConfigCommanded>"
  "modrob_workstation/RobotConfigCommanded")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotConfigCommanded)))
  "Returns string type for a message object of type 'RobotConfigCommanded"
  "modrob_workstation/RobotConfigCommanded")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotConfigCommanded>)))
  "Returns md5sum for a message object of type '<RobotConfigCommanded>"
  "2bac2996406eb87049714c95e451ba2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotConfigCommanded)))
  "Returns md5sum for a message object of type 'RobotConfigCommanded"
  "2bac2996406eb87049714c95e451ba2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotConfigCommanded>)))
  "Returns full string definition for message of type '<RobotConfigCommanded>"
  (cl:format cl:nil "# This message describes a robot arm movement~%# Array indices from 0 to max match joints from base joint to last joint~%bool tool_activation~%JointConfigCommanded[] joint_moves~%~%~%================================================================================~%MSG: modrob_workstation/JointConfigCommanded~%# This message describes a joint movement~%float64 joint_angle~%float64 joint_velocity~%float64 joint_acceleration~%float64 joint_torque~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotConfigCommanded)))
  "Returns full string definition for message of type 'RobotConfigCommanded"
  (cl:format cl:nil "# This message describes a robot arm movement~%# Array indices from 0 to max match joints from base joint to last joint~%bool tool_activation~%JointConfigCommanded[] joint_moves~%~%~%================================================================================~%MSG: modrob_workstation/JointConfigCommanded~%# This message describes a joint movement~%float64 joint_angle~%float64 joint_velocity~%float64 joint_acceleration~%float64 joint_torque~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotConfigCommanded>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_moves) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotConfigCommanded>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotConfigCommanded
    (cl:cons ':tool_activation (tool_activation msg))
    (cl:cons ':joint_moves (joint_moves msg))
))
