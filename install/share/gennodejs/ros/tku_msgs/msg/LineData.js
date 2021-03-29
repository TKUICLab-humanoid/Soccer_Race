// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Cooridinate = require('./Cooridinate.js');

//-----------------------------------------------------------

class LineData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Line_theta = null;
      this.Line_length = null;
      this.start_point = null;
      this.end_point = null;
      this.center_point = null;
      this.relative_distance = null;
      this.Nearest_point = null;
    }
    else {
      if (initObj.hasOwnProperty('Line_theta')) {
        this.Line_theta = initObj.Line_theta
      }
      else {
        this.Line_theta = 0.0;
      }
      if (initObj.hasOwnProperty('Line_length')) {
        this.Line_length = initObj.Line_length
      }
      else {
        this.Line_length = 0;
      }
      if (initObj.hasOwnProperty('start_point')) {
        this.start_point = initObj.start_point
      }
      else {
        this.start_point = new Cooridinate();
      }
      if (initObj.hasOwnProperty('end_point')) {
        this.end_point = initObj.end_point
      }
      else {
        this.end_point = new Cooridinate();
      }
      if (initObj.hasOwnProperty('center_point')) {
        this.center_point = initObj.center_point
      }
      else {
        this.center_point = new Cooridinate();
      }
      if (initObj.hasOwnProperty('relative_distance')) {
        this.relative_distance = initObj.relative_distance
      }
      else {
        this.relative_distance = 0.0;
      }
      if (initObj.hasOwnProperty('Nearest_point')) {
        this.Nearest_point = initObj.Nearest_point
      }
      else {
        this.Nearest_point = new Cooridinate();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineData
    // Serialize message field [Line_theta]
    bufferOffset = _serializer.float32(obj.Line_theta, buffer, bufferOffset);
    // Serialize message field [Line_length]
    bufferOffset = _serializer.int16(obj.Line_length, buffer, bufferOffset);
    // Serialize message field [start_point]
    bufferOffset = Cooridinate.serialize(obj.start_point, buffer, bufferOffset);
    // Serialize message field [end_point]
    bufferOffset = Cooridinate.serialize(obj.end_point, buffer, bufferOffset);
    // Serialize message field [center_point]
    bufferOffset = Cooridinate.serialize(obj.center_point, buffer, bufferOffset);
    // Serialize message field [relative_distance]
    bufferOffset = _serializer.float32(obj.relative_distance, buffer, bufferOffset);
    // Serialize message field [Nearest_point]
    bufferOffset = Cooridinate.serialize(obj.Nearest_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineData
    let len;
    let data = new LineData(null);
    // Deserialize message field [Line_theta]
    data.Line_theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Line_length]
    data.Line_length = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [start_point]
    data.start_point = Cooridinate.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_point]
    data.end_point = Cooridinate.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_point]
    data.center_point = Cooridinate.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_distance]
    data.relative_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Nearest_point]
    data.Nearest_point = Cooridinate.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/LineData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '286db25d85b96a7f73924a86b3c7e511';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Line_theta
    int16 Line_length
    Cooridinate start_point
    Cooridinate end_point
    Cooridinate center_point
    float32 relative_distance
    Cooridinate Nearest_point
    
    ================================================================================
    MSG: tku_msgs/Cooridinate
    int16 x
    int16 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LineData(null);
    if (msg.Line_theta !== undefined) {
      resolved.Line_theta = msg.Line_theta;
    }
    else {
      resolved.Line_theta = 0.0
    }

    if (msg.Line_length !== undefined) {
      resolved.Line_length = msg.Line_length;
    }
    else {
      resolved.Line_length = 0
    }

    if (msg.start_point !== undefined) {
      resolved.start_point = Cooridinate.Resolve(msg.start_point)
    }
    else {
      resolved.start_point = new Cooridinate()
    }

    if (msg.end_point !== undefined) {
      resolved.end_point = Cooridinate.Resolve(msg.end_point)
    }
    else {
      resolved.end_point = new Cooridinate()
    }

    if (msg.center_point !== undefined) {
      resolved.center_point = Cooridinate.Resolve(msg.center_point)
    }
    else {
      resolved.center_point = new Cooridinate()
    }

    if (msg.relative_distance !== undefined) {
      resolved.relative_distance = msg.relative_distance;
    }
    else {
      resolved.relative_distance = 0.0
    }

    if (msg.Nearest_point !== undefined) {
      resolved.Nearest_point = Cooridinate.Resolve(msg.Nearest_point)
    }
    else {
      resolved.Nearest_point = new Cooridinate()
    }

    return resolved;
    }
};

module.exports = LineData;
