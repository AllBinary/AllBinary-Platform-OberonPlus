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
// package org.allbinary.logic.communication.smtp.event.modules.log
unit LogUserEmailEventListenerModule;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, EmailEvent, UserEmailEventListenerInterface;

type
  {AB:TYPES}
  TLogUserEmailEventListenerModule = class(TInterfacedObject, IUserEmailEventListenerInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure onEmailSendRequest(userEmailInfoEvent: TEmailEvent); virtual;
  end;

implementation

{AB:CODE}

procedure TLogUserEmailEventListenerModule.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TLogUserEmailEventListenerModule.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLogUserEmailEventListenerModule.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TLogUserEmailEventListenerModule.onEmailSendRequest(userEmailInfoEvent: TEmailEvent);
var
  message: string;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            message := 'Logging EmailEvent - Temporary Listener for debugging.'#10''#10'' + userEmailInfoEvent.toString();
            Self.logUtil.putF(message, TJava.Box(Self), 'onEmailSendRequest');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

