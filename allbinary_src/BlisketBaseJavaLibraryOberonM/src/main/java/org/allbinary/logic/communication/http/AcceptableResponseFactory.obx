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
// package org.allbinary.logic.communication.http
unit AcceptableResponseFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AcceptableResponse;

type
  {AB:TYPES}
  TAcceptableResponseFactory = class(TObject)
  public
    HTML: TAcceptableResponse;
    WML: TAcceptableResponse;
    VXML: TAcceptableResponse;
    class var instance: TAcceptableResponseFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAcceptableResponseFactory; static;
  end;

implementation

{AB:CODE}

procedure TAcceptableResponseFactory.InitFields;
begin
  Self.HTML := TAcceptableResponse.Create('text/html', 'html', 0);
  Self.WML := TAcceptableResponse.Create('text/wml', 'wml', 1);
  Self.VXML := TAcceptableResponse.Create('text/vxml', 'vxml', 2);
end;

constructor TAcceptableResponseFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAcceptableResponseFactory.getInstance: TAcceptableResponseFactory;
begin
        Exit(TAcceptableResponseFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TAcceptableResponseFactory.instance := TAcceptableResponseFactory.Create();
  {AB:END}

end.

