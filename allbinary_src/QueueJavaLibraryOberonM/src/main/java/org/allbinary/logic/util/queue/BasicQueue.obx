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
// package org.allbinary.logic.util.queue
unit BasicQueue;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TBasicQueue = class(TObject)
  public
    queueVector: TBasicArrayList;
    procedure InitFields;
        constructor Create;
        function offer(anyType: TObject): Boolean; virtual;
        procedure remove(anyType: TObject); virtual;
        function removeLast: TObject; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TBasicQueue.InitFields;
begin
  Self.queueVector := TBasicArrayListD.Create();
end;
    

constructor TBasicQueue.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TBasicQueue.offer(anyType: TObject): Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Self.queueVector.add(TJava.Box(anyType));
        Exit(True);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TBasicQueue.remove(anyType: TObject);
begin
    TJava.MonitorEnter(Self);
    try
        Self.queueVector.remove(anyType);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TBasicQueue.removeLast: TObject;
var
  anyType: TObject;
begin
    TJava.MonitorEnter(Self);
    try
        anyType := TJava.Box(Self.queueVector.get((Self.queueVector.size()) - (1)));
        Self.queueVector.remove(anyType);
        Exit(TJava.Box(anyType));
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

