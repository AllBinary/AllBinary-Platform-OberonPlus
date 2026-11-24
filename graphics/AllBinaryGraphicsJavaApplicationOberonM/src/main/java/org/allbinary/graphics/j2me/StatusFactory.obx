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
// package org.allbinary.graphics.j2me
unit StatusFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TStatusFactory = class(TObject)
  public
    logUtil: TLogUtil;
    SETSTATUS_: string;
    STATUS_LABEL: string;
    class var instance: TStatusFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TStatusFactory; static;
        procedure setStatusNoLog(status: string); virtual;
        procedure setStatus(status: string); virtual;
  end;

implementation
uses
  MyFrame;


{AB:CODE}

procedure TStatusFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.SETSTATUS_ := 'setStatus';
  Self.STATUS_LABEL := 'Status: ';
end;

constructor TStatusFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TStatusFactory.getInstance: TStatusFactory;
begin
        Exit(TStatusFactory.instance);
end;
    

procedure TStatusFactory.setStatusNoLog(status: string);
begin
        TMyFrame.statusJLabel.setText(status);
end;
    

procedure TStatusFactory.setStatus(status: string);
begin
        Self.setStatusNoLog(status);
        Self.logUtil.putF(Self.STATUS_LABEL + status, TJava.Box(Self), Self.SETSTATUS_);
end;

initialization
  {AB:INITIALIZATION}
  TStatusFactory.instance := TStatusFactory.Create();
  {AB:END}

end.

