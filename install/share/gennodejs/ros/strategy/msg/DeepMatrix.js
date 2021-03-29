// Auto-generated. Do not edit!

// (in-package strategy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DeepMatrix {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.DeepMatrix = null;
    }
    else {
      if (initObj.hasOwnProperty('DeepMatrix')) {
        this.DeepMatrix = initObj.DeepMatrix
      }
      else {
        this.DeepMatrix = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeepMatrix
    // Serialize message field [DeepMatrix]
    bufferOffset = _arraySerializer.int32(obj.DeepMatrix, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeepMatrix
    let len;
    let data = new DeepMatrix(null);
    // Deserialize message field [DeepMatrix]
    data.DeepMatrix = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.DeepMatrix.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'strategy/DeepMatrix';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d297606fb900059fdd4f503356c6486';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] DeepMatrix
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeepMatrix(null);
    if (msg.DeepMatrix !== undefined) {
      resolved.DeepMatrix = msg.DeepMatrix;
    }
    else {
      resolved.DeepMatrix = []
    }

    return resolved;
    }
};

module.exports = DeepMatrix;
