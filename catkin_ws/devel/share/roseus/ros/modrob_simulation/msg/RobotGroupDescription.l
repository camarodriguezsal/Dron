;; Auto-generated. Do not edit!


(when (boundp 'modrob_simulation::RobotGroupDescription)
  (if (not (find-package "MODROB_SIMULATION"))
    (make-package "MODROB_SIMULATION"))
  (shadow 'RobotGroupDescription (find-package "MODROB_SIMULATION")))
(unless (find-package "MODROB_SIMULATION::ROBOTGROUPDESCRIPTION")
  (make-package "MODROB_SIMULATION::ROBOTGROUPDESCRIPTION"))

(in-package "ROS")
;;//! \htmlinclude RobotGroupDescription.msg.html


(defclass modrob_simulation::RobotGroupDescription
  :super ros::object
  :slots (_descriptions ))

(defmethod modrob_simulation::RobotGroupDescription
  (:init
   (&key
    ((:descriptions __descriptions) (let (r) (dotimes (i 0) (push (instance modrob_simulation::RobotDescription :init) r)) r))
    )
   (send-super :init)
   (setq _descriptions __descriptions)
   self)
  (:descriptions
   (&rest __descriptions)
   (if (keywordp (car __descriptions))
       (send* _descriptions __descriptions)
     (progn
       (if __descriptions (setq _descriptions (car __descriptions)))
       _descriptions)))
  (:serialization-length
   ()
   (+
    ;; modrob_simulation/RobotDescription[] _descriptions
    (apply #'+ (send-all _descriptions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; modrob_simulation/RobotDescription[] _descriptions
     (write-long (length _descriptions) s)
     (dolist (elem _descriptions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; modrob_simulation/RobotDescription[] _descriptions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _descriptions (let (r) (dotimes (i n) (push (instance modrob_simulation::RobotDescription :init) r)) r))
     (dolist (elem- _descriptions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get modrob_simulation::RobotGroupDescription :md5sum-) "7e03bd3462dfb8b3611235b3a1ebdf08")
(setf (get modrob_simulation::RobotGroupDescription :datatype-) "modrob_simulation/RobotGroupDescription")
(setf (get modrob_simulation::RobotGroupDescription :definition-)
      "# The decriptions of all received robots
RobotDescription[] descriptions
================================================================================
MSG: modrob_simulation/RobotDescription
Header header
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



(provide :modrob_simulation/RobotGroupDescription "7e03bd3462dfb8b3611235b3a1ebdf08")


