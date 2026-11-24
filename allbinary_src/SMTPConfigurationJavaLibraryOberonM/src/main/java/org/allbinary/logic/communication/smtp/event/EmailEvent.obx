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
// package org.allbinary.logic.communication.smtp.event
unit EmailEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, EmailInfo, UserEmailEventNameData;

type
  {AB:TYPES}
  TEmailEvent = class(TEventObject)
  public
    emailInfo: TEmailInfo;
    userEmailEventNameData: TUserEmailEventNameData;
    attempts: Integer;
    procedure InitFields;
        constructor Create(emailEventHandler: TObject; userEmailEventNameData_: TUserEmailEventNameData; emailInfo_: TEmailInfo; attempts: Integer);
        function getEmailInfo: TEmailInfo; virtual;
        function getAttempts: Integer; virtual;
        procedure setAttempts(attempts: Integer); virtual;
        function toString: string; override;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TEmailEvent.InitFields;
begin
  
  
  
end;
    

constructor TEmailEvent.Create(emailEventHandler: TObject; userEmailEventNameData_: TUserEmailEventNameData; emailInfo_: TEmailInfo; attempts: Integer);
begin
        inherited Create(emailEventHandler);
        InitFields;
        Self.userEmailEventNameData := userEmailEventNameData_;
        Self.emailInfo := emailInfo_;
end;
    

function TEmailEvent.getEmailInfo: TEmailInfo;
begin
        Exit(Self.emailInfo);
end;
    

function TEmailEvent.getAttempts: Integer;
begin
        Exit(Self.attempts);
end;
    

procedure TEmailEvent.setAttempts(attempts: Integer);
begin
        Self.attempts := attempts;
end;
    

function TEmailEvent.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('EmailEvent Log: '#10'');
        stringBuffer.append('Event Name: ');
        stringBuffer.append(Self.userEmailEventNameData.toString());
        stringBuffer.append(Self.getEmailInfo().toString());
        stringBuffer.append(''#10'Number of Attempts: ');
        stringBuffer.appendint(Self.getAttempts());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

