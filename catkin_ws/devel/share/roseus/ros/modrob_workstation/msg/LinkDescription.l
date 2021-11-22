;; Auto-generated. Do not edit!


(when (boundp 'modrob_workstation::LinkDescription)
  (if (not (find-package "MODROB_WORKSTATION"))
    (make-package "MODROB_WORKSTATION"))
  (shadow 'LinkDescription (find-package "MODROB_WORKSTATION")))
(unless (find-package "MODROB_WORKSTATION::LINKDESCRIPTION")
  (make-package "MODROB_WORKSTATION::LINKDESCRIPTION"))

(in-package "ROS")
;;//! \htmlinclude LinkDescription.msg.html


(defclass modrob_workstation::LinkDescription
  :super ros::object
  :slots (_name _origin_x _origin_y _origin_z _origin_r _origin_p _origin_yy _mass _intertia_ixx _intertia_ixy _intertia_ixz _intertia_iyy _intertia_iyz _intertia_izz _link_visual _link_collision ))

(defmethod modrob_workstation::LinkDescription
  (:init
   (&key
    ((:name __name) "")
    ((:origin_x __origin_x) 0.0)
    ((:origin_y __origin_y) 0.0)
    ((:origin_z __origin_z) 0.0)
    ((:origin_r __origin_r) 0.0)
    ((:origin_p __origin_p) 0.0)
    ((:origin_yy __origin_yy) 0.0)
    ((:mass __mass) 0.0)
    ((:intertia_ixx __intertia_ixx) 0.0)
    ((:intertia_ixy __intertia_ixy) 0.0)
    ((:intertia_ixz __intertia_ixz) 0.0)
    ((:intertia_iyy __intertia_iyy) 0.0)
    ((:intertia_iyz __intertia_iyz) 0.0)
    ((:intertia_izz __intertia_izz) 0.0)
    ((:link_visual __link_visual) (let (r) (dotimes (i 0) (push (instance modrob_workstation::LinkVisual :init) r)) r))
    ((:link_collision __link_collision) (let (r) (dotimes (i 0) (push (instance modrob_workstation::LinkCollision :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _origin_x (float __origin_x))
   (setq _origin_y (float __origin_y))
   (setq _origin_z (float __origin_z))
   (setq _origin_r (float __origin_r))
   (setq _origin_p (float __origin_p))
   (setq _origin_yy (float __origin_yy))
   (setq _mass (float __mass))
   (setq _intertia_ixx (float __intertia_ixx))
   (setq _intertia_ixy (float __intertia_ixy))
   (setq _intertia_ixz (float __intertia_ixz))
   (setq _intertia_iyy (float __intertia_iyy))
   (setq _intertia_iyz (float __intertia_iyz))
   (setq _intertia_izz (float __intertia_izz))
   (setq _link_visual __link_visual)
   (setq _link_collision __link_collision)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
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
  (:mass
   (&optional __mass)
   (if __mass (setq _mass __mass)) _mass)
  (:intertia_ixx
   (&optional __intertia_ixx)
   (if __intertia_ixx (setq _intertia_ixx __intertia_ixx)) _intertia_ixx)
  (:intertia_ixy
   (&optional __intertia_ixy)
   (if __intertia_ixy (setq _intertia_ixy __intertia_ixy)) _intertia_ixy)
  (:intertia_ixz
   (&optional __intertia_ixz)
   (if __intertia_ixz (setq _intertia_ixz __intertia_ixz)) _intertia_ixz)
  (:intertia_iyy
   (&optional __intertia_iyy)
   (if __intertia_iyy (setq _intertia_iyy __intertia_iyy)) _intertia_iyy)
  (:intertia_iyz
   (&optional __intertia_iyz)
   (if __intertia_iyz (setq _intertia_iyz __intertia_iyz)) _intertia_iyz)
  (:intertia_izz
   (&optional __intertia_izz)
   (if __intertia_izz (setq _intertia_izz __intertia_izz)) _intertia_izz)
  (:link_visual
   (&rest __link_visual)
   (if (keywordp (car __link_visual))
       (send* _link_visual __link_visual)
     (progn
       (if __link_visual (setq _link_visual (car __link_visual)))
       _link_visual)))
  (:link_collision
   (&rest __link_collision)
   (if (keywordp (car __link_collision))
       (send* _link_collision __link_collision)
     (progn
       (if __link_collision (setq _link_collision (car __link_collision)))
       _link_collision)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
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
    ;; float64 _mass
    8
    ;; float64 _intertia_ixx
    8
    ;; float64 _intertia_ixy
    8
    ;; float64 _intertia_ixz
    8
    ;; float64 _intertia_iyy
    8
    ;; float64 _intertia_iyz
    8
    ;; float64 _intertia_izz
    8
    ;; modrob_workstation/LinkVisual[] _link_visual
    (apply #'+ (send-all _link_visual :serialization-length)) 4
    ;; modrob_workstation/LinkCollision[] _link_collision
    (apply #'+ (send-all _link_collision :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
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
     ;; float64 _mass
       (sys::poke _mass (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _intertia_ixx
       (sys::poke _intertia_ixx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _intertia_ixy
       (sys::poke _intertia_ixy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _intertia_ixz
       (sys::poke _intertia_ixz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _intertia_iyy
       (sys::poke _intertia_iyy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _intertia_iyz
       (sys::poke _intertia_iyz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _intertia_izz
       (sys::poke _intertia_izz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; modrob_workstation/LinkVisual[] _link_visual
     (write-long (length _link_visual) s)
     (dolist (elem _link_visual)
       (send elem :serialize s)
       )
     ;; modrob_workstation/LinkCollision[] _link_collision
     (write-long (length _link_collision) s)
     (dolist (elem _link_collision)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;; float64 _mass
     (setq _mass (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _intertia_ixx
     (setq _intertia_ixx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _intertia_ixy
     (setq _intertia_ixy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _intertia_ixz
     (setq _intertia_ixz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _intertia_iyy
     (setq _intertia_iyy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _intertia_iyz
     (setq _intertia_iyz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _intertia_izz
     (setq _intertia_izz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; modrob_workstation/LinkVisual[] _link_visual
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _link_visual (let (r) (dotimes (i n) (push (instance modrob_workstation::LinkVisual :init) r)) r))
     (dolist (elem- _link_visual)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; modrob_workstation/LinkCollision[] _link_collision
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _link_collision (let (r) (dotimes (i n) (push (instance modrob_workstation::LinkCollision :init) r)) r))
     (dolist (elem- _link_collision)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get modrob_workstation::LinkDescription :md5sum-) "d72565d0e95e131a90ff696d5b4ff17f")
(setf (get modrob_workstation::LinkDescription :datatype-) "modrob_workstation/LinkDescription")
(setf (get modrob_workstation::LinkDescription :definition-)
      "#See: http://wiki.ros.org/urdf/XML/link


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



(provide :modrob_workstation/LinkDescription "d72565d0e95e131a90ff696d5b4ff17f")


