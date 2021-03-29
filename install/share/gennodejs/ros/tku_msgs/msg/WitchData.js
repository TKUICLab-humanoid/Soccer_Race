// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WitchData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.local = null;
      this.global = null;
    }
    else {
      if (initObj.hasOwnProperty('local')) {
        this.local = initObj.local
      }
      else {
        this.local = 0.0;
      }
      if (initObj.hasOwnProperty('global')) {
        this.global = initObj.global
      }
      else {
        this.global = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WitchData
    // Serialize message field [local]
    bufferOffset = _serializer.float32(obj.local, buffer, bufferOffset);
    // Serialize message field [global]
    bufferOffset = _serializer.float32(obj.global, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WitchData
    let len;
    let data = new WitchData(null);
    // Deserialize message field [local]
    data.local = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [global]
    data.global = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/WitchData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c4765c233d983bd19b05cf6077eb24f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 local
    float32 global
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WitchData(null);
    if (msg.local !== undefined) {
      resolved.local = msg.local;
    }
    else {
      resolved.local = 0.0
    }

    if (msg.global !== undefined) {
      resolved.global = msg.global;
    }
    else {
      resolved.global = 0.0
    }

    return resolved;
    }
};

module.exports = WitchData;
