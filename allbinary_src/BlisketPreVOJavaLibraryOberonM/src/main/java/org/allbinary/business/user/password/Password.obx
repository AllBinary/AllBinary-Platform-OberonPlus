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
// package org.allbinary.business.user.password
unit Password;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil;

type
  {AB:TYPES}
  TPassword = class(TObject)
  public
    logUtil: TLogUtil;
    password: string;
    procedure InitFields;
        constructor Create(password: string);
        procedure set_(value: string); virtual;
        function get: string; virtual;
        function isValid: Boolean; virtual;
        function getValidationInfo: string; virtual;
        function toVector(secret: string): TBasicArrayList; virtual;
        function toHashMap(secret: string): TJavaHashMap<TObject, TObject>; virtual;
  end;

implementation
uses
  BasicArrayListD, EntryData, UserData, StdUtil, SuperCrypt, StringUtil, CommonStrings;


{AB:CODE}

procedure TPassword.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TPassword.Create(password: string);
begin
    inherited Create;
    InitFields;
        Self.password := password;
end;
    

procedure TPassword.set_(value: string);
begin
        Self.password := value;
end;
    

function TPassword.get: string;
begin
        Exit(Self.password);
end;
    

function TPassword.isValid: Boolean;
var
  commonStrings_: TCommonStrings;
  valid: Boolean;
begin
        commonStrings_ := TCommonStrings.getInstance();
        try
            valid := True;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VALIDATION) then begin
                Self.logUtil.putF('Password: ' + Self.password, TJava.Box(Self), commonStrings_.IS_VALID);
            end;
            if not (nil.isValidRequired(Self.password, 6, TUserData.MAXLEN)) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VALIDATION) then begin
                    Self.logUtil.putF('Password is invalid', TJava.Box(Self), commonStrings_.IS_VALID);
                end;
                valid := False;
            end;
            Exit(valid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VALIDATIONERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box('Password'), commonStrings_.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TPassword.getValidationInfo: string;
var
  stringUtil_: TStringUtil;
begin
        if not (nil.isValidRequired(Self.password, 6, TUserData.MAXLEN)) then begin
            Exit('Please enter a Password with more than 6 characters.<br />');
        end;
        stringUtil_ := TStringUtil.getInstance();
        Exit(stringUtil_.EMPTY_STRING);
end;
    

function TPassword.toVector(secret: string): TBasicArrayList;
var
  random_: Integer;
  vector: TBasicArrayList;
begin
        Self.password := TStringUtil.getInstance().getNonNull(Self.password);
        random_ := TJavaRandom.Create().nextInt(TSuperCrypt.KEYMAX);
        vector := TBasicArrayListD.Create();
        vector.add(TJava.Box(random_.toString()));
        vector.add(TJava.Box(secret));
        vector.add(TJava.Box(TSuperCrypt.Create(random_).encrypt(Self.password)));
        Exit(vector);
end;
    

function TPassword.toHashMap(secret: string): TJavaHashMap<TObject, TObject>;
var
  values: TJavaHashMap<TObject, TObject>;
  random_: Integer;
begin
        Self.password := TStringUtil.getInstance().getNonNull(Self.password);
        values := TStdUtil.getInstance().createHashMap();
        random_ := TJavaRandom.Create().nextInt(TSuperCrypt.KEYMAX);
        values.put(TJava.Box(TEntryData.getInstance().ENCRYPTION), TJava.Box(random_.toString()));
        values.put(TJava.Box(TUserData.SECRET), TJava.Box(secret));
        values.put(TJava.Box(TUserData.PASSWORD), TJava.Box(TSuperCrypt.Create(random_).encrypt(Self.password)));
        Exit(values);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

