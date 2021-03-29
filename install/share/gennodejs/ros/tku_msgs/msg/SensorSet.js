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

class SensorSet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Roll = null;
      this.Pitch = null;
      this.Yaw = null;
      this.GainRoll = null;
      this.GainPitch = null;
      this.GainKP = null;
      this.GainKD = null;
      this.DesireSet = null;
      this.IMUReset = null;
      this.ForceState = null;
      this.GainSet = null;
    }
    else {
      if (initObj.hasOwnProperty('Roll')) {
        this.Roll = initObj.Roll
      }
      else {
        this.Roll = 0;
      }
      if (initObj.hasOwnProperty('Pitch')) {
        this.Pitch = initObj.Pitch
      }
      else {
        this.Pitch = 0;
      }
      if (initObj.hasOwnProperty('Yaw')) {
        this.Yaw = initObj.Yaw
      }
      else {
        this.Yaw = 0;
      }
      if (initObj.hasOwnProperty('GainRoll')) {
        this.GainRoll = initObj.GainRoll
      }
      else {
        this.GainRoll = 0;
      }
      if (initObj.hasOwnProperty('GainPitch')) {
        this.GainPitch = initObj.GainPitch
      }
      else {
        this.GainPitch = 0;
      }
      if (initObj.hasOwnProperty('GainKP')) {
        this.GainKP = initObj.GainKP
      }
      else {
        this.GainKP = 0;
      }
      if (initObj.hasOwnProperty('GainKD')) {
        this.GainKD = initObj.GainKD
      }
      else {
        this.GainKD = 0;
      }
      if (initObj.hasOwnProperty('DesireSet')) {
        this.DesireSet = initObj.DesireSet
      }
      else {
        this.DesireSet = false;
      }
      if (initObj.hasOwnProperty('IMUReset')) {
        this.IMUReset = initObj.IMUReset
      }
      else {
        this.IMUReset = false;
      }
      if (initObj.hasOwnProperty('ForceState')) {
        this.ForceState = initObj.ForceState
      }
      else {
        this.ForceState = false;
      }
      if (initObj.hasOwnProperty('GainSet')) {
        this.GainSet = initObj.GainSet
      }
      else {
        this.GainSet = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorSet
    // Serialize message field [Roll]
    bufferOffset = _serializer.int32(obj.Roll, buffer, bufferOffset);
    // Serialize message field [Pitch]
    bufferOffset = _serializer.int32(obj.Pitch, buffer, bufferOffset);
    // Serialize message field [Yaw]
    bufferOffset = _serializer.int32(obj.Yaw, buffer, bufferOffset);
    // Serialize message field [GainRoll]
    bufferOffset = _serializer.int32(obj.GainRoll, buffer, bufferOffset);
    // Serialize message field [GainPitch]
    bufferOffset = _serializer.int32(obj.GainPitch, buffer, bufferOffset);
    // Serialize message field [GainKP]
    bufferOffset = _serializer.int32(obj.GainKP, buffer, bufferOffset);
    // Serialize message field [GainKD]
    bufferOffset = _serializer.int32(obj.GainKD, buffer, bufferOffset);
    // Serialize message field [DesireSet]
    bufferOffset = _serializer.bool(obj.DesireSet, buffer, bufferOffset);
    // Serialize message field [IMUReset]
    bufferOffset = _serializer.bool(obj.IMUReset, buffer, bufferOffset);
    // Serialize message field [ForceState]
    bufferOffset = _serializer.bool(obj.ForceState, buffer, bufferOffset);
    // Serialize message field [GainSet]
    bufferOffset = _serializer.bool(obj.GainSet, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorSet
    let len;
    let data = new SensorSet(null);
    // Deserialize message field [Roll]
    data.Roll = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Pitch]
    data.Pitch = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Yaw]
    data.Yaw = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [GainRoll]
    data.GainRoll = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [GainPitch]
    data.GainPitch = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [GainKP]
    data.GainKP = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [GainKD]
    data.GainKD = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [DesireSet]
    data.DesireSet = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [IMUReset]
    data.IMUReset = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ForceState]
    data.ForceState = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [GainSet]
    data.GainSet = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/SensorSet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c13fdf5a7d05959108eed5391a02dd9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 Roll
    int32 Pitch
    int32 Yaw
    int32 GainRoll
    int32 GainPitch
    int32 GainKP
    int32 GainKD
    bool DesireSet
    bool IMUReset
    bool ForceState
    bool GainSet
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorSet(null);
    if (msg.Roll !== undefined) {
      resolved.Roll = msg.Roll;
    }
    else {
      resolved.Roll = 0
    }

    if (msg.Pitch !== undefined) {
      resolved.Pitch = msg.Pitch;
    }
    else {
      resolved.Pitch = 0
    }

    if (msg.Yaw !== undefined) {
      resolved.Yaw = msg.Yaw;
    }
    else {
      resolved.Yaw = 0
    }

    if (msg.GainRoll !== undefined) {
      resolved.GainRoll = msg.GainRoll;
    }
    else {
      resolved.GainRoll = 0
    }

    if (msg.GainPitch !== undefined) {
      resolved.GainPitch = msg.GainPitch;
    }
    else {
      resolved.GainPitch = 0
    }

    if (msg.GainKP !== undefined) {
      resolved.GainKP = msg.GainKP;
    }
    else {
      resolved.GainKP = 0
    }

    if (msg.GainKD !== undefined) {
      resolved.GainKD = msg.GainKD;
    }
    else {
      resolved.GainKD = 0
    }

    if (msg.DesireSet !== undefined) {
      resolved.DesireSet = msg.DesireSet;
    }
    else {
      resolved.DesireSet = false
    }

    if (msg.IMUReset !== undefined) {
      resolved.IMUReset = msg.IMUReset;
    }
    else {
      resolved.IMUReset = false
    }

    if (msg.ForceState !== undefined) {
      resolved.ForceState = msg.ForceState;
    }
    else {
      resolved.ForceState = false
    }

    if (msg.GainSet !== undefined) {
      resolved.GainSet = msg.GainSet;
    }
    else {
      resolved.GainSet = false
    }

    return resolved;
    }
};

module.exports = SensorSet;
