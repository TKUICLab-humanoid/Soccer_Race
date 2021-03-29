// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SaveMotion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.layout = null;
      this.name = null;
      this.motionstate = null;
      this.ID = null;
      this.savestate = null;
      this.saveflag = null;
      this.MotionList = null;
      this.MotorData = null;
    }
    else {
      if (initObj.hasOwnProperty('layout')) {
        this.layout = initObj.layout
      }
      else {
        this.layout = new std_msgs.msg.MultiArrayLayout();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('motionstate')) {
        this.motionstate = initObj.motionstate
      }
      else {
        this.motionstate = 0;
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('savestate')) {
        this.savestate = initObj.savestate
      }
      else {
        this.savestate = 0;
      }
      if (initObj.hasOwnProperty('saveflag')) {
        this.saveflag = initObj.saveflag
      }
      else {
        this.saveflag = false;
      }
      if (initObj.hasOwnProperty('MotionList')) {
        this.MotionList = initObj.MotionList
      }
      else {
        this.MotionList = [];
      }
      if (initObj.hasOwnProperty('MotorData')) {
        this.MotorData = initObj.MotorData
      }
      else {
        this.MotorData = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveMotion
    // Serialize message field [layout]
    bufferOffset = std_msgs.msg.MultiArrayLayout.serialize(obj.layout, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [motionstate]
    bufferOffset = _serializer.int16(obj.motionstate, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.int16(obj.ID, buffer, bufferOffset);
    // Serialize message field [savestate]
    bufferOffset = _serializer.int16(obj.savestate, buffer, bufferOffset);
    // Serialize message field [saveflag]
    bufferOffset = _serializer.bool(obj.saveflag, buffer, bufferOffset);
    // Serialize message field [MotionList]
    bufferOffset = _arraySerializer.int16(obj.MotionList, buffer, bufferOffset, null);
    // Serialize message field [MotorData]
    bufferOffset = _arraySerializer.int16(obj.MotorData, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveMotion
    let len;
    let data = new SaveMotion(null);
    // Deserialize message field [layout]
    data.layout = std_msgs.msg.MultiArrayLayout.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [motionstate]
    data.motionstate = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [savestate]
    data.savestate = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [saveflag]
    data.saveflag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [MotionList]
    data.MotionList = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [MotorData]
    data.MotorData = _arrayDeserializer.int16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.MultiArrayLayout.getMessageSize(object.layout);
    length += object.name.length;
    length += 2 * object.MotionList.length;
    length += 2 * object.MotorData.length;
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/SaveMotion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51a8597bb88713732b738b54bba08066';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SaveMotion(null);
    if (msg.layout !== undefined) {
      resolved.layout = std_msgs.msg.MultiArrayLayout.Resolve(msg.layout)
    }
    else {
      resolved.layout = new std_msgs.msg.MultiArrayLayout()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.motionstate !== undefined) {
      resolved.motionstate = msg.motionstate;
    }
    else {
      resolved.motionstate = 0
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.savestate !== undefined) {
      resolved.savestate = msg.savestate;
    }
    else {
      resolved.savestate = 0
    }

    if (msg.saveflag !== undefined) {
      resolved.saveflag = msg.saveflag;
    }
    else {
      resolved.saveflag = false
    }

    if (msg.MotionList !== undefined) {
      resolved.MotionList = msg.MotionList;
    }
    else {
      resolved.MotionList = []
    }

    if (msg.MotorData !== undefined) {
      resolved.MotorData = msg.MotorData;
    }
    else {
      resolved.MotorData = []
    }

    return resolved;
    }
};

module.exports = SaveMotion;
