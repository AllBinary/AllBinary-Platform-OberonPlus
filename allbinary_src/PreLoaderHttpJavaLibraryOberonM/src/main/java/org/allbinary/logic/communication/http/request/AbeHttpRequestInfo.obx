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
// package org.allbinary.logic.communication.http.request
unit AbeHttpRequestInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, CommonSeps, AbeHttpRequestInfoData;

type
  {AB:TYPES}
  TAbeHttpRequestInfo = class(TObject)
  public
    NAME: string;
    abeHttpRequestInfoData: TAbeHttpRequestInfoData;
    commonSeps: TCommonSeps;
    httpUserAgent: string;
    remoteAddress: string;
    remoteHost: string;
    remoteHostByAddr: string;
    remotePort: string;
    requestedFilePath: string;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        constructor Create(httpServletRequest_: THttpServletRequest); overload;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toVector: TBasicArrayList; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TAbeHttpRequestInfo.InitFields;
begin
  Self.NAME := 'AbeHttpRequestInfo';
  Self.abeHttpRequestInfoData := TAbeHttpRequestInfoData.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  
  
  
  
  
  
end;
    

constructor TAbeHttpRequestInfo.Create(hashMap_: TJavaHashMap<TObject, TObject>);
var
  stringUtil_: TStringUtil;
begin
    inherited Create;
    InitFields;
        stringUtil_ := TStringUtil.getInstance();
        Self.httpUserAgent := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.abeHttpRequestInfoData.HTTP_USER_AGENT)))));
        Self.remoteAddress := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.abeHttpRequestInfoData.REMOTE_ADDRESS)))));
        Self.remoteHost := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.abeHttpRequestInfoData.REMOTE_HOST)))));
        Self.remoteHostByAddr := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS)))));
        Self.remotePort := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.abeHttpRequestInfoData.REMOTE_PORT)))));
        Self.requestedFilePath := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.abeHttpRequestInfoData.REQUEST_FILE_PATH)))));
end;
    

constructor TAbeHttpRequestInfo.Create(httpServletRequest_: THttpServletRequest);
var
  stringUtil_: TStringUtil;
  enumuration: TObject;
  key: string;
  value: string;
begin
    inherited Create;
    InitFields;
        stringUtil_ := TStringUtil.getInstance();
        Self.httpUserAgent := stringUtil_.EMPTY_STRING;
        enumuration := httpServletRequest_.getHeaderNames();
        while TJava.EnumerationHasMoreElements(enumuration) do begin
            key := TJava.UnboxString(TJava.ToObject(TJava.EnumerationNextElement(enumuration)));
            value := httpServletRequest_.getHeader(key);
            if ((Pos(TJava.ToString('user'), key) - 1)) >= (0) then begin
                Self.httpUserAgent := 'key: ' + key + ' value: ' + value;
            end;
        end;
        Self.remoteHostByAddr := stringUtil_.EMPTY_STRING;
        Self.remoteAddress := httpServletRequest_.getRemoteAddr();
        Self.remoteHost := httpServletRequest_.getRemoteHost();
        Self.requestedFilePath := httpServletRequest_.getServletPath();
        Self.remotePort := IntToStr(httpServletRequest_.getRemotePort());
end;
    

function TAbeHttpRequestInfo.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(Self.abeHttpRequestInfoData.HTTP_USER_AGENT), TJava.Box(Self.httpUserAgent));
        hashMap_.put(TJava.Box(Self.abeHttpRequestInfoData.REMOTE_ADDRESS), TJava.Box(Self.remoteAddress));
        hashMap_.put(TJava.Box(Self.abeHttpRequestInfoData.REMOTE_HOST), TJava.Box(Self.remoteHost));
        hashMap_.put(TJava.Box(Self.abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS), TJava.Box(Self.remoteHostByAddr));
        hashMap_.put(TJava.Box(Self.abeHttpRequestInfoData.REMOTE_PORT), TJava.Box(Self.remotePort));
        hashMap_.put(TJava.Box(Self.abeHttpRequestInfoData.REQUEST_FILE_PATH), TJava.Box(Self.requestedFilePath));
        Exit(hashMap_);
end;
    

function TAbeHttpRequestInfo.toVector: TBasicArrayList;
var
  vector: TBasicArrayList;
begin
        vector := TBasicArrayListD.Create();
        vector.add(TJava.Box(Self.httpUserAgent));
        vector.add(TJava.Box(Self.remoteAddress));
        vector.add(TJava.Box(Self.remoteHost));
        vector.add(TJava.Box(Self.remoteHostByAddr));
        vector.add(TJava.Box(Self.remotePort));
        vector.add(TJava.Box(Self.requestedFilePath));
        Exit(vector);
end;
    

function TAbeHttpRequestInfo.toString: string;
begin
        Exit(TStringMaker.Create().append(Self.NAME).append(Self.commonSeps.COLON_SEP).append(Self.abeHttpRequestInfoData.HTTP_USER_AGENT).append(Self.commonSeps.COLON_SEP).append(Self.httpUserAgent).append(Self.commonSeps.SPACE).append(Self.abeHttpRequestInfoData.REMOTE_ADDRESS).append(Self.commonSeps.COLON_SEP).append(Self.remoteAddress).append(Self.commonSeps.SPACE).append(Self.abeHttpRequestInfoData.REMOTE_HOST).append(Self.commonSeps.COLON_SEP).append(Self.remoteHost).append(Self.commonSeps.SPACE).append(Self.abeHttpRequestInfoData.REMOTE_HOST_BY_ADDRESS).append(Self.commonSeps.COLON_SEP).append(Self.remoteHostByAddr).append(Self.commonSeps.SPACE).append(Self.abeHttpRequestInfoData.REMOTE_PORT).append(Self.commonSeps.COLON_SEP).append(Self.remotePort).append(Self.commonSeps.SPACE).append(Self.abeHttpRequestInfoData.REQUEST_FILE_PATH).append(Self.commonSeps.COLON_SEP).append(Self.requestedFilePath).toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

