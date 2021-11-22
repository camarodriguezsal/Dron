;; Auto-generated. Do not edit!


(when (boundp 'modrob_workstation::LinkCollision)
  (if (not (find-package "MODROB_WORKSTATION"))
    (make-package "MODROB_WORKSTATION"))
  (shadow 'LinkCollision (find-package "MODROB_WORKSTATION")))
(unless (find-package "MODROB_WORKSTATION::LINKCOLLISION")
  (make-package "MODROB_WORKSTATION::LINKCOLLISION"))

(in-package "ROS")
;;//! \htmlinclude LinkCollision.msg.html


(defclass modrob_workstation::LinkCollision
  :super ros::object
  :slots (_name _origin_x _origin_y _origin_z _origin_r _origin_p _origin_yy _type _arg1 _arg2 _arg3 ))

(defmethod modrob_workstation::LinkCollision
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
   ;;
   self)
  )

(setf (get modrob_workstation::LinkCollision :md5sum-) "d26543081054487ac88f8ee0543c0fe8")
(setf (get modrob_workstation::LinkCollision :datatype-) "modrob_workstation/LinkCollision")
(setf (get modrob_workstation::LinkCollision :definition-)
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
")



(provide :modrob_workstation/LinkCollision "d26543081054487ac88f8ee0543c0fe8")


