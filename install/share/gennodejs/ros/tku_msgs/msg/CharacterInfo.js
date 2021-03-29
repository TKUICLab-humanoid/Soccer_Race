// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WitchData = require('./WitchData.js');
let ObjectInfo = require('./ObjectInfo.js');

//-----------------------------------------------------------

class CharacterInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.which_robot = null;
      this.name = null;
      this.x = null;
      this.y = null;
      this.exist_flag = null;
      this.theta = null;
      this.dist = null;
      this.object = null;
      this.enemy = null;
    }
    else {
      if (initObj.hasOwnProperty('which_robot')) {
        this.which_robot = initObj.which_robot
      }
      else {
        this.which_robot = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('exist_flag')) {
        this.exist_flag = initObj.exist_flag
      }
      else {
        this.exist_flag = false;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = new WitchData();
      }
      if (initObj.hasOwnProperty('dist')) {
        this.dist = initObj.dist
      }
      else {
        this.dist = new WitchData();
      }
      if (initObj.hasOwnProperty('object')) {
        this.object = initObj.object
      }
      else {
        this.object = [];
      }
      if (initObj.hasOwnProperty('enemy')) {
        this.enemy = initObj.enemy
      }
      else {
        this.enemy = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CharacterInfo
    // Serialize message field [which_robot]
    bufferOffset = _serializer.string(obj.which_robot, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [exist_flag]
    bufferOffset = _serializer.bool(obj.exist_flag, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = WitchData.serialize(obj.theta, buffer, bufferOffset);
    // Serialize message field [dist]
    bufferOffset = WitchData.serialize(obj.dist, buffer, bufferOffset);
    // Serialize message field [object]
    // Serialize the length for message field [object]
    bufferOffset = _serializer.uint32(obj.object.length, buffer, bufferOffset);
    obj.object.forEach((val) => {
      bufferOffset = ObjectInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [enemy]
    // Serialize the length for message field [enemy]
    bufferOffset = _serializer.uint32(obj.enemy.length, buffer, bufferOffset);
    obj.enemy.forEach((val) => {
      bufferOffset = ObjectInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CharacterInfo
    let len;
    let data = new CharacterInfo(null);
    // Deserialize message field [which_robot]
    data.which_robot = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [exist_flag]
    data.exist_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = WitchData.deserialize(buffer, bufferOffset);
    // Deserialize message field [dist]
    data.dist = WitchData.deserialize(buffer, bufferOffset);
    // Deserialize message field [object]
    // Deserialize array length for message field [object]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.object = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.object[i] = ObjectInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [enemy]
    // Deserialize array length for message field [enemy]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.enemy = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.enemy[i] = ObjectInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.which_robot.length;
    length += object.name.length;
    object.object.forEach((val) => {
      length += ObjectInfo.getMessageSize(val);
    });
    object.enemy.forEach((val) => {
      length += ObjectInfo.getMessageSize(val);
    });
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/CharacterInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '291b746588435b1a71d12e22c696f64a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string which_robot
    string name
    float32 x
    float32 y
    bool exist_flag
    WitchData theta
    WitchData dist
    ObjectInfo[] object
    ObjectInfo[] enemy
    
    ================================================================================
    MSG: tku_msgs/WitchData
    float32 local
    float32 global
    
    ================================================================================
    MSG: tku_msgs/ObjectInfo
    string name
    float32 x
    float32 y
    bool exist_flag
    WitchData theta
    WitchData dist
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CharacterInfo(null);
    if (msg.which_robot !== undefined) {
      resolved.which_robot = msg.which_robot;
    }
    else {
      resolved.which_robot = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.exist_flag !== undefined) {
      resolved.exist_flag = msg.exist_flag;
    }
    else {
      resolved.exist_flag = false
    }

    if (msg.theta !== undefined) {
      resolved.theta = WitchData.Resolve(msg.theta)
    }
    else {
      resolved.theta = new WitchData()
    }

    if (msg.dist !== undefined) {
      resolved.dist = WitchData.Resolve(msg.dist)
    }
    else {
      resolved.dist = new WitchData()
    }

    if (msg.object !== undefined) {
      resolved.object = new Array(msg.object.length);
      for (let i = 0; i < resolved.object.length; ++i) {
        resolved.object[i] = ObjectInfo.Resolve(msg.object[i]);
      }
    }
    else {
      resolved.object = []
    }

    if (msg.enemy !== undefined) {
      resolved.enemy = new Array(msg.enemy.length);
      for (let i = 0; i < resolved.enemy.length; ++i) {
        resolved.enemy[i] = ObjectInfo.Resolve(msg.enemy[i]);
      }
    }
    else {
      resolved.enemy = []
    }

    return resolved;
    }
};

module.exports = CharacterInfo;
