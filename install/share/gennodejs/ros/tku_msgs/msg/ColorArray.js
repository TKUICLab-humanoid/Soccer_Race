// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ColorData = require('./ColorData.js');

//-----------------------------------------------------------

class ColorArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cnt = null;
      this.Colorarray = null;
    }
    else {
      if (initObj.hasOwnProperty('cnt')) {
        this.cnt = initObj.cnt
      }
      else {
        this.cnt = 0;
      }
      if (initObj.hasOwnProperty('Colorarray')) {
        this.Colorarray = initObj.Colorarray
      }
      else {
        this.Colorarray = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ColorArray
    // Serialize message field [cnt]
    bufferOffset = _serializer.int32(obj.cnt, buffer, bufferOffset);
    // Serialize message field [Colorarray]
    // Serialize the length for message field [Colorarray]
    bufferOffset = _serializer.uint32(obj.Colorarray.length, buffer, bufferOffset);
    obj.Colorarray.forEach((val) => {
      bufferOffset = ColorData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ColorArray
    let len;
    let data = new ColorArray(null);
    // Deserialize message field [cnt]
    data.cnt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Colorarray]
    // Deserialize array length for message field [Colorarray]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Colorarray = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Colorarray[i] = ColorData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 36 * object.Colorarray.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/ColorArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cb678902d3e5f54cc5645b0e01f2d9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 cnt
    ColorData[] Colorarray
    
    ================================================================================
    MSG: tku_msgs/ColorData
    int32 X
    int32 Y
    int32 XMin
    int32 XMax
    int32 YMin
    int32 YMax
    int32 Width
    int32 Height
    int32 size                                                 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ColorArray(null);
    if (msg.cnt !== undefined) {
      resolved.cnt = msg.cnt;
    }
    else {
      resolved.cnt = 0
    }

    if (msg.Colorarray !== undefined) {
      resolved.Colorarray = new Array(msg.Colorarray.length);
      for (let i = 0; i < resolved.Colorarray.length; ++i) {
        resolved.Colorarray[i] = ColorData.Resolve(msg.Colorarray[i]);
      }
    }
    else {
      resolved.Colorarray = []
    }

    return resolved;
    }
};

module.exports = ColorArray;
