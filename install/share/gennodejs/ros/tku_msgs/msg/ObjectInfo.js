// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WitchData = require('./WitchData.js');

//-----------------------------------------------------------

class ObjectInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.x = null;
      this.y = null;
      this.exist_flag = null;
      this.theta = null;
      this.dist = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('exist_flag')) {
        this.exist_flag = initObj.exist_flag
      }
      else {
        this.exist_flag = false;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = new WitchData();
      }
      if (initObj.hasOwnProperty('dist')) {
        this.dist = initObj.dist
      }
      else {
        this.dist = new WitchData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectInfo
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [exist_flag]
    bufferOffset = _serializer.bool(obj.exist_flag, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = WitchData.serialize(obj.theta, buffer, bufferOffset);
    // Serialize message field [dist]
    bufferOffset = WitchData.serialize(obj.dist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectInfo
    let len;
    let data = new ObjectInfo(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [exist_flag]
    data.exist_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = WitchData.deserialize(buffer, bufferOffset);
    // Deserialize message field [dist]
    data.dist = WitchData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/ObjectInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47a2b9ccd08f45a927e72a0d6f89a035';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    float32 x
    float32 y
    bool exist_flag
    WitchData theta
    WitchData dist
    
    ================================================================================
    MSG: tku_msgs/WitchData
    float32 local
    float32 global
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectInfo(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.exist_flag !== undefined) {
      resolved.exist_flag = msg.exist_flag;
    }
    else {
      resolved.exist_flag = false
    }

    if (msg.theta !== undefined) {
      resolved.theta = WitchData.Resolve(msg.theta)
    }
    else {
      resolved.theta = new WitchData()
    }

    if (msg.dist !== undefined) {
      resolved.dist = WitchData.Resolve(msg.dist)
    }
    else {
      resolved.dist = new WitchData()
    }

    return resolved;
    }
};

module.exports = ObjectInfo;
