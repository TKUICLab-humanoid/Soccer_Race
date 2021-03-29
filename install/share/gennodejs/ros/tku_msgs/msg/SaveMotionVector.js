// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SaveMotion = require('./SaveMotion.js');

//-----------------------------------------------------------

class SaveMotionVector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SaveMotionVector = null;
    }
    else {
      if (initObj.hasOwnProperty('SaveMotionVector')) {
        this.SaveMotionVector = initObj.SaveMotionVector
      }
      else {
        this.SaveMotionVector = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveMotionVector
    // Serialize message field [SaveMotionVector]
    // Serialize the length for message field [SaveMotionVector]
    bufferOffset = _serializer.uint32(obj.SaveMotionVector.length, buffer, bufferOffset);
    obj.SaveMotionVector.forEach((val) => {
      bufferOffset = SaveMotion.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMotionVector
    let len;
    let data = new SaveMotionVector(null);
    // Deserialize message field [SaveMotionVector]
    // Deserialize array length for message field [SaveMotionVector]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.SaveMotionVector = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.SaveMotionVector[i] = SaveMotion.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.SaveMotionVector.forEach((val) => {
      length += SaveMotion.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/SaveMotionVector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67e1cd0228979aba8328714863431170';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SaveMotion[] SaveMotionVector
    ================================================================================
    MSG: tku_msgs/SaveMotion
    std_msgs/MultiArrayLayout layout
    string name
    int16 motionstate
    int16 ID
    int16 savestate
    bool saveflag
    int16[] MotionList
    int16[] MotorData
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveMotionVector(null);
    if (msg.SaveMotionVector !== undefined) {
      resolved.SaveMotionVector = new Array(msg.SaveMotionVector.length);
      for (let i = 0; i < resolved.SaveMotionVector.length; ++i) {
        resolved.SaveMotionVector[i] = SaveMotion.Resolve(msg.SaveMotionVector[i]);
      }
    }
    else {
      resolved.SaveMotionVector = []
    }

    return resolved;
    }
};

module.exports = SaveMotionVector;
