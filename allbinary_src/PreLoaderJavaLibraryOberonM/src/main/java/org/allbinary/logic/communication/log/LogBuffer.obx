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
// package org.allbinary.logic.communication.log
unit LogBuffer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, Log;

type
  {AB:TYPES}
  TLogBuffer = class(TObject)
  public
    logUtil: TLogUtil;
    logEntryVector: TBasicArrayList;
    procedure InitFields;
        constructor Create;
        procedure add(log_: TLog); virtual;
        procedure logAll; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil;


{AB:CODE}

procedure TLogBuffer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TLogBuffer.Create;
begin
    inherited Create;
    InitFields;
        Self.logEntryVector := TBasicArrayListD.Create();
end;
    

procedure TLogBuffer.add(log_: TLog);
begin
        Self.logEntryVector.add(TJava.Box(log_));
end;
    

procedure TLogBuffer.logAll;
var
  size: Integer;
  log_: TLog;
  index: Integer;
begin
        size := Self.logEntryVector.size();
        for index := 0 to size - 1 do begin
            log_ := TLog(TJava.ToObject(Self.logEntryVector.get(index)));
            Self.logUtil.putL(log_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

