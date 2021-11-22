; Auto-generated. Do not edit!


(cl:in-package modrob_workstation-msg)


;//! \htmlinclude JointSelection.msg.html

(cl:defclass <JointSelection> (roslisp-msg-protocol:ros-message)
  ((activeJoints
    :reader activeJoints
    :initarg :activeJoints
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass JointSelection (<JointSelection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointSelection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointSelection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_workstation-msg:<JointSelection> is deprecated: use modrob_workstation-msg:JointSelection instead.")))

(cl:ensure-generic-function 'activeJoints-val :lambda-list '(m))
(cl:defmethod activeJoints-val ((m <JointSelection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_workstation-msg:activeJoints-val is deprecated.  Use modrob_workstation-msg:activeJoints instead.")
  (activeJoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointSelection>) ostream)
  "Serializes a message object of type '<JointSelection>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'activeJoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'activeJoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointSelection>) istream)
  "Deserializes a message object of type '<JointSelection>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'activeJoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'activeJoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointSelection>)))
  "Returns string type for a message object of type '<JointSelection>"
  "modrob_workstation/JointSelection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointSelection)))
  "Returns string type for a message object of type 'JointSelection"
  "modrob_workstation/JointSelection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointSelection>)))
  "Returns md5sum for a message object of type '<JointSelection>"
  "13a5be053fe753a9527bbef2b69f5491")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointSelection)))
  "Returns md5sum for a message object of type 'JointSelection"
  "13a5be053fe753a9527bbef2b69f5491")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointSelection>)))
  "Returns full string definition for message of type '<JointSelection>"
  (cl:format cl:nil "bool[] activeJoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointSelection)))
  "Returns full string definition for message of type 'JointSelection"
  (cl:format cl:nil "bool[] activeJoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointSelection>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'activeJoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointSelection>))
  "Converts a ROS message object to a list"
  (cl:list 'JointSelection
    (cl:cons ':activeJoints (activeJoints msg))
))
