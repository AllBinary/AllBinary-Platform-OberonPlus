{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.capital
unit Capital;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCapital = class(TObject)
  public
    value: Integer;
    procedure InitFields;
        constructor Create;
        function getTotalMoney: Integer; virtual;
        procedure removeMoney(points: Integer); virtual;
        procedure addMoney(points: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TCapital.InitFields;
begin
  
end;
    

constructor TCapital.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TCapital.getTotalMoney: Integer;
begin
        Exit(Self.value);
end;
    

procedure TCapital.removeMoney(points: Integer);
begin
        Self.value := (Self.value) - (points);
end;
    

procedure TCapital.addMoney(points: Integer);
begin
        Self.value := (Self.value) + (points);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

