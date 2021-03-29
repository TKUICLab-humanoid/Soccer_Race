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

class SandHandSpeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sector = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('sector')) {
        this.sector = initObj.sector
      }
      else {
        this.sector = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SandHandSpeed
    // Serialize message field [sector]
    bufferOffset = _serializer.int16(obj.sector, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.int16(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SandHandSpeed
    let len;
    let data = new SandHandSpeed(null);
    // Deserialize message field [sector]
    data.sector = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/SandHandSpeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2d5ef17ed061f55340a6ac0fd02ec93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 sector
    int16 speed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SandHandSpeed(null);
    if (msg.sector !== undefined) {
      resolved.sector = msg.sector;
    }
    else {
      resolved.sector = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    return resolved;
    }
};

module.exports = SandHandSpeed;
