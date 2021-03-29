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

class DrawImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cnt = null;
      this.Mode = null;
      this.XMin = null;
      this.XMax = null;
      this.YMin = null;
      this.YMax = null;
      this.rValue = null;
      this.gValue = null;
      this.bValue = null;
    }
    else {
      if (initObj.hasOwnProperty('cnt')) {
        this.cnt = initObj.cnt
      }
      else {
        this.cnt = 0;
      }
      if (initObj.hasOwnProperty('Mode')) {
        this.Mode = initObj.Mode
      }
      else {
        this.Mode = 0;
      }
      if (initObj.hasOwnProperty('XMin')) {
        this.XMin = initObj.XMin
      }
      else {
        this.XMin = 0;
      }
      if (initObj.hasOwnProperty('XMax')) {
        this.XMax = initObj.XMax
      }
      else {
        this.XMax = 0;
      }
      if (initObj.hasOwnProperty('YMin')) {
        this.YMin = initObj.YMin
      }
      else {
        this.YMin = 0;
      }
      if (initObj.hasOwnProperty('YMax')) {
        this.YMax = initObj.YMax
      }
      else {
        this.YMax = 0;
      }
      if (initObj.hasOwnProperty('rValue')) {
        this.rValue = initObj.rValue
      }
      else {
        this.rValue = 0;
      }
      if (initObj.hasOwnProperty('gValue')) {
        this.gValue = initObj.gValue
      }
      else {
        this.gValue = 0;
      }
      if (initObj.hasOwnProperty('bValue')) {
        this.bValue = initObj.bValue
      }
      else {
        this.bValue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DrawImage
    // Serialize message field [cnt]
    bufferOffset = _serializer.int16(obj.cnt, buffer, bufferOffset);
    // Serialize message field [Mode]
    bufferOffset = _serializer.int16(obj.Mode, buffer, bufferOffset);
    // Serialize message field [XMin]
    bufferOffset = _serializer.int16(obj.XMin, buffer, bufferOffset);
    // Serialize message field [XMax]
    bufferOffset = _serializer.int16(obj.XMax, buffer, bufferOffset);
    // Serialize message field [YMin]
    bufferOffset = _serializer.int16(obj.YMin, buffer, bufferOffset);
    // Serialize message field [YMax]
    bufferOffset = _serializer.int16(obj.YMax, buffer, bufferOffset);
    // Serialize message field [rValue]
    bufferOffset = _serializer.int32(obj.rValue, buffer, bufferOffset);
    // Serialize message field [gValue]
    bufferOffset = _serializer.int32(obj.gValue, buffer, bufferOffset);
    // Serialize message field [bValue]
    bufferOffset = _serializer.int32(obj.bValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DrawImage
    let len;
    let data = new DrawImage(null);
    // Deserialize message field [cnt]
    data.cnt = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Mode]
    data.Mode = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [XMin]
    data.XMin = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [XMax]
    data.XMax = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [YMin]
    data.YMin = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [YMax]
    data.YMax = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rValue]
    data.rValue = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gValue]
    data.gValue = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bValue]
    data.bValue = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/DrawImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f46c76bfaefb605a36feaa62dd79230';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 cnt
    int16 Mode
    int16 XMin
    int16 XMax
    int16 YMin
    int16 YMax
    int32 rValue
    int32 gValue
    int32 bValue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DrawImage(null);
    if (msg.cnt !== undefined) {
      resolved.cnt = msg.cnt;
    }
    else {
      resolved.cnt = 0
    }

    if (msg.Mode !== undefined) {
      resolved.Mode = msg.Mode;
    }
    else {
      resolved.Mode = 0
    }

    if (msg.XMin !== undefined) {
      resolved.XMin = msg.XMin;
    }
    else {
      resolved.XMin = 0
    }

    if (msg.XMax !== undefined) {
      resolved.XMax = msg.XMax;
    }
    else {
      resolved.XMax = 0
    }

    if (msg.YMin !== undefined) {
      resolved.YMin = msg.YMin;
    }
    else {
      resolved.YMin = 0
    }

    if (msg.YMax !== undefined) {
      resolved.YMax = msg.YMax;
    }
    else {
      resolved.YMax = 0
    }

    if (msg.rValue !== undefined) {
      resolved.rValue = msg.rValue;
    }
    else {
      resolved.rValue = 0
    }

    if (msg.gValue !== undefined) {
      resolved.gValue = msg.gValue;
    }
    else {
      resolved.gValue = 0
    }

    if (msg.bValue !== undefined) {
      resolved.bValue = msg.bValue;
    }
    else {
      resolved.bValue = 0
    }

    return resolved;
    }
};

module.exports = DrawImage;
