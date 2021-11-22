;; Auto-generated. Do not edit!


(when (boundp 'modrob_workstation::LinkVisual)
  (if (not (find-package "MODROB_WORKSTATION"))
    (make-package "MODROB_WORKSTATION"))
  (shadow 'LinkVisual (find-package "MODROB_WORKSTATION")))
(unless (find-package "MODROB_WORKSTATION::LINKVISUAL")
  (make-package "MODROB_WORKSTATION::LINKVISUAL"))

(in-package "ROS")
;;//! \htmlinclude LinkVisual.msg.html


(defclass modrob_workstation::LinkVisual
  :super ros::object
  :slots (_name _origin_x _origin_y _origin_z _origin_r _origin_p _origin_yy _type _arg1 _arg2 _arg3 _color_name _color_r _color_g _color_b _color_a _texture ))

(defmethod modrob_workstation::LinkVisual
  (:init
   (&key
    ((:name __name) "")
    ((:origin_x __origin_x) 0.0)
    ((:origin_y __origin_y) 0.0)
    ((:origin_z __origin_z) 0.0)
    ((:origin_r __origin_r) 0.0)
    ((:origin_p __origin_p) 0.0)
    ((:origin_yy __origin_yy) 0.0)
    ((:type __type) "")
    ((:arg1 __arg1) 0.0)
    ((:arg2 __arg2) 0.0)
    ((:arg3 __arg3) 0.0)
    ((:color_name __color_name) "")
    ((:color_r __color_r) 0.0)
    ((:color_g __color_g) 0.0)
    ((:color_b __color_b) 0.0)
    ((:color_a __color_a) 0.0)
    ((:texture __texture) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _origin_x (float __origin_x))
   (setq _origin_y (float __origin_y))
   (setq _origin_z (float __origin_z))
   (setq _origin_r (float __origin_r))
   (setq _origin_p (float __origin_p))
   (setq _origin_yy (float __origin_yy))
   (setq _type (string __type))
   (setq _arg1 (float __arg1))
   (setq _arg2 (float __arg2))
   (setq _arg3 (float __arg3))
   (setq _color_name (string __color_name))
   (setq _color_r (float __color_r))
   (setq _color_g (float __color_g))
   (setq _color_b (float __color_b))
   (setq _color_a (float __color_a))
   (setq _texture (string __texture))
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
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:arg1
   (&optional __arg1)
   (if __arg1 (setq _arg1 __arg1)) _arg1)
  (:arg2
   (&optional __arg2)
   (if __arg2 (setq _arg2 __arg2)) _arg2)
  (:arg3
   (&optional __arg3)
   (if __arg3 (setq _arg3 __arg3)) _arg3)
  (:color_name
   (&optional __color_name)
   (if __color_name (setq _color_name __color_name)) _color_name)
  (:color_r
   (&optional __color_r)
   (if __color_r (setq _color_r __color_r)) _color_r)
  (:color_g
   (&optional __color_g)
   (if __color_g (setq _color_g __color_g)) _color_g)
  (:color_b
   (&optional __color_b)
   (if __color_b (setq _color_b __color_b)) _color_b)
  (:color_a
   (&optional __color_a)
   (if __color_a (setq _color_a __color_a)) _color_a)
  (:texture
   (&optional __texture)
   (if __texture (setq _texture __texture)) _texture)
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
    ;; string _type
    4 (length _type)
    ;; float64 _arg1
    8
    ;; float64 _arg2
    8
    ;; float64 _arg3
    8
    ;; string _color_name
    4 (length _color_name)
    ;; float64 _color_r
    8
    ;; float64 _color_g
    8
    ;; float64 _color_b
    8
    ;; float64 _color_a
    8
    ;; string _texture
    4 (length _texture)
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
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float64 _arg1
       (sys::poke _arg1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _arg2
       (sys::poke _arg2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _arg3
       (sys::poke _arg3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _color_name
       (write-long (length _color_name) s) (princ _color_name s)
     ;; float64 _color_r
       (sys::poke _color_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _color_g
       (sys::poke _color_g (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _color_b
       (sys::poke _color_b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _color_a
       (sys::poke _color_a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _texture
       (write-long (length _texture) s) (princ _texture s)
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
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _arg1
     (setq _arg1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _arg2
     (setq _arg2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _arg3
     (setq _arg3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _color_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _color_r
     (setq _color_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _color_g
     (setq _color_g (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _color_b
     (setq _color_b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _color_a
     (setq _color_a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _texture
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _texture (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get modrob_workstation::LinkVisual :md5sum-) "0430b8a9f268ec9b2d7e3df97c5473f4")
(setf (get modrob_workstation::LinkVisual :datatype-) "modrob_workstation/LinkVisual")
(setf (get modrob_workstation::LinkVisual :definition-)
      "#Documentation, see: http://wiki.ros.org/urdf/XML/link

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
")



(provide :modrob_workstation/LinkVisual "0430b8a9f268ec9b2d7e3df97c5473f4")


