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

class SendHandSpeedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendHandSpeedRequest
    // Serialize message field [data]
    bufferOffset = _serializer.int16(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendHandSpeedRequest
    let len;
    let data = new SendHandSpeedRequest(null);
    // Deserialize message field [data]
    data.data = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/SendHandSpeedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8524586e34fbd7cb1c08c5f5f1ca0e57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendHandSpeedRequest(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0
    }

    return resolved;
    }
};

class SendHandSpeedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Already = null;
    }
    else {
      if (initObj.hasOwnProperty('Already')) {
        this.Already = initObj.Already
      }
      else {
        this.Already = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendHandSpeedResponse
    // Serialize message field [Already]
    bufferOffset = _serializer.bool(obj.Already, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendHandSpeedResponse
    let len;
    let data = new SendHandSpeedResponse(null);
    // Deserialize message field [Already]
    data.Already = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/SendHandSpeedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '211c7e66fc18eaf767e182b2482109c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Already
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendHandSpeedResponse(null);
    if (msg.Already !== undefined) {
      resolved.Already = msg.Already;
    }
    else {
      resolved.Already = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SendHandSpeedRequest,
  Response: SendHandSpeedResponse,
  md5sum() { return 'bc50a7044f9f4fe078550b5db785f63d'; },
  datatype() { return 'tku_msgs/SendHandSpeed'; }
};
