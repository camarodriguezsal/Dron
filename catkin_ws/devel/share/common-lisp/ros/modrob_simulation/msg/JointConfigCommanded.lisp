; Auto-generated. Do not edit!


(cl:in-package modrob_simulation-msg)


;//! \htmlinclude JointConfigCommanded.msg.html

(cl:defclass <JointConfigCommanded> (roslisp-msg-protocol:ros-message)
  ((joint_angle
    :reader joint_angle
    :initarg :joint_angle
    :type cl:float
    :initform 0.0)
   (joint_velocity
    :reader joint_velocity
    :initarg :joint_velocity
    :type cl:float
    :initform 0.0)
   (joint_acceleration
    :reader joint_acceleration
    :initarg :joint_acceleration
    :type cl:float
    :initform 0.0)
   (joint_torque
    :reader joint_torque
    :initarg :joint_torque
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointConfigCommanded (<JointConfigCommanded>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointConfigCommanded>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointConfigCommanded)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_simulation-msg:<JointConfigCommanded> is deprecated: use modrob_simulation-msg:JointConfigCommanded instead.")))

(cl:ensure-generic-function 'joint_angle-val :lambda-list '(m))
(cl:defmethod joint_angle-val ((m <JointConfigCommanded>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:joint_angle-val is deprecated.  Use modrob_simulation-msg:joint_angle instead.")
  (joint_angle m))

(cl:ensure-generic-function 'joint_velocity-val :lambda-list '(m))
(cl:defmethod joint_velocity-val ((m <JointConfigCommanded>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:joint_velocity-val is deprecated.  Use modrob_simulation-msg:joint_velocity instead.")
  (joint_velocity m))

(cl:ensure-generic-function 'joint_acceleration-val :lambda-list '(m))
(cl:defmethod joint_acceleration-val ((m <JointConfigCommanded>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:joint_acceleration-val is deprecated.  Use modrob_simulation-msg:joint_acceleration instead.")
  (joint_acceleration m))

(cl:ensure-generic-function 'joint_torque-val :lambda-list '(m))
(cl:defmethod joint_torque-val ((m <JointConfigCommanded>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:joint_torque-val is deprecated.  Use modrob_simulation-msg:joint_torque instead.")
  (joint_torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointConfigCommanded>) ostream)
  "Serializes a message object of type '<JointConfigCommanded>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointConfigCommanded>) istream)
  "Deserializes a message object of type '<JointConfigCommanded>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_acceleration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_torque) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointConfigCommanded>)))
  "Returns string type for a message object of type '<JointConfigCommanded>"
  "modrob_simulation/JointConfigCommanded")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointConfigCommanded)))
  "Returns string type for a message object of type 'JointConfigCommanded"
  "modrob_simulation/JointConfigCommanded")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointConfigCommanded>)))
  "Returns md5sum for a message object of type '<JointConfigCommanded>"
  "9860cd40cd660e9e43fa6401771d80ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointConfigCommanded)))
  "Returns md5sum for a message object of type 'JointConfigCommanded"
  "9860cd40cd660e9e43fa6401771d80ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointConfigCommanded>)))
  "Returns full string definition for message of type '<JointConfigCommanded>"
  (cl:format cl:nil "# This message describes a joint movement~%float64 joint_angle~%float64 joint_velocity~%float64 joint_acceleration~%float64 joint_torque~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointConfigCommanded)))
  "Returns full string definition for message of type 'JointConfigCommanded"
  (cl:format cl:nil "# This message describes a joint movement~%float64 joint_angle~%float64 joint_velocity~%float64 joint_acceleration~%float64 joint_torque~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointConfigCommanded>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointConfigCommanded>))
  "Converts a ROS message object to a list"
  (cl:list 'JointConfigCommanded
    (cl:cons ':joint_angle (joint_angle msg))
    (cl:cons ':joint_velocity (joint_velocity msg))
    (cl:cons ':joint_acceleration (joint_acceleration msg))
    (cl:cons ':joint_torque (joint_torque msg))
))
