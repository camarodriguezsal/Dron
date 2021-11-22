; Auto-generated. Do not edit!


(cl:in-package modrob_simulation-msg)


;//! \htmlinclude RobotDescription.msg.html

(cl:defclass <RobotDescription> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector modrob_simulation-msg:JointDescription)
   :initform (cl:make-array 0 :element-type 'modrob_simulation-msg:JointDescription :initial-element (cl:make-instance 'modrob_simulation-msg:JointDescription)))
   (links
    :reader links
    :initarg :links
    :type (cl:vector modrob_simulation-msg:LinkDescription)
   :initform (cl:make-array 0 :element-type 'modrob_simulation-msg:LinkDescription :initial-element (cl:make-instance 'modrob_simulation-msg:LinkDescription)))
   (base_pos
    :reader base_pos
    :initarg :base_pos
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass RobotDescription (<RobotDescription>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotDescription>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotDescription)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_simulation-msg:<RobotDescription> is deprecated: use modrob_simulation-msg:RobotDescription instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:header-val is deprecated.  Use modrob_simulation-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RobotDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:name-val is deprecated.  Use modrob_simulation-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <RobotDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:joints-val is deprecated.  Use modrob_simulation-msg:joints instead.")
  (joints m))

(cl:ensure-generic-function 'links-val :lambda-list '(m))
(cl:defmethod links-val ((m <RobotDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:links-val is deprecated.  Use modrob_simulation-msg:links instead.")
  (links m))

(cl:ensure-generic-function 'base_pos-val :lambda-list '(m))
(cl:defmethod base_pos-val ((m <RobotDescription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:base_pos-val is deprecated.  Use modrob_simulation-msg:base_pos instead.")
  (base_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotDescription>) ostream)
  "Serializes a message object of type '<RobotDescription>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'links))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'links))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_pos) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotDescription>) istream)
  "Deserializes a message object of type '<RobotDescription>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'modrob_simulation-msg:JointDescription))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'links) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'links)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'modrob_simulation-msg:LinkDescription))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_pos) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotDescription>)))
  "Returns string type for a message object of type '<RobotDescription>"
  "modrob_simulation/RobotDescription")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotDescription)))
  "Returns string type for a message object of type 'RobotDescription"
  "modrob_simulation/RobotDescription")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotDescription>)))
  "Returns md5sum for a message object of type '<RobotDescription>"
  "b436ad26e4c0693d458d531e79ef7f82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotDescription)))
  "Returns md5sum for a message object of type 'RobotDescription"
  "b436ad26e4c0693d458d531e79ef7f82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotDescription>)))
  "Returns full string definition for message of type '<RobotDescription>"
  (cl:format cl:nil "Header header~%string name~%JointDescription[] joints~%LinkDescription[] links~%~%# Base position~%geometry_msgs/Vector3 base_pos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: modrob_simulation/JointDescription~%#Documentation on each attribute, see: http://wiki.ros.org/urdf/XML/joint~%~%string name~%string type~%~%#origin~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%#parent/child links~%string parent_link~%string child_link~%~%#axis~%float64 axis_x~%float64 axis_y~%float64 axis_z~%~%#calibration, not needed~%~%#dynamics~%float64 damping~%float64 friction~%~%#limit~%float64 lower~%float64 upper~%float64 effort~%float64 velocity~%~%#motor~%float64 gear_ratio~%~%#mimic, not needed~%~%#safety_controller~%float64 soft_lower_limit~%float64 soft_upper_limit~%float64 k_position~%float64 k_velocity~%~%~%================================================================================~%MSG: modrob_simulation/LinkDescription~%#See: http://wiki.ros.org/urdf/XML/link~%~%~%string name~%~%#inertial~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%float64 mass~%~%float64 intertia_ixx~%float64 intertia_ixy~%float64 intertia_ixz~%float64 intertia_iyy~%float64 intertia_iyz~%float64 intertia_izz~%~%# friction~%float64 mu1~%float64 mu2~%float64 kp~%float64 kd~%~%#visual~%LinkVisual[] link_visual           #List of visual elements~%~%#collision~%LinkCollision[] link_collision     #List of collision elements~%~%================================================================================~%MSG: modrob_simulation/LinkVisual~%#Documentation, see: http://wiki.ros.org/urdf/XML/link~%~%string name~%~%#origin~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%#geometry~%string type     #box, cylinder, sphere~%float64 arg1    # depending on the chosen type either x or radius~%float64 arg2    # depending on the chosen type either y or length~%float64 arg3    # for boxes: z~%~%#material~%string color_name~%float64 color_r #red~%float64 color_g #green~%float64 color_b #blue~%float64 color_a #transparancy~%~%#gazebo material~%string gazebo_material~%~%string texture~%================================================================================~%MSG: modrob_simulation/LinkCollision~%#Documentation, see: http://wiki.ros.org/urdf/XML/link~%~%string name~%~%#origin~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%#geometry~%string type     #box, cylinder, sphere~%float64 arg1    # depending on the chosen type either x or radius~%float64 arg2    # depending on the chosen type either y or length~%float64 arg3    # for boxes: z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotDescription)))
  "Returns full string definition for message of type 'RobotDescription"
  (cl:format cl:nil "Header header~%string name~%JointDescription[] joints~%LinkDescription[] links~%~%# Base position~%geometry_msgs/Vector3 base_pos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: modrob_simulation/JointDescription~%#Documentation on each attribute, see: http://wiki.ros.org/urdf/XML/joint~%~%string name~%string type~%~%#origin~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%#parent/child links~%string parent_link~%string child_link~%~%#axis~%float64 axis_x~%float64 axis_y~%float64 axis_z~%~%#calibration, not needed~%~%#dynamics~%float64 damping~%float64 friction~%~%#limit~%float64 lower~%float64 upper~%float64 effort~%float64 velocity~%~%#motor~%float64 gear_ratio~%~%#mimic, not needed~%~%#safety_controller~%float64 soft_lower_limit~%float64 soft_upper_limit~%float64 k_position~%float64 k_velocity~%~%~%================================================================================~%MSG: modrob_simulation/LinkDescription~%#See: http://wiki.ros.org/urdf/XML/link~%~%~%string name~%~%#inertial~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%float64 mass~%~%float64 intertia_ixx~%float64 intertia_ixy~%float64 intertia_ixz~%float64 intertia_iyy~%float64 intertia_iyz~%float64 intertia_izz~%~%# friction~%float64 mu1~%float64 mu2~%float64 kp~%float64 kd~%~%#visual~%LinkVisual[] link_visual           #List of visual elements~%~%#collision~%LinkCollision[] link_collision     #List of collision elements~%~%================================================================================~%MSG: modrob_simulation/LinkVisual~%#Documentation, see: http://wiki.ros.org/urdf/XML/link~%~%string name~%~%#origin~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%#geometry~%string type     #box, cylinder, sphere~%float64 arg1    # depending on the chosen type either x or radius~%float64 arg2    # depending on the chosen type either y or length~%float64 arg3    # for boxes: z~%~%#material~%string color_name~%float64 color_r #red~%float64 color_g #green~%float64 color_b #blue~%float64 color_a #transparancy~%~%#gazebo material~%string gazebo_material~%~%string texture~%================================================================================~%MSG: modrob_simulation/LinkCollision~%#Documentation, see: http://wiki.ros.org/urdf/XML/link~%~%string name~%~%#origin~%float64 origin_x~%float64 origin_y~%float64 origin_z~%~%float64 origin_r~%float64 origin_p~%float64 origin_yy~%~%#geometry~%string type     #box, cylinder, sphere~%float64 arg1    # depending on the chosen type either x or radius~%float64 arg2    # depending on the chosen type either y or length~%float64 arg3    # for boxes: z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotDescription>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'links) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_pos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotDescription>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotDescription
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':joints (joints msg))
    (cl:cons ':links (links msg))
    (cl:cons ':base_pos (base_pos msg))
))
