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
// package org.allbinary.logic.io
unit OutputTypeData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TOutputTypeData = class(TObject)
  public
    NAME: string;
    class var instance: TOutputTypeData;
    procedure InitFields;
        constructor Create;
        class function getInstance: TOutputTypeData; static;
  end;

implementation

{AB:CODE}

procedure TOutputTypeData.InitFields;
begin
  Self.NAME := 'OUTPUT_TYPE_NAME';
end;
    

constructor TOutputTypeData.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TOutputTypeData.getInstance: TOutputTypeData;
begin
        Exit(TOutputTypeData.instance);
end;

initialization
  {AB:INITIALIZATION}
  TOutputTypeData.instance := TOutputTypeData.Create();
  {AB:END}

end.

