; Auto-generated. Do not edit!


(cl:in-package modrob_control_wiimote-msg)


;//! \htmlinclude CartVelConfigCommanded.msg.html

(cl:defclass <CartVelConfigCommanded> (roslisp-msg-protocol:ros-message)
  ((twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (tool_activation
    :reader tool_activation
    :initarg :tool_activation
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CartVelConfigCommanded (<CartVelConfigCommanded>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartVelConfigCommanded>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartVelConfigCommanded)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_control_wiimote-msg:<CartVelConfigCommanded> is deprecated: use modrob_control_wiimote-msg:CartVelConfigCommanded instead.")))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <CartVelConfigCommanded>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_control_wiimote-msg:twist-val is deprecated.  Use modrob_control_wiimote-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'tool_activation-val :lambda-list '(m))
(cl:defmethod tool_activation-val ((m <CartVelConfigCommanded>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_control_wiimote-msg:tool_activation-val is deprecated.  Use modrob_control_wiimote-msg:tool_activation instead.")
  (tool_activation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartVelConfigCommanded>) ostream)
  "Serializes a message object of type '<CartVelConfigCommanded>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tool_activation) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartVelConfigCommanded>) istream)
  "Deserializes a message object of type '<CartVelConfigCommanded>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
    (cl:setf (cl:slot-value msg 'tool_activation) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartVelConfigCommanded>)))
  "Returns string type for a message object of type '<CartVelConfigCommanded>"
  "modrob_control_wiimote/CartVelConfigCommanded")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartVelConfigCommanded)))
  "Returns string type for a message object of type 'CartVelConfigCommanded"
  "modrob_control_wiimote/CartVelConfigCommanded")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartVelConfigCommanded>)))
  "Returns md5sum for a message object of type '<CartVelConfigCommanded>"
  "a9a7b1d43792d9710a6cd8b7647f927f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartVelConfigCommanded)))
  "Returns md5sum for a message object of type 'CartVelConfigCommanded"
  "a9a7b1d43792d9710a6cd8b7647f927f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartVelConfigCommanded>)))
  "Returns full string definition for message of type '<CartVelConfigCommanded>"
  (cl:format cl:nil "# This message describes workspace coordinates and tool activation~%geometry_msgs/Twist twist~%bool tool_activation~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartVelConfigCommanded)))
  "Returns full string definition for message of type 'CartVelConfigCommanded"
  (cl:format cl:nil "# This message describes workspace coordinates and tool activation~%geometry_msgs/Twist twist~%bool tool_activation~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartVelConfigCommanded>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartVelConfigCommanded>))
  "Converts a ROS message object to a list"
  (cl:list 'CartVelConfigCommanded
    (cl:cons ':twist (twist msg))
    (cl:cons ':tool_activation (tool_activation msg))
))
