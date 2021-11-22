; Auto-generated. Do not edit!


(cl:in-package modrob_control_kinematics-msg)


;//! \htmlinclude ControlVelocityDesired.msg.html

(cl:defclass <ControlVelocityDesired> (roslisp-msg-protocol:ros-message)
  ((joint_velocities
    :reader joint_velocities
    :initarg :joint_velocities
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (workspace_velocities
    :reader workspace_velocities
    :initarg :workspace_velocities
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (isJointspace
    :reader isJointspace
    :initarg :isJointspace
    :type cl:boolean
    :initform cl:nil)
   (tool_activation
    :reader tool_activation
    :initarg :tool_activation
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ControlVelocityDesired (<ControlVelocityDesired>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlVelocityDesired>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlVelocityDesired)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_control_kinematics-msg:<ControlVelocityDesired> is deprecated: use modrob_control_kinematics-msg:ControlVelocityDesired instead.")))

(cl:ensure-generic-function 'joint_velocities-val :lambda-list '(m))
(cl:defmethod joint_velocities-val ((m <ControlVelocityDesired>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_control_kinematics-msg:joint_velocities-val is deprecated.  Use modrob_control_kinematics-msg:joint_velocities instead.")
  (joint_velocities m))

(cl:ensure-generic-function 'workspace_velocities-val :lambda-list '(m))
(cl:defmethod workspace_velocities-val ((m <ControlVelocityDesired>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_control_kinematics-msg:workspace_velocities-val is deprecated.  Use modrob_control_kinematics-msg:workspace_velocities instead.")
  (workspace_velocities m))

(cl:ensure-generic-function 'isJointspace-val :lambda-list '(m))
(cl:defmethod isJointspace-val ((m <ControlVelocityDesired>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_control_kinematics-msg:isJointspace-val is deprecated.  Use modrob_control_kinematics-msg:isJointspace instead.")
  (isJointspace m))

(cl:ensure-generic-function 'tool_activation-val :lambda-list '(m))
(cl:defmethod tool_activation-val ((m <ControlVelocityDesired>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_control_kinematics-msg:tool_activation-val is deprecated.  Use modrob_control_kinematics-msg:tool_activation instead.")
  (tool_activation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlVelocityDesired>) ostream)
  "Serializes a message object of type '<ControlVelocityDesired>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_velocities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_velocities))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'workspace_velocities) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isJointspace) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tool_activation) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlVelocityDesired>) istream)
  "Deserializes a message object of type '<ControlVelocityDesired>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_velocities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_velocities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'workspace_velocities) istream)
    (cl:setf (cl:slot-value msg 'isJointspace) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'tool_activation) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlVelocityDesired>)))
  "Returns string type for a message object of type '<ControlVelocityDesired>"
  "modrob_control_kinematics/ControlVelocityDesired")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlVelocityDesired)))
  "Returns string type for a message object of type 'ControlVelocityDesired"
  "modrob_control_kinematics/ControlVelocityDesired")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlVelocityDesired>)))
  "Returns md5sum for a message object of type '<ControlVelocityDesired>"
  "9f1126242bb2728989806e997a6c03bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlVelocityDesired)))
  "Returns md5sum for a message object of type 'ControlVelocityDesired"
  "9f1126242bb2728989806e997a6c03bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlVelocityDesired>)))
  "Returns full string definition for message of type '<ControlVelocityDesired>"
  (cl:format cl:nil "# Message containing all posible velocities for Jointspace control and Workspace control and a bool for activating the tool~%# This message should be used to tell the kinematics node the desired velocities coming from a control device~%~%# Joint velocities for joint control~%# Array indices from 0 to max joints starting at the base joint~%float64[] joint_velocities~%~%# Cartesian velocities for workspace control~%geometry_msgs/Twist workspace_velocities~%~%# Boolean to indicate if joint space or workspace data is valid~%bool isJointspace~%~%# Boolean for toolactivation~%bool tool_activation~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlVelocityDesired)))
  "Returns full string definition for message of type 'ControlVelocityDesired"
  (cl:format cl:nil "# Message containing all posible velocities for Jointspace control and Workspace control and a bool for activating the tool~%# This message should be used to tell the kinematics node the desired velocities coming from a control device~%~%# Joint velocities for joint control~%# Array indices from 0 to max joints starting at the base joint~%float64[] joint_velocities~%~%# Cartesian velocities for workspace control~%geometry_msgs/Twist workspace_velocities~%~%# Boolean to indicate if joint space or workspace data is valid~%bool isJointspace~%~%# Boolean for toolactivation~%bool tool_activation~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlVelocityDesired>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_velocities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'workspace_velocities))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlVelocityDesired>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlVelocityDesired
    (cl:cons ':joint_velocities (joint_velocities msg))
    (cl:cons ':workspace_velocities (workspace_velocities msg))
    (cl:cons ':isJointspace (isJointspace msg))
    (cl:cons ':tool_activation (tool_activation msg))
))
