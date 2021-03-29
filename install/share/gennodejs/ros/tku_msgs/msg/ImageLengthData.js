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

class ImageLengthData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.focus = null;
      this.top = null;
      this.bottom = null;
      this.top_width = null;
      this.bottom_width = null;
      this.horizontal_head_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('focus')) {
        this.focus = initObj.focus
      }
      else {
        this.focus = 0;
      }
      if (initObj.hasOwnProperty('top')) {
        this.top = initObj.top
      }
      else {
        this.top = 0;
      }
      if (initObj.hasOwnProperty('bottom')) {
        this.bottom = initObj.bottom
      }
      else {
        this.bottom = 0;
      }
      if (initObj.hasOwnProperty('top_width')) {
        this.top_width = initObj.top_width
      }
      else {
        this.top_width = 0;
      }
      if (initObj.hasOwnProperty('bottom_width')) {
        this.bottom_width = initObj.bottom_width
      }
      else {
        this.bottom_width = 0;
      }
      if (initObj.hasOwnProperty('horizontal_head_angle')) {
        this.horizontal_head_angle = initObj.horizontal_head_angle
      }
      else {
        this.horizontal_head_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageLengthData
    // Serialize message field [focus]
    bufferOffset = _serializer.int16(obj.focus, buffer, bufferOffset);
    // Serialize message field [top]
    bufferOffset = _serializer.int16(obj.top, buffer, bufferOffset);
    // Serialize message field [bottom]
    bufferOffset = _serializer.int16(obj.bottom, buffer, bufferOffset);
    // Serialize message field [top_width]
    bufferOffset = _serializer.int16(obj.top_width, buffer, bufferOffset);
    // Serialize message field [bottom_width]
    bufferOffset = _serializer.int16(obj.bottom_width, buffer, bufferOffset);
    // Serialize message field [horizontal_head_angle]
    bufferOffset = _serializer.float64(obj.horizontal_head_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageLengthData
    let len;
    let data = new ImageLengthData(null);
    // Deserialize message field [focus]
    data.focus = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [top]
    data.top = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [bottom]
    data.bottom = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [top_width]
    data.top_width = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [bottom_width]
    data.bottom_width = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [horizontal_head_angle]
    data.horizontal_head_angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/ImageLengthData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '162a1f70ff8cb0ca3417bb2f1837ffa6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 focus
    int16 top
    int16 bottom
    int16 top_width
    int16 bottom_width
    float64 horizontal_head_angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageLengthData(null);
    if (msg.focus !== undefined) {
      resolved.focus = msg.focus;
    }
    else {
      resolved.focus = 0
    }

    if (msg.top !== undefined) {
      resolved.top = msg.top;
    }
    else {
      resolved.top = 0
    }

    if (msg.bottom !== undefined) {
      resolved.bottom = msg.bottom;
    }
    else {
      resolved.bottom = 0
    }

    if (msg.top_width !== undefined) {
      resolved.top_width = msg.top_width;
    }
    else {
      resolved.top_width = 0
    }

    if (msg.bottom_width !== undefined) {
      resolved.bottom_width = msg.bottom_width;
    }
    else {
      resolved.bottom_width = 0
    }

    if (msg.horizontal_head_angle !== undefined) {
      resolved.horizontal_head_angle = msg.horizontal_head_angle;
    }
    else {
      resolved.horizontal_head_angle = 0.0
    }

    return resolved;
    }
};

module.exports = ImageLengthData;
