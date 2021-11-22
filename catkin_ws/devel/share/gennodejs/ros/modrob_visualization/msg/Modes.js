// Auto-generated. Do not edit!

// (in-package modrob_visualization.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Modes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.configurable_mode = null;
      this.angle_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('configurable_mode')) {
        this.configurable_mode = initObj.configurable_mode
      }
      else {
        this.configurable_mode = false;
      }
      if (initObj.hasOwnProperty('angle_mode')) {
        this.angle_mode = initObj.angle_mode
      }
      else {
        this.angle_mode = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Modes
    // Serialize message field [configurable_mode]
    bufferOffset = _serializer.bool(obj.configurable_mode, buffer, bufferOffset);
    // Serialize message field [angle_mode]
    bufferOffset = _serializer.bool(obj.angle_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Modes
    let len;
    let data = new Modes(null);
    // Deserialize message field [configurable_mode]
    data.configurable_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [angle_mode]
    data.angle_mode = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_visualization/Modes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '309b86b842890ede800f6b6fd95ff78c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # this variable declares wheather we are inside the configurable state or not
    bool configurable_mode
    # this variable declares wheather torque mode or joint angles. True means we are using joint angles
    bool angle_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Modes(null);
    if (msg.configurable_mode !== undefined) {
      resolved.configurable_mode = msg.configurable_mode;
    }
    else {
      resolved.configurable_mode = false
    }

    if (msg.angle_mode !== undefined) {
      resolved.angle_mode = msg.angle_mode;
    }
    else {
      resolved.angle_mode = false
    }

    return resolved;
    }
};

module.exports = Modes;
