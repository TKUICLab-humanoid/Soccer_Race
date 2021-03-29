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

class InterfaceSend2Sector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Package = null;
      this.sectorname = null;
    }
    else {
      if (initObj.hasOwnProperty('Package')) {
        this.Package = initObj.Package
      }
      else {
        this.Package = 0;
      }
      if (initObj.hasOwnProperty('sectorname')) {
        this.sectorname = initObj.sectorname
      }
      else {
        this.sectorname = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InterfaceSend2Sector
    // Serialize message field [Package]
    bufferOffset = _serializer.int16(obj.Package, buffer, bufferOffset);
    // Serialize message field [sectorname]
    bufferOffset = _serializer.string(obj.sectorname, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InterfaceSend2Sector
    let len;
    let data = new InterfaceSend2Sector(null);
    // Deserialize message field [Package]
    data.Package = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [sectorname]
    data.sectorname = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sectorname.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/InterfaceSend2Sector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '259b9b823a54b61e8ccd5c2bcb938816';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 Package
    string sectorname
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InterfaceSend2Sector(null);
    if (msg.Package !== undefined) {
      resolved.Package = msg.Package;
    }
    else {
      resolved.Package = 0
    }

    if (msg.sectorname !== undefined) {
      resolved.sectorname = msg.sectorname;
    }
    else {
      resolved.sectorname = ''
    }

    return resolved;
    }
};

module.exports = InterfaceSend2Sector;
