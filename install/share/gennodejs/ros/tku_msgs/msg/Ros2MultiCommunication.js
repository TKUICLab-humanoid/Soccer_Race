// Auto-generated. Do not edit!

// (in-package tku_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CharacterInfo = require('./CharacterInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Ros2MultiCommunication {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.who = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('who')) {
        this.who = initObj.who
      }
      else {
        this.who = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ros2MultiCommunication
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [who]
    // Serialize the length for message field [who]
    bufferOffset = _serializer.uint32(obj.who.length, buffer, bufferOffset);
    obj.who.forEach((val) => {
      bufferOffset = CharacterInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ros2MultiCommunication
    let len;
    let data = new Ros2MultiCommunication(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [who]
    // Deserialize array length for message field [who]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.who = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.who[i] = CharacterInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.who.forEach((val) => {
      length += CharacterInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tku_msgs/Ros2MultiCommunication';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85518ba8fb2f5102548b06829ab94618';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    CharacterInfo[] who
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: tku_msgs/CharacterInfo
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
    const resolved = new Ros2MultiCommunication(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.who !== undefined) {
      resolved.who = new Array(msg.who.length);
      for (let i = 0; i < resolved.who.length; ++i) {
        resolved.who[i] = CharacterInfo.Resolve(msg.who[i]);
      }
    }
    else {
      resolved.who = []
    }

    return resolved;
    }
};

module.exports = Ros2MultiCommunication;
