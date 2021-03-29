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

class ColorData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.X = null;
      this.Y = null;
      this.XMin = null;
      this.XMax = null;
      this.YMin = null;
      this.YMax = null;
      this.Width = null;
      this.Height = null;
      this.size = null;
    }
    else {
      if (initObj.hasOwnProperty('X')) {
        this.X = initObj.X
      }
      else {
        this.X = 0;
      }
      if (initObj.hasOwnProperty('Y')) {
        this.Y = initObj.Y
      }
      else {
        this.Y = 0;
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
      if (initObj.hasOwnProperty('Width')) {
        this.Width = initObj.Width
      }
      else {
        this.Width = 0;
      }
      if (initObj.hasOwnProperty('Height')) {
        this.Height = initObj.Height
      }
      else {
        this.Height = 0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ColorData
    // Serialize message field [X]
    bufferOffset = _serializer.int32(obj.X, buffer, bufferOffset);
    // Serialize message field [Y]
    bufferOffset = _serializer.int32(obj.Y, buffer, bufferOffset);
    // Serialize message field [XMin]
    bufferOffset = _serializer.int32(obj.XMin, buffer, bufferOffset);
    // Serialize message field [XMax]
    bufferOffset = _serializer.int32(obj.XMax, buffer, bufferOffset);
    // Serialize message field [YMin]
    bufferOffset = _serializer.int32(obj.YMin, buffer, bufferOffset);
    // Serialize message field [YMax]
    bufferOffset = _serializer.int32(obj.YMax, buffer, bufferOffset);
    // Serialize message field [Width]
    bufferOffset = _serializer.int32(obj.Width, buffer, bufferOffset);
    // Serialize message field [Height]
    bufferOffset = _serializer.int32(obj.Height, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.int32(obj.size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ColorData
    let len;
    let data = new ColorData(null);
    // Deserialize message field [X]
    data.X = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Y]
    data.Y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [XMin]
    data.XMin = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [XMax]
    data.XMax = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [YMin]
    data.YMin = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [YMax]
    data.YMax = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Width]
    data.Width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Height]
    data.Height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/ColorData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b2d8bae9bd6b77219cd9e9c64987ae9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ColorData(null);
    if (msg.X !== undefined) {
      resolved.X = msg.X;
    }
    else {
      resolved.X = 0
    }

    if (msg.Y !== undefined) {
      resolved.Y = msg.Y;
    }
    else {
      resolved.Y = 0
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

    if (msg.Width !== undefined) {
      resolved.Width = msg.Width;
    }
    else {
      resolved.Width = 0
    }

    if (msg.Height !== undefined) {
      resolved.Height = msg.Height;
    }
    else {
      resolved.Height = 0
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    return resolved;
    }
};

module.exports = ColorData;
