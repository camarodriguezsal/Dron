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

class LinkVisual {
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
      this.color_name = null;
      this.color_r = null;
      this.color_g = null;
      this.color_b = null;
      this.color_a = null;
      this.gazebo_material = null;
      this.texture = null;
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
      if (initObj.hasOwnProperty('color_name')) {
        this.color_name = initObj.color_name
      }
      else {
        this.color_name = '';
      }
      if (initObj.hasOwnProperty('color_r')) {
        this.color_r = initObj.color_r
      }
      else {
        this.color_r = 0.0;
      }
      if (initObj.hasOwnProperty('color_g')) {
        this.color_g = initObj.color_g
      }
      else {
        this.color_g = 0.0;
      }
      if (initObj.hasOwnProperty('color_b')) {
        this.color_b = initObj.color_b
      }
      else {
        this.color_b = 0.0;
      }
      if (initObj.hasOwnProperty('color_a')) {
        this.color_a = initObj.color_a
      }
      else {
        this.color_a = 0.0;
      }
      if (initObj.hasOwnProperty('gazebo_material')) {
        this.gazebo_material = initObj.gazebo_material
      }
      else {
        this.gazebo_material = '';
      }
      if (initObj.hasOwnProperty('texture')) {
        this.texture = initObj.texture
      }
      else {
        this.texture = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LinkVisual
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
    // Serialize message field [color_name]
    bufferOffset = _serializer.string(obj.color_name, buffer, bufferOffset);
    // Serialize message field [color_r]
    bufferOffset = _serializer.float64(obj.color_r, buffer, bufferOffset);
    // Serialize message field [color_g]
    bufferOffset = _serializer.float64(obj.color_g, buffer, bufferOffset);
    // Serialize message field [color_b]
    bufferOffset = _serializer.float64(obj.color_b, buffer, bufferOffset);
    // Serialize message field [color_a]
    bufferOffset = _serializer.float64(obj.color_a, buffer, bufferOffset);
    // Serialize message field [gazebo_material]
    bufferOffset = _serializer.string(obj.gazebo_material, buffer, bufferOffset);
    // Serialize message field [texture]
    bufferOffset = _serializer.string(obj.texture, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LinkVisual
    let len;
    let data = new LinkVisual(null);
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
    // Deserialize message field [color_name]
    data.color_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [color_r]
    data.color_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [color_g]
    data.color_g = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [color_b]
    data.color_b = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [color_a]
    data.color_a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gazebo_material]
    data.gazebo_material = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [texture]
    data.texture = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.type.length;
    length += object.color_name.length;
    length += object.gazebo_material.length;
    length += object.texture.length;
    return length + 124;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_simulation/LinkVisual';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74676e346ad25138f4a19f88be4b498d';
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
    
    #material
    string color_name
    float64 color_r #red
    float64 color_g #green
    float64 color_b #blue
    float64 color_a #transparancy
    
    #gazebo material
    string gazebo_material
    
    string texture
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LinkVisual(null);
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

    if (msg.color_name !== undefined) {
      resolved.color_name = msg.color_name;
    }
    else {
      resolved.color_name = ''
    }

    if (msg.color_r !== undefined) {
      resolved.color_r = msg.color_r;
    }
    else {
      resolved.color_r = 0.0
    }

    if (msg.color_g !== undefined) {
      resolved.color_g = msg.color_g;
    }
    else {
      resolved.color_g = 0.0
    }

    if (msg.color_b !== undefined) {
      resolved.color_b = msg.color_b;
    }
    else {
      resolved.color_b = 0.0
    }

    if (msg.color_a !== undefined) {
      resolved.color_a = msg.color_a;
    }
    else {
      resolved.color_a = 0.0
    }

    if (msg.gazebo_material !== undefined) {
      resolved.gazebo_material = msg.gazebo_material;
    }
    else {
      resolved.gazebo_material = ''
    }

    if (msg.texture !== undefined) {
      resolved.texture = msg.texture;
    }
    else {
      resolved.texture = ''
    }

    return resolved;
    }
};

module.exports = LinkVisual;
