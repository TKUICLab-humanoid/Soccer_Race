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

class CheckSectorRequest {
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
    // Serializes a message object of type CheckSectorRequest
    // Serialize message field [data]
    bufferOffset = _serializer.int16(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckSectorRequest
    let len;
    let data = new CheckSectorRequest(null);
    // Deserialize message field [data]
    data.data = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/CheckSectorRequest';
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
    const resolved = new CheckSectorRequest(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0
    }

    return resolved;
    }
};

class CheckSectorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.checkflag = null;
    }
    else {
      if (initObj.hasOwnProperty('checkflag')) {
        this.checkflag = initObj.checkflag
      }
      else {
        this.checkflag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckSectorResponse
    // Serialize message field [checkflag]
    bufferOffset = _serializer.bool(obj.checkflag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckSectorResponse
    let len;
    let data = new CheckSectorResponse(null);
    // Deserialize message field [checkflag]
    data.checkflag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/CheckSectorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f3506f61d2401510b7cfa2ba429a863';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool checkflag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckSectorResponse(null);
    if (msg.checkflag !== undefined) {
      resolved.checkflag = msg.checkflag;
    }
    else {
      resolved.checkflag = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckSectorRequest,
  Response: CheckSectorResponse,
  md5sum() { return '7ada61dc8c52272ee0201006887d39b5'; },
  datatype() { return 'tku_msgs/CheckSector'; }
};
