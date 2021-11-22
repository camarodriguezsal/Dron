// Auto-generated. Do not edit!

// (in-package modrob_simulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointConfigCommanded = require('./JointConfigCommanded.js');

//-----------------------------------------------------------

class RobotConfigCommanded {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_config_commanded = null;
      this.tool_activation = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_config_commanded')) {
        this.joint_config_commanded = initObj.joint_config_commanded
      }
      else {
        this.joint_config_commanded = [];
      }
      if (initObj.hasOwnProperty('tool_activation')) {
        this.tool_activation = initObj.tool_activation
      }
      else {
        this.tool_activation = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotConfigCommanded
    // Serialize message field [joint_config_commanded]
    // Serialize the length for message field [joint_config_commanded]
    bufferOffset = _serializer.uint32(obj.joint_config_commanded.length, buffer, bufferOffset);
    obj.joint_config_commanded.forEach((val) => {
      bufferOffset = JointConfigCommanded.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [tool_activation]
    bufferOffset = _serializer.bool(obj.tool_activation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotConfigCommanded
    let len;
    let data = new RobotConfigCommanded(null);
    // Deserialize message field [joint_config_commanded]
    // Deserialize array length for message field [joint_config_commanded]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_config_commanded = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_config_commanded[i] = JointConfigCommanded.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [tool_activation]
    data.tool_activation = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 32 * object.joint_config_commanded.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_simulation/RobotConfigCommanded';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '317b6847d28ab67b3eb3e1fdec1c5d27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes a robot arm movement
    # Array indices from 0 to max match joints from base joint to last joint
    JointConfigCommanded[] joint_config_commanded
    bool tool_activation
    
    ================================================================================
    MSG: modrob_simulation/JointConfigCommanded
    # This message describes a joint movement
    float64 joint_angle
    float64 joint_velocity
    float64 joint_acceleration
    float64 joint_torque
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotConfigCommanded(null);
    if (msg.joint_config_commanded !== undefined) {
      resolved.joint_config_commanded = new Array(msg.joint_config_commanded.length);
      for (let i = 0; i < resolved.joint_config_commanded.length; ++i) {
        resolved.joint_config_commanded[i] = JointConfigCommanded.Resolve(msg.joint_config_commanded[i]);
      }
    }
    else {
      resolved.joint_config_commanded = []
    }

    if (msg.tool_activation !== undefined) {
      resolved.tool_activation = msg.tool_activation;
    }
    else {
      resolved.tool_activation = false
    }

    return resolved;
    }
};

module.exports = RobotConfigCommanded;
