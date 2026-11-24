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
// package org.allbinary.logic.communication.smtp.event.handler
unit UserEmailEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, UserEmailEventListenerInterface, UserEmailEventNameData, EmailInfo;

type
  {AB:TYPES}
  TUserEmailEventHandler = class(TObject)
  public
    emailVector: TBasicArrayList;
    emailInfo: TEmailInfo;
    userEmailEventNameData: TUserEmailEventNameData;
    procedure InitFields;
        constructor Create;
        procedure receiveEmailInfo(userEmailEventNameData_: TUserEmailEventNameData; emailInfo_: TEmailInfo); virtual;
        procedure addListener(vector: TBasicArrayList); overload; virtual;
        procedure addListener(emailEventListenerInterface: IUserEmailEventListenerInterface); overload; virtual;
        procedure removeListener(emailEventListenerInterface: IUserEmailEventListenerInterface); virtual;
        procedure fireEmailEvent; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil, EmailEvent;


{AB:CODE}

procedure TUserEmailEventHandler.InitFields;
begin
  
  
  
end;
    

constructor TUserEmailEventHandler.Create;
begin
    inherited Create;
    InitFields;
        Self.emailVector := TBasicArrayListD.Create();
end;
    

// throws Exception
procedure TUserEmailEventHandler.receiveEmailInfo(userEmailEventNameData_: TUserEmailEventNameData; emailInfo_: TEmailInfo);
begin
    TJava.MonitorEnter(Self);
    try
        Self.userEmailEventNameData := userEmailEventNameData_;
        Self.emailInfo := emailInfo_;
        Self.fireEmailEvent();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TUserEmailEventHandler.addListener(vector: TBasicArrayList);
var
  size: Integer;
  userEmailEventListenerInterface_: IUserEmailEventListenerInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        size := vector.size();
        for index := 0 to size - 1 do begin
            userEmailEventListenerInterface_ := (TJava.ToObject(vector.get(index)) as IUserEmailEventListenerInterface);
            Self.addListener(userEmailEventListenerInterface_);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TUserEmailEventHandler.addListener(emailEventListenerInterface: IUserEmailEventListenerInterface);
begin
    TJava.MonitorEnter(Self);
    try
        Self.emailVector.add(TJava.Box(emailEventListenerInterface));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TUserEmailEventHandler.removeListener(emailEventListenerInterface: IUserEmailEventListenerInterface);
begin
    TJava.MonitorEnter(Self);
    try
        Self.emailVector.remove(TJava.ToObject(emailEventListenerInterface));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TUserEmailEventHandler.fireEmailEvent;
var
  emailEvent_: TEmailEvent;
  size: Integer;
  emailEventListenerInterface: IUserEmailEventListenerInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        emailEvent_ := TEmailEvent.Create(Self, Self.userEmailEventNameData, Self.emailInfo, 0);
        size := Self.emailVector.size();
        for index := 0 to size - 1 do begin
            emailEventListenerInterface := (TJava.ToObject(Self.emailVector.get(index)) as IUserEmailEventListenerInterface);
            emailEventListenerInterface.onEmailSendRequest(emailEvent_);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

