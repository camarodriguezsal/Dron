// Auto-generated. Do not edit!

// (in-package modrob_simulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotDescription = require('./RobotDescription.js');

//-----------------------------------------------------------

class RobotGroupDescription {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.descriptions = null;
    }
    else {
      if (initObj.hasOwnProperty('descriptions')) {
        this.descriptions = initObj.descriptions
      }
      else {
        this.descriptions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotGroupDescription
    // Serialize message field [descriptions]
    // Serialize the length for message field [descriptions]
    bufferOffset = _serializer.uint32(obj.descriptions.length, buffer, bufferOffset);
    obj.descriptions.forEach((val) => {
      bufferOffset = RobotDescription.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotGroupDescription
    let len;
    let data = new RobotGroupDescription(null);
    // Deserialize message field [descriptions]
    // Deserialize array length for message field [descriptions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.descriptions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.descriptions[i] = RobotDescription.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.descriptions.forEach((val) => {
      length += RobotDescription.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_simulation/RobotGroupDescription';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e03bd3462dfb8b3611235b3a1ebdf08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The decriptions of all received robots
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
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotGroupDescription(null);
    if (msg.descriptions !== undefined) {
      resolved.descriptions = new Array(msg.descriptions.length);
      for (let i = 0; i < resolved.descriptions.length; ++i) {
        resolved.descriptions[i] = RobotDescription.Resolve(msg.descriptions[i]);
      }
    }
    else {
      resolved.descriptions = []
    }

    return resolved;
    }
};

module.exports = RobotGroupDescription;
