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

class ImageProcess {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gray_min = null;
      this.gray_max = null;
    }
    else {
      if (initObj.hasOwnProperty('gray_min')) {
        this.gray_min = initObj.gray_min
      }
      else {
        this.gray_min = 0;
      }
      if (initObj.hasOwnProperty('gray_max')) {
        this.gray_max = initObj.gray_max
      }
      else {
        this.gray_max = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageProcess
    // Serialize message field [gray_min]
    bufferOffset = _serializer.int16(obj.gray_min, buffer, bufferOffset);
    // Serialize message field [gray_max]
    bufferOffset = _serializer.int16(obj.gray_max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageProcess
    let len;
    let data = new ImageProcess(null);
    // Deserialize message field [gray_min]
    data.gray_min = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gray_max]
    data.gray_max = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/ImageProcess';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9172034b9bfb58696ee80ca50817001';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 gray_min
    int16 gray_max
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageProcess(null);
    if (msg.gray_min !== undefined) {
      resolved.gray_min = msg.gray_min;
    }
    else {
      resolved.gray_min = 0
    }

    if (msg.gray_max !== undefined) {
      resolved.gray_max = msg.gray_max;
    }
    else {
      resolved.gray_max = 0
    }

    return resolved;
    }
};

module.exports = ImageProcess;
