// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let B_SplineParam = require('./B_SplineParam.js');

//-----------------------------------------------------------

class parameter {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.X_Swing_Range = null;
      this.Y_Swing_Range = null;
      this.Z_Swing_Range = null;
      this.Period_T = null;
      this.Period_T2 = null;
      this.Sample_Time = null;
      this.OSC_LockRange = null;
      this.BASE_Default_Z = null;
      this.Y_Swing_Shift = null;
      this.X_Swing_COM = null;
      this.BASE_LIFT_Z = null;
      this.B_SplineParam = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('X_Swing_Range')) {
        this.X_Swing_Range = initObj.X_Swing_Range
      }
      else {
        this.X_Swing_Range = 0.0;
      }
      if (initObj.hasOwnProperty('Y_Swing_Range')) {
        this.Y_Swing_Range = initObj.Y_Swing_Range
      }
      else {
        this.Y_Swing_Range = 0.0;
      }
      if (initObj.hasOwnProperty('Z_Swing_Range')) {
        this.Z_Swing_Range = initObj.Z_Swing_Range
      }
      else {
        this.Z_Swing_Range = 0.0;
      }
      if (initObj.hasOwnProperty('Period_T')) {
        this.Period_T = initObj.Period_T
      }
      else {
        this.Period_T = 0;
      }
      if (initObj.hasOwnProperty('Period_T2')) {
        this.Period_T2 = initObj.Period_T2
      }
      else {
        this.Period_T2 = 0;
      }
      if (initObj.hasOwnProperty('Sample_Time')) {
        this.Sample_Time = initObj.Sample_Time
      }
      else {
        this.Sample_Time = 0;
      }
      if (initObj.hasOwnProperty('OSC_LockRange')) {
        this.OSC_LockRange = initObj.OSC_LockRange
      }
      else {
        this.OSC_LockRange = 0.0;
      }
      if (initObj.hasOwnProperty('BASE_Default_Z')) {
        this.BASE_Default_Z = initObj.BASE_Default_Z
      }
      else {
        this.BASE_Default_Z = 0.0;
      }
      if (initObj.hasOwnProperty('Y_Swing_Shift')) {
        this.Y_Swing_Shift = initObj.Y_Swing_Shift
      }
      else {
        this.Y_Swing_Shift = 0.0;
      }
      if (initObj.hasOwnProperty('X_Swing_COM')) {
        this.X_Swing_COM = initObj.X_Swing_COM
      }
      else {
        this.X_Swing_COM = 0.0;
      }
      if (initObj.hasOwnProperty('BASE_LIFT_Z')) {
        this.BASE_LIFT_Z = initObj.BASE_LIFT_Z
      }
      else {
        this.BASE_LIFT_Z = 0.0;
      }
      if (initObj.hasOwnProperty('B_SplineParam')) {
        this.B_SplineParam = initObj.B_SplineParam
      }
      else {
        this.B_SplineParam = new B_SplineParam();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type parameter
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    // Serialize message field [X_Swing_Range]
    bufferOffset = _serializer.float32(obj.X_Swing_Range, buffer, bufferOffset);
    // Serialize message field [Y_Swing_Range]
    bufferOffset = _serializer.float32(obj.Y_Swing_Range, buffer, bufferOffset);
    // Serialize message field [Z_Swing_Range]
    bufferOffset = _serializer.float32(obj.Z_Swing_Range, buffer, bufferOffset);
    // Serialize message field [Period_T]
    bufferOffset = _serializer.int32(obj.Period_T, buffer, bufferOffset);
    // Serialize message field [Period_T2]
    bufferOffset = _serializer.int32(obj.Period_T2, buffer, bufferOffset);
    // Serialize message field [Sample_Time]
    bufferOffset = _serializer.int32(obj.Sample_Time, buffer, bufferOffset);
    // Serialize message field [OSC_LockRange]
    bufferOffset = _serializer.float32(obj.OSC_LockRange, buffer, bufferOffset);
    // Serialize message field [BASE_Default_Z]
    bufferOffset = _serializer.float32(obj.BASE_Default_Z, buffer, bufferOffset);
    // Serialize message field [Y_Swing_Shift]
    bufferOffset = _serializer.float32(obj.Y_Swing_Shift, buffer, bufferOffset);
    // Serialize message field [X_Swing_COM]
    bufferOffset = _serializer.float32(obj.X_Swing_COM, buffer, bufferOffset);
    // Serialize message field [BASE_LIFT_Z]
    bufferOffset = _serializer.float32(obj.BASE_LIFT_Z, buffer, bufferOffset);
    // Serialize message field [B_SplineParam]
    bufferOffset = B_SplineParam.serialize(obj.B_SplineParam, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type parameter
    let len;
    let data = new parameter(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [X_Swing_Range]
    data.X_Swing_Range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Y_Swing_Range]
    data.Y_Swing_Range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Z_Swing_Range]
    data.Z_Swing_Range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Period_T]
    data.Period_T = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Period_T2]
    data.Period_T2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Sample_Time]
    data.Sample_Time = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [OSC_LockRange]
    data.OSC_LockRange = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [BASE_Default_Z]
    data.BASE_Default_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Y_Swing_Shift]
    data.Y_Swing_Shift = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [X_Swing_COM]
    data.X_Swing_COM = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [BASE_LIFT_Z]
    data.BASE_LIFT_Z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [B_SplineParam]
    data.B_SplineParam = B_SplineParam.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/parameter';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81e057003163525fc4ab4409674454f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 mode
    float32 X_Swing_Range
    float32 Y_Swing_Range
    float32 Z_Swing_Range
    int32 Period_T
    int32 Period_T2
    int32 Sample_Time
    float32 OSC_LockRange
    float32 BASE_Default_Z
    float32 Y_Swing_Shift
    float32 X_Swing_COM
    float32 BASE_LIFT_Z
    B_SplineParam B_SplineParam
    
    ================================================================================
    MSG: tku_msgs/B_SplineParam
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
    const resolved = new parameter(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.X_Swing_Range !== undefined) {
      resolved.X_Swing_Range = msg.X_Swing_Range;
    }
    else {
      resolved.X_Swing_Range = 0.0
    }

    if (msg.Y_Swing_Range !== undefined) {
      resolved.Y_Swing_Range = msg.Y_Swing_Range;
    }
    else {
      resolved.Y_Swing_Range = 0.0
    }

    if (msg.Z_Swing_Range !== undefined) {
      resolved.Z_Swing_Range = msg.Z_Swing_Range;
    }
    else {
      resolved.Z_Swing_Range = 0.0
    }

    if (msg.Period_T !== undefined) {
      resolved.Period_T = msg.Period_T;
    }
    else {
      resolved.Period_T = 0
    }

    if (msg.Period_T2 !== undefined) {
      resolved.Period_T2 = msg.Period_T2;
    }
    else {
      resolved.Period_T2 = 0
    }

    if (msg.Sample_Time !== undefined) {
      resolved.Sample_Time = msg.Sample_Time;
    }
    else {
      resolved.Sample_Time = 0
    }

    if (msg.OSC_LockRange !== undefined) {
      resolved.OSC_LockRange = msg.OSC_LockRange;
    }
    else {
      resolved.OSC_LockRange = 0.0
    }

    if (msg.BASE_Default_Z !== undefined) {
      resolved.BASE_Default_Z = msg.BASE_Default_Z;
    }
    else {
      resolved.BASE_Default_Z = 0.0
    }

    if (msg.Y_Swing_Shift !== undefined) {
      resolved.Y_Swing_Shift = msg.Y_Swing_Shift;
    }
    else {
      resolved.Y_Swing_Shift = 0.0
    }

    if (msg.X_Swing_COM !== undefined) {
      resolved.X_Swing_COM = msg.X_Swing_COM;
    }
    else {
      resolved.X_Swing_COM = 0.0
    }

    if (msg.BASE_LIFT_Z !== undefined) {
      resolved.BASE_LIFT_Z = msg.BASE_LIFT_Z;
    }
    else {
      resolved.BASE_LIFT_Z = 0.0
    }

    if (msg.B_SplineParam !== undefined) {
      resolved.B_SplineParam = B_SplineParam.Resolve(msg.B_SplineParam)
    }
    else {
      resolved.B_SplineParam = new B_SplineParam()
    }

    return resolved;
    }
};

module.exports = parameter;
