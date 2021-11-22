;; Auto-generated. Do not edit!


(when (boundp 'modrob_workstation::RobotStateCommanded)
  (if (not (find-package "MODROB_WORKSTATION"))
    (make-package "MODROB_WORKSTATION"))
  (shadow 'RobotStateCommanded (find-package "MODROB_WORKSTATION")))
(unless (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED")
  (make-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))

(in-package "ROS")
;;//! \htmlinclude RobotStateCommanded.msg.html


(intern "*OFF*" (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(shadow '*OFF* (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(defconstant modrob_workstation::RobotStateCommanded::*OFF* 0)
(intern "*CONFIGURABLE*" (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(shadow '*CONFIGURABLE* (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(defconstant modrob_workstation::RobotStateCommanded::*CONFIGURABLE* 1)
(intern "*IDLE*" (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(shadow '*IDLE* (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(defconstant modrob_workstation::RobotStateCommanded::*IDLE* 1)
(intern "*ERROR*" (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(shadow '*ERROR* (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(defconstant modrob_workstation::RobotStateCommanded::*ERROR* 2)
(intern "*CONNECTING*" (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(shadow '*CONNECTING* (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(defconstant modrob_workstation::RobotStateCommanded::*CONNECTING* 3)
(intern "*OP_ANGLES*" (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(shadow '*OP_ANGLES* (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(defconstant modrob_workstation::RobotStateCommanded::*OP_ANGLES* 4)
(intern "*OP_TORQUES*" (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(shadow '*OP_TORQUES* (find-package "MODROB_WORKSTATION::ROBOTSTATECOMMANDED"))
(defconstant modrob_workstation::RobotStateCommanded::*OP_TORQUES* 5)
(defclass modrob_workstation::RobotStateCommanded
  :super ros::object
  :slots (_state ))

(defmethod modrob_workstation::RobotStateCommanded
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get modrob_workstation::RobotStateCommanded :md5sum-) "abb393152ce6989fc811f6837e590662")
(setf (get modrob_workstation::RobotStateCommanded :datatype-) "modrob_workstation/RobotStateCommanded")
(setf (get modrob_workstation::RobotStateCommanded :definition-)
      "# this variable declares different states of the robot
uint8 state

uint8 OFF = 0
uint8 CONFIGURABLE = 1
uint8 IDLE = 1
uint8 ERROR = 2
uint8 CONNECTING = 3
uint8 OP_ANGLES = 4
uint8 OP_TORQUES = 5
")



(provide :modrob_workstation/RobotStateCommanded "abb393152ce6989fc811f6837e590662")


