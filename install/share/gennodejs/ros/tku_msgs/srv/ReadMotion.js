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

class ReadMotionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.read = null;
      this.name = null;
      this.readstate = null;
    }
    else {
      if (initObj.hasOwnProperty('read')) {
        this.read = initObj.read
      }
      else {
        this.read = false;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('readstate')) {
        this.readstate = initObj.readstate
      }
      else {
        this.readstate = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadMotionRequest
    // Serialize message field [read]
    bufferOffset = _serializer.bool(obj.read, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [readstate]
    bufferOffset = _serializer.int16(obj.readstate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadMotionRequest
    let len;
    let data = new ReadMotionRequest(null);
    // Deserialize message field [read]
    data.read = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [readstate]
    data.readstate = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/ReadMotionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46f0a8d4b8fdd80b49203be9e34adb25';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool read
    string name
    int16 readstate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReadMotionRequest(null);
    if (msg.read !== undefined) {
      resolved.read = msg.read;
    }
    else {
      resolved.read = false
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.readstate !== undefined) {
      resolved.readstate = msg.readstate;
    }
    else {
      resolved.readstate = 0
    }

    return resolved;
    }
};

class ReadMotionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.VectorCnt = null;
      this.motionstate = null;
      this.ID = null;
      this.MotionList = null;
      this.RelativeData = null;
      this.AbsoluteData = null;
    }
    else {
      if (initObj.hasOwnProperty('VectorCnt')) {
        this.VectorCnt = initObj.VectorCnt
      }
      else {
        this.VectorCnt = 0;
      }
      if (initObj.hasOwnProperty('motionstate')) {
        this.motionstate = initObj.motionstate
      }
      else {
        this.motionstate = [];
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = [];
      }
      if (initObj.hasOwnProperty('MotionList')) {
        this.MotionList = initObj.MotionList
      }
      else {
        this.MotionList = [];
      }
      if (initObj.hasOwnProperty('RelativeData')) {
        this.RelativeData = initObj.RelativeData
      }
      else {
        this.RelativeData = [];
      }
      if (initObj.hasOwnProperty('AbsoluteData')) {
        this.AbsoluteData = initObj.AbsoluteData
      }
      else {
        this.AbsoluteData = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadMotionResponse
    // Serialize message field [VectorCnt]
    bufferOffset = _serializer.int16(obj.VectorCnt, buffer, bufferOffset);
    // Serialize message field [motionstate]
    bufferOffset = _arraySerializer.int16(obj.motionstate, buffer, bufferOffset, null);
    // Serialize message field [ID]
    bufferOffset = _arraySerializer.int16(obj.ID, buffer, bufferOffset, null);
    // Serialize message field [MotionList]
    bufferOffset = _arraySerializer.int16(obj.MotionList, buffer, bufferOffset, null);
    // Serialize message field [RelativeData]
    bufferOffset = _arraySerializer.int16(obj.RelativeData, buffer, bufferOffset, null);
    // Serialize message field [AbsoluteData]
    bufferOffset = _arraySerializer.int16(obj.AbsoluteData, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadMotionResponse
    let len;
    let data = new ReadMotionResponse(null);
    // Deserialize message field [VectorCnt]
    data.VectorCnt = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motionstate]
    data.motionstate = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [ID]
    data.ID = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [MotionList]
    data.MotionList = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [RelativeData]
    data.RelativeData = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [AbsoluteData]
    data.AbsoluteData = _arrayDeserializer.int16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.motionstate.length;
    length += 2 * object.ID.length;
    length += 2 * object.MotionList.length;
    length += 2 * object.RelativeData.length;
    length += 2 * object.AbsoluteData.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tku_msgs/ReadMotionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9be25567668b09a6560656233265f235';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 VectorCnt
    int16[] motionstate
    int16[] ID
    int16[] MotionList
    int16[] RelativeData
    int16[] AbsoluteData
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReadMotionResponse(null);
    if (msg.VectorCnt !== undefined) {
      resolved.VectorCnt = msg.VectorCnt;
    }
    else {
      resolved.VectorCnt = 0
    }

    if (msg.motionstate !== undefined) {
      resolved.motionstate = msg.motionstate;
    }
    else {
      resolved.motionstate = []
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = []
    }

    if (msg.MotionList !== undefined) {
      resolved.MotionList = msg.MotionList;
    }
    else {
      resolved.MotionList = []
    }

    if (msg.RelativeData !== undefined) {
      resolved.RelativeData = msg.RelativeData;
    }
    else {
      resolved.RelativeData = []
    }

    if (msg.AbsoluteData !== undefined) {
      resolved.AbsoluteData = msg.AbsoluteData;
    }
    else {
      resolved.AbsoluteData = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ReadMotionRequest,
  Response: ReadMotionResponse,
  md5sum() { return 'aba192d5d2599c4b6211587c2f618837'; },
  datatype() { return 'tku_msgs/ReadMotion'; }
};
