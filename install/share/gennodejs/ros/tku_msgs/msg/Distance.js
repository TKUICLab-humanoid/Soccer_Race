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

class Distance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_dis = null;
      this.y_dis = null;
      this.dis = null;
    }
    else {
      if (initObj.hasOwnProperty('x_dis')) {
        this.x_dis = initObj.x_dis
      }
      else {
        this.x_dis = 0;
      }
      if (initObj.hasOwnProperty('y_dis')) {
        this.y_dis = initObj.y_dis
      }
      else {
        this.y_dis = 0;
      }
      if (initObj.hasOwnProperty('dis')) {
        this.dis = initObj.dis
      }
      else {
        this.dis = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Distance
    // Serialize message field [x_dis]
    bufferOffset = _serializer.int16(obj.x_dis, buffer, bufferOffset);
    // Serialize message field [y_dis]
    bufferOffset = _serializer.int16(obj.y_dis, buffer, bufferOffset);
    // Serialize message field [dis]
    bufferOffset = _serializer.int16(obj.dis, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Distance
    let len;
    let data = new Distance(null);
    // Deserialize message field [x_dis]
    data.x_dis = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [y_dis]
    data.y_dis = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [dis]
    data.dis = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/Distance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3321358cdd898a39621fbe77e10211cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 x_dis
    int16 y_dis
    int16 dis
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Distance(null);
    if (msg.x_dis !== undefined) {
      resolved.x_dis = msg.x_dis;
    }
    else {
      resolved.x_dis = 0
    }

    if (msg.y_dis !== undefined) {
      resolved.y_dis = msg.y_dis;
    }
    else {
      resolved.y_dis = 0
    }

    if (msg.dis !== undefined) {
      resolved.dis = msg.dis;
    }
    else {
      resolved.dis = 0
    }

    return resolved;
    }
};

module.exports = Distance;
