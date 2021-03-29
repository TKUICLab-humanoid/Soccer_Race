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

class BGRInfoRequest {
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
    // Serializes a message object of type BGRInfoRequest
    // Serialize message field [Load]
    bufferOffset = _serializer.bool(obj.Load, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BGRInfoRequest
    let len;
    let data = new BGRInfoRequest(null);
    // Deserialize message field [Load]
    data.Load = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/BGRInfoRequest';
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
    const resolved = new BGRInfoRequest(null);
    if (msg.Load !== undefined) {
      resolved.Load = msg.Load;
    }
    else {
      resolved.Load = false
    }

    return resolved;
    }
};

class BGRInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.BValue = null;
      this.GValue = null;
      this.RValue = null;
    }
    else {
      if (initObj.hasOwnProperty('BValue')) {
        this.BValue = initObj.BValue
      }
      else {
        this.BValue = 0;
      }
      if (initObj.hasOwnProperty('GValue')) {
        this.GValue = initObj.GValue
      }
      else {
        this.GValue = 0;
      }
      if (initObj.hasOwnProperty('RValue')) {
        this.RValue = initObj.RValue
      }
      else {
        this.RValue = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BGRInfoResponse
    // Serialize message field [BValue]
    bufferOffset = _serializer.int32(obj.BValue, buffer, bufferOffset);
    // Serialize message field [GValue]
    bufferOffset = _serializer.int32(obj.GValue, buffer, bufferOffset);
    // Serialize message field [RValue]
    bufferOffset = _serializer.int32(obj.RValue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BGRInfoResponse
    let len;
    let data = new BGRInfoResponse(null);
    // Deserialize message field [BValue]
    data.BValue = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [GValue]
    data.GValue = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [RValue]
    data.RValue = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/BGRInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa6d7a5ece2eb227aec780feb59082f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 BValue
    int32 GValue
    int32 RValue
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BGRInfoResponse(null);
    if (msg.BValue !== undefined) {
      resolved.BValue = msg.BValue;
    }
    else {
      resolved.BValue = 0
    }

    if (msg.GValue !== undefined) {
      resolved.GValue = msg.GValue;
    }
    else {
      resolved.GValue = 0
    }

    if (msg.RValue !== undefined) {
      resolved.RValue = msg.RValue;
    }
    else {
      resolved.RValue = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: BGRInfoRequest,
  Response: BGRInfoResponse,
  md5sum() { return 'b03a10dbd390a3bc71ab9139e41340a6'; },
  datatype() { return 'tku_msgs/BGRInfo'; }
};
