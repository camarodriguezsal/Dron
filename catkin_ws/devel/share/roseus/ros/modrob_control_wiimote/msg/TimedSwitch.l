;; Auto-generated. Do not edit!


(when (boundp 'modrob_control_wiimote::TimedSwitch)
  (if (not (find-package "MODROB_CONTROL_WIIMOTE"))
    (make-package "MODROB_CONTROL_WIIMOTE"))
  (shadow 'TimedSwitch (find-package "MODROB_CONTROL_WIIMOTE")))
(unless (find-package "MODROB_CONTROL_WIIMOTE::TIMEDSWITCH")
  (make-package "MODROB_CONTROL_WIIMOTE::TIMEDSWITCH"))

(in-package "ROS")
;;//! \htmlinclude TimedSwitch.msg.html


(intern "*ON*" (find-package "MODROB_CONTROL_WIIMOTE::TIMEDSWITCH"))
(shadow '*ON* (find-package "MODROB_CONTROL_WIIMOTE::TIMEDSWITCH"))
(defconstant modrob_control_wiimote::TimedSwitch::*ON* 1)
(intern "*OFF*" (find-package "MODROB_CONTROL_WIIMOTE::TIMEDSWITCH"))
(shadow '*OFF* (find-package "MODROB_CONTROL_WIIMOTE::TIMEDSWITCH"))
(defconstant modrob_control_wiimote::TimedSwitch::*OFF* 0)
(intern "*NO_CHANGE*" (find-package "MODROB_CONTROL_WIIMOTE::TIMEDSWITCH"))
(shadow '*NO_CHANGE* (find-package "MODROB_CONTROL_WIIMOTE::TIMEDSWITCH"))
(defconstant modrob_control_wiimote::TimedSwitch::*NO_CHANGE* -2)
(intern "*REPEAT*" (find-package "MODROB_CONTROL_WIIMOTE::TIMEDSWITCH"))
(shadow '*REPEAT* (find-package "MODROB_CONTROL_WIIMOTE::TIMEDSWITCH"))
(defconstant modrob_control_wiimote::TimedSwitch::*REPEAT* -1)
(intern "*FOREVER*" (find-package "MODROB_CONTROL_WIIMOTE::TIMEDSWITCH"))
(shadow '*FOREVER* (find-package "MODROB_CONTROL_WIIMOTE::TIMEDSWITCH"))
(defconstant modrob_control_wiimote::TimedSwitch::*FOREVER* -1)
(defclass modrob_control_wiimote::TimedSwitch
  :super ros::object
  :slots (_switch_mode _num_cycles _pulse_pattern ))

(defmethod modrob_control_wiimote::TimedSwitch
  (:init
   (&key
    ((:switch_mode __switch_mode) 0)
    ((:num_cycles __num_cycles) 0)
    ((:pulse_pattern __pulse_pattern) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _switch_mode (round __switch_mode))
   (setq _num_cycles (round __num_cycles))
   (setq _pulse_pattern __pulse_pattern)
   self)
  (:switch_mode
   (&optional __switch_mode)
   (if __switch_mode (setq _switch_mode __switch_mode)) _switch_mode)
  (:num_cycles
   (&optional __num_cycles)
   (if __num_cycles (setq _num_cycles __num_cycles)) _num_cycles)
  (:pulse_pattern
   (&optional __pulse_pattern)
   (if __pulse_pattern (setq _pulse_pattern __pulse_pattern)) _pulse_pattern)
  (:serialization-length
   ()
   (+
    ;; int8 _switch_mode
    1
    ;; int32 _num_cycles
    4
    ;; float32[] _pulse_pattern
    (* 4    (length _pulse_pattern)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _switch_mode
       (write-byte _switch_mode s)
     ;; int32 _num_cycles
       (write-long _num_cycles s)
     ;; float32[] _pulse_pattern
     (write-long (length _pulse_pattern) s)
     (dotimes (i (length _pulse_pattern))
       (sys::poke (elt _pulse_pattern i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _switch_mode
     (setq _switch_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _switch_mode 127) (setq _switch_mode (- _switch_mode 256)))
   ;; int32 _num_cycles
     (setq _num_cycles (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _pulse_pattern
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pulse_pattern (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pulse_pattern i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get modrob_control_wiimote::TimedSwitch :md5sum-) "e4c8d9327409cef6066fa6c368032c1e")
(setf (get modrob_control_wiimote::TimedSwitch :datatype-) "modrob_control_wiimote/TimedSwitch")
(setf (get modrob_control_wiimote::TimedSwitch :definition-)
      "# TimedSwitch allows sender to:
#    o turn a switch on,
#    o turn a switch off, and
#    o repeat an on/off pattern forever or for a
#          given number of times.
# Fields (refer to definitions of constants in the definition body):
#     o switch_mode:
#         ON: turn on  (num_cycles and pulse_pattern fields are ignored)
#        OFF: turn off (num_cycles and pulse_pattern fields are ignored)
#  NO_CHANGE: leave LED in its current state
#     REPEAT: repeat an on/off pattern for as long
#             as is indicated in the num_cycles field. The
#             pattern is defined in the pulse_pattern field.
#
#     o num_cycles:
#          n>=0: run the pattern that is defined in pulse_pattern
#                n times.
#          n==FOREVER: run the pattern that is defined in pulse_pattern
#                       until a new TimedSwitch message is sent.              
#
#     o pulse_pattern:
#          A series of time durations in fractions of a second. The
#          first number is the duration for having the switch on.
#          The second number is the duration for which the switch
#          is off. The third is an 'on' period again, etc.
#          A pattern is terminated with the end of the array.
#           
#          Example: [1,1] specifies an on-off sequence of 1 second.               

int8 ON        =  1
int8 OFF       =  0
int8 NO_CHANGE = -2
int8 REPEAT    = -1
int8 FOREVER   = -1

int8 switch_mode
int32 num_cycles
float32[] pulse_pattern

")



(provide :modrob_control_wiimote/TimedSwitch "e4c8d9327409cef6066fa6c368032c1e")


