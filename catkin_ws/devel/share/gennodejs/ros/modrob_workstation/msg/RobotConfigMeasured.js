// Auto-generated. Do not edit!

// (in-package modrob_workstation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointConfigMeasured = require('./JointConfigMeasured.js');

//-----------------------------------------------------------

class RobotConfigMeasured {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_config_measured = null;
      this.measured_robot_state = null;
      this.tool_activation = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_config_measured')) {
        this.joint_config_measured = initObj.joint_config_measured
      }
      else {
        this.joint_config_measured = [];
      }
      if (initObj.hasOwnProperty('measured_robot_state')) {
        this.measured_robot_state = initObj.measured_robot_state
      }
      else {
        this.measured_robot_state = 0;
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
    // Serializes a message object of type RobotConfigMeasured
    // Serialize message field [joint_config_measured]
    // Serialize the length for message field [joint_config_measured]
    bufferOffset = _serializer.uint32(obj.joint_config_measured.length, buffer, bufferOffset);
    obj.joint_config_measured.forEach((val) => {
      bufferOffset = JointConfigMeasured.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [measured_robot_state]
    bufferOffset = _serializer.uint8(obj.measured_robot_state, buffer, bufferOffset);
    // Serialize message field [tool_activation]
    bufferOffset = _serializer.bool(obj.tool_activation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotConfigMeasured
    let len;
    let data = new RobotConfigMeasured(null);
    // Deserialize message field [joint_config_measured]
    // Deserialize array length for message field [joint_config_measured]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_config_measured = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_config_measured[i] = JointConfigMeasured.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [measured_robot_state]
    data.measured_robot_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tool_activation]
    data.tool_activation = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 40 * object.joint_config_measured.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_workstation/RobotConfigMeasured';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63d934dedb04d4a03a4dbce708629c90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # List of joint configurations
    # Array indices from 0 to max match joints from base joint to last joint
    JointConfigMeasured[] joint_config_measured
    uint8 measured_robot_state
    bool tool_activation
    
    ================================================================================
    MSG: modrob_workstation/JointConfigMeasured
    # This message describes a joint movement
    float64 joint_angle
    float64 joint_velocity
    float64 joint_acceleration
    float64 joint_torque
    float64 joint_temperature
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotConfigMeasured(null);
    if (msg.joint_config_measured !== undefined) {
      resolved.joint_config_measured = new Array(msg.joint_config_measured.length);
      for (let i = 0; i < resolved.joint_config_measured.length; ++i) {
        resolved.joint_config_measured[i] = JointConfigMeasured.Resolve(msg.joint_config_measured[i]);
      }
    }
    else {
      resolved.joint_config_measured = []
    }

    if (msg.measured_robot_state !== undefined) {
      resolved.measured_robot_state = msg.measured_robot_state;
    }
    else {
      resolved.measured_robot_state = 0
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

module.exports = RobotConfigMeasured;
