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
// package org.allbinary.logic.communication.smtp.configuration.user.event
unit UserEmailEventListenerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserInterface, UserEmailEventListenerInterface, AbeClientInformationInterface, UserEmailEventConfigurationInterface;

type
  {AB:TYPES}
  TUserEmailEventListenerFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(abeClientInformation: IAbeClientInformationInterface; userEmailEventConfigurationInterface_: IUserEmailEventConfigurationInterface; userInterface_: IUserInterface): IUserEmailEventListenerInterface; static;
  end;

implementation
uses
  AbeFactory;


{AB:CODE}
    

constructor TUserEmailEventListenerFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TUserEmailEventListenerFactory.getInstance(abeClientInformation: IAbeClientInformationInterface; userEmailEventConfigurationInterface_: IUserEmailEventConfigurationInterface; userInterface_: IUserInterface): IUserEmailEventListenerInterface;
var
  params: TArray<TObject>;
  classes: TArray<TClass>;
begin
        params := TJava.NewArray<TObject>(1);
        classes := TJava.NewArray<TClass>(1);
        classes[0] := IUserInterface;
        params[0] := TJava.Box(userInterface_);
        Exit((TJava.ToObject(TAbeFactory.getInstance().getInstance(abeClientInformation, userEmailEventConfigurationInterface_.getEventListenerClassPath(), classes, params)) as IUserEmailEventListenerInterface));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

