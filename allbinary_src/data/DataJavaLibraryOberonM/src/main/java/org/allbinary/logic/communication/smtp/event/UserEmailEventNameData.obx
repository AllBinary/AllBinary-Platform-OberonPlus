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
unit UserEmailEventNameData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TUserEmailEventNameData = class(TObject)
  public
    eventNameId: Integer;
    eventHandlerName: string;
    class var userNameEvenNameHashMap: TJavaHashMap<TObject, TObject>;
    class var nextId: Integer;
    class var INSTALLER: TUserEmailEventNameData;
    class var EXCEPTION: TUserEmailEventNameData;
    class var LOGGEDEXCEPTION: TUserEmailEventNameData;
    class var ERROR: TUserEmailEventNameData;
    class var OUTOFMEMORY: TUserEmailEventNameData;
    class var ADMINGENERATINGSTATICPAGES: TUserEmailEventNameData;
    class var STOREERROROCCURRED: TUserEmailEventNameData;
    class var STOREOUTOFMEMORY: TUserEmailEventNameData;
    class var STORECREATED: TUserEmailEventNameData;
    class var STOREOPENED: TUserEmailEventNameData;
    class var STORECLOSED: TUserEmailEventNameData;
    class var STOREGENERATINGSTATICPAGES: TUserEmailEventNameData;
    class var PRODUCTISOUT: TUserEmailEventNameData;
    class var PRODUCTISAVAILABLE: TUserEmailEventNameData;
    class var PRODUCTISOLD: TUserEmailEventNameData;
    class var PRODUCTISONSALE: TUserEmailEventNameData;
    class var PRODUCTSALEISOVER: TUserEmailEventNameData;
    class var ORDERPREPROCESSING: TUserEmailEventNameData;
    class var ORDERPROCESSING: TUserEmailEventNameData;
    class var ORDERCANCELLED: TUserEmailEventNameData;
    class var ORDERPARTIALLYSHIPPED: TUserEmailEventNameData;
    class var ORDERSHIPPED: TUserEmailEventNameData;
    class var QUOTEREQUEST: TUserEmailEventNameData;
    class var NEWPASSWORD: TUserEmailEventNameData;
    procedure InitFields;
        constructor Create(eventHandlerName: string);
        procedure initNextId;
        function isEvent(userEmailEventNameString: string): Boolean; virtual;
        class function getInstance(userEmailEventNameString: string): TUserEmailEventNameData; static;
        function toString: string; virtual;
  end;

implementation
uses
  OrderHistoryData, StdUtil;


{AB:CODE}

procedure TUserEmailEventNameData.InitFields;
begin
  
  
end;
    

constructor TUserEmailEventNameData.Create(eventHandlerName: string);
begin
    inherited Create;
    InitFields;
        Self.eventHandlerName := eventHandlerName;
        Self.initNextId();
        TUserEmailEventNameData.userNameEvenNameHashMap.put(TJava.Box(Self.eventHandlerName), TJava.Box(Self));
end;
    

procedure TUserEmailEventNameData.initNextId;
begin
    TJava.MonitorEnter(Self);
    try
        Self.eventNameId := TUserEmailEventNameData.nextId;
        Inc(TUserEmailEventNameData.nextId);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TUserEmailEventNameData.isEvent(userEmailEventNameString: string): Boolean;
begin
        Exit(TUserEmailEventNameData.userNameEvenNameHashMap.containsKey(TJava.Box(userEmailEventNameString)));
end;
    

// throws Exception
class function TUserEmailEventNameData.getInstance(userEmailEventNameString: string): TUserEmailEventNameData;
var
  userEmailEventNameData_: TUserEmailEventNameData;
begin
    TJava.MonitorEnter(nil);
    try
        userEmailEventNameData_ := TUserEmailEventNameData(TJava.ToObject(TUserEmailEventNameData.userNameEvenNameHashMap.get(TJava.Box(userEmailEventNameString))));
        if (userEmailEventNameData_) = (nil) then begin
            raise SysUtils.Exception.Create('');
        end else begin
            Exit(userEmailEventNameData_);
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

function TUserEmailEventNameData.toString: string;
begin
        Exit(Self.eventHandlerName);
end;

initialization
  {AB:INITIALIZATION}
  TUserEmailEventNameData.userNameEvenNameHashMap := TStdUtil.getInstance().createHashMap();
  TUserEmailEventNameData.nextId := 0;
  TUserEmailEventNameData.INSTALLER := TUserEmailEventNameData.Create('Installer');
  TUserEmailEventNameData.EXCEPTION := TUserEmailEventNameData.Create('Exception');
  TUserEmailEventNameData.LOGGEDEXCEPTION := TUserEmailEventNameData.Create('Logged Exception');
  TUserEmailEventNameData.ERROR := TUserEmailEventNameData.Create('Error');
  TUserEmailEventNameData.OUTOFMEMORY := TUserEmailEventNameData.Create('Out Of Memory Error');
  TUserEmailEventNameData.ADMINGENERATINGSTATICPAGES := TUserEmailEventNameData.Create('Admin Generating Static Pages');
  TUserEmailEventNameData.STOREERROROCCURRED := TUserEmailEventNameData.Create('Store Error Occurred');
  TUserEmailEventNameData.STOREOUTOFMEMORY := TUserEmailEventNameData.Create('Store Out Of Memory Error');
  TUserEmailEventNameData.STORECREATED := TUserEmailEventNameData.Create('Store Created');
  TUserEmailEventNameData.STOREOPENED := TUserEmailEventNameData.Create('Store Opened');
  TUserEmailEventNameData.STORECLOSED := TUserEmailEventNameData.Create('Store Closed');
  TUserEmailEventNameData.STOREGENERATINGSTATICPAGES := TUserEmailEventNameData.Create('Store Generating Static Pages');
  TUserEmailEventNameData.PRODUCTISOUT := TUserEmailEventNameData.Create('Product Is Out');
  TUserEmailEventNameData.PRODUCTISAVAILABLE := TUserEmailEventNameData.Create('Product Is Available');
  TUserEmailEventNameData.PRODUCTISOLD := TUserEmailEventNameData.Create('Product Is Old');
  TUserEmailEventNameData.PRODUCTISONSALE := TUserEmailEventNameData.Create('Product Is On Sale');
  TUserEmailEventNameData.PRODUCTSALEISOVER := TUserEmailEventNameData.Create('Product Sale Is Over');
  TUserEmailEventNameData.ORDERPREPROCESSING := TUserEmailEventNameData.Create(TOrderHistoryData.PREPROCESSING);
  TUserEmailEventNameData.ORDERPROCESSING := TUserEmailEventNameData.Create(TOrderHistoryData.PROCESSING);
  TUserEmailEventNameData.ORDERCANCELLED := TUserEmailEventNameData.Create(TOrderHistoryData.CANCELLED);
  TUserEmailEventNameData.ORDERPARTIALLYSHIPPED := TUserEmailEventNameData.Create(TOrderHistoryData.PARTIALLYSHIPPED);
  TUserEmailEventNameData.ORDERSHIPPED := TUserEmailEventNameData.Create(TOrderHistoryData.SHIPPED);
  TUserEmailEventNameData.QUOTEREQUEST := TUserEmailEventNameData.Create('Quote Request');
  TUserEmailEventNameData.NEWPASSWORD := TUserEmailEventNameData.Create('New Password');
  {AB:END}

end.

