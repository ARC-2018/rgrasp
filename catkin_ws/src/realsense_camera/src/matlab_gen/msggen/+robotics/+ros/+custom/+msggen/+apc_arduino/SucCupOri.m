classdef SucCupOri < robotics.ros.Message
    %SucCupOri MATLAB implementation of apc_arduino/SucCupOri
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'apc_arduino/SucCupOri' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'f742b45bcef69fde4d6b792e7c83fbf2' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        Sc1
        Sc2
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Sc1', 'Sc2'} % List of non-constant message properties
        ROSPropertyList = {'sc1', 'sc2'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = SucCupOri(msg)
            %SucCupOri Construct the message object SucCupOri
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
        
        function sc1 = get.Sc1(obj)
            %get.Sc1 Get the value for property Sc1
            sc1 = int8(obj.JavaMessage.getSc1);
        end
        
        function set.Sc1(obj, sc1)
            %set.Sc1 Set the value for property Sc1
            validateattributes(sc1, {'numeric'}, {'nonempty', 'scalar'}, 'SucCupOri', 'Sc1');
            
            obj.JavaMessage.setSc1(sc1);
        end
        
        function sc2 = get.Sc2(obj)
            %get.Sc2 Get the value for property Sc2
            sc2 = int8(obj.JavaMessage.getSc2);
        end
        
        function set.Sc2(obj, sc2)
            %set.Sc2 Set the value for property Sc2
            validateattributes(sc2, {'numeric'}, {'nonempty', 'scalar'}, 'SucCupOri', 'Sc2');
            
            obj.JavaMessage.setSc2(sc2);
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
            cpObj.Sc1 = obj.Sc1;
            cpObj.Sc2 = obj.Sc2;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Sc1 = strObj.Sc1;
            obj.Sc2 = strObj.Sc2;
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
            
            strObj.Sc1 = obj.Sc1;
            strObj.Sc2 = obj.Sc2;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.apc_arduino.SucCupOri.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.apc_arduino.SucCupOri;
            obj.reload(strObj);
        end
    end
end
