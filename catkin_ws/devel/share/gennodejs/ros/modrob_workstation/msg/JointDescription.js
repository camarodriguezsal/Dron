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

class JointDescription {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.type = null;
      this.origin_x = null;
      this.origin_y = null;
      this.origin_z = null;
      this.origin_r = null;
      this.origin_p = null;
      this.origin_yy = null;
      this.parent_link = null;
      this.child_link = null;
      this.axis_x = null;
      this.axis_y = null;
      this.axis_z = null;
      this.damping = null;
      this.friction = null;
      this.lower = null;
      this.upper = null;
      this.effort = null;
      this.velocity = null;
      this.soft_lower_limit = null;
      this.soft_upper_limit = null;
      this.k_position = null;
      this.k_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
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
      if (initObj.hasOwnProperty('parent_link')) {
        this.parent_link = initObj.parent_link
      }
      else {
        this.parent_link = '';
      }
      if (initObj.hasOwnProperty('child_link')) {
        this.child_link = initObj.child_link
      }
      else {
        this.child_link = '';
      }
      if (initObj.hasOwnProperty('axis_x')) {
        this.axis_x = initObj.axis_x
      }
      else {
        this.axis_x = 0.0;
      }
      if (initObj.hasOwnProperty('axis_y')) {
        this.axis_y = initObj.axis_y
      }
      else {
        this.axis_y = 0.0;
      }
      if (initObj.hasOwnProperty('axis_z')) {
        this.axis_z = initObj.axis_z
      }
      else {
        this.axis_z = 0.0;
      }
      if (initObj.hasOwnProperty('damping')) {
        this.damping = initObj.damping
      }
      else {
        this.damping = 0.0;
      }
      if (initObj.hasOwnProperty('friction')) {
        this.friction = initObj.friction
      }
      else {
        this.friction = 0.0;
      }
      if (initObj.hasOwnProperty('lower')) {
        this.lower = initObj.lower
      }
      else {
        this.lower = 0.0;
      }
      if (initObj.hasOwnProperty('upper')) {
        this.upper = initObj.upper
      }
      else {
        this.upper = 0.0;
      }
      if (initObj.hasOwnProperty('effort')) {
        this.effort = initObj.effort
      }
      else {
        this.effort = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('soft_lower_limit')) {
        this.soft_lower_limit = initObj.soft_lower_limit
      }
      else {
        this.soft_lower_limit = 0.0;
      }
      if (initObj.hasOwnProperty('soft_upper_limit')) {
        this.soft_upper_limit = initObj.soft_upper_limit
      }
      else {
        this.soft_upper_limit = 0.0;
      }
      if (initObj.hasOwnProperty('k_position')) {
        this.k_position = initObj.k_position
      }
      else {
        this.k_position = 0.0;
      }
      if (initObj.hasOwnProperty('k_velocity')) {
        this.k_velocity = initObj.k_velocity
      }
      else {
        this.k_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointDescription
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
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
    // Serialize message field [parent_link]
    bufferOffset = _serializer.string(obj.parent_link, buffer, bufferOffset);
    // Serialize message field [child_link]
    bufferOffset = _serializer.string(obj.child_link, buffer, bufferOffset);
    // Serialize message field [axis_x]
    bufferOffset = _serializer.float64(obj.axis_x, buffer, bufferOffset);
    // Serialize message field [axis_y]
    bufferOffset = _serializer.float64(obj.axis_y, buffer, bufferOffset);
    // Serialize message field [axis_z]
    bufferOffset = _serializer.float64(obj.axis_z, buffer, bufferOffset);
    // Serialize message field [damping]
    bufferOffset = _serializer.float64(obj.damping, buffer, bufferOffset);
    // Serialize message field [friction]
    bufferOffset = _serializer.float64(obj.friction, buffer, bufferOffset);
    // Serialize message field [lower]
    bufferOffset = _serializer.float64(obj.lower, buffer, bufferOffset);
    // Serialize message field [upper]
    bufferOffset = _serializer.float64(obj.upper, buffer, bufferOffset);
    // Serialize message field [effort]
    bufferOffset = _serializer.float64(obj.effort, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [soft_lower_limit]
    bufferOffset = _serializer.float64(obj.soft_lower_limit, buffer, bufferOffset);
    // Serialize message field [soft_upper_limit]
    bufferOffset = _serializer.float64(obj.soft_upper_limit, buffer, bufferOffset);
    // Serialize message field [k_position]
    bufferOffset = _serializer.float64(obj.k_position, buffer, bufferOffset);
    // Serialize message field [k_velocity]
    bufferOffset = _serializer.float64(obj.k_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointDescription
    let len;
    let data = new JointDescription(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
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
    // Deserialize message field [parent_link]
    data.parent_link = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [child_link]
    data.child_link = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [axis_x]
    data.axis_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [axis_y]
    data.axis_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [axis_z]
    data.axis_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [damping]
    data.damping = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [friction]
    data.friction = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lower]
    data.lower = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [upper]
    data.upper = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [effort]
    data.effort = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [soft_lower_limit]
    data.soft_lower_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [soft_upper_limit]
    data.soft_upper_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k_position]
    data.k_position = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k_velocity]
    data.k_velocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.type.length;
    length += object.parent_link.length;
    length += object.child_link.length;
    return length + 168;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_workstation/JointDescription';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89ca2f9be95e85645973f2545078047b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Documentation on each attribute, see: http://wiki.ros.org/urdf/XML/joint
    
    string name
    string type
    
    #origin
    float64 origin_x
    float64 origin_y
    float64 origin_z
    
    float64 origin_r
    float64 origin_p
    float64 origin_yy
    
    #parent/child links
    string parent_link
    string child_link
    
    #axis
    float64 axis_x
    float64 axis_y
    float64 axis_z
    
    #calibration, not needed
    
    #dynamics
    float64 damping
    float64 friction
    
    #limit
    float64 lower
    float64 upper
    float64 effort
    float64 velocity
    
    #mimic, not needed
    
    #safety_controller
    float64 soft_lower_limit
    float64 soft_upper_limit
    float64 k_position
    float64 k_velocity
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointDescription(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
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

    if (msg.parent_link !== undefined) {
      resolved.parent_link = msg.parent_link;
    }
    else {
      resolved.parent_link = ''
    }

    if (msg.child_link !== undefined) {
      resolved.child_link = msg.child_link;
    }
    else {
      resolved.child_link = ''
    }

    if (msg.axis_x !== undefined) {
      resolved.axis_x = msg.axis_x;
    }
    else {
      resolved.axis_x = 0.0
    }

    if (msg.axis_y !== undefined) {
      resolved.axis_y = msg.axis_y;
    }
    else {
      resolved.axis_y = 0.0
    }

    if (msg.axis_z !== undefined) {
      resolved.axis_z = msg.axis_z;
    }
    else {
      resolved.axis_z = 0.0
    }

    if (msg.damping !== undefined) {
      resolved.damping = msg.damping;
    }
    else {
      resolved.damping = 0.0
    }

    if (msg.friction !== undefined) {
      resolved.friction = msg.friction;
    }
    else {
      resolved.friction = 0.0
    }

    if (msg.lower !== undefined) {
      resolved.lower = msg.lower;
    }
    else {
      resolved.lower = 0.0
    }

    if (msg.upper !== undefined) {
      resolved.upper = msg.upper;
    }
    else {
      resolved.upper = 0.0
    }

    if (msg.effort !== undefined) {
      resolved.effort = msg.effort;
    }
    else {
      resolved.effort = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.soft_lower_limit !== undefined) {
      resolved.soft_lower_limit = msg.soft_lower_limit;
    }
    else {
      resolved.soft_lower_limit = 0.0
    }

    if (msg.soft_upper_limit !== undefined) {
      resolved.soft_upper_limit = msg.soft_upper_limit;
    }
    else {
      resolved.soft_upper_limit = 0.0
    }

    if (msg.k_position !== undefined) {
      resolved.k_position = msg.k_position;
    }
    else {
      resolved.k_position = 0.0
    }

    if (msg.k_velocity !== undefined) {
      resolved.k_velocity = msg.k_velocity;
    }
    else {
      resolved.k_velocity = 0.0
    }

    return resolved;
    }
};

module.exports = JointDescription;
