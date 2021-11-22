;; Auto-generated. Do not edit!


(when (boundp 'modrob_control_wiimote::CartVelConfigCommanded)
  (if (not (find-package "MODROB_CONTROL_WIIMOTE"))
    (make-package "MODROB_CONTROL_WIIMOTE"))
  (shadow 'CartVelConfigCommanded (find-package "MODROB_CONTROL_WIIMOTE")))
(unless (find-package "MODROB_CONTROL_WIIMOTE::CARTVELCONFIGCOMMANDED")
  (make-package "MODROB_CONTROL_WIIMOTE::CARTVELCONFIGCOMMANDED"))

(in-package "ROS")
;;//! \htmlinclude CartVelConfigCommanded.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass modrob_control_wiimote::CartVelConfigCommanded
  :super ros::object
  :slots (_twist _tool_activation ))

(defmethod modrob_control_wiimote::CartVelConfigCommanded
  (:init
   (&key
    ((:twist __twist) (instance geometry_msgs::Twist :init))
    ((:tool_activation __tool_activation) nil)
    )
   (send-super :init)
   (setq _twist __twist)
   (setq _tool_activation __tool_activation)
   self)
  (:twist
   (&rest __twist)
   (if (keywordp (car __twist))
       (send* _twist __twist)
     (progn
       (if __twist (setq _twist (car __twist)))
       _twist)))
  (:tool_activation
   (&optional __tool_activation)
   (if __tool_activation (setq _tool_activation __tool_activation)) _tool_activation)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _twist
    (send _twist :serialization-length)
    ;; bool _tool_activation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _twist
       (send _twist :serialize s)
     ;; bool _tool_activation
       (if _tool_activation (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _twist
     (send _twist :deserialize buf ptr-) (incf ptr- (send _twist :serialization-length))
   ;; bool _tool_activation
     (setq _tool_activation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get modrob_control_wiimote::CartVelConfigCommanded :md5sum-) "a9a7b1d43792d9710a6cd8b7647f927f")
(setf (get modrob_control_wiimote::CartVelConfigCommanded :datatype-) "modrob_control_wiimote/CartVelConfigCommanded")
(setf (get modrob_control_wiimote::CartVelConfigCommanded :definition-)
      "# This message describes workspace coordinates and tool activation
geometry_msgs/Twist twist
bool tool_activation
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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



(provide :modrob_control_wiimote/CartVelConfigCommanded "a9a7b1d43792d9710a6cd8b7647f927f")


