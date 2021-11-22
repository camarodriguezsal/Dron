// Auto-generated. Do not edit!

// (in-package modrob_simulation.msg)


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
    }
    else {
      if (initObj.hasOwnProperty('joint_config_measured')) {
        this.joint_config_measured = initObj.joint_config_measured
      }
      else {
        this.joint_config_measured = [];
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
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 40 * object.joint_config_measured.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_simulation/RobotConfigMeasured';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e893c96cbac958ab455a51b048ce201c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # List of joint configurations
    # Array indices from 0 to max match joints from base joint to last joint
    JointConfigMeasured[] joint_config_measured
    
    ================================================================================
    MSG: modrob_simulation/JointConfigMeasured
    # This message describes a joint movement
    
    # The angle the joint is currently at
    float64 joint_angle
    
    # The current velocity of the joint
    float64 joint_velocity
    
    # The acceleration the joint currently experiences
    float64 joint_acceleration
    
    # The torque the joint is delivering
    float64 joint_torque
    
    # The current temperature of the joint
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

    return resolved;
    }
};

module.exports = RobotConfigMeasured;
