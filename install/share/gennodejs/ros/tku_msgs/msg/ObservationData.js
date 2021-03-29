// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FeaturePoint = require('./FeaturePoint.js');
let LineData = require('./LineData.js');

//-----------------------------------------------------------

class ObservationData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imagestate = null;
      this.scan_line = null;
      this.landmark = null;
    }
    else {
      if (initObj.hasOwnProperty('imagestate')) {
        this.imagestate = initObj.imagestate
      }
      else {
        this.imagestate = false;
      }
      if (initObj.hasOwnProperty('scan_line')) {
        this.scan_line = initObj.scan_line
      }
      else {
        this.scan_line = [];
      }
      if (initObj.hasOwnProperty('landmark')) {
        this.landmark = initObj.landmark
      }
      else {
        this.landmark = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObservationData
    // Serialize message field [imagestate]
    bufferOffset = _serializer.bool(obj.imagestate, buffer, bufferOffset);
    // Serialize message field [scan_line]
    // Serialize the length for message field [scan_line]
    bufferOffset = _serializer.uint32(obj.scan_line.length, buffer, bufferOffset);
    obj.scan_line.forEach((val) => {
      bufferOffset = FeaturePoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [landmark]
    // Serialize the length for message field [landmark]
    bufferOffset = _serializer.uint32(obj.landmark.length, buffer, bufferOffset);
    obj.landmark.forEach((val) => {
      bufferOffset = LineData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObservationData
    let len;
    let data = new ObservationData(null);
    // Deserialize message field [imagestate]
    data.imagestate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [scan_line]
    // Deserialize array length for message field [scan_line]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.scan_line = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.scan_line[i] = FeaturePoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [landmark]
    // Deserialize array length for message field [landmark]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.landmark = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.landmark[i] = LineData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.scan_line.forEach((val) => {
      length += FeaturePoint.getMessageSize(val);
    });
    length += 26 * object.landmark.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/ObservationData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '196e119e4514ee1b9806ec236748745a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool imagestate
    FeaturePoint[] scan_line
    LineData[] landmark
    
    ================================================================================
    MSG: tku_msgs/FeaturePoint
    Distance[] feature_point
    
    ================================================================================
    MSG: tku_msgs/Distance
    int16 x_dis
    int16 y_dis
    int16 dis
    
    ================================================================================
    MSG: tku_msgs/LineData
    float32 Line_theta
    int16 Line_length
    Cooridinate start_point
    Cooridinate end_point
    Cooridinate center_point
    float32 relative_distance
    Cooridinate Nearest_point
    
    ================================================================================
    MSG: tku_msgs/Cooridinate
    int16 x
    int16 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObservationData(null);
    if (msg.imagestate !== undefined) {
      resolved.imagestate = msg.imagestate;
    }
    else {
      resolved.imagestate = false
    }

    if (msg.scan_line !== undefined) {
      resolved.scan_line = new Array(msg.scan_line.length);
      for (let i = 0; i < resolved.scan_line.length; ++i) {
        resolved.scan_line[i] = FeaturePoint.Resolve(msg.scan_line[i]);
      }
    }
    else {
      resolved.scan_line = []
    }

    if (msg.landmark !== undefined) {
      resolved.landmark = new Array(msg.landmark.length);
      for (let i = 0; i < resolved.landmark.length; ++i) {
        resolved.landmark[i] = LineData.Resolve(msg.landmark[i]);
      }
    }
    else {
      resolved.landmark = []
    }

    return resolved;
    }
};

module.exports = ObservationData;
