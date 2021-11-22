;; Auto-generated. Do not edit!


(when (boundp 'motion_planning::Poses)
  (if (not (find-package "MOTION_PLANNING"))
    (make-package "MOTION_PLANNING"))
  (shadow 'Poses (find-package "MOTION_PLANNING")))
(unless (find-package "MOTION_PLANNING::POSES")
  (make-package "MOTION_PLANNING::POSES"))

(in-package "ROS")
;;//! \htmlinclude Poses.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass motion_planning::Poses
  :super ros::object
  :slots (_pose_pick _pose_place ))

(defmethod motion_planning::Poses
  (:init
   (&key
    ((:pose_pick __pose_pick) (instance geometry_msgs::Pose :init))
    ((:pose_place __pose_place) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose_pick __pose_pick)
   (setq _pose_place __pose_place)
   self)
  (:pose_pick
   (&rest __pose_pick)
   (if (keywordp (car __pose_pick))
       (send* _pose_pick __pose_pick)
     (progn
       (if __pose_pick (setq _pose_pick (car __pose_pick)))
       _pose_pick)))
  (:pose_place
   (&rest __pose_place)
   (if (keywordp (car __pose_place))
       (send* _pose_place __pose_place)
     (progn
       (if __pose_place (setq _pose_place (car __pose_place)))
       _pose_place)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose_pick
    (send _pose_pick :serialization-length)
    ;; geometry_msgs/Pose _pose_place
    (send _pose_place :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose_pick
       (send _pose_pick :serialize s)
     ;; geometry_msgs/Pose _pose_place
       (send _pose_place :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose_pick
     (send _pose_pick :deserialize buf ptr-) (incf ptr- (send _pose_pick :serialization-length))
   ;; geometry_msgs/Pose _pose_place
     (send _pose_place :deserialize buf ptr-) (incf ptr- (send _pose_place :serialization-length))
   ;;
   self)
  )

(setf (get motion_planning::Poses :md5sum-) "164987af56d708ea6d17beb94fcb0d2c")
(setf (get motion_planning::Poses :datatype-) "motion_planning/Poses")
(setf (get motion_planning::Poses :definition-)
      "geometry_msgs/Pose pose_pick
geometry_msgs/Pose pose_place

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :motion_planning/Poses "164987af56d708ea6d17beb94fcb0d2c")


