;; Auto-generated. Do not edit!


(when (boundp 'modrob_simulation::RobotDescription)
  (if (not (find-package "MODROB_SIMULATION"))
    (make-package "MODROB_SIMULATION"))
  (shadow 'RobotDescription (find-package "MODROB_SIMULATION")))
(unless (find-package "MODROB_SIMULATION::ROBOTDESCRIPTION")
  (make-package "MODROB_SIMULATION::ROBOTDESCRIPTION"))

(in-package "ROS")
;;//! \htmlinclude RobotDescription.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass modrob_simulation::RobotDescription
  :super ros::object
  :slots (_header _name _joints _links _base_pos ))

(defmethod modrob_simulation::RobotDescription
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:joints __joints) (let (r) (dotimes (i 0) (push (instance modrob_simulation::JointDescription :init) r)) r))
    ((:links __links) (let (r) (dotimes (i 0) (push (instance modrob_simulation::LinkDescription :init) r)) r))
    ((:base_pos __base_pos) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _joints __joints)
   (setq _links __links)
   (setq _base_pos __base_pos)
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
  (:base_pos
   (&rest __base_pos)
   (if (keywordp (car __base_pos))
       (send* _base_pos __base_pos)
     (progn
       (if __base_pos (setq _base_pos (car __base_pos)))
       _base_pos)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; modrob_simulation/JointDescription[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ;; modrob_simulation/LinkDescription[] _links
    (apply #'+ (send-all _links :serialization-length)) 4
    ;; geometry_msgs/Vector3 _base_pos
    (send _base_pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; modrob_simulation/JointDescription[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;; modrob_simulation/LinkDescription[] _links
     (write-long (length _links) s)
     (dolist (elem _links)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3 _base_pos
       (send _base_pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; modrob_simulation/JointDescription[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance modrob_simulation::JointDescription :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; modrob_simulation/LinkDescription[] _links
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _links (let (r) (dotimes (i n) (push (instance modrob_simulation::LinkDescription :init) r)) r))
     (dolist (elem- _links)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3 _base_pos
     (send _base_pos :deserialize buf ptr-) (incf ptr- (send _base_pos :serialization-length))
   ;;
   self)
  )

(setf (get modrob_simulation::RobotDescription :md5sum-) "b436ad26e4c0693d458d531e79ef7f82")
(setf (get modrob_simulation::RobotDescription :datatype-) "modrob_simulation/RobotDescription")
(setf (get modrob_simulation::RobotDescription :definition-)
      "Header header
string name
JointDescription[] joints
LinkDescription[] links

# Base position
geometry_msgs/Vector3 base_pos

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
MSG: modrob_simulation/JointDescription
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

#motor
float64 gear_ratio

#mimic, not needed

#safety_controller
float64 soft_lower_limit
float64 soft_upper_limit
float64 k_position
float64 k_velocity


================================================================================
MSG: modrob_simulation/LinkDescription
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

# friction
float64 mu1
float64 mu2
float64 kp
float64 kd

#visual
LinkVisual[] link_visual           #List of visual elements

#collision
LinkCollision[] link_collision     #List of collision elements

================================================================================
MSG: modrob_simulation/LinkVisual
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

#gazebo material
string gazebo_material

string texture
================================================================================
MSG: modrob_simulation/LinkCollision
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
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :modrob_simulation/RobotDescription "b436ad26e4c0693d458d531e79ef7f82")


