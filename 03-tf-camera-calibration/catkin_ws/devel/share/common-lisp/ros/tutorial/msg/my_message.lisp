; Auto-generated. Do not edit!


(cl:in-package tutorial-msg)


;//! \htmlinclude my_message.msg.html

(cl:defclass <my_message> (roslisp-msg-protocol:ros-message)
  ((temp
    :reader temp
    :initarg :temp
    :type cl:float
    :initform 0.0)
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0))
)

(cl:defclass my_message (<my_message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial-msg:<my_message> is deprecated: use tutorial-msg:my_message instead.")))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <my_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-msg:temp-val is deprecated.  Use tutorial-msg:temp instead.")
  (temp m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <my_message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial-msg:pressure-val is deprecated.  Use tutorial-msg:pressure instead.")
  (pressure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_message>) ostream)
  "Serializes a message object of type '<my_message>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_message>) istream)
  "Deserializes a message object of type '<my_message>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_message>)))
  "Returns string type for a message object of type '<my_message>"
  "tutorial/my_message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_message)))
  "Returns string type for a message object of type 'my_message"
  "tutorial/my_message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_message>)))
  "Returns md5sum for a message object of type '<my_message>"
  "66c861d7d072cf2ed79d84c9e166648a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_message)))
  "Returns md5sum for a message object of type 'my_message"
  "66c861d7d072cf2ed79d84c9e166648a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_message>)))
  "Returns full string definition for message of type '<my_message>"
  (cl:format cl:nil "float64 temp~%float64 pressure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_message)))
  "Returns full string definition for message of type 'my_message"
  (cl:format cl:nil "float64 temp~%float64 pressure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_message>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_message>))
  "Converts a ROS message object to a list"
  (cl:list 'my_message
    (cl:cons ':temp (temp msg))
    (cl:cons ':pressure (pressure msg))
))
