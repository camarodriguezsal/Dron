;; Auto-generated. Do not edit!


(when (boundp 'modrob_workstation::JointSelection)
  (if (not (find-package "MODROB_WORKSTATION"))
    (make-package "MODROB_WORKSTATION"))
  (shadow 'JointSelection (find-package "MODROB_WORKSTATION")))
(unless (find-package "MODROB_WORKSTATION::JOINTSELECTION")
  (make-package "MODROB_WORKSTATION::JOINTSELECTION"))

(in-package "ROS")
;;//! \htmlinclude JointSelection.msg.html


(defclass modrob_workstation::JointSelection
  :super ros::object
  :slots (_activeJoints ))

(defmethod modrob_workstation::JointSelection
  (:init
   (&key
    ((:activeJoints __activeJoints) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _activeJoints __activeJoints)
   self)
  (:activeJoints
   (&optional __activeJoints)
   (if __activeJoints (setq _activeJoints __activeJoints)) _activeJoints)
  (:serialization-length
   ()
   (+
    ;; bool[] _activeJoints
    (* 1    (length _activeJoints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _activeJoints
     (write-long (length _activeJoints) s)
     (dotimes (i (length _activeJoints))
       (if (elt _activeJoints i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _activeJoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _activeJoints (make-list n))
     (dotimes (i n)
     (setf (elt _activeJoints i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get modrob_workstation::JointSelection :md5sum-) "13a5be053fe753a9527bbef2b69f5491")
(setf (get modrob_workstation::JointSelection :datatype-) "modrob_workstation/JointSelection")
(setf (get modrob_workstation::JointSelection :definition-)
      "bool[] activeJoints

")



(provide :modrob_workstation/JointSelection "13a5be053fe753a9527bbef2b69f5491")


