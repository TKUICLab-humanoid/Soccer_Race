// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SoccerData = require('./SoccerData.js');

//-----------------------------------------------------------

class SoccerDataList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_cnt = null;
      this.ObjectList = null;
    }
    else {
      if (initObj.hasOwnProperty('object_cnt')) {
        this.object_cnt = initObj.object_cnt
      }
      else {
        this.object_cnt = 0;
      }
      if (initObj.hasOwnProperty('ObjectList')) {
        this.ObjectList = initObj.ObjectList
      }
      else {
        this.ObjectList = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SoccerDataList
    // Serialize message field [object_cnt]
    bufferOffset = _serializer.int16(obj.object_cnt, buffer, bufferOffset);
    // Serialize message field [ObjectList]
    // Serialize the length for message field [ObjectList]
    bufferOffset = _serializer.uint32(obj.ObjectList.length, buffer, bufferOffset);
    obj.ObjectList.forEach((val) => {
      bufferOffset = SoccerData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SoccerDataList
    let len;
    let data = new SoccerDataList(null);
    // Deserialize message field [object_cnt]
    data.object_cnt = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ObjectList]
    // Deserialize array length for message field [ObjectList]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ObjectList = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ObjectList[i] = SoccerData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 26 * object.ObjectList.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/SoccerDataList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4bf9f67971129bb91670b6e5affb7fa2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 object_cnt
    SoccerData[] ObjectList
    
    ================================================================================
    MSG: tku_msgs/SoccerData
    int32 x
    int32 y
    int32 height
    int32 width
    Distance distance
    int32 object_mode
    
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
    const resolved = new SoccerDataList(null);
    if (msg.object_cnt !== undefined) {
      resolved.object_cnt = msg.object_cnt;
    }
    else {
      resolved.object_cnt = 0
    }

    if (msg.ObjectList !== undefined) {
      resolved.ObjectList = new Array(msg.ObjectList.length);
      for (let i = 0; i < resolved.ObjectList.length; ++i) {
        resolved.ObjectList[i] = SoccerData.Resolve(msg.ObjectList[i]);
      }
    }
    else {
      resolved.ObjectList = []
    }

    return resolved;
    }
};

module.exports = SoccerDataList;
