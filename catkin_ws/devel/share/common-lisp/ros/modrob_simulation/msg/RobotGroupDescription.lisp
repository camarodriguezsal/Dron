; Auto-generated. Do not edit!


(cl:in-package modrob_simulation-msg)


;//! \htmlinclude RobotGroupDescription.msg.html

(cl:defclass <RobotGroupDescription> (roslisp-msg-protocol:ros-message)
  ((descriptions
    :reader descriptions
    :initarg :descriptions
    :type (cl:vector modrob_simulation-msg:RobotDescription)
   :initform (cl:make-array 0 :element-type 'modrob_simulation-msg:RobotDescription :initial-element (cl:make-instance 'modrob_simulation-msg:RobotDescription))))
)

(cl:defclass RobotGroupDescription (<RobotGroupDescription>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotGroupDescription>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotGroupDescription)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_simulation-msg:<RobotGroupDescription> is deprecated: use modrob_simulation-msg:RobotGroupDescription instead.")))

(cl:ensure-generic-function 'descriptions-val :lambda-list '(m))
(cl:defmethod descriptions-val ((m <RobotGroupDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:descriptions-val is deprecated.  Use modrob_simulation-msg:descriptions instead.")
  (descriptions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotGroupDescription>) ostream)
  "Serializes a message object of type '<RobotGroupDescription>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'descriptions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'descriptions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotGroupDescription>) istream)
  "Deserializes a message object of type '<RobotGroupDescription>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'descriptions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'descriptions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'modrob_simulation-msg:RobotDescription))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotGroupDescription>)))
  "Returns string type for a message object of type '<RobotGroupDescription>"
  "modrob_simulation/RobotGroupDescription")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGroupDescription)))
  "Returns string type for a message object of type 'RobotGroupDescription"
  "modrob_simulation/RobotGroupDescription")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotGroupDescription>)))
  "Returns md5sum for a message object of type '<RobotGroupDescription>"
  "7e03bd3462dfb8b3611235b3a1ebdf08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotGroupDescription)))
  "Returns md5sum for a message object of type 'RobotGroupDescription"
  "7e03bd3462dfb8b3611235b3a1ebdf08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotGroupDescription>)))
  "Returns full string definition for message of type '<RobotGroupDescription>"
  (cl:format cl:nil "# The decriptions of all received robots~%RobotDescription[] descriptions~%================================================================================~%MSG: modrob_simulation/RobotDescription~%Header header~%string name~%JointDescription[] joints~%LinkDescription[] links~%~%# Base position~%geometry_msgs/Vector3 base_pos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: modrob_simulation/JointDescription~%#Documentation on each attribute, see: http://wiki.ros.org/urdf/XML/joint~%~%string name~%string type~%~%#origin~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%#parent/child links~%string parent_link~%string child_link~%~%#axis~%float64 axis_x~%float64 axis_y~%float64 axis_z~%~%#calibration, not needed~%~%#dynamics~%float64 damping~%float64 friction~%~%#limit~%float64 lower~%float64 upper~%float64 effort~%float64 velocity~%~%#motor~%float64 gear_ratio~%~%#mimic, not needed~%~%#safety_controller~%float64 soft_lower_limit~%float64 soft_upper_limit~%float64 k_position~%float64 k_velocity~%~%~%================================================================================~%MSG: modrob_simulation/LinkDescription~%#See: http://wiki.ros.org/urdf/XML/link~%~%~%string name~%~%#inertial~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%float64 mass~%~%float64 intertia_ixx~%float64 intertia_ixy~%float64 intertia_ixz~%float64 intertia_iyy~%float64 intertia_iyz~%float64 intertia_izz~%~%# friction~%float64 mu1~%float64 mu2~%float64 kp~%float64 kd~%~%#visual~%LinkVisual[] link_visual           #List of visual elements~%~%#collision~%LinkCollision[] link_collision     #List of collision elements~%~%================================================================================~%MSG: modrob_simulation/LinkVisual~%#Documentation, see: http://wiki.ros.org/urdf/XML/link~%~%string name~%~%#origin~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%#geometry~%string type     #box, cylinder, sphere~%float64 arg1    # depending on the chosen type either x or radius~%float64 arg2    # depending on the chosen type either y or length~%float64 arg3    # for boxes: z~%~%#material~%string color_name~%float64 color_r #red~%float64 color_g #green~%float64 color_b #blue~%float64 color_a #transparancy~%~%#gazebo material~%string gazebo_material~%~%string texture~%================================================================================~%MSG: modrob_simulation/LinkCollision~%#Documentation, see: http://wiki.ros.org/urdf/XML/link~%~%string name~%~%#origin~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%#geometry~%string type     #box, cylinder, sphere~%float64 arg1    # depending on the chosen type either x or radius~%float64 arg2    # depending on the chosen type either y or length~%float64 arg3    # for boxes: z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotGroupDescription)))
  "Returns full string definition for message of type 'RobotGroupDescription"
  (cl:format cl:nil "# The decriptions of all received robots~%RobotDescription[] descriptions~%================================================================================~%MSG: modrob_simulation/RobotDescription~%Header header~%string name~%JointDescription[] joints~%LinkDescription[] links~%~%# Base position~%geometry_msgs/Vector3 base_pos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: modrob_simulation/JointDescription~%#Documentation on each attribute, see: http://wiki.ros.org/urdf/XML/joint~%~%string name~%string type~%~%#origin~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%#parent/child links~%string parent_link~%string child_link~%~%#axis~%float64 axis_x~%float64 axis_y~%float64 axis_z~%~%#calibration, not needed~%~%#dynamics~%float64 damping~%float64 friction~%~%#limit~%float64 lower~%float64 upper~%float64 effort~%float64 velocity~%~%#motor~%float64 gear_ratio~%~%#mimic, not needed~%~%#safety_controller~%float64 soft_lower_limit~%float64 soft_upper_limit~%float64 k_position~%float64 k_velocity~%~%~%================================================================================~%MSG: modrob_simulation/LinkDescription~%#See: http://wiki.ros.org/urdf/XML/link~%~%~%string name~%~%#inertial~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%float64 mass~%~%float64 intertia_ixx~%float64 intertia_ixy~%float64 intertia_ixz~%float64 intertia_iyy~%float64 intertia_iyz~%float64 intertia_izz~%~%# friction~%float64 mu1~%float64 mu2~%float64 kp~%float64 kd~%~%#visual~%LinkVisual[] link_visual           #List of visual elements~%~%#collision~%LinkCollision[] link_collision     #List of collision elements~%~%================================================================================~%MSG: modrob_simulation/LinkVisual~%#Documentation, see: http://wiki.ros.org/urdf/XML/link~%~%string name~%~%#origin~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%#geometry~%string type     #box, cylinder, sphere~%float64 arg1    # depending on the chosen type either x or radius~%float64 arg2    # depending on the chosen type either y or length~%float64 arg3    # for boxes: z~%~%#material~%string color_name~%float64 color_r #red~%float64 color_g #green~%float64 color_b #blue~%float64 color_a #transparancy~%~%#gazebo material~%string gazebo_material~%~%string texture~%================================================================================~%MSG: modrob_simulation/LinkCollision~%#Documentation, see: http://wiki.ros.org/urdf/XML/link~%~%string name~%~%#origin~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%#geometry~%string type     #box, cylinder, sphere~%float64 arg1    # depending on the chosen type either x or radius~%float64 arg2    # depending on the chosen type either y or length~%float64 arg3    # for boxes: z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotGroupDescription>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'descriptions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotGroupDescription>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotGroupDescription
    (cl:cons ':descriptions (descriptions msg))
))
