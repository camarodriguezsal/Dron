// Auto-generated. Do not edit!

// (in-package modrob_control_kinematics.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ControlVelocityDesired {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_velocities = null;
      this.workspace_velocities = null;
      this.isJointspace = null;
      this.tool_activation = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_velocities')) {
        this.joint_velocities = initObj.joint_velocities
      }
      else {
        this.joint_velocities = [];
      }
      if (initObj.hasOwnProperty('workspace_velocities')) {
        this.workspace_velocities = initObj.workspace_velocities
      }
      else {
        this.workspace_velocities = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('isJointspace')) {
        this.isJointspace = initObj.isJointspace
      }
      else {
        this.isJointspace = false;
      }
      if (initObj.hasOwnProperty('tool_activation')) {
        this.tool_activation = initObj.tool_activation
      }
      else {
        this.tool_activation = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlVelocityDesired
    // Serialize message field [joint_velocities]
    bufferOffset = _arraySerializer.float64(obj.joint_velocities, buffer, bufferOffset, null);
    // Serialize message field [workspace_velocities]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.workspace_velocities, buffer, bufferOffset);
    // Serialize message field [isJointspace]
    bufferOffset = _serializer.bool(obj.isJointspace, buffer, bufferOffset);
    // Serialize message field [tool_activation]
    bufferOffset = _serializer.bool(obj.tool_activation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlVelocityDesired
    let len;
    let data = new ControlVelocityDesired(null);
    // Deserialize message field [joint_velocities]
    data.joint_velocities = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [workspace_velocities]
    data.workspace_velocities = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [isJointspace]
    data.isJointspace = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tool_activation]
    data.tool_activation = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_velocities.length;
    return length + 54;
  }

  static datatype() {
    // Returns string type for a message object
    return 'modrob_control_kinematics/ControlVelocityDesired';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f1126242bb2728989806e997a6c03bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message containing all posible velocities for Jointspace control and Workspace control and a bool for activating the tool
    # This message should be used to tell the kinematics node the desired velocities coming from a control device
    
    # Joint velocities for joint control
    # Array indices from 0 to max joints starting at the base joint
    float64[] joint_velocities
    
    # Cartesian velocities for workspace control
    geometry_msgs/Twist workspace_velocities
    
    # Boolean to indicate if joint space or workspace data is valid
    bool isJointspace
    
    # Boolean for toolactivation
    bool tool_activation
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    const resolved = new ControlVelocityDesired(null);
    if (msg.joint_velocities !== undefined) {
      resolved.joint_velocities = msg.joint_velocities;
    }
    else {
      resolved.joint_velocities = []
    }

    if (msg.workspace_velocities !== undefined) {
      resolved.workspace_velocities = geometry_msgs.msg.Twist.Resolve(msg.workspace_velocities)
    }
    else {
      resolved.workspace_velocities = new geometry_msgs.msg.Twist()
    }

    if (msg.isJointspace !== undefined) {
      resolved.isJointspace = msg.isJointspace;
    }
    else {
      resolved.isJointspace = false
    }

    if (msg.tool_activation !== undefined) {
      resolved.tool_activation = msg.tool_activation;
    }
    else {
      resolved.tool_activation = false
    }

    return resolved;
    }
};

module.exports = ControlVelocityDesired;
