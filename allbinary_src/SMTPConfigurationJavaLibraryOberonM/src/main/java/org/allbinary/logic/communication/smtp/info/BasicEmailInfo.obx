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
// package org.allbinary.logic.communication.smtp.info
unit BasicEmailInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, EmailServerConfigurationInterface;

type
  {AB:TYPES}
  TBasicEmailInfo = class(TObject)
  public
    logUtil: TLogUtil;
    subject: string;
    textBody: string;
    emailServerConfigurationInterface: IEmailServerConfigurationInterface;
    procedure InitFields;
        constructor Create(subject: string; textBody: string);
        function getSubject: string; virtual;
        function getTextBody: string; virtual;
        function getEmailServerConfigurationInterface: IEmailServerConfigurationInterface; virtual;
        procedure setEmailServerConfigurationInterface(emailServerConfigurationInterface_: IEmailServerConfigurationInterface); virtual;
        function toString: string; virtual;
        procedure init; virtual;
  end;

implementation
uses
  StringMaker, CommonSeps, CommonStrings;


{AB:CODE}

procedure TBasicEmailInfo.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

constructor TBasicEmailInfo.Create(subject: string; textBody: string);
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
        end;
        Self.subject := subject;
        Self.textBody := textBody;
end;
    

function TBasicEmailInfo.getSubject: string;
begin
        Exit(Self.subject);
end;
    

function TBasicEmailInfo.getTextBody: string;
begin
        Exit(Self.textBody);
end;
    

function TBasicEmailInfo.getEmailServerConfigurationInterface: IEmailServerConfigurationInterface;
begin
        Exit(Self.emailServerConfigurationInterface);
end;
    

procedure TBasicEmailInfo.setEmailServerConfigurationInterface(emailServerConfigurationInterface_: IEmailServerConfigurationInterface);
begin
        Self.emailServerConfigurationInterface := emailServerConfigurationInterface_;
end;
    

function TBasicEmailInfo.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.getEmailServerConfigurationInterface().toString());
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        stringBuffer.append('Subject: '#10'');
        stringBuffer.append(Self.getSubject());
        stringBuffer.append(''#10'Text Body: '#10'');
        stringBuffer.append(Self.getTextBody());
        Exit(stringBuffer.toString());
end;
    

// throws Exception
procedure TBasicEmailInfo.init;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

