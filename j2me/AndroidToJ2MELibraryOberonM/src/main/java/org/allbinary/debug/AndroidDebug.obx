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
// package org.allbinary.debug
unit AndroidDebug;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DebugInterface;

type
  {AB:TYPES}
  TAndroidDebug = class(TInterfacedObject, IDebugInterface)
  public
    startTime: Int64;
    running: Boolean;
    bufferSize: Integer;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        procedure start; virtual;
        procedure stop; virtual;
        function getMaxTime: Int64; virtual;
        procedure setStartTime(startTime: Int64);
        function getStartTime: Int64; virtual;
        procedure setRunning(running: Boolean);
        function isRunning: Boolean; virtual;
  end;

implementation
uses
  Debug;


{AB:CODE}

procedure TAndroidDebug.InitFields;
begin
  Self.startTime := High(Int64);
  Self.running := False;
  Self.bufferSize := ((32) * (1024)) * (1024);
end;

function TAndroidDebug.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TAndroidDebug.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TAndroidDebug.start;
begin
        Self.setStartTime(DateTimeToUnix(Now) * 1000);
        TDebug.startMethodTracing('trace', Self.bufferSize);
        Self.setRunning(True);
end;
    

procedure TAndroidDebug.stop;
begin
        Self.startTime := High(Int64);
        TDebug.stopMethodTracing();
        Self.setRunning(False);
end;
    

function TAndroidDebug.getMaxTime: Int64;
begin
        Exit(120000);
end;
    

procedure TAndroidDebug.setStartTime(startTime: Int64);
begin
        Self.startTime := startTime;
end;
    

function TAndroidDebug.getStartTime: Int64;
begin
        Exit(Self.startTime);
end;
    

procedure TAndroidDebug.setRunning(running: Boolean);
begin
        Self.running := running;
end;
    

function TAndroidDebug.isRunning: Boolean;
begin
        Exit(Self.running);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

