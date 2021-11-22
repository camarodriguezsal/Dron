// Auto-generated. Do not edit!

// (in-package motion_planning.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Poses {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_pick = null;
      this.pose_place = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_pick')) {
        this.pose_pick = initObj.pose_pick
      }
      else {
        this.pose_pick = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('pose_place')) {
        this.pose_place = initObj.pose_place
      }
      else {
        this.pose_place = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Poses
    // Serialize message field [pose_pick]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_pick, buffer, bufferOffset);
    // Serialize message field [pose_place]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_place, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Poses
    let len;
    let data = new Poses(null);
    // Deserialize message field [pose_pick]
    data.pose_pick = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_place]
    data.pose_place = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 112;
  }

  static datatype() {
    // Returns string type for a message object
    return 'motion_planning/Poses';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '164987af56d708ea6d17beb94fcb0d2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pose_pick
    geometry_msgs/Pose pose_place
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Poses(null);
    if (msg.pose_pick !== undefined) {
      resolved.pose_pick = geometry_msgs.msg.Pose.Resolve(msg.pose_pick)
    }
    else {
      resolved.pose_pick = new geometry_msgs.msg.Pose()
    }

    if (msg.pose_place !== undefined) {
      resolved.pose_place = geometry_msgs.msg.Pose.Resolve(msg.pose_place)
    }
    else {
      resolved.pose_place = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = Poses;
