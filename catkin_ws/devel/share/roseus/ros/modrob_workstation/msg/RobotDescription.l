;; Auto-generated. Do not edit!


(when (boundp 'modrob_workstation::RobotDescription)
  (if (not (find-package "MODROB_WORKSTATION"))
    (make-package "MODROB_WORKSTATION"))
  (shadow 'RobotDescription (find-package "MODROB_WORKSTATION")))
(unless (find-package "MODROB_WORKSTATION::ROBOTDESCRIPTION")
  (make-package "MODROB_WORKSTATION::ROBOTDESCRIPTION"))

(in-package "ROS")
;;//! \htmlinclude RobotDescription.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass modrob_workstation::RobotDescription
  :super ros::object
  :slots (_header _name _joints _links ))

(defmethod modrob_workstation::RobotDescription
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:joints __joints) (let (r) (dotimes (i 0) (push (instance modrob_workstation::JointDescription :init) r)) r))
    ((:links __links) (let (r) (dotimes (i 0) (push (instance modrob_workstation::LinkDescription :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _joints __joints)
   (setq _links __links)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:links
   (&rest __links)
   (if (keywordp (car __links))
       (send* _links __links)
     (progn
       (if __links (setq _links (car __links)))
       _links)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; modrob_workstation/JointDescription[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ;; modrob_workstation/LinkDescription[] _links
    (apply #'+ (send-all _links :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; modrob_workstation/JointDescription[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;; modrob_workstation/LinkDescription[] _links
     (write-long (length _links) s)
     (dolist (elem _links)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; modrob_workstation/JointDescription[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance modrob_workstation::JointDescription :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; modrob_workstation/LinkDescription[] _links
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _links (let (r) (dotimes (i n) (push (instance modrob_workstation::LinkDescription :init) r)) r))
     (dolist (elem- _links)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get modrob_workstation::RobotDescription :md5sum-) "89e5f5879abfbdfe2f33ee583aee272f")
(setf (get modrob_workstation::RobotDescription :datatype-) "modrob_workstation/RobotDescription")
(setf (get modrob_workstation::RobotDescription :definition-)
      "Header header
string name
JointDescription[] joints
LinkDescription[] links



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: modrob_workstation/JointDescription
#Documentation on each attribute, see: http://wiki.ros.org/urdf/XML/joint

string name
string type

#origin
float64 origin_x
float64 origin_y
float64 origin_z

float64 origin_r
float64 origin_p
float64 origin_yy

#parent/child links
string parent_link
string child_link

#axis
float64 axis_x
float64 axis_y
float64 axis_z

#calibration, not needed

#dynamics
float64 damping
float64 friction

#limit
float64 lower
float64 upper
float64 effort
float64 velocity

#mimic, not needed

#safety_controller
float64 soft_lower_limit
float64 soft_upper_limit
float64 k_position
float64 k_velocity


================================================================================
MSG: modrob_workstation/LinkDescription
#See: http://wiki.ros.org/urdf/XML/link


string name

#inertial
float64 origin_x
float64 origin_y
float64 origin_z

float64 origin_r
float64 origin_p
float64 origin_yy

float64 mass

float64 intertia_ixx
float64 intertia_ixy
float64 intertia_ixz
float64 intertia_iyy
float64 intertia_iyz
float64 intertia_izz

#visual
LinkVisual[] link_visual           #List of visual elements

#collision
LinkCollision[] link_collision     #List of collision elements

================================================================================
MSG: modrob_workstation/LinkVisual
#Documentation, see: http://wiki.ros.org/urdf/XML/link

string name

#origin
float64 origin_x
float64 origin_y
float64 origin_z

float64 origin_r
float64 origin_p
float64 origin_yy

#geometry
string type     #box, cylinder, sphere
float64 arg1    # depending on the chosen type either x or radius
float64 arg2    # depending on the chosen type either y or length
float64 arg3    # for boxes: z

#material
string color_name
float64 color_r #red
float64 color_g #green
float64 color_b #blue
float64 color_a #transparancy

string texture
================================================================================
MSG: modrob_workstation/LinkCollision
#Documentation, see: http://wiki.ros.org/urdf/XML/link

string name

#origin
float64 origin_x
float64 origin_y
float64 origin_z

float64 origin_r
float64 origin_p
float64 origin_yy

#geometry
string type     #box, cylinder, sphere
float64 arg1    # depending on the chosen type either x or radius
float64 arg2    # depending on the chosen type either y or length
float64 arg3    # for boxes: z
")



(provide :modrob_workstation/RobotDescription "89e5f5879abfbdfe2f33ee583aee272f")


