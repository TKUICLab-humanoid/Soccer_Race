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

class SaveHSVRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Save = null;
    }
    else {
      if (initObj.hasOwnProperty('Save')) {
        this.Save = initObj.Save
      }
      else {
        this.Save = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveHSVRequest
    // Serialize message field [Save]
    bufferOffset = _serializer.bool(obj.Save, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveHSVRequest
    let len;
    let data = new SaveHSVRequest(null);
    // Deserialize message field [Save]
    data.Save = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/SaveHSVRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6921fe4140c00f38cadaddfa75ac0a08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Save
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveHSVRequest(null);
    if (msg.Save !== undefined) {
      resolved.Save = msg.Save;
    }
    else {
      resolved.Save = false
    }

    return resolved;
    }
};

class SaveHSVResponse {
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
    // Serializes a message object of type SaveHSVResponse
    // Serialize message field [Already]
    bufferOffset = _serializer.bool(obj.Already, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveHSVResponse
    let len;
    let data = new SaveHSVResponse(null);
    // Deserialize message field [Already]
    data.Already = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/SaveHSVResponse';
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
    const resolved = new SaveHSVResponse(null);
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
  Request: SaveHSVRequest,
  Response: SaveHSVResponse,
  md5sum() { return '54316e93d45f9c59e17a9d6ba6bb0659'; },
  datatype() { return 'tku_msgs/SaveHSV'; }
};
