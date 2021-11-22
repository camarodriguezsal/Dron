; Auto-generated. Do not edit!


(cl:in-package modrob_simulation-msg)


;//! \htmlinclude RobotModuleOrder.msg.html

(cl:defclass <RobotModuleOrder> (roslisp-msg-protocol:ros-message)
  ((modules
    :reader modules
    :initarg :modules
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (base_pos
    :reader base_pos
    :initarg :base_pos
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass RobotModuleOrder (<RobotModuleOrder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotModuleOrder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotModuleOrder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_simulation-msg:<RobotModuleOrder> is deprecated: use modrob_simulation-msg:RobotModuleOrder instead.")))

(cl:ensure-generic-function 'modules-val :lambda-list '(m))
(cl:defmethod modules-val ((m <RobotModuleOrder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:modules-val is deprecated.  Use modrob_simulation-msg:modules instead.")
  (modules m))

(cl:ensure-generic-function 'base_pos-val :lambda-list '(m))
(cl:defmethod base_pos-val ((m <RobotModuleOrder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:base_pos-val is deprecated.  Use modrob_simulation-msg:base_pos instead.")
  (base_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotModuleOrder>) ostream)
  "Serializes a message object of type '<RobotModuleOrder>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'modules))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'modules))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotModuleOrder>) istream)
  "Deserializes a message object of type '<RobotModuleOrder>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'modules) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'modules)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotModuleOrder>)))
  "Returns string type for a message object of type '<RobotModuleOrder>"
  "modrob_simulation/RobotModuleOrder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotModuleOrder)))
  "Returns string type for a message object of type 'RobotModuleOrder"
  "modrob_simulation/RobotModuleOrder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotModuleOrder>)))
  "Returns md5sum for a message object of type '<RobotModuleOrder>"
  "de7e174cc2b4fb52efbd6b6aff72a3aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotModuleOrder)))
  "Returns md5sum for a message object of type 'RobotModuleOrder"
  "de7e174cc2b4fb52efbd6b6aff72a3aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotModuleOrder>)))
  "Returns full string definition for message of type '<RobotModuleOrder>"
  (cl:format cl:nil "# Array indices from 0 to max match joints from base joint to last joint~%int8[] modules~%~%# Base position~%geometry_msgs/Vector3 base_pos~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotModuleOrder)))
  "Returns full string definition for message of type 'RobotModuleOrder"
  (cl:format cl:nil "# Array indices from 0 to max match joints from base joint to last joint~%int8[] modules~%~%# Base position~%geometry_msgs/Vector3 base_pos~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotModuleOrder>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'modules) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotModuleOrder>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotModuleOrder
    (cl:cons ':modules (modules msg))
    (cl:cons ':base_pos (base_pos msg))
))
