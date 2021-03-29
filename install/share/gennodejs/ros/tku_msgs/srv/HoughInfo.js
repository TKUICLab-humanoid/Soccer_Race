// Auto-generated. Do not edit!

// (in-package tku_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class HoughInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Load = null;
    }
    else {
      if (initObj.hasOwnProperty('Load')) {
        this.Load = initObj.Load
      }
      else {
        this.Load = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HoughInfoRequest
    // Serialize message field [Load]
    bufferOffset = _serializer.bool(obj.Load, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HoughInfoRequest
    let len;
    let data = new HoughInfoRequest(null);
    // Deserialize message field [Load]
    data.Load = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/HoughInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a0ee7dd7db7d3262047f4747a0d46cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Load
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HoughInfoRequest(null);
    if (msg.Load !== undefined) {
      resolved.Load = msg.Load;
    }
    else {
      resolved.Load = false
    }

    return resolved;
    }
};

class HoughInfoResponse {
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
    // Serializes a message object of type HoughInfoResponse
    // Serialize message field [Hough_threshold]
    bufferOffset = _serializer.int32(obj.Hough_threshold, buffer, bufferOffset);
    // Serialize message field [Hough_minLineLength]
    bufferOffset = _serializer.int32(obj.Hough_minLineLength, buffer, bufferOffset);
    // Serialize message field [Hough_maxLineGap]
    bufferOffset = _serializer.int32(obj.Hough_maxLineGap, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HoughInfoResponse
    let len;
    let data = new HoughInfoResponse(null);
    // Deserialize message field [Hough_threshold]
    data.Hough_threshold = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Hough_minLineLength]
    data.Hough_minLineLength = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Hough_maxLineGap]
    data.Hough_maxLineGap = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/HoughInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd26af9023b173db3677972c8053283be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 Hough_threshold
    int32 Hough_minLineLength
    int32 Hough_maxLineGap
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HoughInfoResponse(null);
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

module.exports = {
  Request: HoughInfoRequest,
  Response: HoughInfoResponse,
  md5sum() { return '8863b4634d224e62b8e462b542f70e71'; },
  datatype() { return 'tku_msgs/HoughInfo'; }
};
