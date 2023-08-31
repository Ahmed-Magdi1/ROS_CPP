; Auto-generated. Do not edit!


(cl:in-package count-srv)


;//! \htmlinclude cont-request.msg.html

(cl:defclass <cont-request> (roslisp-msg-protocol:ros-message)
  ((words
    :reader words
    :initarg :words
    :type cl:string
    :initform ""))
)

(cl:defclass cont-request (<cont-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cont-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cont-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name count-srv:<cont-request> is deprecated: use count-srv:cont-request instead.")))

(cl:ensure-generic-function 'words-val :lambda-list '(m))
(cl:defmethod words-val ((m <cont-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader count-srv:words-val is deprecated.  Use count-srv:words instead.")
  (words m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cont-request>) ostream)
  "Serializes a message object of type '<cont-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'words))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'words))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cont-request>) istream)
  "Deserializes a message object of type '<cont-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'words) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'words) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cont-request>)))
  "Returns string type for a service object of type '<cont-request>"
  "count/contRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cont-request)))
  "Returns string type for a service object of type 'cont-request"
  "count/contRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cont-request>)))
  "Returns md5sum for a message object of type '<cont-request>"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cont-request)))
  "Returns md5sum for a message object of type 'cont-request"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cont-request>)))
  "Returns full string definition for message of type '<cont-request>"
  (cl:format cl:nil "string words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cont-request)))
  "Returns full string definition for message of type 'cont-request"
  (cl:format cl:nil "string words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cont-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'words))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cont-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cont-request
    (cl:cons ':words (words msg))
))
;//! \htmlinclude cont-response.msg.html

(cl:defclass <cont-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass cont-response (<cont-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cont-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cont-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name count-srv:<cont-response> is deprecated: use count-srv:cont-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <cont-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader count-srv:count-val is deprecated.  Use count-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cont-response>) ostream)
  "Serializes a message object of type '<cont-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cont-response>) istream)
  "Deserializes a message object of type '<cont-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cont-response>)))
  "Returns string type for a service object of type '<cont-response>"
  "count/contResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cont-response)))
  "Returns string type for a service object of type 'cont-response"
  "count/contResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cont-response>)))
  "Returns md5sum for a message object of type '<cont-response>"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cont-response)))
  "Returns md5sum for a message object of type 'cont-response"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cont-response>)))
  "Returns full string definition for message of type '<cont-response>"
  (cl:format cl:nil "uint32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cont-response)))
  "Returns full string definition for message of type 'cont-response"
  (cl:format cl:nil "uint32 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cont-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cont-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cont-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cont)))
  'cont-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cont)))
  'cont-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cont)))
  "Returns string type for a service object of type '<cont>"
  "count/cont")