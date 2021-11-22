// Auto-generated. Do not edit!

// (in-package modrob_simulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RobotModuleOrder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.modules = null;
      this.base_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('modules')) {
        this.modules = initObj.modules
      }
      else {
        this.modules = [];
      }
      if (initObj.hasOwnProperty('base_pos')) {
        this.base_pos = initObj.base_pos
      }
      else {
        this.base_pos = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotModuleOrder
    // Serialize message field [modules]
    bufferOffset = _arraySerializer.int8(obj.modules, buffer, bufferOffset, null);
    // Serialize message field [base_pos]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.base_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotModuleOrder
    let len;
    let data = new RobotModuleOrder(null);
    // Deserialize message field [modules]
    data.modules = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [base_pos]
    data.base_pos = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.modules.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_simulation/RobotModuleOrder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de7e174cc2b4fb52efbd6b6aff72a3aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RobotModuleOrder(null);
    if (msg.modules !== undefined) {
      resolved.modules = msg.modules;
    }
    else {
      resolved.modules = []
    }

    if (msg.base_pos !== undefined) {
      resolved.base_pos = geometry_msgs.msg.Vector3.Resolve(msg.base_pos)
    }
    else {
      resolved.base_pos = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = RobotModuleOrder;
