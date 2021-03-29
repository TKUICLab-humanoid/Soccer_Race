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

class B_SplineParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Kick_Point_X = null;
      this.Kick_Point_Y = null;
      this.Kick_Point_Z = null;
      this.Back_Point_X = null;
      this.Back_Point_Z = null;
      this.Support_Foot_Hip_Upper_Pitch = null;
      this.Kick_Foot_Ankle_Upper_Pitch = null;
      this.Support_Foot_Ankle_Upper_Pitch = null;
    }
    else {
      if (initObj.hasOwnProperty('Kick_Point_X')) {
        this.Kick_Point_X = initObj.Kick_Point_X
      }
      else {
        this.Kick_Point_X = 0.0;
      }
      if (initObj.hasOwnProperty('Kick_Point_Y')) {
        this.Kick_Point_Y = initObj.Kick_Point_Y
      }
      else {
        this.Kick_Point_Y = 0.0;
      }
      if (initObj.hasOwnProperty('Kick_Point_Z')) {
        this.Kick_Point_Z = initObj.Kick_Point_Z
      }
      else {
        this.Kick_Point_Z = 0.0;
      }
      if (initObj.hasOwnProperty('Back_Point_X')) {
        this.Back_Point_X = initObj.Back_Point_X
      }
      else {
        this.Back_Point_X = 0.0;
      }
      if (initObj.hasOwnProperty('Back_Point_Z')) {
        this.Back_Point_Z = initObj.Back_Point_Z
      }
      else {
        this.Back_Point_Z = 0.0;
      }
      if (initObj.hasOwnProperty('Support_Foot_Hip_Upper_Pitch')) {
        this.Support_Foot_Hip_Upper_Pitch = initObj.Support_Foot_Hip_Upper_Pitch
      }
      else {
        this.Support_Foot_Hip_Upper_Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Kick_Foot_Ankle_Upper_Pitch')) {
        this.Kick_Foot_Ankle_Upper_Pitch = initObj.Kick_Foot_Ankle_Upper_Pitch
      }
      else {
        this.Kick_Foot_Ankle_Upper_Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Support_Foot_Ankle_Upper_Pitch')) {
        this.Support_Foot_Ankle_Upper_Pitch = initObj.Support_Foot_Ankle_Upper_Pitch
      }
      else {
        this.Support_Foot_Ankle_Upper_Pitch = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type B_SplineParam
    // Serialize message field [Kick_Point_X]
    bufferOffset = _serializer.float32(obj.Kick_Point_X, buffer, bufferOffset);
    // Serialize message field [Kick_Point_Y]
    bufferOffset = _serializer.float32(obj.Kick_Point_Y, buffer, bufferOffset);
    // Serialize message field [Kick_Point_Z]
    bufferOffset = _serializer.float32(obj.Kick_Point_Z, buffer, bufferOffset);
    // Serialize message field [Back_Point_X]
    bufferOffset = _serializer.float32(obj.Back_Point_X, buffer, bufferOffset);
    // Serialize message field [Back_Point_Z]
    bufferOffset = _serializer.float32(obj.Back_Point_Z, buffer, bufferOffset);
    // Serialize message field [Support_Foot_Hip_Upper_Pitch]
    bufferOffset = _serializer.float32(obj.Support_Foot_Hip_Upper_Pitch, buffer, bufferOffset);
    // Serialize message field [Kick_Foot_Ankle_Upper_Pitch]
    bufferOffset = _serializer.float32(obj.Kick_Foot_Ankle_Upper_Pitch, buffer, bufferOffset);
    // Serialize message field [Support_Foot_Ankle_Upper_Pitch]
    bufferOffset = _serializer.float32(obj.Support_Foot_Ankle_Upper_Pitch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type B_SplineParam
    let len;
    let data = new B_SplineParam(null);
    // Deserialize message field [Kick_Point_X]
    data.Kick_Point_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Kick_Point_Y]
    data.Kick_Point_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Kick_Point_Z]
    data.Kick_Point_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Back_Point_X]
    data.Back_Point_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Back_Point_Z]
    data.Back_Point_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Support_Foot_Hip_Upper_Pitch]
    data.Support_Foot_Hip_Upper_Pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Kick_Foot_Ankle_Upper_Pitch]
    data.Kick_Foot_Ankle_Upper_Pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Support_Foot_Ankle_Upper_Pitch]
    data.Support_Foot_Ankle_Upper_Pitch = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/B_SplineParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de6e7c118c1a5ca63d7d6831ee0bf34c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Kick_Point_X
    float32 Kick_Point_Y
    float32 Kick_Point_Z
    float32 Back_Point_X
    float32 Back_Point_Z
    float32 Support_Foot_Hip_Upper_Pitch
    float32 Kick_Foot_Ankle_Upper_Pitch
    float32 Support_Foot_Ankle_Upper_Pitch
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new B_SplineParam(null);
    if (msg.Kick_Point_X !== undefined) {
      resolved.Kick_Point_X = msg.Kick_Point_X;
    }
    else {
      resolved.Kick_Point_X = 0.0
    }

    if (msg.Kick_Point_Y !== undefined) {
      resolved.Kick_Point_Y = msg.Kick_Point_Y;
    }
    else {
      resolved.Kick_Point_Y = 0.0
    }

    if (msg.Kick_Point_Z !== undefined) {
      resolved.Kick_Point_Z = msg.Kick_Point_Z;
    }
    else {
      resolved.Kick_Point_Z = 0.0
    }

    if (msg.Back_Point_X !== undefined) {
      resolved.Back_Point_X = msg.Back_Point_X;
    }
    else {
      resolved.Back_Point_X = 0.0
    }

    if (msg.Back_Point_Z !== undefined) {
      resolved.Back_Point_Z = msg.Back_Point_Z;
    }
    else {
      resolved.Back_Point_Z = 0.0
    }

    if (msg.Support_Foot_Hip_Upper_Pitch !== undefined) {
      resolved.Support_Foot_Hip_Upper_Pitch = msg.Support_Foot_Hip_Upper_Pitch;
    }
    else {
      resolved.Support_Foot_Hip_Upper_Pitch = 0.0
    }

    if (msg.Kick_Foot_Ankle_Upper_Pitch !== undefined) {
      resolved.Kick_Foot_Ankle_Upper_Pitch = msg.Kick_Foot_Ankle_Upper_Pitch;
    }
    else {
      resolved.Kick_Foot_Ankle_Upper_Pitch = 0.0
    }

    if (msg.Support_Foot_Ankle_Upper_Pitch !== undefined) {
      resolved.Support_Foot_Ankle_Upper_Pitch = msg.Support_Foot_Ankle_Upper_Pitch;
    }
    else {
      resolved.Support_Foot_Ankle_Upper_Pitch = 0.0
    }

    return resolved;
    }
};

module.exports = B_SplineParam;
