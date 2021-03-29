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

class BGRValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.BValue = null;
      this.GValue = null;
      this.RValue = null;
    }
    else {
      if (initObj.hasOwnProperty('BValue')) {
        this.BValue = initObj.BValue
      }
      else {
        this.BValue = 0;
      }
      if (initObj.hasOwnProperty('GValue')) {
        this.GValue = initObj.GValue
      }
      else {
        this.GValue = 0;
      }
      if (initObj.hasOwnProperty('RValue')) {
        this.RValue = initObj.RValue
      }
      else {
        this.RValue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BGRValue
    // Serialize message field [BValue]
    bufferOffset = _serializer.int16(obj.BValue, buffer, bufferOffset);
    // Serialize message field [GValue]
    bufferOffset = _serializer.int16(obj.GValue, buffer, bufferOffset);
    // Serialize message field [RValue]
    bufferOffset = _serializer.int16(obj.RValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BGRValue
    let len;
    let data = new BGRValue(null);
    // Deserialize message field [BValue]
    data.BValue = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [GValue]
    data.GValue = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [RValue]
    data.RValue = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/BGRValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e44fde246936bf182ab7600000dc57b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 BValue
    int16 GValue
    int16 RValue
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BGRValue(null);
    if (msg.BValue !== undefined) {
      resolved.BValue = msg.BValue;
    }
    else {
      resolved.BValue = 0
    }

    if (msg.GValue !== undefined) {
      resolved.GValue = msg.GValue;
    }
    else {
      resolved.GValue = 0
    }

    if (msg.RValue !== undefined) {
      resolved.RValue = msg.RValue;
    }
    else {
      resolved.RValue = 0
    }

    return resolved;
    }
};

module.exports = BGRValue;
