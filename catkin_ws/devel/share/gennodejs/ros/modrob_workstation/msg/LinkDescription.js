// Auto-generated. Do not edit!

// (in-package modrob_workstation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LinkVisual = require('./LinkVisual.js');
let LinkCollision = require('./LinkCollision.js');

//-----------------------------------------------------------

class LinkDescription {
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
      this.mass = null;
      this.intertia_ixx = null;
      this.intertia_ixy = null;
      this.intertia_ixz = null;
      this.intertia_iyy = null;
      this.intertia_iyz = null;
      this.intertia_izz = null;
      this.link_visual = null;
      this.link_collision = null;
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
      if (initObj.hasOwnProperty('mass')) {
        this.mass = initObj.mass
      }
      else {
        this.mass = 0.0;
      }
      if (initObj.hasOwnProperty('intertia_ixx')) {
        this.intertia_ixx = initObj.intertia_ixx
      }
      else {
        this.intertia_ixx = 0.0;
      }
      if (initObj.hasOwnProperty('intertia_ixy')) {
        this.intertia_ixy = initObj.intertia_ixy
      }
      else {
        this.intertia_ixy = 0.0;
      }
      if (initObj.hasOwnProperty('intertia_ixz')) {
        this.intertia_ixz = initObj.intertia_ixz
      }
      else {
        this.intertia_ixz = 0.0;
      }
      if (initObj.hasOwnProperty('intertia_iyy')) {
        this.intertia_iyy = initObj.intertia_iyy
      }
      else {
        this.intertia_iyy = 0.0;
      }
      if (initObj.hasOwnProperty('intertia_iyz')) {
        this.intertia_iyz = initObj.intertia_iyz
      }
      else {
        this.intertia_iyz = 0.0;
      }
      if (initObj.hasOwnProperty('intertia_izz')) {
        this.intertia_izz = initObj.intertia_izz
      }
      else {
        this.intertia_izz = 0.0;
      }
      if (initObj.hasOwnProperty('link_visual')) {
        this.link_visual = initObj.link_visual
      }
      else {
        this.link_visual = [];
      }
      if (initObj.hasOwnProperty('link_collision')) {
        this.link_collision = initObj.link_collision
      }
      else {
        this.link_collision = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LinkDescription
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
    // Serialize message field [mass]
    bufferOffset = _serializer.float64(obj.mass, buffer, bufferOffset);
    // Serialize message field [intertia_ixx]
    bufferOffset = _serializer.float64(obj.intertia_ixx, buffer, bufferOffset);
    // Serialize message field [intertia_ixy]
    bufferOffset = _serializer.float64(obj.intertia_ixy, buffer, bufferOffset);
    // Serialize message field [intertia_ixz]
    bufferOffset = _serializer.float64(obj.intertia_ixz, buffer, bufferOffset);
    // Serialize message field [intertia_iyy]
    bufferOffset = _serializer.float64(obj.intertia_iyy, buffer, bufferOffset);
    // Serialize message field [intertia_iyz]
    bufferOffset = _serializer.float64(obj.intertia_iyz, buffer, bufferOffset);
    // Serialize message field [intertia_izz]
    bufferOffset = _serializer.float64(obj.intertia_izz, buffer, bufferOffset);
    // Serialize message field [link_visual]
    // Serialize the length for message field [link_visual]
    bufferOffset = _serializer.uint32(obj.link_visual.length, buffer, bufferOffset);
    obj.link_visual.forEach((val) => {
      bufferOffset = LinkVisual.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [link_collision]
    // Serialize the length for message field [link_collision]
    bufferOffset = _serializer.uint32(obj.link_collision.length, buffer, bufferOffset);
    obj.link_collision.forEach((val) => {
      bufferOffset = LinkCollision.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LinkDescription
    let len;
    let data = new LinkDescription(null);
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
    // Deserialize message field [mass]
    data.mass = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [intertia_ixx]
    data.intertia_ixx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [intertia_ixy]
    data.intertia_ixy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [intertia_ixz]
    data.intertia_ixz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [intertia_iyy]
    data.intertia_iyy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [intertia_iyz]
    data.intertia_iyz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [intertia_izz]
    data.intertia_izz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [link_visual]
    // Deserialize array length for message field [link_visual]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.link_visual = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.link_visual[i] = LinkVisual.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [link_collision]
    // Deserialize array length for message field [link_collision]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.link_collision = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.link_collision[i] = LinkCollision.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    object.link_visual.forEach((val) => {
      length += LinkVisual.getMessageSize(val);
    });
    object.link_collision.forEach((val) => {
      length += LinkCollision.getMessageSize(val);
    });
    return length + 116;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_workstation/LinkDescription';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd72565d0e95e131a90ff696d5b4ff17f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #See: http://wiki.ros.org/urdf/XML/link
    
    
    string name
    
    #inertial
    float64 origin_x
    float64 origin_y
    float64 origin_z
    
    float64 origin_r
    float64 origin_p
    float64 origin_yy
    
    float64 mass
    
    float64 intertia_ixx
    float64 intertia_ixy
    float64 intertia_ixz
    float64 intertia_iyy
    float64 intertia_iyz
    float64 intertia_izz
    
    #visual
    LinkVisual[] link_visual           #List of visual elements
    
    #collision
    LinkCollision[] link_collision     #List of collision elements
    
    ================================================================================
    MSG: modrob_workstation/LinkVisual
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
    
    string texture
    ================================================================================
    MSG: modrob_workstation/LinkCollision
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
    const resolved = new LinkDescription(null);
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

    if (msg.mass !== undefined) {
      resolved.mass = msg.mass;
    }
    else {
      resolved.mass = 0.0
    }

    if (msg.intertia_ixx !== undefined) {
      resolved.intertia_ixx = msg.intertia_ixx;
    }
    else {
      resolved.intertia_ixx = 0.0
    }

    if (msg.intertia_ixy !== undefined) {
      resolved.intertia_ixy = msg.intertia_ixy;
    }
    else {
      resolved.intertia_ixy = 0.0
    }

    if (msg.intertia_ixz !== undefined) {
      resolved.intertia_ixz = msg.intertia_ixz;
    }
    else {
      resolved.intertia_ixz = 0.0
    }

    if (msg.intertia_iyy !== undefined) {
      resolved.intertia_iyy = msg.intertia_iyy;
    }
    else {
      resolved.intertia_iyy = 0.0
    }

    if (msg.intertia_iyz !== undefined) {
      resolved.intertia_iyz = msg.intertia_iyz;
    }
    else {
      resolved.intertia_iyz = 0.0
    }

    if (msg.intertia_izz !== undefined) {
      resolved.intertia_izz = msg.intertia_izz;
    }
    else {
      resolved.intertia_izz = 0.0
    }

    if (msg.link_visual !== undefined) {
      resolved.link_visual = new Array(msg.link_visual.length);
      for (let i = 0; i < resolved.link_visual.length; ++i) {
        resolved.link_visual[i] = LinkVisual.Resolve(msg.link_visual[i]);
      }
    }
    else {
      resolved.link_visual = []
    }

    if (msg.link_collision !== undefined) {
      resolved.link_collision = new Array(msg.link_collision.length);
      for (let i = 0; i < resolved.link_collision.length; ++i) {
        resolved.link_collision[i] = LinkCollision.Resolve(msg.link_collision[i]);
      }
    }
    else {
      resolved.link_collision = []
    }

    return resolved;
    }
};

module.exports = LinkDescription;
