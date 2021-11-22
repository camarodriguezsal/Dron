;; Auto-generated. Do not edit!


(when (boundp 'modrob_simulation::JointConfigMeasured)
  (if (not (find-package "MODROB_SIMULATION"))
    (make-package "MODROB_SIMULATION"))
  (shadow 'JointConfigMeasured (find-package "MODROB_SIMULATION")))
(unless (find-package "MODROB_SIMULATION::JOINTCONFIGMEASURED")
  (make-package "MODROB_SIMULATION::JOINTCONFIGMEASURED"))

(in-package "ROS")
;;//! \htmlinclude JointConfigMeasured.msg.html


(defclass modrob_simulation::JointConfigMeasured
  :super ros::object
  :slots (_joint_angle _joint_velocity _joint_acceleration _joint_torque _joint_temperature ))

(defmethod modrob_simulation::JointConfigMeasured
  (:init
   (&key
    ((:joint_angle __joint_angle) 0.0)
    ((:joint_velocity __joint_velocity) 0.0)
    ((:joint_acceleration __joint_acceleration) 0.0)
    ((:joint_torque __joint_torque) 0.0)
    ((:joint_temperature __joint_temperature) 0.0)
    )
   (send-super :init)
   (setq _joint_angle (float __joint_angle))
   (setq _joint_velocity (float __joint_velocity))
   (setq _joint_acceleration (float __joint_acceleration))
   (setq _joint_torque (float __joint_torque))
   (setq _joint_temperature (float __joint_temperature))
   self)
  (:joint_angle
   (&optional __joint_angle)
   (if __joint_angle (setq _joint_angle __joint_angle)) _joint_angle)
  (:joint_velocity
   (&optional __joint_velocity)
   (if __joint_velocity (setq _joint_velocity __joint_velocity)) _joint_velocity)
  (:joint_acceleration
   (&optional __joint_acceleration)
   (if __joint_acceleration (setq _joint_acceleration __joint_acceleration)) _joint_acceleration)
  (:joint_torque
   (&optional __joint_torque)
   (if __joint_torque (setq _joint_torque __joint_torque)) _joint_torque)
  (:joint_temperature
   (&optional __joint_temperature)
   (if __joint_temperature (setq _joint_temperature __joint_temperature)) _joint_temperature)
  (:serialization-length
   ()
   (+
    ;; float64 _joint_angle
    8
    ;; float64 _joint_velocity
    8
    ;; float64 _joint_acceleration
    8
    ;; float64 _joint_torque
    8
    ;; float64 _joint_temperature
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _joint_angle
       (sys::poke _joint_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_velocity
       (sys::poke _joint_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_acceleration
       (sys::poke _joint_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_torque
       (sys::poke _joint_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint_temperature
       (sys::poke _joint_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _joint_angle
     (setq _joint_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_velocity
     (setq _joint_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_acceleration
     (setq _joint_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_torque
     (setq _joint_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint_temperature
     (setq _joint_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get modrob_simulation::JointConfigMeasured :md5sum-) "496f803b6910541253167e93f432014e")
(setf (get modrob_simulation::JointConfigMeasured :datatype-) "modrob_simulation/JointConfigMeasured")
(setf (get modrob_simulation::JointConfigMeasured :definition-)
      "# This message describes a joint movement

# The angle the joint is currently at
float64 joint_angle

# The current velocity of the joint
float64 joint_velocity

# The acceleration the joint currently experiences
float64 joint_acceleration

# The torque the joint is delivering
float64 joint_torque

# The current temperature of the joint
float64 joint_temperature
")



(provide :modrob_simulation/JointConfigMeasured "496f803b6910541253167e93f432014e")


