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
unit EmailInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicEmailInfo;

type
  {AB:TYPES}
  TEmailInfo = class(TObject)
  public
    logUtil: TLogUtil;
    basicEmailInfo: TBasicEmailInfo;
    htmlAttachment: string;
    contentBase: string;
    procedure InitFields;
        constructor Create(basicEmailInfo_: TBasicEmailInfo); overload;
        constructor Create(basicEmailInfo_: TBasicEmailInfo; htmlAttachment: string; contentBase: string); overload;
        procedure init(basicEmailInfo_: TBasicEmailInfo; htmlAttachment: string; contentBase: string);
        function getBasicEmailInfo: TBasicEmailInfo; virtual;
        function getHtmlAttachment: string; virtual;
        function getContentBase: string; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TEmailInfo.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

constructor TEmailInfo.Create(basicEmailInfo_: TBasicEmailInfo);
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
        end;
        Self.init(basicEmailInfo_, nil, nil);
end;
    

constructor TEmailInfo.Create(basicEmailInfo_: TBasicEmailInfo; htmlAttachment: string; contentBase: string);
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
        end;
        Self.init(basicEmailInfo_, nil, nil);
end;
    

procedure TEmailInfo.init(basicEmailInfo_: TBasicEmailInfo; htmlAttachment: string; contentBase: string);
begin
        Self.basicEmailInfo := basicEmailInfo_;
        Self.htmlAttachment := htmlAttachment;
        Self.contentBase := contentBase;
end;
    

function TEmailInfo.getBasicEmailInfo: TBasicEmailInfo;
begin
        Exit(Self.basicEmailInfo);
end;
    

function TEmailInfo.getHtmlAttachment: string;
begin
        Exit(Self.htmlAttachment);
end;
    

function TEmailInfo.getContentBase: string;
begin
        Exit(Self.contentBase);
end;
    

function TEmailInfo.toString: string;
begin
        Exit('Email Info: '#10' ' + Self.getBasicEmailInfo().toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

