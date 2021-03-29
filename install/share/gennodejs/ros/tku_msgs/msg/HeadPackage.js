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

class HeadPackage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ID = null;
      this.Position = null;
      this.Speed = null;
    }
    else {
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('Position')) {
        this.Position = initObj.Position
      }
      else {
        this.Position = 0;
      }
      if (initObj.hasOwnProperty('Speed')) {
        this.Speed = initObj.Speed
      }
      else {
        this.Speed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeadPackage
    // Serialize message field [ID]
    bufferOffset = _serializer.int16(obj.ID, buffer, bufferOffset);
    // Serialize message field [Position]
    bufferOffset = _serializer.int16(obj.Position, buffer, bufferOffset);
    // Serialize message field [Speed]
    bufferOffset = _serializer.int16(obj.Speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeadPackage
    let len;
    let data = new HeadPackage(null);
    // Deserialize message field [ID]
    data.ID = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Position]
    data.Position = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Speed]
    data.Speed = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/HeadPackage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '500f0005c75401d9e71a90a58a6bbf60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 ID
    int16 Position
    int16 Speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeadPackage(null);
    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.Position !== undefined) {
      resolved.Position = msg.Position;
    }
    else {
      resolved.Position = 0
    }

    if (msg.Speed !== undefined) {
      resolved.Speed = msg.Speed;
    }
    else {
      resolved.Speed = 0
    }

    return resolved;
    }
};

module.exports = HeadPackage;
