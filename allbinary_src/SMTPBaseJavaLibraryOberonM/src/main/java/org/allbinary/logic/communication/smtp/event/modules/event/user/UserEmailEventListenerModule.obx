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
// package org.allbinary.logic.communication.smtp.event.modules.event.user
unit UserEmailEventListenerModule;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserInterface, LogUtil, EmailEvent, UserEmailEventListenerInterface;

type
  {AB:TYPES}
  TUserEmailEventListenerModule = class(TInterfacedObject, IUserEmailEventListenerInterface)
  public
    logUtil: TLogUtil;
    userInterface: IUserInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(userInterface_: IUserInterface);
        procedure onEmailSendFailure(emailEvent_: TEmailEvent); virtual;
        procedure onEmailSendRequest(emailEvent_: TEmailEvent); virtual;
  end;

implementation
uses
  BasicEmail, EmailInterface, EmailQueueFactory;


{AB:CODE}

procedure TUserEmailEventListenerModule.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TUserEmailEventListenerModule.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserEmailEventListenerModule.Create(userInterface_: IUserInterface);
begin
    inherited Create;
    InitFields;
        Self.userInterface := userInterface_;
end;
    

// throws Exception
procedure TUserEmailEventListenerModule.onEmailSendFailure(emailEvent_: TEmailEvent);
var
  to_: string;
  email: TBasicEmail;
begin
        to_ := Self.userInterface.getSecondaryEmail();
        email := TBasicEmail.Create(emailEvent_.getEmailInfo(), to_);
        TEmailQueueFactory.getInstance().offer((TJava.ToObject(email.getEmail()) as IEmailInterface));
end;
    

// throws Exception
procedure TUserEmailEventListenerModule.onEmailSendRequest(emailEvent_: TEmailEvent);
var
  to_: string;
  email: TBasicEmail;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF('Add Email To Que For Sending: ' + emailEvent_.toString(), TJava.Box(Self), 'onEmailSendRequest');
        end;
        to_ := Self.userInterface.getMainEmail();
        email := TBasicEmail.Create(emailEvent_.getEmailInfo(), to_);
        TEmailQueueFactory.getInstance().offer((TJava.ToObject(email.getEmail()) as IEmailInterface));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

