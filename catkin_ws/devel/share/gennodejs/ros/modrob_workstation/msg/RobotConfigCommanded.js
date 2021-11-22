// Auto-generated. Do not edit!

// (in-package modrob_workstation.msg)


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
      this.tool_activation = null;
      this.joint_moves = null;
    }
    else {
      if (initObj.hasOwnProperty('tool_activation')) {
        this.tool_activation = initObj.tool_activation
      }
      else {
        this.tool_activation = false;
      }
      if (initObj.hasOwnProperty('joint_moves')) {
        this.joint_moves = initObj.joint_moves
      }
      else {
        this.joint_moves = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotConfigCommanded
    // Serialize message field [tool_activation]
    bufferOffset = _serializer.bool(obj.tool_activation, buffer, bufferOffset);
    // Serialize message field [joint_moves]
    // Serialize the length for message field [joint_moves]
    bufferOffset = _serializer.uint32(obj.joint_moves.length, buffer, bufferOffset);
    obj.joint_moves.forEach((val) => {
      bufferOffset = JointConfigCommanded.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotConfigCommanded
    let len;
    let data = new RobotConfigCommanded(null);
    // Deserialize message field [tool_activation]
    data.tool_activation = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [joint_moves]
    // Deserialize array length for message field [joint_moves]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_moves = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_moves[i] = JointConfigCommanded.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 32 * object.joint_moves.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_workstation/RobotConfigCommanded';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bac2996406eb87049714c95e451ba2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message describes a robot arm movement
    # Array indices from 0 to max match joints from base joint to last joint
    bool tool_activation
    JointConfigCommanded[] joint_moves
    
    
    ================================================================================
    MSG: modrob_workstation/JointConfigCommanded
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
    if (msg.tool_activation !== undefined) {
      resolved.tool_activation = msg.tool_activation;
    }
    else {
      resolved.tool_activation = false
    }

    if (msg.joint_moves !== undefined) {
      resolved.joint_moves = new Array(msg.joint_moves.length);
      for (let i = 0; i < resolved.joint_moves.length; ++i) {
        resolved.joint_moves[i] = JointConfigCommanded.Resolve(msg.joint_moves[i]);
      }
    }
    else {
      resolved.joint_moves = []
    }

    return resolved;
    }
};

module.exports = RobotConfigCommanded;
