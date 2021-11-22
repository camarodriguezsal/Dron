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

class ModuleOrder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.modules = null;
    }
    else {
      if (initObj.hasOwnProperty('modules')) {
        this.modules = initObj.modules
      }
      else {
        this.modules = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModuleOrder
    // Serialize message field [modules]
    bufferOffset = _arraySerializer.int8(obj.modules, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleOrder
    let len;
    let data = new ModuleOrder(null);
    // Deserialize message field [modules]
    data.modules = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.modules.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_workstation/ModuleOrder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62d9f847abb87d21d9ef47db615bf722';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Array indices from 0 to max match joints from base joint to last joint
    int8[] modules
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModuleOrder(null);
    if (msg.modules !== undefined) {
      resolved.modules = msg.modules;
    }
    else {
      resolved.modules = []
    }

    return resolved;
    }
};

module.exports = ModuleOrder;
