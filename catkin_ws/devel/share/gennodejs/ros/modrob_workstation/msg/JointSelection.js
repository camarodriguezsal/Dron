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

class JointSelection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.activeJoints = null;
    }
    else {
      if (initObj.hasOwnProperty('activeJoints')) {
        this.activeJoints = initObj.activeJoints
      }
      else {
        this.activeJoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointSelection
    // Serialize message field [activeJoints]
    bufferOffset = _arraySerializer.bool(obj.activeJoints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointSelection
    let len;
    let data = new JointSelection(null);
    // Deserialize message field [activeJoints]
    data.activeJoints = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.activeJoints.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_workstation/JointSelection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13a5be053fe753a9527bbef2b69f5491';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[] activeJoints
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointSelection(null);
    if (msg.activeJoints !== undefined) {
      resolved.activeJoints = msg.activeJoints;
    }
    else {
      resolved.activeJoints = []
    }

    return resolved;
    }
};

module.exports = JointSelection;
