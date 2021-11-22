; Auto-generated. Do not edit!


(cl:in-package modrob_workstation-msg)


;//! \htmlinclude ModuleOrder.msg.html

(cl:defclass <ModuleOrder> (roslisp-msg-protocol:ros-message)
  ((modules
    :reader modules
    :initarg :modules
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ModuleOrder (<ModuleOrder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleOrder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleOrder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name modrob_workstation-msg:<ModuleOrder> is deprecated: use modrob_workstation-msg:ModuleOrder instead.")))

(cl:ensure-generic-function 'modules-val :lambda-list '(m))
(cl:defmethod modules-val ((m <ModuleOrder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader modrob_workstation-msg:modules-val is deprecated.  Use modrob_workstation-msg:modules instead.")
  (modules m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleOrder>) ostream)
  "Serializes a message object of type '<ModuleOrder>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'modules))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'modules))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleOrder>) istream)
  "Deserializes a message object of type '<ModuleOrder>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleOrder>)))
  "Returns string type for a message object of type '<ModuleOrder>"
  "modrob_workstation/ModuleOrder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleOrder)))
  "Returns string type for a message object of type 'ModuleOrder"
  "modrob_workstation/ModuleOrder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleOrder>)))
  "Returns md5sum for a message object of type '<ModuleOrder>"
  "62d9f847abb87d21d9ef47db615bf722")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleOrder)))
  "Returns md5sum for a message object of type 'ModuleOrder"
  "62d9f847abb87d21d9ef47db615bf722")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleOrder>)))
  "Returns full string definition for message of type '<ModuleOrder>"
  (cl:format cl:nil "# Array indices from 0 to max match joints from base joint to last joint~%int8[] modules~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleOrder)))
  "Returns full string definition for message of type 'ModuleOrder"
  (cl:format cl:nil "# Array indices from 0 to max match joints from base joint to last joint~%int8[] modules~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleOrder>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'modules) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleOrder>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleOrder
    (cl:cons ':modules (modules msg))
))
