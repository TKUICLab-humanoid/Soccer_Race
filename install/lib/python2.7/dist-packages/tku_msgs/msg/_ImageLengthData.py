# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tku_msgs/ImageLengthData.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ImageLengthData(genpy.Message):
  _md5sum = "162a1f70ff8cb0ca3417bb2f1837ffa6"
  _type = "tku_msgs/ImageLengthData"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int16 focus
int16 top
int16 bottom
int16 top_width
int16 bottom_width
float64 horizontal_head_angle
"""
  __slots__ = ['focus','top','bottom','top_width','bottom_width','horizontal_head_angle']
  _slot_types = ['int16','int16','int16','int16','int16','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       focus,top,bottom,top_width,bottom_width,horizontal_head_angle

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ImageLengthData, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.focus is None:
        self.focus = 0
      if self.top is None:
        self.top = 0
      if self.bottom is None:
        self.bottom = 0
      if self.top_width is None:
        self.top_width = 0
      if self.bottom_width is None:
        self.bottom_width = 0
      if self.horizontal_head_angle is None:
        self.horizontal_head_angle = 0.
    else:
      self.focus = 0
      self.top = 0
      self.bottom = 0
      self.top_width = 0
      self.bottom_width = 0
      self.horizontal_head_angle = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_5hd().pack(_x.focus, _x.top, _x.bottom, _x.top_width, _x.bottom_width, _x.horizontal_head_angle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 18
      (_x.focus, _x.top, _x.bottom, _x.top_width, _x.bottom_width, _x.horizontal_head_angle,) = _get_struct_5hd().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_5hd().pack(_x.focus, _x.top, _x.bottom, _x.top_width, _x.bottom_width, _x.horizontal_head_angle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 18
      (_x.focus, _x.top, _x.bottom, _x.top_width, _x.bottom_width, _x.horizontal_head_angle,) = _get_struct_5hd().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5hd = None
def _get_struct_5hd():
    global _struct_5hd
    if _struct_5hd is None:
        _struct_5hd = struct.Struct("<5hd")
    return _struct_5hd
