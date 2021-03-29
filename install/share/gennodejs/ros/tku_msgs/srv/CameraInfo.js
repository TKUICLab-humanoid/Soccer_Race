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

class CameraInfoRequest {
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
    // Serializes a message object of type CameraInfoRequest
    // Serialize message field [Load]
    bufferOffset = _serializer.bool(obj.Load, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraInfoRequest
    let len;
    let data = new CameraInfoRequest(null);
    // Deserialize message field [Load]
    data.Load = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/CameraInfoRequest';
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
    const resolved = new CameraInfoRequest(null);
    if (msg.Load !== undefined) {
      resolved.Load = msg.Load;
    }
    else {
      resolved.Load = false
    }

    return resolved;
    }
};

class CameraInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.brightness = null;
      this.contrast = null;
      this.saturation = null;
      this.white_balance = null;
      this.auto_white_balance = null;
      this.auto_exposure = null;
      this.auto_Backlight_Compensation = null;
    }
    else {
      if (initObj.hasOwnProperty('brightness')) {
        this.brightness = initObj.brightness
      }
      else {
        this.brightness = 0;
      }
      if (initObj.hasOwnProperty('contrast')) {
        this.contrast = initObj.contrast
      }
      else {
        this.contrast = 0;
      }
      if (initObj.hasOwnProperty('saturation')) {
        this.saturation = initObj.saturation
      }
      else {
        this.saturation = 0;
      }
      if (initObj.hasOwnProperty('white_balance')) {
        this.white_balance = initObj.white_balance
      }
      else {
        this.white_balance = 0;
      }
      if (initObj.hasOwnProperty('auto_white_balance')) {
        this.auto_white_balance = initObj.auto_white_balance
      }
      else {
        this.auto_white_balance = false;
      }
      if (initObj.hasOwnProperty('auto_exposure')) {
        this.auto_exposure = initObj.auto_exposure
      }
      else {
        this.auto_exposure = false;
      }
      if (initObj.hasOwnProperty('auto_Backlight_Compensation')) {
        this.auto_Backlight_Compensation = initObj.auto_Backlight_Compensation
      }
      else {
        this.auto_Backlight_Compensation = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraInfoResponse
    // Serialize message field [brightness]
    bufferOffset = _serializer.int32(obj.brightness, buffer, bufferOffset);
    // Serialize message field [contrast]
    bufferOffset = _serializer.int32(obj.contrast, buffer, bufferOffset);
    // Serialize message field [saturation]
    bufferOffset = _serializer.int32(obj.saturation, buffer, bufferOffset);
    // Serialize message field [white_balance]
    bufferOffset = _serializer.int32(obj.white_balance, buffer, bufferOffset);
    // Serialize message field [auto_white_balance]
    bufferOffset = _serializer.bool(obj.auto_white_balance, buffer, bufferOffset);
    // Serialize message field [auto_exposure]
    bufferOffset = _serializer.bool(obj.auto_exposure, buffer, bufferOffset);
    // Serialize message field [auto_Backlight_Compensation]
    bufferOffset = _serializer.bool(obj.auto_Backlight_Compensation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraInfoResponse
    let len;
    let data = new CameraInfoResponse(null);
    // Deserialize message field [brightness]
    data.brightness = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [contrast]
    data.contrast = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [saturation]
    data.saturation = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [white_balance]
    data.white_balance = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [auto_white_balance]
    data.auto_white_balance = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [auto_exposure]
    data.auto_exposure = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [auto_Backlight_Compensation]
    data.auto_Backlight_Compensation = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/CameraInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '470ab9ddf45fde352de26f5b10fb9a47';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 brightness
    int32 contrast
    int32 saturation
    int32 white_balance
    bool auto_white_balance
    bool auto_exposure
    bool auto_Backlight_Compensation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraInfoResponse(null);
    if (msg.brightness !== undefined) {
      resolved.brightness = msg.brightness;
    }
    else {
      resolved.brightness = 0
    }

    if (msg.contrast !== undefined) {
      resolved.contrast = msg.contrast;
    }
    else {
      resolved.contrast = 0
    }

    if (msg.saturation !== undefined) {
      resolved.saturation = msg.saturation;
    }
    else {
      resolved.saturation = 0
    }

    if (msg.white_balance !== undefined) {
      resolved.white_balance = msg.white_balance;
    }
    else {
      resolved.white_balance = 0
    }

    if (msg.auto_white_balance !== undefined) {
      resolved.auto_white_balance = msg.auto_white_balance;
    }
    else {
      resolved.auto_white_balance = false
    }

    if (msg.auto_exposure !== undefined) {
      resolved.auto_exposure = msg.auto_exposure;
    }
    else {
      resolved.auto_exposure = false
    }

    if (msg.auto_Backlight_Compensation !== undefined) {
      resolved.auto_Backlight_Compensation = msg.auto_Backlight_Compensation;
    }
    else {
      resolved.auto_Backlight_Compensation = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CameraInfoRequest,
  Response: CameraInfoResponse,
  md5sum() { return '5d903b0ce533a144da9c4015f43ae098'; },
  datatype() { return 'tku_msgs/CameraInfo'; }
};
