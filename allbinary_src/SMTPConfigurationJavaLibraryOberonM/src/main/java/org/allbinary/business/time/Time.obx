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
// package org.allbinary.business.time
unit Time;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTime = class(TObject)
  public
    timeLong: Int64;
    procedure InitFields;
        constructor Create(time: string); overload;
        constructor Create(time: Int64); overload;
        function getLong: Int64; virtual;
        function getlong: Int64; virtual;
        function toString: string; virtual;
  end;

implementation

{AB:CODE}

procedure TTime.InitFields;
begin
  
end;
    

constructor TTime.Create(time: string);
begin
    inherited Create;
    InitFields;
        Self.timeLong := time;
end;
    

constructor TTime.Create(time: Int64);
begin
    inherited Create;
    InitFields;
        Self.timeLong := time;
end;
    

function TTime.getLong: Int64;
begin
        Exit(Self.timeLong);
end;
    

function TTime.getlong: Int64;
begin
        Exit((Self.timeLong));
end;
    

function TTime.toString: string;
begin
        Exit(Self.getLong().toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

