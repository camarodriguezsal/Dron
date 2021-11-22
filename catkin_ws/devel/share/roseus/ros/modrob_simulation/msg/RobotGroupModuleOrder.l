;; Auto-generated. Do not edit!


(when (boundp 'modrob_simulation::RobotGroupModuleOrder)
  (if (not (find-package "MODROB_SIMULATION"))
    (make-package "MODROB_SIMULATION"))
  (shadow 'RobotGroupModuleOrder (find-package "MODROB_SIMULATION")))
(unless (find-package "MODROB_SIMULATION::ROBOTGROUPMODULEORDER")
  (make-package "MODROB_SIMULATION::ROBOTGROUPMODULEORDER"))

(in-package "ROS")
;;//! \htmlinclude RobotGroupModuleOrder.msg.html


(defclass modrob_simulation::RobotGroupModuleOrder
  :super ros::object
  :slots (_robots ))

(defmethod modrob_simulation::RobotGroupModuleOrder
  (:init
   (&key
    ((:robots __robots) (let (r) (dotimes (i 0) (push (instance modrob_simulation::RobotModuleOrder :init) r)) r))
    )
   (send-super :init)
   (setq _robots __robots)
   self)
  (:robots
   (&rest __robots)
   (if (keywordp (car __robots))
       (send* _robots __robots)
     (progn
       (if __robots (setq _robots (car __robots)))
       _robots)))
  (:serialization-length
   ()
   (+
    ;; modrob_simulation/RobotModuleOrder[] _robots
    (apply #'+ (send-all _robots :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; modrob_simulation/RobotModuleOrder[] _robots
     (write-long (length _robots) s)
     (dolist (elem _robots)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; modrob_simulation/RobotModuleOrder[] _robots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robots (let (r) (dotimes (i n) (push (instance modrob_simulation::RobotModuleOrder :init) r)) r))
     (dolist (elem- _robots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get modrob_simulation::RobotGroupModuleOrder :md5sum-) "f925c4b27303a14269668a378ac29d76")
(setf (get modrob_simulation::RobotGroupModuleOrder :datatype-) "modrob_simulation/RobotGroupModuleOrder")
(setf (get modrob_simulation::RobotGroupModuleOrder :definition-)
      "# All robots that will be built
RobotModuleOrder[] robots
================================================================================
MSG: modrob_simulation/RobotModuleOrder
# Array indices from 0 to max match joints from base joint to last joint
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



(provide :modrob_simulation/RobotGroupModuleOrder "f925c4b27303a14269668a378ac29d76")


