classdef TopicInfo < robotics.ros.Message
    %TopicInfo MATLAB implementation of apc_arduino/TopicInfo
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'apc_arduino/TopicInfo' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '0ad51f88fc44892f8c10684077646005' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant)
        IDPUBLISHER = uint16(0)
        IDSUBSCRIBER = uint16(1)
        IDSERVICESERVER = uint16(2)
        IDSERVICECLIENT = uint16(4)
        IDPARAMETERREQUEST = uint16(6)
        IDLOG = uint16(7)
        IDTIME = uint16(10)
        IDTXSTOP = uint16(11)
    end
    
    properties (Dependent)
        TopicId
        TopicName
        MessageType_
        Md5sum
        BufferSize
    end
    
    properties (Constant, Hidden)
        PropertyList = {'BufferSize', 'Md5sum', 'MessageType_', 'TopicId', 'TopicName'} % List of non-constant message properties
        ROSPropertyList = {'buffer_size', 'md5sum', 'message_type', 'topic_id', 'topic_name'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = TopicInfo(msg)
            %TopicInfo Construct the message object TopicInfo
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function topicid = get.TopicId(obj)
            %get.TopicId Get the value for property TopicId
            topicid = typecast(int16(obj.JavaMessage.getTopicId), 'uint16');
        end
        
        function set.TopicId(obj, topicid)
            %set.TopicId Set the value for property TopicId
            validateattributes(topicid, {'numeric'}, {'nonempty', 'scalar'}, 'TopicInfo', 'TopicId');
            
            obj.JavaMessage.setTopicId(topicid);
        end
        
        function topicname = get.TopicName(obj)
            %get.TopicName Get the value for property TopicName
            topicname = char(obj.JavaMessage.getTopicName);
        end
        
        function set.TopicName(obj, topicname)
            %set.TopicName Set the value for property TopicName
            validateattributes(topicname, {'char'}, {}, 'TopicInfo', 'TopicName');
            
            obj.JavaMessage.setTopicName(topicname);
        end
        
        function messagetype_ = get.MessageType_(obj)
            %get.MessageType_ Get the value for property MessageType_
            messagetype_ = char(obj.JavaMessage.getMessageType);
        end
        
        function set.MessageType_(obj, messagetype_)
            %set.MessageType_ Set the value for property MessageType_
            validateattributes(messagetype_, {'char'}, {}, 'TopicInfo', 'MessageType_');
            
            obj.JavaMessage.setMessageType(messagetype_);
        end
        
        function md5sum = get.Md5sum(obj)
            %get.Md5sum Get the value for property Md5sum
            md5sum = char(obj.JavaMessage.getMd5sum);
        end
        
        function set.Md5sum(obj, md5sum)
            %set.Md5sum Set the value for property Md5sum
            validateattributes(md5sum, {'char'}, {}, 'TopicInfo', 'Md5sum');
            
            obj.JavaMessage.setMd5sum(md5sum);
        end
        
        function buffersize = get.BufferSize(obj)
            %get.BufferSize Get the value for property BufferSize
            buffersize = int32(obj.JavaMessage.getBufferSize);
        end
        
        function set.BufferSize(obj, buffersize)
            %set.BufferSize Set the value for property BufferSize
            validateattributes(buffersize, {'numeric'}, {'nonempty', 'scalar'}, 'TopicInfo', 'BufferSize');
            
            obj.JavaMessage.setBufferSize(buffersize);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.TopicId = obj.TopicId;
            cpObj.TopicName = obj.TopicName;
            cpObj.MessageType_ = obj.MessageType_;
            cpObj.Md5sum = obj.Md5sum;
            cpObj.BufferSize = obj.BufferSize;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.TopicId = strObj.TopicId;
            obj.TopicName = strObj.TopicName;
            obj.MessageType_ = strObj.MessageType_;
            obj.Md5sum = strObj.Md5sum;
            obj.BufferSize = strObj.BufferSize;
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.TopicId = obj.TopicId;
            strObj.TopicName = obj.TopicName;
            strObj.MessageType_ = obj.MessageType_;
            strObj.Md5sum = obj.Md5sum;
            strObj.BufferSize = obj.BufferSize;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.apc_arduino.TopicInfo.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.apc_arduino.TopicInfo;
            obj.reload(strObj);
        end
    end
end
