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

class BuildModelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Build = null;
    }
    else {
      if (initObj.hasOwnProperty('Build')) {
        this.Build = initObj.Build
      }
      else {
        this.Build = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BuildModelRequest
    // Serialize message field [Build]
    bufferOffset = _serializer.bool(obj.Build, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BuildModelRequest
    let len;
    let data = new BuildModelRequest(null);
    // Deserialize message field [Build]
    data.Build = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/BuildModelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35f02bcc7dfa3b543bf14903d9d4a8f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Build
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BuildModelRequest(null);
    if (msg.Build !== undefined) {
      resolved.Build = msg.Build;
    }
    else {
      resolved.Build = false
    }

    return resolved;
    }
};

class BuildModelResponse {
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
    // Serializes a message object of type BuildModelResponse
    // Serialize message field [Already]
    bufferOffset = _serializer.bool(obj.Already, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BuildModelResponse
    let len;
    let data = new BuildModelResponse(null);
    // Deserialize message field [Already]
    data.Already = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/BuildModelResponse';
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
    const resolved = new BuildModelResponse(null);
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
  Request: BuildModelRequest,
  Response: BuildModelResponse,
  md5sum() { return '5a100fc214acb4bef265103a280da05b'; },
  datatype() { return 'tku_msgs/BuildModel'; }
};
