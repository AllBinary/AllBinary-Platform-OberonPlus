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
// package org.allbinary.logic.communication.smtp.queue
unit BasicEmailQueue;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, EmailInterface, BasicQueue, EmailQueueInterface;

type
  {AB:TYPES}
  TBasicEmailQueue = class(TBasicQueue, IEmailQueueInterface)
  public
    logUtil: TLogUtil;
    class var instance: TBasicEmailQueue;
    class var basicEmailQueue: TBasicEmailQueue;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        class function getInstance: TBasicEmailQueue; static;
        function offer(emailInterface_: IEmailInterface): Boolean; virtual;
        procedure remove(emailInterface_: IEmailInterface); overload;
        function remove: IEmailInterface; overload; virtual;
        procedure post(emailInterface_: IEmailInterface);
        procedure processAllUnsent; virtual;
        function send(emailInterface_: IEmailInterface): Boolean;
  end;

implementation

{AB:CODE}

procedure TBasicEmailQueue.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TBasicEmailQueue.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicEmailQueue.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TBasicEmailQueue.getInstance: TBasicEmailQueue;
begin
    TJava.MonitorEnter(nil);
    try
        if (TBasicEmailQueue.basicEmailQueue) = (nil) then begin
            TBasicEmailQueue.basicEmailQueue := TBasicEmailQueue.Create();
        end;
        Exit(TBasicEmailQueue.basicEmailQueue);
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

// throws Exception
function TBasicEmailQueue.offer(emailInterface_: IEmailInterface): Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Self.offer(TJava.Box(emailInterface_));
        Self.post(emailInterface_);
        Exit(True);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TBasicEmailQueue.remove(emailInterface_: IEmailInterface);
begin
    TJava.MonitorEnter(Self);
    try
        Self.remove(TJava.Box(emailInterface_));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TBasicEmailQueue.remove: IEmailInterface;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(nil);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TBasicEmailQueue.post(emailInterface_: IEmailInterface);
begin
    TJava.MonitorEnter(Self);
    try
        if Self.send(emailInterface_) then begin
            Self.remove(emailInterface_);
            Self.processAllUnsent();
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TBasicEmailQueue.processAllUnsent;
var
  size: Integer;
  emailInterface_: IEmailInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        size := Self.queueVector.size();
        for index := 0 to size - 1 do begin
            emailInterface_ := (TJava.ToObject(Self.queueVector.get(index)) as IEmailInterface);
            if Self.send(emailInterface_) then begin
                Self.remove(emailInterface_);
                Self.processAllUnsent();
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TBasicEmailQueue.send(emailInterface_: IEmailInterface): Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
                Self.logUtil.putF('Sending: ' + TJava.ToString(emailInterface_.log()), TJava.Box(Self), 'send');
            end;
            TTransport.send(emailInterface_.getMimeMessage());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
                Self.logUtil.putF('Email Send Debug: ' + TJava.ToString(emailInterface_.getDebugInfo()), TJava.Box(Self), 'send');
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
                Self.logUtil.put('Failed Email Send Debug: ' + TJava.ToString(emailInterface_.getDebugInfo()), TJava.Box(Self), 'send', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TBasicEmailQueue.instance := TBasicEmailQueue.Create();
  
  {AB:END}

end.

