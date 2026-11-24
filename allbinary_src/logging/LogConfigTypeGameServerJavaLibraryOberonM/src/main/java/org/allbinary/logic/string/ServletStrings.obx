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
// package org.allbinary.logic.string
unit ServletStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TServletStrings = class(TObject)
  public
    DOPOST: string;
    DOGET: string;
    REQUEST_EXCEPTION: string;
    class var instance: TServletStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TServletStrings; static;
  end;

implementation

{AB:CODE}

procedure TServletStrings.InitFields;
begin
  Self.DOPOST := 'doPost';
  Self.DOGET := 'doGet';
  Self.REQUEST_EXCEPTION := 'Request Failed';
end;

constructor TServletStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TServletStrings.getInstance: TServletStrings;
begin
        Exit(TServletStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TServletStrings.instance := TServletStrings.Create();
  {AB:END}

end.

