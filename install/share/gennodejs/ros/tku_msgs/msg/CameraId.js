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

class CameraId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.checkcameraid = null;
      this.cameraid = null;
    }
    else {
      if (initObj.hasOwnProperty('checkcameraid')) {
        this.checkcameraid = initObj.checkcameraid
      }
      else {
        this.checkcameraid = false;
      }
      if (initObj.hasOwnProperty('cameraid')) {
        this.cameraid = initObj.cameraid
      }
      else {
        this.cameraid = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraId
    // Serialize message field [checkcameraid]
    bufferOffset = _serializer.bool(obj.checkcameraid, buffer, bufferOffset);
    // Serialize message field [cameraid]
    bufferOffset = _serializer.int16(obj.cameraid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraId
    let len;
    let data = new CameraId(null);
    // Deserialize message field [checkcameraid]
    data.checkcameraid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cameraid]
    data.cameraid = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/CameraId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3cc97f36ddee60a3976eec15137b52b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool checkcameraid
    int16 cameraid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraId(null);
    if (msg.checkcameraid !== undefined) {
      resolved.checkcameraid = msg.checkcameraid;
    }
    else {
      resolved.checkcameraid = false
    }

    if (msg.cameraid !== undefined) {
      resolved.cameraid = msg.cameraid;
    }
    else {
      resolved.cameraid = 0
    }

    return resolved;
    }
};

module.exports = CameraId;
