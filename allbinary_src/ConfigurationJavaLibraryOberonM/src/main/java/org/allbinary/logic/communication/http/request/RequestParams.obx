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
unit RequestParams;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, Document, Node;

type
  {AB:TYPES}
  // Note: if request is destroyed or messed up this will not work. Use fileRequestParams
  TRequestParams = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    map: IMap;
    KEY: string;
    VALUE: string;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(request: THttpServletRequest); overload;
        constructor Create(pageContext_: TPageContext); overload;
        procedure setMap(map: IMap); virtual;
        function getMap: IMap; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
  end;

implementation
uses
  RequestData, ModDomHelper, StdUtil, StringMaker;


{AB:CODE}

procedure TRequestParams.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  Self.KEY := 'Key: ';
  Self.VALUE := ' Value: ';
end;
    

constructor TRequestParams.Create;
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF('New RequestParams Size: 0', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
end;
    

constructor TRequestParams.Create(request: THttpServletRequest);
begin
    inherited Create;
    InitFields;
        Self.map := request.getParameterMap();
        Self.logUtil.putF('RequestParams Size: ' + IntToStr(Self.getMap().keySet().size()), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
end;
    

constructor TRequestParams.Create(pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.map := pageContext_.getRequest().getParameterMap();
        Self.logUtil.putF('Request Params Size: ' + IntToStr(Self.getMap().keySet().size()), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
end;
    

procedure TRequestParams.setMap(map: IMap);
begin
        Self.map := map;
end;
    

function TRequestParams.getMap: IMap;
begin
        Exit(Self.map);
end;
    

function TRequestParams.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  stringBuffer: TStringMaker;
  keys: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  key: string;
  values: TArray<string>;
  i: Integer;
begin
        try
            node_ := document_.createElement(TRequestData.REQUEST);
            stringBuffer := TStringMaker.Create();
            keys := Self.map.keySet();
            keyArray := keys.toArray();
            size := System.Length(keyArray);
            for i := 0 to size - 1 do begin
                key := TJava.UnboxString(TJava.ToObject(keyArray[i]));
                values := TJava.UnboxArray<string>(TJava.ToObject(Self.map.get(TJava.Box(key))));
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(Self.KEY);
                stringBuffer.append(key);
                stringBuffer.append(Self.VALUE);
                stringBuffer.append(values[0]);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'toXmlNode(document)');
                node_.appendChild(TModDomHelper.createNameValueNodes(document_, TRequestData.PARAMETER, TJava.NewString(key), TJava.NewString(values[0])));
            end;
            Exit(node_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'toXmlNode(document)', TJava.Box(e));
            Exit(nil);
            end;
        end;
end;
    

// throws Exception
function TRequestParams.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  keys: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  stringBuffer: TStringMaker;
  key: string;
  values: TArray<string>;
  i: Integer;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        keys := Self.map.keySet();
        keyArray := keys.toArray();
        size := System.Length(keyArray);
        stringBuffer := TStringMaker.Create();
        for i := 0 to size - 1 do begin
            key := TJava.UnboxString(TJava.ToObject(keyArray[i]));
            values := TJava.UnboxArray<string>(TJava.ToObject(Self.map.get(TJava.Box(key))));
            hashMap_.put(TJava.Box(TJava.NewString(key)), TJava.Box(TJava.NewString(values[0])));
        end;
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append('RequestParams: ');
        stringBuffer.append(TJava.ToString(TJava.ToObject(Self.map)));
        stringBuffer.append(''#10'toHashMap: ');
        stringBuffer.append(hashMap_.toString());
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'toHashMap()');
        Exit(hashMap_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

