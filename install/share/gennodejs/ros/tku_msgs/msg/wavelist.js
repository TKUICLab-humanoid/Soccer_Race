// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let wave = require('./wave.js');

//-----------------------------------------------------------

class wavelist {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wavelist = null;
    }
    else {
      if (initObj.hasOwnProperty('wavelist')) {
        this.wavelist = initObj.wavelist
      }
      else {
        this.wavelist = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wavelist
    // Serialize message field [wavelist]
    // Serialize the length for message field [wavelist]
    bufferOffset = _serializer.uint32(obj.wavelist.length, buffer, bufferOffset);
    obj.wavelist.forEach((val) => {
      bufferOffset = wave.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wavelist
    let len;
    let data = new wavelist(null);
    // Deserialize message field [wavelist]
    // Deserialize array length for message field [wavelist]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wavelist = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wavelist[i] = wave.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 48 * object.wavelist.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/wavelist';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '171c41386923a260960e1449234f31a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    wave[] wavelist
    ================================================================================
    MSG: tku_msgs/wave
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
    const resolved = new wavelist(null);
    if (msg.wavelist !== undefined) {
      resolved.wavelist = new Array(msg.wavelist.length);
      for (let i = 0; i < resolved.wavelist.length; ++i) {
        resolved.wavelist[i] = wave.Resolve(msg.wavelist[i]);
      }
    }
    else {
      resolved.wavelist = []
    }

    return resolved;
    }
};

module.exports = wavelist;
