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
// package org.allbinary.game.layer.capital.event
unit CapitalEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject;

type
  {AB:TYPES}
  TCapitalEvent = class(TAllBinaryEventObject)
  public
    value: Integer;
    procedure InitFields;
        constructor Create(anyType: TObject);
        function toString: string; override;
        function getValue: Integer; virtual;
        procedure setValue(value: Integer); virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TCapitalEvent.InitFields;
begin
  
end;
    

constructor TCapitalEvent.Create(anyType: TObject);
begin
        inherited Create(anyType);
        InitFields;
end;
    

function TCapitalEvent.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('CapitalEvent: Value: '#10'');
        stringBuffer.appendint(Self.getValue());
        Exit(stringBuffer.toString());
end;
    

function TCapitalEvent.getValue: Integer;
begin
        Exit(Self.value);
end;
    

procedure TCapitalEvent.setValue(value: Integer);
begin
        Self.value := value;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

