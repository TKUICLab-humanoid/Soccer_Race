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

class wave {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.R_move_X = null;
      this.L_move_X = null;
      this.R_move_Y = null;
      this.L_move_Y = null;
      this.R_move_Z = null;
      this.L_move_Z = null;
      this.move_COM_X = null;
      this.move_COM_Y = null;
      this.move_COM_Z = null;
      this.R_Thta = null;
      this.L_Thta = null;
      this.Point = null;
    }
    else {
      if (initObj.hasOwnProperty('R_move_X')) {
        this.R_move_X = initObj.R_move_X
      }
      else {
        this.R_move_X = 0.0;
      }
      if (initObj.hasOwnProperty('L_move_X')) {
        this.L_move_X = initObj.L_move_X
      }
      else {
        this.L_move_X = 0.0;
      }
      if (initObj.hasOwnProperty('R_move_Y')) {
        this.R_move_Y = initObj.R_move_Y
      }
      else {
        this.R_move_Y = 0.0;
      }
      if (initObj.hasOwnProperty('L_move_Y')) {
        this.L_move_Y = initObj.L_move_Y
      }
      else {
        this.L_move_Y = 0.0;
      }
      if (initObj.hasOwnProperty('R_move_Z')) {
        this.R_move_Z = initObj.R_move_Z
      }
      else {
        this.R_move_Z = 0.0;
      }
      if (initObj.hasOwnProperty('L_move_Z')) {
        this.L_move_Z = initObj.L_move_Z
      }
      else {
        this.L_move_Z = 0.0;
      }
      if (initObj.hasOwnProperty('move_COM_X')) {
        this.move_COM_X = initObj.move_COM_X
      }
      else {
        this.move_COM_X = 0.0;
      }
      if (initObj.hasOwnProperty('move_COM_Y')) {
        this.move_COM_Y = initObj.move_COM_Y
      }
      else {
        this.move_COM_Y = 0.0;
      }
      if (initObj.hasOwnProperty('move_COM_Z')) {
        this.move_COM_Z = initObj.move_COM_Z
      }
      else {
        this.move_COM_Z = 0.0;
      }
      if (initObj.hasOwnProperty('R_Thta')) {
        this.R_Thta = initObj.R_Thta
      }
      else {
        this.R_Thta = 0.0;
      }
      if (initObj.hasOwnProperty('L_Thta')) {
        this.L_Thta = initObj.L_Thta
      }
      else {
        this.L_Thta = 0.0;
      }
      if (initObj.hasOwnProperty('Point')) {
        this.Point = initObj.Point
      }
      else {
        this.Point = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wave
    // Serialize message field [R_move_X]
    bufferOffset = _serializer.float32(obj.R_move_X, buffer, bufferOffset);
    // Serialize message field [L_move_X]
    bufferOffset = _serializer.float32(obj.L_move_X, buffer, bufferOffset);
    // Serialize message field [R_move_Y]
    bufferOffset = _serializer.float32(obj.R_move_Y, buffer, bufferOffset);
    // Serialize message field [L_move_Y]
    bufferOffset = _serializer.float32(obj.L_move_Y, buffer, bufferOffset);
    // Serialize message field [R_move_Z]
    bufferOffset = _serializer.float32(obj.R_move_Z, buffer, bufferOffset);
    // Serialize message field [L_move_Z]
    bufferOffset = _serializer.float32(obj.L_move_Z, buffer, bufferOffset);
    // Serialize message field [move_COM_X]
    bufferOffset = _serializer.float32(obj.move_COM_X, buffer, bufferOffset);
    // Serialize message field [move_COM_Y]
    bufferOffset = _serializer.float32(obj.move_COM_Y, buffer, bufferOffset);
    // Serialize message field [move_COM_Z]
    bufferOffset = _serializer.float32(obj.move_COM_Z, buffer, bufferOffset);
    // Serialize message field [R_Thta]
    bufferOffset = _serializer.float32(obj.R_Thta, buffer, bufferOffset);
    // Serialize message field [L_Thta]
    bufferOffset = _serializer.float32(obj.L_Thta, buffer, bufferOffset);
    // Serialize message field [Point]
    bufferOffset = _serializer.int32(obj.Point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wave
    let len;
    let data = new wave(null);
    // Deserialize message field [R_move_X]
    data.R_move_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_move_X]
    data.L_move_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_move_Y]
    data.R_move_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_move_Y]
    data.L_move_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_move_Z]
    data.R_move_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_move_Z]
    data.L_move_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [move_COM_X]
    data.move_COM_X = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [move_COM_Y]
    data.move_COM_Y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [move_COM_Z]
    data.move_COM_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [R_Thta]
    data.R_Thta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [L_Thta]
    data.L_Thta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Point]
    data.Point = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/wave';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2dde10a25ae38be88936bf8db5ec2f73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 R_move_X
    float32 L_move_X
    float32 R_move_Y
    float32 L_move_Y
    float32 R_move_Z
    float32 L_move_Z
    float32 move_COM_X
    float32 move_COM_Y
    float32 move_COM_Z
    float32 R_Thta
    float32 L_Thta
    int32 Point
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new wave(null);
    if (msg.R_move_X !== undefined) {
      resolved.R_move_X = msg.R_move_X;
    }
    else {
      resolved.R_move_X = 0.0
    }

    if (msg.L_move_X !== undefined) {
      resolved.L_move_X = msg.L_move_X;
    }
    else {
      resolved.L_move_X = 0.0
    }

    if (msg.R_move_Y !== undefined) {
      resolved.R_move_Y = msg.R_move_Y;
    }
    else {
      resolved.R_move_Y = 0.0
    }

    if (msg.L_move_Y !== undefined) {
      resolved.L_move_Y = msg.L_move_Y;
    }
    else {
      resolved.L_move_Y = 0.0
    }

    if (msg.R_move_Z !== undefined) {
      resolved.R_move_Z = msg.R_move_Z;
    }
    else {
      resolved.R_move_Z = 0.0
    }

    if (msg.L_move_Z !== undefined) {
      resolved.L_move_Z = msg.L_move_Z;
    }
    else {
      resolved.L_move_Z = 0.0
    }

    if (msg.move_COM_X !== undefined) {
      resolved.move_COM_X = msg.move_COM_X;
    }
    else {
      resolved.move_COM_X = 0.0
    }

    if (msg.move_COM_Y !== undefined) {
      resolved.move_COM_Y = msg.move_COM_Y;
    }
    else {
      resolved.move_COM_Y = 0.0
    }

    if (msg.move_COM_Z !== undefined) {
      resolved.move_COM_Z = msg.move_COM_Z;
    }
    else {
      resolved.move_COM_Z = 0.0
    }

    if (msg.R_Thta !== undefined) {
      resolved.R_Thta = msg.R_Thta;
    }
    else {
      resolved.R_Thta = 0.0
    }

    if (msg.L_Thta !== undefined) {
      resolved.L_Thta = msg.L_Thta;
    }
    else {
      resolved.L_Thta = 0.0
    }

    if (msg.Point !== undefined) {
      resolved.Point = msg.Point;
    }
    else {
      resolved.Point = 0
    }

    return resolved;
    }
};

module.exports = wave;
