# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from modrob_simulation/RobotGroupDescription.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import modrob_simulation.msg
import std_msgs.msg

class RobotGroupDescription(genpy.Message):
  _md5sum = "7e03bd3462dfb8b3611235b3a1ebdf08"
  _type = "modrob_simulation/RobotGroupDescription"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# The decriptions of all received robots
RobotDescription[] descriptions
================================================================================
MSG: modrob_simulation/RobotDescription
Header header
string name
JointDescription[] joints
LinkDescription[] links

# Base position
geometry_msgs/Vector3 base_pos

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: modrob_simulation/JointDescription
#Documentation on each attribute, see: http://wiki.ros.org/urdf/XML/joint

string name
string type

#origin
float64 origin_x
float64 origin_y
float64 origin_z

float64 origin_r
float64 origin_p
float64 origin_yy

#parent/child links
string parent_link
string child_link

#axis
float64 axis_x
float64 axis_y
float64 axis_z

#calibration, not needed

#dynamics
float64 damping
float64 friction

#limit
float64 lower
float64 upper
float64 effort
float64 velocity

#motor
float64 gear_ratio

#mimic, not needed

#safety_controller
float64 soft_lower_limit
float64 soft_upper_limit
float64 k_position
float64 k_velocity


================================================================================
MSG: modrob_simulation/LinkDescription
#See: http://wiki.ros.org/urdf/XML/link


string name

#inertial
float64 origin_x
float64 origin_y
float64 origin_z

float64 origin_r
float64 origin_p
float64 origin_yy

float64 mass

float64 intertia_ixx
float64 intertia_ixy
float64 intertia_ixz
float64 intertia_iyy
float64 intertia_iyz
float64 intertia_izz

# friction
float64 mu1
float64 mu2
float64 kp
float64 kd

#visual
LinkVisual[] link_visual           #List of visual elements

#collision
LinkCollision[] link_collision     #List of collision elements

================================================================================
MSG: modrob_simulation/LinkVisual
#Documentation, see: http://wiki.ros.org/urdf/XML/link

string name

#origin
float64 origin_x
float64 origin_y
float64 origin_z

float64 origin_r
float64 origin_p
float64 origin_yy

#geometry
string type     #box, cylinder, sphere
float64 arg1    # depending on the chosen type either x or radius
float64 arg2    # depending on the chosen type either y or length
float64 arg3    # for boxes: z

#material
string color_name
float64 color_r #red
float64 color_g #green
float64 color_b #blue
float64 color_a #transparancy

#gazebo material
string gazebo_material

string texture
================================================================================
MSG: modrob_simulation/LinkCollision
#Documentation, see: http://wiki.ros.org/urdf/XML/link

string name

#origin
float64 origin_x
float64 origin_y
float64 origin_z

float64 origin_r
float64 origin_p
float64 origin_yy

#geometry
string type     #box, cylinder, sphere
float64 arg1    # depending on the chosen type either x or radius
float64 arg2    # depending on the chosen type either y or length
float64 arg3    # for boxes: z
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
float64 z"""
  __slots__ = ['descriptions']
  _slot_types = ['modrob_simulation/RobotDescription[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       descriptions

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotGroupDescription, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.descriptions is None:
        self.descriptions = []
    else:
      self.descriptions = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.descriptions)
      buff.write(_struct_I.pack(length))
      for val1 in self.descriptions:
        _v1 = val1.header
        _x = _v1.seq
        buff.write(_get_struct_I().pack(_x))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.joints)
        buff.write(_struct_I.pack(length))
        for val2 in val1.joints:
          _x = val2.name
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2.type
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2
          buff.write(_get_struct_6d().pack(_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy))
          _x = val2.parent_link
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2.child_link
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2
          buff.write(_get_struct_14d().pack(_x.axis_x, _x.axis_y, _x.axis_z, _x.damping, _x.friction, _x.lower, _x.upper, _x.effort, _x.velocity, _x.gear_ratio, _x.soft_lower_limit, _x.soft_upper_limit, _x.k_position, _x.k_velocity))
        length = len(val1.links)
        buff.write(_struct_I.pack(length))
        for val2 in val1.links:
          _x = val2.name
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2
          buff.write(_get_struct_17d().pack(_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy, _x.mass, _x.intertia_ixx, _x.intertia_ixy, _x.intertia_ixz, _x.intertia_iyy, _x.intertia_iyz, _x.intertia_izz, _x.mu1, _x.mu2, _x.kp, _x.kd))
          length = len(val2.link_visual)
          buff.write(_struct_I.pack(length))
          for val3 in val2.link_visual:
            _x = val3.name
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val3
            buff.write(_get_struct_6d().pack(_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy))
            _x = val3.type
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val3
            buff.write(_get_struct_3d().pack(_x.arg1, _x.arg2, _x.arg3))
            _x = val3.color_name
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val3
            buff.write(_get_struct_4d().pack(_x.color_r, _x.color_g, _x.color_b, _x.color_a))
            _x = val3.gazebo_material
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val3.texture
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          length = len(val2.link_collision)
          buff.write(_struct_I.pack(length))
          for val3 in val2.link_collision:
            _x = val3.name
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val3
            buff.write(_get_struct_6d().pack(_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy))
            _x = val3.type
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val3
            buff.write(_get_struct_3d().pack(_x.arg1, _x.arg2, _x.arg3))
        _v3 = val1.base_pos
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.descriptions is None:
        self.descriptions = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.descriptions = []
      for i in range(0, length):
        val1 = modrob_simulation.msg.RobotDescription()
        _v4 = val1.header
        start = end
        end += 4
        (_v4.seq,) = _get_struct_I().unpack(str[start:end])
        _v5 = _v4.stamp
        _x = _v5
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v4.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v4.frame_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.joints = []
        for i in range(0, length):
          val2 = modrob_simulation.msg.JointDescription()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.name = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.name = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.type = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.type = str[start:end]
          _x = val2
          start = end
          end += 48
          (_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy,) = _get_struct_6d().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.parent_link = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.parent_link = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.child_link = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.child_link = str[start:end]
          _x = val2
          start = end
          end += 112
          (_x.axis_x, _x.axis_y, _x.axis_z, _x.damping, _x.friction, _x.lower, _x.upper, _x.effort, _x.velocity, _x.gear_ratio, _x.soft_lower_limit, _x.soft_upper_limit, _x.k_position, _x.k_velocity,) = _get_struct_14d().unpack(str[start:end])
          val1.joints.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.links = []
        for i in range(0, length):
          val2 = modrob_simulation.msg.LinkDescription()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.name = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.name = str[start:end]
          _x = val2
          start = end
          end += 136
          (_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy, _x.mass, _x.intertia_ixx, _x.intertia_ixy, _x.intertia_ixz, _x.intertia_iyy, _x.intertia_iyz, _x.intertia_izz, _x.mu1, _x.mu2, _x.kp, _x.kd,) = _get_struct_17d().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val2.link_visual = []
          for i in range(0, length):
            val3 = modrob_simulation.msg.LinkVisual()
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.name = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.name = str[start:end]
            _x = val3
            start = end
            end += 48
            (_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy,) = _get_struct_6d().unpack(str[start:end])
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.type = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.type = str[start:end]
            _x = val3
            start = end
            end += 24
            (_x.arg1, _x.arg2, _x.arg3,) = _get_struct_3d().unpack(str[start:end])
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.color_name = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.color_name = str[start:end]
            _x = val3
            start = end
            end += 32
            (_x.color_r, _x.color_g, _x.color_b, _x.color_a,) = _get_struct_4d().unpack(str[start:end])
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.gazebo_material = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.gazebo_material = str[start:end]
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.texture = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.texture = str[start:end]
            val2.link_visual.append(val3)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val2.link_collision = []
          for i in range(0, length):
            val3 = modrob_simulation.msg.LinkCollision()
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.name = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.name = str[start:end]
            _x = val3
            start = end
            end += 48
            (_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy,) = _get_struct_6d().unpack(str[start:end])
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.type = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.type = str[start:end]
            _x = val3
            start = end
            end += 24
            (_x.arg1, _x.arg2, _x.arg3,) = _get_struct_3d().unpack(str[start:end])
            val2.link_collision.append(val3)
          val1.links.append(val2)
        _v6 = val1.base_pos
        _x = _v6
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.descriptions.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.descriptions)
      buff.write(_struct_I.pack(length))
      for val1 in self.descriptions:
        _v7 = val1.header
        _x = _v7.seq
        buff.write(_get_struct_I().pack(_x))
        _v8 = _v7.stamp
        _x = _v8
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v7.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.joints)
        buff.write(_struct_I.pack(length))
        for val2 in val1.joints:
          _x = val2.name
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2.type
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2
          buff.write(_get_struct_6d().pack(_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy))
          _x = val2.parent_link
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2.child_link
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2
          buff.write(_get_struct_14d().pack(_x.axis_x, _x.axis_y, _x.axis_z, _x.damping, _x.friction, _x.lower, _x.upper, _x.effort, _x.velocity, _x.gear_ratio, _x.soft_lower_limit, _x.soft_upper_limit, _x.k_position, _x.k_velocity))
        length = len(val1.links)
        buff.write(_struct_I.pack(length))
        for val2 in val1.links:
          _x = val2.name
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2
          buff.write(_get_struct_17d().pack(_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy, _x.mass, _x.intertia_ixx, _x.intertia_ixy, _x.intertia_ixz, _x.intertia_iyy, _x.intertia_iyz, _x.intertia_izz, _x.mu1, _x.mu2, _x.kp, _x.kd))
          length = len(val2.link_visual)
          buff.write(_struct_I.pack(length))
          for val3 in val2.link_visual:
            _x = val3.name
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val3
            buff.write(_get_struct_6d().pack(_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy))
            _x = val3.type
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val3
            buff.write(_get_struct_3d().pack(_x.arg1, _x.arg2, _x.arg3))
            _x = val3.color_name
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val3
            buff.write(_get_struct_4d().pack(_x.color_r, _x.color_g, _x.color_b, _x.color_a))
            _x = val3.gazebo_material
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val3.texture
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          length = len(val2.link_collision)
          buff.write(_struct_I.pack(length))
          for val3 in val2.link_collision:
            _x = val3.name
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val3
            buff.write(_get_struct_6d().pack(_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy))
            _x = val3.type
            length = len(_x)
            if python3 or type(_x) == unicode:
              _x = _x.encode('utf-8')
              length = len(_x)
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
            _x = val3
            buff.write(_get_struct_3d().pack(_x.arg1, _x.arg2, _x.arg3))
        _v9 = val1.base_pos
        _x = _v9
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.descriptions is None:
        self.descriptions = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.descriptions = []
      for i in range(0, length):
        val1 = modrob_simulation.msg.RobotDescription()
        _v10 = val1.header
        start = end
        end += 4
        (_v10.seq,) = _get_struct_I().unpack(str[start:end])
        _v11 = _v10.stamp
        _x = _v11
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v10.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v10.frame_id = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.joints = []
        for i in range(0, length):
          val2 = modrob_simulation.msg.JointDescription()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.name = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.name = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.type = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.type = str[start:end]
          _x = val2
          start = end
          end += 48
          (_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy,) = _get_struct_6d().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.parent_link = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.parent_link = str[start:end]
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.child_link = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.child_link = str[start:end]
          _x = val2
          start = end
          end += 112
          (_x.axis_x, _x.axis_y, _x.axis_z, _x.damping, _x.friction, _x.lower, _x.upper, _x.effort, _x.velocity, _x.gear_ratio, _x.soft_lower_limit, _x.soft_upper_limit, _x.k_position, _x.k_velocity,) = _get_struct_14d().unpack(str[start:end])
          val1.joints.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.links = []
        for i in range(0, length):
          val2 = modrob_simulation.msg.LinkDescription()
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.name = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.name = str[start:end]
          _x = val2
          start = end
          end += 136
          (_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy, _x.mass, _x.intertia_ixx, _x.intertia_ixy, _x.intertia_ixz, _x.intertia_iyy, _x.intertia_iyz, _x.intertia_izz, _x.mu1, _x.mu2, _x.kp, _x.kd,) = _get_struct_17d().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val2.link_visual = []
          for i in range(0, length):
            val3 = modrob_simulation.msg.LinkVisual()
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.name = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.name = str[start:end]
            _x = val3
            start = end
            end += 48
            (_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy,) = _get_struct_6d().unpack(str[start:end])
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.type = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.type = str[start:end]
            _x = val3
            start = end
            end += 24
            (_x.arg1, _x.arg2, _x.arg3,) = _get_struct_3d().unpack(str[start:end])
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.color_name = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.color_name = str[start:end]
            _x = val3
            start = end
            end += 32
            (_x.color_r, _x.color_g, _x.color_b, _x.color_a,) = _get_struct_4d().unpack(str[start:end])
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.gazebo_material = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.gazebo_material = str[start:end]
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.texture = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.texture = str[start:end]
            val2.link_visual.append(val3)
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          val2.link_collision = []
          for i in range(0, length):
            val3 = modrob_simulation.msg.LinkCollision()
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.name = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.name = str[start:end]
            _x = val3
            start = end
            end += 48
            (_x.origin_x, _x.origin_y, _x.origin_z, _x.origin_r, _x.origin_p, _x.origin_yy,) = _get_struct_6d().unpack(str[start:end])
            start = end
            end += 4
            (length,) = _struct_I.unpack(str[start:end])
            start = end
            end += length
            if python3:
              val3.type = str[start:end].decode('utf-8', 'rosmsg')
            else:
              val3.type = str[start:end]
            _x = val3
            start = end
            end += 24
            (_x.arg1, _x.arg2, _x.arg3,) = _get_struct_3d().unpack(str[start:end])
            val2.link_collision.append(val3)
          val1.links.append(val2)
        _v12 = val1.base_pos
        _x = _v12
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.descriptions.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_14d = None
def _get_struct_14d():
    global _struct_14d
    if _struct_14d is None:
        _struct_14d = struct.Struct("<14d")
    return _struct_14d
_struct_17d = None
def _get_struct_17d():
    global _struct_17d
    if _struct_17d is None:
        _struct_17d = struct.Struct("<17d")
    return _struct_17d
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d