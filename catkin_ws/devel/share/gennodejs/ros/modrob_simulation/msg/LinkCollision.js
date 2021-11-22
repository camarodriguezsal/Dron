// Auto-generated. Do not edit!

// (in-package modrob_simulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LinkCollision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.origin_x = null;
      this.origin_y = null;
      this.origin_z = null;
      this.origin_r = null;
      this.origin_p = null;
      this.origin_yy = null;
      this.type = null;
      this.arg1 = null;
      this.arg2 = null;
      this.arg3 = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('origin_x')) {
        this.origin_x = initObj.origin_x
      }
      else {
        this.origin_x = 0.0;
      }
      if (initObj.hasOwnProperty('origin_y')) {
        this.origin_y = initObj.origin_y
      }
      else {
        this.origin_y = 0.0;
      }
      if (initObj.hasOwnProperty('origin_z')) {
        this.origin_z = initObj.origin_z
      }
      else {
        this.origin_z = 0.0;
      }
      if (initObj.hasOwnProperty('origin_r')) {
        this.origin_r = initObj.origin_r
      }
      else {
        this.origin_r = 0.0;
      }
      if (initObj.hasOwnProperty('origin_p')) {
        this.origin_p = initObj.origin_p
      }
      else {
        this.origin_p = 0.0;
      }
      if (initObj.hasOwnProperty('origin_yy')) {
        this.origin_yy = initObj.origin_yy
      }
      else {
        this.origin_yy = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('arg1')) {
        this.arg1 = initObj.arg1
      }
      else {
        this.arg1 = 0.0;
      }
      if (initObj.hasOwnProperty('arg2')) {
        this.arg2 = initObj.arg2
      }
      else {
        this.arg2 = 0.0;
      }
      if (initObj.hasOwnProperty('arg3')) {
        this.arg3 = initObj.arg3
      }
      else {
        this.arg3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LinkCollision
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [origin_x]
    bufferOffset = _serializer.float64(obj.origin_x, buffer, bufferOffset);
    // Serialize message field [origin_y]
    bufferOffset = _serializer.float64(obj.origin_y, buffer, bufferOffset);
    // Serialize message field [origin_z]
    bufferOffset = _serializer.float64(obj.origin_z, buffer, bufferOffset);
    // Serialize message field [origin_r]
    bufferOffset = _serializer.float64(obj.origin_r, buffer, bufferOffset);
    // Serialize message field [origin_p]
    bufferOffset = _serializer.float64(obj.origin_p, buffer, bufferOffset);
    // Serialize message field [origin_yy]
    bufferOffset = _serializer.float64(obj.origin_yy, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [arg1]
    bufferOffset = _serializer.float64(obj.arg1, buffer, bufferOffset);
    // Serialize message field [arg2]
    bufferOffset = _serializer.float64(obj.arg2, buffer, bufferOffset);
    // Serialize message field [arg3]
    bufferOffset = _serializer.float64(obj.arg3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LinkCollision
    let len;
    let data = new LinkCollision(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [origin_x]
    data.origin_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [origin_y]
    data.origin_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [origin_z]
    data.origin_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [origin_r]
    data.origin_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [origin_p]
    data.origin_p = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [origin_yy]
    data.origin_yy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [arg1]
    data.arg1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [arg2]
    data.arg2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [arg3]
    data.arg3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.type.length;
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_simulation/LinkCollision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd26543081054487ac88f8ee0543c0fe8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Documentation, see: http://wiki.ros.org/urdf/XML/link
    
    string name
    
    #origin
    float64 origin_x
    float64 origin_y
    float64 origin_z
    
    float64 origin_r
    float64 origin_p
    float64 origin_yy
    
    #geometry
    string type     #box, cylinder, sphere
    float64 arg1    # depending on the chosen type either x or radius
    float64 arg2    # depending on the chosen type either y or length
    float64 arg3    # for boxes: z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LinkCollision(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.origin_x !== undefined) {
      resolved.origin_x = msg.origin_x;
    }
    else {
      resolved.origin_x = 0.0
    }

    if (msg.origin_y !== undefined) {
      resolved.origin_y = msg.origin_y;
    }
    else {
      resolved.origin_y = 0.0
    }

    if (msg.origin_z !== undefined) {
      resolved.origin_z = msg.origin_z;
    }
    else {
      resolved.origin_z = 0.0
    }

    if (msg.origin_r !== undefined) {
      resolved.origin_r = msg.origin_r;
    }
    else {
      resolved.origin_r = 0.0
    }

    if (msg.origin_p !== undefined) {
      resolved.origin_p = msg.origin_p;
    }
    else {
      resolved.origin_p = 0.0
    }

    if (msg.origin_yy !== undefined) {
      resolved.origin_yy = msg.origin_yy;
    }
    else {
      resolved.origin_yy = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.arg1 !== undefined) {
      resolved.arg1 = msg.arg1;
    }
    else {
      resolved.arg1 = 0.0
    }

    if (msg.arg2 !== undefined) {
      resolved.arg2 = msg.arg2;
    }
    else {
      resolved.arg2 = 0.0
    }

    if (msg.arg3 !== undefined) {
      resolved.arg3 = msg.arg3;
    }
    else {
      resolved.arg3 = 0.0
    }

    return resolved;
    }
};

module.exports = LinkCollision;
