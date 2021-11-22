; Auto-generated. Do not edit!


(cl:in-package motion_planning-msg)


;//! \htmlinclude Poses.msg.html

(cl:defclass <Poses> (roslisp-msg-protocol:ros-message)
  ((pose_pick
    :reader pose_pick
    :initarg :pose_pick
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (pose_place
    :reader pose_place
    :initarg :pose_place
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Poses (<Poses>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Poses>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Poses)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_planning-msg:<Poses> is deprecated: use motion_planning-msg:Poses instead.")))

(cl:ensure-generic-function 'pose_pick-val :lambda-list '(m))
(cl:defmethod pose_pick-val ((m <Poses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:pose_pick-val is deprecated.  Use motion_planning-msg:pose_pick instead.")
  (pose_pick m))

(cl:ensure-generic-function 'pose_place-val :lambda-list '(m))
(cl:defmethod pose_place-val ((m <Poses>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_planning-msg:pose_place-val is deprecated.  Use motion_planning-msg:pose_place instead.")
  (pose_place m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Poses>) ostream)
  "Serializes a message object of type '<Poses>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_pick) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_place) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Poses>) istream)
  "Deserializes a message object of type '<Poses>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_pick) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_place) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Poses>)))
  "Returns string type for a message object of type '<Poses>"
  "motion_planning/Poses")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Poses)))
  "Returns string type for a message object of type 'Poses"
  "motion_planning/Poses")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Poses>)))
  "Returns md5sum for a message object of type '<Poses>"
  "164987af56d708ea6d17beb94fcb0d2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Poses)))
  "Returns md5sum for a message object of type 'Poses"
  "164987af56d708ea6d17beb94fcb0d2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Poses>)))
  "Returns full string definition for message of type '<Poses>"
  (cl:format cl:nil "geometry_msgs/Pose pose_pick~%geometry_msgs/Pose pose_place~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Poses)))
  "Returns full string definition for message of type 'Poses"
  (cl:format cl:nil "geometry_msgs/Pose pose_pick~%geometry_msgs/Pose pose_place~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Poses>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_pick))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_place))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Poses>))
  "Converts a ROS message object to a list"
  (cl:list 'Poses
    (cl:cons ':pose_pick (pose_pick msg))
    (cl:cons ':pose_place (pose_place msg))
))
