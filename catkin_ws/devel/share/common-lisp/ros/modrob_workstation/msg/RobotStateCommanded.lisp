; Auto-generated. Do not edit!


(cl:in-package modrob_workstation-msg)


;//! \htmlinclude RobotStateCommanded.msg.html

(cl:defclass <RobotStateCommanded> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RobotStateCommanded (<RobotStateCommanded>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStateCommanded>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStateCommanded)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_workstation-msg:<RobotStateCommanded> is deprecated: use modrob_workstation-msg:RobotStateCommanded instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RobotStateCommanded>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_workstation-msg:state-val is deprecated.  Use modrob_workstation-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobotStateCommanded>)))
    "Constants for message type '<RobotStateCommanded>"
  '((:OFF . 0)
    (:CONFIGURABLE . 1)
    (:IDLE . 1)
    (:ERROR . 2)
    (:CONNECTING . 3)
    (:OP_ANGLES . 4)
    (:OP_TORQUES . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobotStateCommanded)))
    "Constants for message type 'RobotStateCommanded"
  '((:OFF . 0)
    (:CONFIGURABLE . 1)
    (:IDLE . 1)
    (:ERROR . 2)
    (:CONNECTING . 3)
    (:OP_ANGLES . 4)
    (:OP_TORQUES . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStateCommanded>) ostream)
  "Serializes a message object of type '<RobotStateCommanded>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStateCommanded>) istream)
  "Deserializes a message object of type '<RobotStateCommanded>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStateCommanded>)))
  "Returns string type for a message object of type '<RobotStateCommanded>"
  "modrob_workstation/RobotStateCommanded")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStateCommanded)))
  "Returns string type for a message object of type 'RobotStateCommanded"
  "modrob_workstation/RobotStateCommanded")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStateCommanded>)))
  "Returns md5sum for a message object of type '<RobotStateCommanded>"
  "abb393152ce6989fc811f6837e590662")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStateCommanded)))
  "Returns md5sum for a message object of type 'RobotStateCommanded"
  "abb393152ce6989fc811f6837e590662")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStateCommanded>)))
  "Returns full string definition for message of type '<RobotStateCommanded>"
  (cl:format cl:nil "# this variable declares different states of the robot~%uint8 state~%~%uint8 OFF = 0~%uint8 CONFIGURABLE = 1~%uint8 IDLE = 1~%uint8 ERROR = 2~%uint8 CONNECTING = 3~%uint8 OP_ANGLES = 4~%uint8 OP_TORQUES = 5~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStateCommanded)))
  "Returns full string definition for message of type 'RobotStateCommanded"
  (cl:format cl:nil "# this variable declares different states of the robot~%uint8 state~%~%uint8 OFF = 0~%uint8 CONFIGURABLE = 1~%uint8 IDLE = 1~%uint8 ERROR = 2~%uint8 CONNECTING = 3~%uint8 OP_ANGLES = 4~%uint8 OP_TORQUES = 5~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStateCommanded>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStateCommanded>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStateCommanded
    (cl:cons ':state (state msg))
))
