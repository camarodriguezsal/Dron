;; Auto-generated. Do not edit!


(when (boundp 'modrob_workstation::JointDescription)
  (if (not (find-package "MODROB_WORKSTATION"))
    (make-package "MODROB_WORKSTATION"))
  (shadow 'JointDescription (find-package "MODROB_WORKSTATION")))
(unless (find-package "MODROB_WORKSTATION::JOINTDESCRIPTION")
  (make-package "MODROB_WORKSTATION::JOINTDESCRIPTION"))

(in-package "ROS")
;;//! \htmlinclude JointDescription.msg.html


(defclass modrob_workstation::JointDescription
  :super ros::object
  :slots (_name _type _origin_x _origin_y _origin_z _origin_r _origin_p _origin_yy _parent_link _child_link _axis_x _axis_y _axis_z _damping _friction _lower _upper _effort _velocity _soft_lower_limit _soft_upper_limit _k_position _k_velocity ))

(defmethod modrob_workstation::JointDescription
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    ((:origin_x __origin_x) 0.0)
    ((:origin_y __origin_y) 0.0)
    ((:origin_z __origin_z) 0.0)
    ((:origin_r __origin_r) 0.0)
    ((:origin_p __origin_p) 0.0)
    ((:origin_yy __origin_yy) 0.0)
    ((:parent_link __parent_link) "")
    ((:child_link __child_link) "")
    ((:axis_x __axis_x) 0.0)
    ((:axis_y __axis_y) 0.0)
    ((:axis_z __axis_z) 0.0)
    ((:damping __damping) 0.0)
    ((:friction __friction) 0.0)
    ((:lower __lower) 0.0)
    ((:upper __upper) 0.0)
    ((:effort __effort) 0.0)
    ((:velocity __velocity) 0.0)
    ((:soft_lower_limit __soft_lower_limit) 0.0)
    ((:soft_upper_limit __soft_upper_limit) 0.0)
    ((:k_position __k_position) 0.0)
    ((:k_velocity __k_velocity) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _origin_x (float __origin_x))
   (setq _origin_y (float __origin_y))
   (setq _origin_z (float __origin_z))
   (setq _origin_r (float __origin_r))
   (setq _origin_p (float __origin_p))
   (setq _origin_yy (float __origin_yy))
   (setq _parent_link (string __parent_link))
   (setq _child_link (string __child_link))
   (setq _axis_x (float __axis_x))
   (setq _axis_y (float __axis_y))
   (setq _axis_z (float __axis_z))
   (setq _damping (float __damping))
   (setq _friction (float __friction))
   (setq _lower (float __lower))
   (setq _upper (float __upper))
   (setq _effort (float __effort))
   (setq _velocity (float __velocity))
   (setq _soft_lower_limit (float __soft_lower_limit))
   (setq _soft_upper_limit (float __soft_upper_limit))
   (setq _k_position (float __k_position))
   (setq _k_velocity (float __k_velocity))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:origin_x
   (&optional __origin_x)
   (if __origin_x (setq _origin_x __origin_x)) _origin_x)
  (:origin_y
   (&optional __origin_y)
   (if __origin_y (setq _origin_y __origin_y)) _origin_y)
  (:origin_z
   (&optional __origin_z)
   (if __origin_z (setq _origin_z __origin_z)) _origin_z)
  (:origin_r
   (&optional __origin_r)
   (if __origin_r (setq _origin_r __origin_r)) _origin_r)
  (:origin_p
   (&optional __origin_p)
   (if __origin_p (setq _origin_p __origin_p)) _origin_p)
  (:origin_yy
   (&optional __origin_yy)
   (if __origin_yy (setq _origin_yy __origin_yy)) _origin_yy)
  (:parent_link
   (&optional __parent_link)
   (if __parent_link (setq _parent_link __parent_link)) _parent_link)
  (:child_link
   (&optional __child_link)
   (if __child_link (setq _child_link __child_link)) _child_link)
  (:axis_x
   (&optional __axis_x)
   (if __axis_x (setq _axis_x __axis_x)) _axis_x)
  (:axis_y
   (&optional __axis_y)
   (if __axis_y (setq _axis_y __axis_y)) _axis_y)
  (:axis_z
   (&optional __axis_z)
   (if __axis_z (setq _axis_z __axis_z)) _axis_z)
  (:damping
   (&optional __damping)
   (if __damping (setq _damping __damping)) _damping)
  (:friction
   (&optional __friction)
   (if __friction (setq _friction __friction)) _friction)
  (:lower
   (&optional __lower)
   (if __lower (setq _lower __lower)) _lower)
  (:upper
   (&optional __upper)
   (if __upper (setq _upper __upper)) _upper)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:soft_lower_limit
   (&optional __soft_lower_limit)
   (if __soft_lower_limit (setq _soft_lower_limit __soft_lower_limit)) _soft_lower_limit)
  (:soft_upper_limit
   (&optional __soft_upper_limit)
   (if __soft_upper_limit (setq _soft_upper_limit __soft_upper_limit)) _soft_upper_limit)
  (:k_position
   (&optional __k_position)
   (if __k_position (setq _k_position __k_position)) _k_position)
  (:k_velocity
   (&optional __k_velocity)
   (if __k_velocity (setq _k_velocity __k_velocity)) _k_velocity)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; float64 _origin_x
    8
    ;; float64 _origin_y
    8
    ;; float64 _origin_z
    8
    ;; float64 _origin_r
    8
    ;; float64 _origin_p
    8
    ;; float64 _origin_yy
    8
    ;; string _parent_link
    4 (length _parent_link)
    ;; string _child_link
    4 (length _child_link)
    ;; float64 _axis_x
    8
    ;; float64 _axis_y
    8
    ;; float64 _axis_z
    8
    ;; float64 _damping
    8
    ;; float64 _friction
    8
    ;; float64 _lower
    8
    ;; float64 _upper
    8
    ;; float64 _effort
    8
    ;; float64 _velocity
    8
    ;; float64 _soft_lower_limit
    8
    ;; float64 _soft_upper_limit
    8
    ;; float64 _k_position
    8
    ;; float64 _k_velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float64 _origin_x
       (sys::poke _origin_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _origin_y
       (sys::poke _origin_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _origin_z
       (sys::poke _origin_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _origin_r
       (sys::poke _origin_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _origin_p
       (sys::poke _origin_p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _origin_yy
       (sys::poke _origin_yy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _parent_link
       (write-long (length _parent_link) s) (princ _parent_link s)
     ;; string _child_link
       (write-long (length _child_link) s) (princ _child_link s)
     ;; float64 _axis_x
       (sys::poke _axis_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _axis_y
       (sys::poke _axis_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _axis_z
       (sys::poke _axis_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _damping
       (sys::poke _damping (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _friction
       (sys::poke _friction (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lower
       (sys::poke _lower (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _upper
       (sys::poke _upper (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _effort
       (sys::poke _effort (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _soft_lower_limit
       (sys::poke _soft_lower_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _soft_upper_limit
       (sys::poke _soft_upper_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k_position
       (sys::poke _k_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k_velocity
       (sys::poke _k_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _origin_x
     (setq _origin_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _origin_y
     (setq _origin_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _origin_z
     (setq _origin_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _origin_r
     (setq _origin_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _origin_p
     (setq _origin_p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _origin_yy
     (setq _origin_yy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _parent_link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent_link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _child_link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _axis_x
     (setq _axis_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _axis_y
     (setq _axis_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _axis_z
     (setq _axis_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _damping
     (setq _damping (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _friction
     (setq _friction (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lower
     (setq _lower (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _upper
     (setq _upper (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _effort
     (setq _effort (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _soft_lower_limit
     (setq _soft_lower_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _soft_upper_limit
     (setq _soft_upper_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k_position
     (setq _k_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k_velocity
     (setq _k_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get modrob_workstation::JointDescription :md5sum-) "89ca2f9be95e85645973f2545078047b")
(setf (get modrob_workstation::JointDescription :datatype-) "modrob_workstation/JointDescription")
(setf (get modrob_workstation::JointDescription :definition-)
      "#Documentation on each attribute, see: http://wiki.ros.org/urdf/XML/joint

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


")



(provide :modrob_workstation/JointDescription "89ca2f9be95e85645973f2545078047b")


