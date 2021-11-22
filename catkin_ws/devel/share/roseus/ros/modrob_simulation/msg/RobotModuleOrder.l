;; Auto-generated. Do not edit!


(when (boundp 'modrob_simulation::RobotModuleOrder)
  (if (not (find-package "MODROB_SIMULATION"))
    (make-package "MODROB_SIMULATION"))
  (shadow 'RobotModuleOrder (find-package "MODROB_SIMULATION")))
(unless (find-package "MODROB_SIMULATION::ROBOTMODULEORDER")
  (make-package "MODROB_SIMULATION::ROBOTMODULEORDER"))

(in-package "ROS")
;;//! \htmlinclude RobotModuleOrder.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass modrob_simulation::RobotModuleOrder
  :super ros::object
  :slots (_modules _base_pos ))

(defmethod modrob_simulation::RobotModuleOrder
  (:init
   (&key
    ((:modules __modules) (make-array 0 :initial-element 0 :element-type :integer))
    ((:base_pos __base_pos) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _modules __modules)
   (setq _base_pos __base_pos)
   self)
  (:modules
   (&optional __modules)
   (if __modules (setq _modules __modules)) _modules)
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
    ;; int8[] _modules
    (* 1    (length _modules)) 4
    ;; geometry_msgs/Vector3 _base_pos
    (send _base_pos :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8[] _modules
     (write-long (length _modules) s)
     (dotimes (i (length _modules))
       (write-byte (elt _modules i) s)
       )
     ;; geometry_msgs/Vector3 _base_pos
       (send _base_pos :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8[] _modules
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _modules (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _modules i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _modules i) 127) (setf (elt _modules i) (- (elt _modules i) 256)))
     ))
   ;; geometry_msgs/Vector3 _base_pos
     (send _base_pos :deserialize buf ptr-) (incf ptr- (send _base_pos :serialization-length))
   ;;
   self)
  )

(setf (get modrob_simulation::RobotModuleOrder :md5sum-) "de7e174cc2b4fb52efbd6b6aff72a3aa")
(setf (get modrob_simulation::RobotModuleOrder :datatype-) "modrob_simulation/RobotModuleOrder")
(setf (get modrob_simulation::RobotModuleOrder :definition-)
      "# Array indices from 0 to max match joints from base joint to last joint
int8[] modules

# Base position
geometry_msgs/Vector3 base_pos
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



(provide :modrob_simulation/RobotModuleOrder "de7e174cc2b4fb52efbd6b6aff72a3aa")


