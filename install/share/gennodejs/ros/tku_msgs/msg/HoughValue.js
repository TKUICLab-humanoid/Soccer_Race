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

class HoughValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Hough_threshold = null;
      this.Hough_minLineLength = null;
      this.Hough_maxLineGap = null;
    }
    else {
      if (initObj.hasOwnProperty('Hough_threshold')) {
        this.Hough_threshold = initObj.Hough_threshold
      }
      else {
        this.Hough_threshold = 0;
      }
      if (initObj.hasOwnProperty('Hough_minLineLength')) {
        this.Hough_minLineLength = initObj.Hough_minLineLength
      }
      else {
        this.Hough_minLineLength = 0;
      }
      if (initObj.hasOwnProperty('Hough_maxLineGap')) {
        this.Hough_maxLineGap = initObj.Hough_maxLineGap
      }
      else {
        this.Hough_maxLineGap = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HoughValue
    // Serialize message field [Hough_threshold]
    bufferOffset = _serializer.int16(obj.Hough_threshold, buffer, bufferOffset);
    // Serialize message field [Hough_minLineLength]
    bufferOffset = _serializer.int16(obj.Hough_minLineLength, buffer, bufferOffset);
    // Serialize message field [Hough_maxLineGap]
    bufferOffset = _serializer.int16(obj.Hough_maxLineGap, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HoughValue
    let len;
    let data = new HoughValue(null);
    // Deserialize message field [Hough_threshold]
    data.Hough_threshold = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Hough_minLineLength]
    data.Hough_minLineLength = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Hough_maxLineGap]
    data.Hough_maxLineGap = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/HoughValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd05e92877df6915f3edc27ac041474d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 Hough_threshold
    int16 Hough_minLineLength
    int16 Hough_maxLineGap
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HoughValue(null);
    if (msg.Hough_threshold !== undefined) {
      resolved.Hough_threshold = msg.Hough_threshold;
    }
    else {
      resolved.Hough_threshold = 0
    }

    if (msg.Hough_minLineLength !== undefined) {
      resolved.Hough_minLineLength = msg.Hough_minLineLength;
    }
    else {
      resolved.Hough_minLineLength = 0
    }

    if (msg.Hough_maxLineGap !== undefined) {
      resolved.Hough_maxLineGap = msg.Hough_maxLineGap;
    }
    else {
      resolved.Hough_maxLineGap = 0
    }

    return resolved;
    }
};

module.exports = HoughValue;
