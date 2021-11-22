;; Auto-generated. Do not edit!


(when (boundp 'modrob_workstation::ModuleOrder)
  (if (not (find-package "MODROB_WORKSTATION"))
    (make-package "MODROB_WORKSTATION"))
  (shadow 'ModuleOrder (find-package "MODROB_WORKSTATION")))
(unless (find-package "MODROB_WORKSTATION::MODULEORDER")
  (make-package "MODROB_WORKSTATION::MODULEORDER"))

(in-package "ROS")
;;//! \htmlinclude ModuleOrder.msg.html


(defclass modrob_workstation::ModuleOrder
  :super ros::object
  :slots (_modules ))

(defmethod modrob_workstation::ModuleOrder
  (:init
   (&key
    ((:modules __modules) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _modules __modules)
   self)
  (:modules
   (&optional __modules)
   (if __modules (setq _modules __modules)) _modules)
  (:serialization-length
   ()
   (+
    ;; int8[] _modules
    (* 1    (length _modules)) 4
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
   ;;
   self)
  )

(setf (get modrob_workstation::ModuleOrder :md5sum-) "62d9f847abb87d21d9ef47db615bf722")
(setf (get modrob_workstation::ModuleOrder :datatype-) "modrob_workstation/ModuleOrder")
(setf (get modrob_workstation::ModuleOrder :definition-)
      "# Array indices from 0 to max match joints from base joint to last joint
int8[] modules
")



(provide :modrob_workstation/ModuleOrder "62d9f847abb87d21d9ef47db615bf722")


