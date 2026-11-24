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
unit InputTypeData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TInputTypeData = class(TObject)
  public
    NAME: string;
    class var instance: TInputTypeData;
    procedure InitFields;
        class function getInstance: TInputTypeData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TInputTypeData.InitFields;
begin
  Self.NAME := 'INPUT_TYPE_NAME';
end;
    

class function TInputTypeData.getInstance: TInputTypeData;
begin
        Exit(TInputTypeData.instance);
end;
    

constructor TInputTypeData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TInputTypeData.instance := TInputTypeData.Create();
  {AB:END}

end.

