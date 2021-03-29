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

class LabelModelObjectList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.LabelModel = null;
    }
    else {
      if (initObj.hasOwnProperty('LabelModel')) {
        this.LabelModel = initObj.LabelModel
      }
      else {
        this.LabelModel = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LabelModelObjectList
    // Serialize message field [LabelModel]
    bufferOffset = _arraySerializer.char(obj.LabelModel, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LabelModelObjectList
    let len;
    let data = new LabelModelObjectList(null);
    // Deserialize message field [LabelModel]
    data.LabelModel = _arrayDeserializer.char(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.LabelModel.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/LabelModelObjectList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3ec37f0e604748d8ecf9aa0d22ba18e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    char[] LabelModel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LabelModelObjectList(null);
    if (msg.LabelModel !== undefined) {
      resolved.LabelModel = msg.LabelModel;
    }
    else {
      resolved.LabelModel = []
    }

    return resolved;
    }
};

module.exports = LabelModelObjectList;
