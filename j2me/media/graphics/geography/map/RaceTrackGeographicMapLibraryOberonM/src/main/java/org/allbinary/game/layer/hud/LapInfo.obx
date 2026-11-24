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
// package org.allbinary.game.layer.hud
unit LapInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLapInfo = class(TObject)
  public
    numberOfLaps: Integer;
    totalLaps: Integer;
    class var NULL_LAP_INFO: TLapInfo;
    procedure InitFields;
        constructor Create(totalLaps: Integer);
        procedure add; virtual;
        function getCurrentLap: Integer; virtual;
        function getTotalLaps: Integer; virtual;
        function isDone: Boolean; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TLapInfo.InitFields;
begin
  
  
end;
    

constructor TLapInfo.Create(totalLaps: Integer);
begin
    inherited Create;
    InitFields;
        Self.totalLaps := totalLaps;
        Self.numberOfLaps := 1;
end;
    

procedure TLapInfo.add;
begin
        Inc(Self.numberOfLaps);
end;
    

function TLapInfo.getCurrentLap: Integer;
begin
        Exit(Self.numberOfLaps);
end;
    

function TLapInfo.getTotalLaps: Integer;
begin
        Exit(Self.totalLaps);
end;
    

function TLapInfo.isDone: Boolean;
begin
        if (Self.numberOfLaps) >= (Self.totalLaps) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TLapInfo.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('isDone: ');
        stringBuffer.appendboolean(Self.isDone());
        stringBuffer.append(' CurrentLap: ');
        stringBuffer.appendint(Self.getCurrentLap());
        stringBuffer.append(' Total Laps: ');
        stringBuffer.appendint(Self.getTotalLaps());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TLapInfo.NULL_LAP_INFO := TLapInfo.Create(-1);
  {AB:END}

end.

