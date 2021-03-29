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

class HSVInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ColorLabel = null;
    }
    else {
      if (initObj.hasOwnProperty('ColorLabel')) {
        this.ColorLabel = initObj.ColorLabel
      }
      else {
        this.ColorLabel = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HSVInfoRequest
    // Serialize message field [ColorLabel]
    bufferOffset = _serializer.int16(obj.ColorLabel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HSVInfoRequest
    let len;
    let data = new HSVInfoRequest(null);
    // Deserialize message field [ColorLabel]
    data.ColorLabel = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/HSVInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18a4a835e57bd84ea6cde968f2770df8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 ColorLabel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HSVInfoRequest(null);
    if (msg.ColorLabel !== undefined) {
      resolved.ColorLabel = msg.ColorLabel;
    }
    else {
      resolved.ColorLabel = 0
    }

    return resolved;
    }
};

class HSVInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Hmin = null;
      this.Hmax = null;
      this.Smin = null;
      this.Smax = null;
      this.Vmin = null;
      this.Vmax = null;
    }
    else {
      if (initObj.hasOwnProperty('Hmin')) {
        this.Hmin = initObj.Hmin
      }
      else {
        this.Hmin = 0;
      }
      if (initObj.hasOwnProperty('Hmax')) {
        this.Hmax = initObj.Hmax
      }
      else {
        this.Hmax = 0;
      }
      if (initObj.hasOwnProperty('Smin')) {
        this.Smin = initObj.Smin
      }
      else {
        this.Smin = 0;
      }
      if (initObj.hasOwnProperty('Smax')) {
        this.Smax = initObj.Smax
      }
      else {
        this.Smax = 0;
      }
      if (initObj.hasOwnProperty('Vmin')) {
        this.Vmin = initObj.Vmin
      }
      else {
        this.Vmin = 0;
      }
      if (initObj.hasOwnProperty('Vmax')) {
        this.Vmax = initObj.Vmax
      }
      else {
        this.Vmax = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HSVInfoResponse
    // Serialize message field [Hmin]
    bufferOffset = _serializer.int32(obj.Hmin, buffer, bufferOffset);
    // Serialize message field [Hmax]
    bufferOffset = _serializer.int32(obj.Hmax, buffer, bufferOffset);
    // Serialize message field [Smin]
    bufferOffset = _serializer.int32(obj.Smin, buffer, bufferOffset);
    // Serialize message field [Smax]
    bufferOffset = _serializer.int32(obj.Smax, buffer, bufferOffset);
    // Serialize message field [Vmin]
    bufferOffset = _serializer.int32(obj.Vmin, buffer, bufferOffset);
    // Serialize message field [Vmax]
    bufferOffset = _serializer.int32(obj.Vmax, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HSVInfoResponse
    let len;
    let data = new HSVInfoResponse(null);
    // Deserialize message field [Hmin]
    data.Hmin = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Hmax]
    data.Hmax = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Smin]
    data.Smin = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Smax]
    data.Smax = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Vmin]
    data.Vmin = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Vmax]
    data.Vmax = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/HSVInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef1760db172b14d05ca025430a2d5576';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 Hmin
    int32 Hmax
    int32 Smin
    int32 Smax
    int32 Vmin
    int32 Vmax
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HSVInfoResponse(null);
    if (msg.Hmin !== undefined) {
      resolved.Hmin = msg.Hmin;
    }
    else {
      resolved.Hmin = 0
    }

    if (msg.Hmax !== undefined) {
      resolved.Hmax = msg.Hmax;
    }
    else {
      resolved.Hmax = 0
    }

    if (msg.Smin !== undefined) {
      resolved.Smin = msg.Smin;
    }
    else {
      resolved.Smin = 0
    }

    if (msg.Smax !== undefined) {
      resolved.Smax = msg.Smax;
    }
    else {
      resolved.Smax = 0
    }

    if (msg.Vmin !== undefined) {
      resolved.Vmin = msg.Vmin;
    }
    else {
      resolved.Vmin = 0
    }

    if (msg.Vmax !== undefined) {
      resolved.Vmax = msg.Vmax;
    }
    else {
      resolved.Vmax = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: HSVInfoRequest,
  Response: HSVInfoResponse,
  md5sum() { return 'e67cb823b89b43c54c3cf2f810ee06c4'; },
  datatype() { return 'tku_msgs/HSVInfo'; }
};
