// Auto-generated. Do not edit!

// (in-package modrob_workstation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RobotStateCommanded {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStateCommanded
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStateCommanded
    let len;
    let data = new RobotStateCommanded(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_workstation/RobotStateCommanded';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'abb393152ce6989fc811f6837e590662';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # this variable declares different states of the robot
    uint8 state
    
    uint8 OFF = 0
    uint8 CONFIGURABLE = 1
    uint8 IDLE = 1
    uint8 ERROR = 2
    uint8 CONNECTING = 3
    uint8 OP_ANGLES = 4
    uint8 OP_TORQUES = 5
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStateCommanded(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
RobotStateCommanded.Constants = {
  OFF: 0,
  CONFIGURABLE: 1,
  IDLE: 1,
  ERROR: 2,
  CONNECTING: 3,
  OP_ANGLES: 4,
  OP_TORQUES: 5,
}

module.exports = RobotStateCommanded;
