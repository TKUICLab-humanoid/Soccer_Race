// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LineData = require('./LineData.js');

//-----------------------------------------------------------

class AllLineData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.all_LineData = null;
    }
    else {
      if (initObj.hasOwnProperty('all_LineData')) {
        this.all_LineData = initObj.all_LineData
      }
      else {
        this.all_LineData = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AllLineData
    // Serialize message field [all_LineData]
    // Serialize the length for message field [all_LineData]
    bufferOffset = _serializer.uint32(obj.all_LineData.length, buffer, bufferOffset);
    obj.all_LineData.forEach((val) => {
      bufferOffset = LineData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AllLineData
    let len;
    let data = new AllLineData(null);
    // Deserialize message field [all_LineData]
    // Deserialize array length for message field [all_LineData]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.all_LineData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.all_LineData[i] = LineData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 26 * object.all_LineData.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/AllLineData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c89c4722901f5abc77d01bb5fa2b88a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    LineData[] all_LineData
    
    ================================================================================
    MSG: tku_msgs/LineData
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
    const resolved = new AllLineData(null);
    if (msg.all_LineData !== undefined) {
      resolved.all_LineData = new Array(msg.all_LineData.length);
      for (let i = 0; i < resolved.all_LineData.length; ++i) {
        resolved.all_LineData[i] = LineData.Resolve(msg.all_LineData[i]);
      }
    }
    else {
      resolved.all_LineData = []
    }

    return resolved;
    }
};

module.exports = AllLineData;
