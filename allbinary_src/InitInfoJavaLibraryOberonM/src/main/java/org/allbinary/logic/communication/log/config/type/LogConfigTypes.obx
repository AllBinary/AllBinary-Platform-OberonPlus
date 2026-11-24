{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.logic.communication.log.config.type
unit LogConfigTypes;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Node, LogConfigType;

type
  {AB:TYPES}
  TLogConfigTypes = class(TObject)
  public
    class var JSP_ERROR_NO_FUNCTION: string;
    class var LOGGING: TBasicArrayList;
    class procedure StaticInitializer; static;
        constructor Create;
        class procedure init; static;
        class function getInstance(node_: TNode): TLogConfigType; static;
  end;

implementation
uses
  LogConfigTypeFactory, LogConfigTypeData, DomNodeHelper, DomSearchHelper, PreLogUtil, LoggingInitInfo, BasicArrayListD;


{AB:CODE}
    

class procedure TLogConfigTypes.StaticInitializer;
begin
        TLogConfigTypes.init();
end;
    

constructor TLogConfigTypes.Create;
begin
    inherited Create;
end;
    

class procedure TLogConfigTypes.init;
var
  loggingInitInfo_: TLoggingInitInfo;
  logConfigTypeVector: TBasicArrayList;
begin
    TJava.MonitorEnter(nil);
    try
        try
            TPreLogUtil.put('Initialize LogconfigTypes', TJava.Box('LogConfigTypes'), 'init()');
            TLogConfigTypeFactory.getInstance();
            loggingInitInfo_ := TLoggingInitInfo.Create();
            logConfigTypeVector := loggingInitInfo_.getTypeList();
            TPreLogUtil.put('Number Of Log Configs: ' + TJava.ToString(loggingInitInfo_.getNumberOfLogConfigs()), TJava.Box('LogConfigTypes'), 'init()');
            TPreLogUtil.put('Number Of Log Config Type Names: ' + IntToStr(logConfigTypeVector.size()), TJava.Box('LogConfigTypes'), 'init()');
            TLogConfigTypes.LOGGING.addAllList(logConfigTypeVector);
            TLogConfigTypes.LOGGING.add(TJava.Box(TLogConfigTypeFactory.getInstance().NETBEANS_MODULE));
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putSE('Unable to initialize LogConfigTypes', 'LogConfigTypes', 'init()', TJava.Box(e));
            end;
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

// throws Exception
class function TLogConfigTypes.getInstance(node_: TNode): TLogConfigType;
var
  nameValueNode: TNode;
  name: string;
  descriptionValueNode: TNode;
  description: string;
  availableLogConfigTypes: TBasicArrayList;
  size: Integer;
  logConfigType_: TLogConfigType;
  index: Integer;
begin
        nameValueNode := TDomSearchHelper.getNode(TLogConfigTypeData.getInstance().NAME, node_.getChildNodes());
        name := TDomNodeHelper.getTextNodeValue(nameValueNode);
        descriptionValueNode := TDomSearchHelper.getNodeNoThrow(TLogConfigTypeData.getInstance().DESCRIPTION, node_.getChildNodes());
        if (descriptionValueNode) <> (nil) then begin
            description := TDomNodeHelper.getTextNodeValue(descriptionValueNode);
        end;
        availableLogConfigTypes := TLogConfigType.availableLogConfigTypes;
        size := availableLogConfigTypes.size();
        
        for index := 0 to size - 1 do begin
            logConfigType_ := TLogConfigType(TJava.ToObject(availableLogConfigTypes.get(index)));
            if (logConfigType_.getName().compareTo(name)) = (0) then begin
                Exit(logConfigType_);
            end;
        end;
        raise SysUtils.Exception.Create('No Such LogConfigType: ' + name);
end;

initialization
  {AB:INITIALIZATION}
  TLogConfigTypes.JSP_ERROR_NO_FUNCTION := 'in JSP Not In Function';
  TLogConfigTypes.LOGGING := TBasicArrayListD.Create();
  TLogConfigTypes.StaticInitializer;
  {AB:END}

end.

