;; Auto-generated. Do not edit!


(when (boundp 'modrob_simulation::JointConfigCommanded)
  (if (not (find-package "MODROB_SIMULATION"))
    (make-package "MODROB_SIMULATION"))
  (shadow 'JointConfigCommanded (find-package "MODROB_SIMULATION")))
(unless (find-package "MODROB_SIMULATION::JOINTCONFIGCOMMANDED")
  (make-package "MODROB_SIMULATION::JOINTCONFIGCOMMANDED"))

(in-package "ROS")
;;//! \htmlinclude JointConfigCommanded.msg.html


(defclass modrob_simulation::JointConfigCommanded
  :super ros::object
  :slots (_joint_angle _joint_velocity _joint_acceleration _joint_torque ))

(defmethod modrob_simulation::JointConfigCommanded
  (:init
   (&key
    ((:joint_angle __joint_angle) 0.0)
    ((:joint_velocity __joint_velocity) 0.0)
    ((:joint_acceleration __joint_acceleration) 0.0)
    ((:joint_torque __joint_torque) 0.0)
    )
   (send-super :init)
   (setq _joint_angle (float __joint_angle))
   (setq _joint_velocity (float __joint_velocity))
   (setq _joint_acceleration (float __joint_acceleration))
   (setq _joint_torque (float __joint_torque))
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
   ;;
   self)
  )

(setf (get modrob_simulation::JointConfigCommanded :md5sum-) "9860cd40cd660e9e43fa6401771d80ff")
(setf (get modrob_simulation::JointConfigCommanded :datatype-) "modrob_simulation/JointConfigCommanded")
(setf (get modrob_simulation::JointConfigCommanded :definition-)
      "# This message describes a joint movement
float64 joint_angle
float64 joint_velocity
float64 joint_acceleration
float64 joint_torque
")



(provide :modrob_simulation/JointConfigCommanded "9860cd40cd660e9e43fa6401771d80ff")


