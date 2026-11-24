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
// package org.allbinary.business.forward
unit ForwardData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TForwardData = class(TObject)
  public
    PAGE: string;
    NAME: string;
    VALUE: string;
    class var instance: TForwardData;
    procedure InitFields;
        constructor Create;
        class function getInstance: TForwardData; static;
  end;

implementation

{AB:CODE}

procedure TForwardData.InitFields;
begin
  Self.PAGE := 'FORWARD_PAGE';
  Self.NAME := 'FORWARD_NAME';
  Self.VALUE := 'FORWARD_VALUE';
end;
    

constructor TForwardData.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TForwardData.getInstance: TForwardData;
begin
        Exit(TForwardData.instance);
end;

initialization
  {AB:INITIALIZATION}
  TForwardData.instance := TForwardData.Create();
  {AB:END}

end.

