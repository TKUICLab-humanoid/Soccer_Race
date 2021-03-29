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

class HSVValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.HMin = null;
      this.HMax = null;
      this.SMin = null;
      this.SMax = null;
      this.VMin = null;
      this.VMax = null;
    }
    else {
      if (initObj.hasOwnProperty('HMin')) {
        this.HMin = initObj.HMin
      }
      else {
        this.HMin = 0;
      }
      if (initObj.hasOwnProperty('HMax')) {
        this.HMax = initObj.HMax
      }
      else {
        this.HMax = 0;
      }
      if (initObj.hasOwnProperty('SMin')) {
        this.SMin = initObj.SMin
      }
      else {
        this.SMin = 0;
      }
      if (initObj.hasOwnProperty('SMax')) {
        this.SMax = initObj.SMax
      }
      else {
        this.SMax = 0;
      }
      if (initObj.hasOwnProperty('VMin')) {
        this.VMin = initObj.VMin
      }
      else {
        this.VMin = 0;
      }
      if (initObj.hasOwnProperty('VMax')) {
        this.VMax = initObj.VMax
      }
      else {
        this.VMax = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HSVValue
    // Serialize message field [HMin]
    bufferOffset = _serializer.int16(obj.HMin, buffer, bufferOffset);
    // Serialize message field [HMax]
    bufferOffset = _serializer.int16(obj.HMax, buffer, bufferOffset);
    // Serialize message field [SMin]
    bufferOffset = _serializer.int16(obj.SMin, buffer, bufferOffset);
    // Serialize message field [SMax]
    bufferOffset = _serializer.int16(obj.SMax, buffer, bufferOffset);
    // Serialize message field [VMin]
    bufferOffset = _serializer.int16(obj.VMin, buffer, bufferOffset);
    // Serialize message field [VMax]
    bufferOffset = _serializer.int16(obj.VMax, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HSVValue
    let len;
    let data = new HSVValue(null);
    // Deserialize message field [HMin]
    data.HMin = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [HMax]
    data.HMax = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [SMin]
    data.SMin = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [SMax]
    data.SMax = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [VMin]
    data.VMin = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [VMax]
    data.VMax = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/HSVValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3f516b6603d2233bee0097ee5df3644';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 HMin
    int16 HMax
    int16 SMin
    int16 SMax
    int16 VMin
    int16 VMax
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HSVValue(null);
    if (msg.HMin !== undefined) {
      resolved.HMin = msg.HMin;
    }
    else {
      resolved.HMin = 0
    }

    if (msg.HMax !== undefined) {
      resolved.HMax = msg.HMax;
    }
    else {
      resolved.HMax = 0
    }

    if (msg.SMin !== undefined) {
      resolved.SMin = msg.SMin;
    }
    else {
      resolved.SMin = 0
    }

    if (msg.SMax !== undefined) {
      resolved.SMax = msg.SMax;
    }
    else {
      resolved.SMax = 0
    }

    if (msg.VMin !== undefined) {
      resolved.VMin = msg.VMin;
    }
    else {
      resolved.VMin = 0
    }

    if (msg.VMax !== undefined) {
      resolved.VMax = msg.VMax;
    }
    else {
      resolved.VMax = 0
    }

    return resolved;
    }
};

module.exports = HSVValue;
