; Auto-generated. Do not edit!


(cl:in-package modrob_simulation-msg)


;//! \htmlinclude Modes.msg.html

(cl:defclass <Modes> (roslisp-msg-protocol:ros-message)
  ((configurable_mode
    :reader configurable_mode
    :initarg :configurable_mode
    :type cl:boolean
    :initform cl:nil)
   (angle_mode
    :reader angle_mode
    :initarg :angle_mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Modes (<Modes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Modes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Modes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_simulation-msg:<Modes> is deprecated: use modrob_simulation-msg:Modes instead.")))

(cl:ensure-generic-function 'configurable_mode-val :lambda-list '(m))
(cl:defmethod configurable_mode-val ((m <Modes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:configurable_mode-val is deprecated.  Use modrob_simulation-msg:configurable_mode instead.")
  (configurable_mode m))

(cl:ensure-generic-function 'angle_mode-val :lambda-list '(m))
(cl:defmethod angle_mode-val ((m <Modes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_simulation-msg:angle_mode-val is deprecated.  Use modrob_simulation-msg:angle_mode instead.")
  (angle_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Modes>) ostream)
  "Serializes a message object of type '<Modes>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'configurable_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'angle_mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Modes>) istream)
  "Deserializes a message object of type '<Modes>"
    (cl:setf (cl:slot-value msg 'configurable_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'angle_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Modes>)))
  "Returns string type for a message object of type '<Modes>"
  "modrob_simulation/Modes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Modes)))
  "Returns string type for a message object of type 'Modes"
  "modrob_simulation/Modes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Modes>)))
  "Returns md5sum for a message object of type '<Modes>"
  "309b86b842890ede800f6b6fd95ff78c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Modes)))
  "Returns md5sum for a message object of type 'Modes"
  "309b86b842890ede800f6b6fd95ff78c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Modes>)))
  "Returns full string definition for message of type '<Modes>"
  (cl:format cl:nil "# this variable declares whether we are inside the configurable state or not~%bool configurable_mode~%# this variable declares wheather torque mode or joint angles. True means we are using joint angles~%bool angle_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Modes)))
  "Returns full string definition for message of type 'Modes"
  (cl:format cl:nil "# this variable declares whether we are inside the configurable state or not~%bool configurable_mode~%# this variable declares wheather torque mode or joint angles. True means we are using joint angles~%bool angle_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Modes>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Modes>))
  "Converts a ROS message object to a list"
  (cl:list 'Modes
    (cl:cons ':configurable_mode (configurable_mode msg))
    (cl:cons ':angle_mode (angle_mode msg))
))
