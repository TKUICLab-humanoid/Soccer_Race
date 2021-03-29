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

class IKinfo_message {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.IK_Point_RX = null;
      this.IK_Point_RY = null;
      this.IK_Point_RZ = null;
      this.IK_Point_RThta = null;
      this.IK_Point_LX = null;
      this.IK_Point_LY = null;
      this.IK_Point_LZ = null;
      this.IK_Point_LThta = null;
      this.Period_T = null;
      this.Sampletime = null;
      this.Walking_State = null;
      this.Sensor_Mode = null;
    }
    else {
      if (initObj.hasOwnProperty('IK_Point_RX')) {
        this.IK_Point_RX = initObj.IK_Point_RX
      }
      else {
        this.IK_Point_RX = 0.0;
      }
      if (initObj.hasOwnProperty('IK_Point_RY')) {
        this.IK_Point_RY = initObj.IK_Point_RY
      }
      else {
        this.IK_Point_RY = 0.0;
      }
      if (initObj.hasOwnProperty('IK_Point_RZ')) {
        this.IK_Point_RZ = initObj.IK_Point_RZ
      }
      else {
        this.IK_Point_RZ = 0.0;
      }
      if (initObj.hasOwnProperty('IK_Point_RThta')) {
        this.IK_Point_RThta = initObj.IK_Point_RThta
      }
      else {
        this.IK_Point_RThta = 0.0;
      }
      if (initObj.hasOwnProperty('IK_Point_LX')) {
        this.IK_Point_LX = initObj.IK_Point_LX
      }
      else {
        this.IK_Point_LX = 0.0;
      }
      if (initObj.hasOwnProperty('IK_Point_LY')) {
        this.IK_Point_LY = initObj.IK_Point_LY
      }
      else {
        this.IK_Point_LY = 0.0;
      }
      if (initObj.hasOwnProperty('IK_Point_LZ')) {
        this.IK_Point_LZ = initObj.IK_Point_LZ
      }
      else {
        this.IK_Point_LZ = 0.0;
      }
      if (initObj.hasOwnProperty('IK_Point_LThta')) {
        this.IK_Point_LThta = initObj.IK_Point_LThta
      }
      else {
        this.IK_Point_LThta = 0.0;
      }
      if (initObj.hasOwnProperty('Period_T')) {
        this.Period_T = initObj.Period_T
      }
      else {
        this.Period_T = 0;
      }
      if (initObj.hasOwnProperty('Sampletime')) {
        this.Sampletime = initObj.Sampletime
      }
      else {
        this.Sampletime = 0;
      }
      if (initObj.hasOwnProperty('Walking_State')) {
        this.Walking_State = initObj.Walking_State
      }
      else {
        this.Walking_State = 0;
      }
      if (initObj.hasOwnProperty('Sensor_Mode')) {
        this.Sensor_Mode = initObj.Sensor_Mode
      }
      else {
        this.Sensor_Mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IKinfo_message
    // Serialize message field [IK_Point_RX]
    bufferOffset = _serializer.float64(obj.IK_Point_RX, buffer, bufferOffset);
    // Serialize message field [IK_Point_RY]
    bufferOffset = _serializer.float64(obj.IK_Point_RY, buffer, bufferOffset);
    // Serialize message field [IK_Point_RZ]
    bufferOffset = _serializer.float64(obj.IK_Point_RZ, buffer, bufferOffset);
    // Serialize message field [IK_Point_RThta]
    bufferOffset = _serializer.float64(obj.IK_Point_RThta, buffer, bufferOffset);
    // Serialize message field [IK_Point_LX]
    bufferOffset = _serializer.float64(obj.IK_Point_LX, buffer, bufferOffset);
    // Serialize message field [IK_Point_LY]
    bufferOffset = _serializer.float64(obj.IK_Point_LY, buffer, bufferOffset);
    // Serialize message field [IK_Point_LZ]
    bufferOffset = _serializer.float64(obj.IK_Point_LZ, buffer, bufferOffset);
    // Serialize message field [IK_Point_LThta]
    bufferOffset = _serializer.float64(obj.IK_Point_LThta, buffer, bufferOffset);
    // Serialize message field [Period_T]
    bufferOffset = _serializer.int32(obj.Period_T, buffer, bufferOffset);
    // Serialize message field [Sampletime]
    bufferOffset = _serializer.int32(obj.Sampletime, buffer, bufferOffset);
    // Serialize message field [Walking_State]
    bufferOffset = _serializer.int32(obj.Walking_State, buffer, bufferOffset);
    // Serialize message field [Sensor_Mode]
    bufferOffset = _serializer.int32(obj.Sensor_Mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IKinfo_message
    let len;
    let data = new IKinfo_message(null);
    // Deserialize message field [IK_Point_RX]
    data.IK_Point_RX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [IK_Point_RY]
    data.IK_Point_RY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [IK_Point_RZ]
    data.IK_Point_RZ = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [IK_Point_RThta]
    data.IK_Point_RThta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [IK_Point_LX]
    data.IK_Point_LX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [IK_Point_LY]
    data.IK_Point_LY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [IK_Point_LZ]
    data.IK_Point_LZ = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [IK_Point_LThta]
    data.IK_Point_LThta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Period_T]
    data.Period_T = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Sampletime]
    data.Sampletime = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Walking_State]
    data.Walking_State = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Sensor_Mode]
    data.Sensor_Mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/IKinfo_message';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9899904ffd0ecd709bdf1dcea6bf4ab5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 IK_Point_RX
    float64 IK_Point_RY
    float64 IK_Point_RZ
    float64 IK_Point_RThta
    float64 IK_Point_LX
    float64 IK_Point_LY
    float64 IK_Point_LZ 
    float64 IK_Point_LThta
    int32 Period_T
    int32 Sampletime
    int32 Walking_State
    int32 Sensor_Mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IKinfo_message(null);
    if (msg.IK_Point_RX !== undefined) {
      resolved.IK_Point_RX = msg.IK_Point_RX;
    }
    else {
      resolved.IK_Point_RX = 0.0
    }

    if (msg.IK_Point_RY !== undefined) {
      resolved.IK_Point_RY = msg.IK_Point_RY;
    }
    else {
      resolved.IK_Point_RY = 0.0
    }

    if (msg.IK_Point_RZ !== undefined) {
      resolved.IK_Point_RZ = msg.IK_Point_RZ;
    }
    else {
      resolved.IK_Point_RZ = 0.0
    }

    if (msg.IK_Point_RThta !== undefined) {
      resolved.IK_Point_RThta = msg.IK_Point_RThta;
    }
    else {
      resolved.IK_Point_RThta = 0.0
    }

    if (msg.IK_Point_LX !== undefined) {
      resolved.IK_Point_LX = msg.IK_Point_LX;
    }
    else {
      resolved.IK_Point_LX = 0.0
    }

    if (msg.IK_Point_LY !== undefined) {
      resolved.IK_Point_LY = msg.IK_Point_LY;
    }
    else {
      resolved.IK_Point_LY = 0.0
    }

    if (msg.IK_Point_LZ !== undefined) {
      resolved.IK_Point_LZ = msg.IK_Point_LZ;
    }
    else {
      resolved.IK_Point_LZ = 0.0
    }

    if (msg.IK_Point_LThta !== undefined) {
      resolved.IK_Point_LThta = msg.IK_Point_LThta;
    }
    else {
      resolved.IK_Point_LThta = 0.0
    }

    if (msg.Period_T !== undefined) {
      resolved.Period_T = msg.Period_T;
    }
    else {
      resolved.Period_T = 0
    }

    if (msg.Sampletime !== undefined) {
      resolved.Sampletime = msg.Sampletime;
    }
    else {
      resolved.Sampletime = 0
    }

    if (msg.Walking_State !== undefined) {
      resolved.Walking_State = msg.Walking_State;
    }
    else {
      resolved.Walking_State = 0
    }

    if (msg.Sensor_Mode !== undefined) {
      resolved.Sensor_Mode = msg.Sensor_Mode;
    }
    else {
      resolved.Sensor_Mode = 0
    }

    return resolved;
    }
};

module.exports = IKinfo_message;
