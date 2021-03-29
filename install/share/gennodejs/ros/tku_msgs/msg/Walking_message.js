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

class Walking_message {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.X = null;
      this.Y = null;
      this.Z = null;
      this.THETA = null;
      this.Walking_Cmd = null;
      this.Sensor_Mode = null;
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
      if (initObj.hasOwnProperty('Z')) {
        this.Z = initObj.Z
      }
      else {
        this.Z = 0;
      }
      if (initObj.hasOwnProperty('THETA')) {
        this.THETA = initObj.THETA
      }
      else {
        this.THETA = 0;
      }
      if (initObj.hasOwnProperty('Walking_Cmd')) {
        this.Walking_Cmd = initObj.Walking_Cmd
      }
      else {
        this.Walking_Cmd = 0;
      }
      if (initObj.hasOwnProperty('Sensor_Mode')) {
        this.Sensor_Mode = initObj.Sensor_Mode
      }
      else {
        this.Sensor_Mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Walking_message
    // Serialize message field [X]
    bufferOffset = _serializer.int32(obj.X, buffer, bufferOffset);
    // Serialize message field [Y]
    bufferOffset = _serializer.int32(obj.Y, buffer, bufferOffset);
    // Serialize message field [Z]
    bufferOffset = _serializer.int32(obj.Z, buffer, bufferOffset);
    // Serialize message field [THETA]
    bufferOffset = _serializer.int32(obj.THETA, buffer, bufferOffset);
    // Serialize message field [Walking_Cmd]
    bufferOffset = _serializer.int32(obj.Walking_Cmd, buffer, bufferOffset);
    // Serialize message field [Sensor_Mode]
    bufferOffset = _serializer.int32(obj.Sensor_Mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Walking_message
    let len;
    let data = new Walking_message(null);
    // Deserialize message field [X]
    data.X = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Y]
    data.Y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Z]
    data.Z = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [THETA]
    data.THETA = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Walking_Cmd]
    data.Walking_Cmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Sensor_Mode]
    data.Sensor_Mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/Walking_message';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0d0a5fcb9aac712e8b8ff719a5c6246';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 X
    int32 Y
    int32 Z
    int32 THETA
    int32 Walking_Cmd
    int32 Sensor_Mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Walking_message(null);
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

    if (msg.Z !== undefined) {
      resolved.Z = msg.Z;
    }
    else {
      resolved.Z = 0
    }

    if (msg.THETA !== undefined) {
      resolved.THETA = msg.THETA;
    }
    else {
      resolved.THETA = 0
    }

    if (msg.Walking_Cmd !== undefined) {
      resolved.Walking_Cmd = msg.Walking_Cmd;
    }
    else {
      resolved.Walking_Cmd = 0
    }

    if (msg.Sensor_Mode !== undefined) {
      resolved.Sensor_Mode = msg.Sensor_Mode;
    }
    else {
      resolved.Sensor_Mode = 0
    }

    return resolved;
    }
};

module.exports = Walking_message;
