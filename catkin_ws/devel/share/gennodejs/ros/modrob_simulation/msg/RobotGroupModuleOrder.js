// Auto-generated. Do not edit!

// (in-package modrob_simulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotModuleOrder = require('./RobotModuleOrder.js');

//-----------------------------------------------------------

class RobotGroupModuleOrder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robots = null;
    }
    else {
      if (initObj.hasOwnProperty('robots')) {
        this.robots = initObj.robots
      }
      else {
        this.robots = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotGroupModuleOrder
    // Serialize message field [robots]
    // Serialize the length for message field [robots]
    bufferOffset = _serializer.uint32(obj.robots.length, buffer, bufferOffset);
    obj.robots.forEach((val) => {
      bufferOffset = RobotModuleOrder.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotGroupModuleOrder
    let len;
    let data = new RobotGroupModuleOrder(null);
    // Deserialize message field [robots]
    // Deserialize array length for message field [robots]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robots = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robots[i] = RobotModuleOrder.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.robots.forEach((val) => {
      length += RobotModuleOrder.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_simulation/RobotGroupModuleOrder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f925c4b27303a14269668a378ac29d76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # All robots that will be built
    RobotModuleOrder[] robots
    ================================================================================
    MSG: modrob_simulation/RobotModuleOrder
    # Array indices from 0 to max match joints from base joint to last joint
    int8[] modules
    
    # Base position
    geometry_msgs/Vector3 base_pos
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
    const resolved = new RobotGroupModuleOrder(null);
    if (msg.robots !== undefined) {
      resolved.robots = new Array(msg.robots.length);
      for (let i = 0; i < resolved.robots.length; ++i) {
        resolved.robots[i] = RobotModuleOrder.Resolve(msg.robots[i]);
      }
    }
    else {
      resolved.robots = []
    }

    return resolved;
    }
};

module.exports = RobotGroupModuleOrder;
