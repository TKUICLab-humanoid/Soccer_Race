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

class ButtonColorForm {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.BuildingModel = null;
    }
    else {
      if (initObj.hasOwnProperty('BuildingModel')) {
        this.BuildingModel = initObj.BuildingModel
      }
      else {
        this.BuildingModel = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonColorForm
    // Serialize message field [BuildingModel]
    bufferOffset = _serializer.bool(obj.BuildingModel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonColorForm
    let len;
    let data = new ButtonColorForm(null);
    // Deserialize message field [BuildingModel]
    data.BuildingModel = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/ButtonColorForm';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c88544105f68a71d5b5064eb3340fd1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool BuildingModel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonColorForm(null);
    if (msg.BuildingModel !== undefined) {
      resolved.BuildingModel = msg.BuildingModel;
    }
    else {
      resolved.BuildingModel = false
    }

    return resolved;
    }
};

module.exports = ButtonColorForm;
