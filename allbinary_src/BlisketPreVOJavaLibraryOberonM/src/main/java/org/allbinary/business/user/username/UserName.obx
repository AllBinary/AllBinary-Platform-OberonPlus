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
// package org.allbinary.business.user.username
unit UserName;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TUserName = class(TObject)
  public
    logUtil: TLogUtil;
    userName: string;
    class var instance: TUserName;
    procedure InitFields;
        class function getInstance: TUserName; static;
        constructor Create; overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function isValid: Boolean; overload; virtual;
        function get: string; virtual;
        function isValid(aUserName: string): Boolean; overload; virtual;
        class function getValidationInfo(aUserName: string): string; static;
  end;

implementation
uses
  UserData, BooleanFactory, StringUtil, CommonStrings;


{AB:CODE}

procedure TUserName.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

class function TUserName.getInstance: TUserName;
begin
        Exit(TUserName.instance);
end;
    

constructor TUserName.Create;
begin
    inherited Create;
    InitFields;
end;
    

constructor TUserName.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.userName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TUserData.USERNAME))));
end;
    

function TUserName.isValid: Boolean;
begin
        try
            Exit(Self.isValid(Self.userName));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), 'isUserNameValid()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TUserName.get: string;
begin
        Exit(Self.userName);
end;
    

function TUserName.isValid(aUserName: string): Boolean;
var
  commonStrings_: TCommonStrings;
  booleanFactory_: TBooleanFactory;
  valid: Boolean;
begin
        commonStrings_ := TCommonStrings.getInstance();
        try
            booleanFactory_ := TBooleanFactory.getInstance();
            valid := booleanFactory_.TRUE_;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VALIDATION) then begin
                Self.logUtil.putF('UserName: ' + aUserName, TJava.Box(Self), commonStrings_.IS_VALID);
            end;
            if not (nil.isValidRequired(aUserName, 5, TUserData.MAXLEN)) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VALIDATION) then begin
                    Self.logUtil.putF('UserName is invalid', TJava.Box(Self), commonStrings_.IS_VALID);
                end;
                valid := booleanFactory_.FALSE_;
            end;
            Exit(valid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), commonStrings_.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

class function TUserName.getValidationInfo(aUserName: string): string;
begin
        if not (nil.isValidRequired(aUserName, 5, TUserData.MAXLEN)) then begin
            Exit('Please enter a User Name with more than 5 characters.<br/>');
        end;
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;

initialization
  {AB:INITIALIZATION}
  TUserName.instance := TUserName.Create();
  {AB:END}

end.

