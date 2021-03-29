// Auto-generated. Do not edit!

// (in-package tku_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class IKinfoRequest {
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
      this.Sampletime = null;
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
      if (initObj.hasOwnProperty('Sampletime')) {
        this.Sampletime = initObj.Sampletime
      }
      else {
        this.Sampletime = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IKinfoRequest
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
    // Serialize message field [Sampletime]
    bufferOffset = _serializer.int32(obj.Sampletime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IKinfoRequest
    let len;
    let data = new IKinfoRequest(null);
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
    // Deserialize message field [Sampletime]
    data.Sampletime = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/IKinfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83d72fcea3aea0bae04a407abcecc69b';
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
    int32 Sampletime
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IKinfoRequest(null);
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

    if (msg.Sampletime !== undefined) {
      resolved.Sampletime = msg.Sampletime;
    }
    else {
      resolved.Sampletime = 0
    }

    return resolved;
    }
};

class IKinfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SentData = null;
    }
    else {
      if (initObj.hasOwnProperty('SentData')) {
        this.SentData = initObj.SentData
      }
      else {
        this.SentData = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IKinfoResponse
    // Serialize message field [SentData]
    bufferOffset = _serializer.bool(obj.SentData, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IKinfoResponse
    let len;
    let data = new IKinfoResponse(null);
    // Deserialize message field [SentData]
    data.SentData = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/IKinfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08fa172385d786afe021a46a156e44f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool SentData
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IKinfoResponse(null);
    if (msg.SentData !== undefined) {
      resolved.SentData = msg.SentData;
    }
    else {
      resolved.SentData = false
    }

    return resolved;
    }
};

module.exports = {
  Request: IKinfoRequest,
  Response: IKinfoResponse,
  md5sum() { return '39b393c013802610229f9ff246da6c06'; },
  datatype() { return 'tku_msgs/IKinfo'; }
};
