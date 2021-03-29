// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Distance = require('./Distance.js');

//-----------------------------------------------------------

class FeaturePoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feature_point = null;
    }
    else {
      if (initObj.hasOwnProperty('feature_point')) {
        this.feature_point = initObj.feature_point
      }
      else {
        this.feature_point = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FeaturePoint
    // Serialize message field [feature_point]
    // Serialize the length for message field [feature_point]
    bufferOffset = _serializer.uint32(obj.feature_point.length, buffer, bufferOffset);
    obj.feature_point.forEach((val) => {
      bufferOffset = Distance.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FeaturePoint
    let len;
    let data = new FeaturePoint(null);
    // Deserialize message field [feature_point]
    // Deserialize array length for message field [feature_point]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.feature_point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.feature_point[i] = Distance.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 6 * object.feature_point.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/FeaturePoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3a2ec9f1de9fdc200c3e7d29ae54450';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Distance[] feature_point
    
    ================================================================================
    MSG: tku_msgs/Distance
    int16 x_dis
    int16 y_dis
    int16 dis
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FeaturePoint(null);
    if (msg.feature_point !== undefined) {
      resolved.feature_point = new Array(msg.feature_point.length);
      for (let i = 0; i < resolved.feature_point.length; ++i) {
        resolved.feature_point[i] = Distance.Resolve(msg.feature_point[i]);
      }
    }
    else {
      resolved.feature_point = []
    }

    return resolved;
    }
};

module.exports = FeaturePoint;
