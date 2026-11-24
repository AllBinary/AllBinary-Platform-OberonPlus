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
// package org.allbinary.logic.system.security.licensing
unit ServiceClientInformationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TestClientInformation, AbeClientInformationInterface;

type
  {AB:TYPES}
  TServiceClientInformationInterfaceFactory = class(TObject)
  public
    class var instance: TTestClientInformation;
    constructor Create;
        class function getInstance: IAbeClientInformationInterface; static;
  end;

implementation

{AB:CODE}

constructor TServiceClientInformationInterfaceFactory.Create;
begin
  inherited Create;
end;
    

class function TServiceClientInformationInterfaceFactory.getInstance: IAbeClientInformationInterface;
begin
        Exit(TServiceClientInformationInterfaceFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TServiceClientInformationInterfaceFactory.instance := TTestClientInformation.Create();
  {AB:END}

end.

