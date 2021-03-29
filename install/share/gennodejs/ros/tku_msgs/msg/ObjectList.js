// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ColorArray = require('./ColorArray.js');

//-----------------------------------------------------------

class ObjectList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Objectlist = null;
    }
    else {
      if (initObj.hasOwnProperty('Objectlist')) {
        this.Objectlist = initObj.Objectlist
      }
      else {
        this.Objectlist = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectList
    // Serialize message field [Objectlist]
    // Serialize the length for message field [Objectlist]
    bufferOffset = _serializer.uint32(obj.Objectlist.length, buffer, bufferOffset);
    obj.Objectlist.forEach((val) => {
      bufferOffset = ColorArray.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectList
    let len;
    let data = new ObjectList(null);
    // Deserialize message field [Objectlist]
    // Deserialize array length for message field [Objectlist]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Objectlist = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Objectlist[i] = ColorArray.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.Objectlist.forEach((val) => {
      length += ColorArray.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/ObjectList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c07141cb8eb44d90e2277a09e02ec2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ColorArray[] Objectlist
    
    ================================================================================
    MSG: tku_msgs/ColorArray
    int32 cnt
    ColorData[] Colorarray
    
    ================================================================================
    MSG: tku_msgs/ColorData
    int32 X
    int32 Y
    int32 XMin
    int32 XMax
    int32 YMin
    int32 YMax
    int32 Width
    int32 Height
    int32 size                                                 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectList(null);
    if (msg.Objectlist !== undefined) {
      resolved.Objectlist = new Array(msg.Objectlist.length);
      for (let i = 0; i < resolved.Objectlist.length; ++i) {
        resolved.Objectlist[i] = ColorArray.Resolve(msg.Objectlist[i]);
      }
    }
    else {
      resolved.Objectlist = []
    }

    return resolved;
    }
};

module.exports = ObjectList;
