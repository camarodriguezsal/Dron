; Auto-generated. Do not edit!


(cl:in-package modrob_simulation-msg)


;//! \htmlinclude RobotGroupModuleOrder.msg.html

(cl:defclass <RobotGroupModuleOrder> (roslisp-msg-protocol:ros-message)
  ((robots
    :reader robots
    :initarg :robots
    :type (cl:vector modrob_simulation-msg:RobotModuleOrder)
   :initform (cl:make-array 0 :element-type 'modrob_simulation-msg:RobotModuleOrder :initial-element (cl:make-instance 'modrob_simulation-msg:RobotModuleOrder))))
)

(cl:defclass RobotGroupModuleOrder (<RobotGroupModuleOrder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotGroupModuleOrder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotGroupModuleOrder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_simulation-msg:<RobotGroupModuleOrder> is deprecated: use modrob_simulation-msg:RobotGroupModuleOrder instead.")))

(cl:ensure-generic-function 'robots-val :lambda-list '(m))
(cl:defmethod robots-val ((m <RobotGroupModuleOrder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:robots-val is deprecated.  Use modrob_simulation-msg:robots instead.")
  (robots m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotGroupModuleOrder>) ostream)
  "Serializes a message object of type '<RobotGroupModuleOrder>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robots))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotGroupModuleOrder>) istream)
  "Deserializes a message object of type '<RobotGroupModuleOrder>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'modrob_simulation-msg:RobotModuleOrder))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotGroupModuleOrder>)))
  "Returns string type for a message object of type '<RobotGroupModuleOrder>"
  "modrob_simulation/RobotGroupModuleOrder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGroupModuleOrder)))
  "Returns string type for a message object of type 'RobotGroupModuleOrder"
  "modrob_simulation/RobotGroupModuleOrder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotGroupModuleOrder>)))
  "Returns md5sum for a message object of type '<RobotGroupModuleOrder>"
  "f925c4b27303a14269668a378ac29d76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotGroupModuleOrder)))
  "Returns md5sum for a message object of type 'RobotGroupModuleOrder"
  "f925c4b27303a14269668a378ac29d76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotGroupModuleOrder>)))
  "Returns full string definition for message of type '<RobotGroupModuleOrder>"
  (cl:format cl:nil "# All robots that will be built~%RobotModuleOrder[] robots~%================================================================================~%MSG: modrob_simulation/RobotModuleOrder~%# Array indices from 0 to max match joints from base joint to last joint~%int8[] modules~%~%# Base position~%geometry_msgs/Vector3 base_pos~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotGroupModuleOrder)))
  "Returns full string definition for message of type 'RobotGroupModuleOrder"
  (cl:format cl:nil "# All robots that will be built~%RobotModuleOrder[] robots~%================================================================================~%MSG: modrob_simulation/RobotModuleOrder~%# Array indices from 0 to max match joints from base joint to last joint~%int8[] modules~%~%# Base position~%geometry_msgs/Vector3 base_pos~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotGroupModuleOrder>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotGroupModuleOrder>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotGroupModuleOrder
    (cl:cons ':robots (robots msg))
))
