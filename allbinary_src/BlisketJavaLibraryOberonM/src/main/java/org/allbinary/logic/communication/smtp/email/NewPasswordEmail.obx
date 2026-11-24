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
// package org.allbinary.logic.communication.smtp.email
unit NewPasswordEmail;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserInterface, LogUtil, AbeClientInformationInterface, CommonStrings;

type
  {AB:TYPES}
  TNewPasswordEmail = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    abeClientInformation: IAbeClientInformationInterface;
    userInterface: IUserInterface;
    newPassword: string;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; userInterface_: IUserInterface; newPassword: string);
        procedure process; virtual;
        procedure notifyStoreAdmin;
        procedure notifyUser;
  end;

implementation
uses
  UserEmailEventNameData, UserEmailEventHandler, AdminUserEmailEventHandlerSingletons, UserEmailEventHandlerSingletons, AdminEmailInfo, BasicEmailInfo, EmailInfo;


{AB:CODE}

procedure TNewPasswordEmail.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;
    

constructor TNewPasswordEmail.Create(abeClientInformation: IAbeClientInformationInterface; userInterface_: IUserInterface; newPassword: string);
begin
    inherited Create;
    InitFields;
        Self.abeClientInformation := abeClientInformation;
        Self.userInterface := userInterface_;
        Self.newPassword := newPassword;
end;
    

// throws Exception
procedure TNewPasswordEmail.process;
begin
        Self.notifyStoreAdmin();
        Self.notifyUser();
end;
    

// throws Exception
procedure TNewPasswordEmail.notifyStoreAdmin;
var
  emailSubject: string;
  emailBody: string;
  basicEmailInfo_: TBasicEmailInfo;
  emailInfo_: TEmailInfo;
  adminUserEmailEventHandler: TUserEmailEventHandler;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
                Self.logUtil.putF('notifyStoreAdmin', TJava.Box(Self), 'notifyStoreAdmin');
            end;
            emailSubject := 'New Password For User: ' + TJava.ToString(Self.userInterface.getUserName());
            emailBody := 'New Password: ' + Self.newPassword;
            basicEmailInfo_ := TBasicEmailInfo(TJava.ToObject(TAdminEmailInfo.Create(emailSubject, emailBody)));
            emailInfo_ := TEmailInfo.Create(basicEmailInfo_);
            adminUserEmailEventHandler := TAdminUserEmailEventHandlerSingletons.getInstance().getInstance(Self.abeClientInformation, TUserEmailEventNameData.NEWPASSWORD);
            adminUserEmailEventHandler.receiveEmailInfo(TUserEmailEventNameData.NEWPASSWORD, emailInfo_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'emailAdmin', TJava.Box(e));
            end;
            end;
        end;
end;
    

// throws Exception
procedure TNewPasswordEmail.notifyUser;
var
  subject: string;
  body: string;
  basicEmailInfo_: TBasicEmailInfo;
  emailInfo_: TEmailInfo;
  userEmailEventHandler_: TUserEmailEventHandler;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
                Self.logUtil.putF('Email User', TJava.Box(Self), 'notifyUser()');
            end;
            subject := 'New Password';
            body := 'New Password: ' + Self.newPassword;
            basicEmailInfo_ := TBasicEmailInfo(TJava.ToObject(TAdminEmailInfo.Create(subject, body)));
            emailInfo_ := TEmailInfo.Create(basicEmailInfo_);
            userEmailEventHandler_ := TUserEmailEventHandlerSingletons.getInstance().getInstance(Self.abeClientInformation, TUserEmailEventNameData.NEWPASSWORD, Self.userInterface);
            userEmailEventHandler_.receiveEmailInfo(TUserEmailEventNameData.NEWPASSWORD, emailInfo_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'notifyUser', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

