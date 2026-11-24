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
unit NameSpaceRequestParam;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList;

type
  {AB:TYPES}
  TNameSpaceRequestParam = class(TObject)
  public
    logUtil: TLogUtil;
    nameSpaceVector: TBasicArrayList;
    nameSpacePropertiesHashMap: TJavaHashMap<TObject, TObject>;
    value: string;
    procedure InitFields;
        constructor Create(nameSpace: string; value: string);
        function getPackages: TBasicArrayList; virtual;
        function getPackageProperties(packageIndex: Integer): TJavaHashMap<TObject, TObject>; virtual;
        function getValue: string; virtual;
        function generatePackagePropertiesHashMap(properties: string): TJavaHashMap<TObject, TObject>;
  end;

implementation
uses
  NameSpaceRequestParamData, StdUtil, StringUtil, Tokenizer, HtmlNameMathData, BasicArrayListD;


{AB:CODE}

procedure TNameSpaceRequestParam.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

constructor TNameSpaceRequestParam.Create(nameSpace: string; value: string);
var
  beginIndex: Integer;
  packages: string;
  sepTokenizer: TTokenizer;
  nameSpaceWithPropertiesVector: TBasicArrayList;
  nameSpaceAndPropertiesTokenizer: TTokenizer;
  packageIndex: Integer;
  list: TBasicArrayList;
  index: Integer;
  size: Integer;
  nameSpaceWithProperties: string;
  nameSpaceAndPropertiesVector: TBasicArrayList;
  packageName: string;
  properties: string;
  packagePropertiesHashMap: TJavaHashMap<TObject, TObject>;
begin
    inherited Create;
    InitFields;
        Self.nameSpaceVector := TBasicArrayListD.Create();
        Self.nameSpacePropertiesHashMap := TStdUtil.getInstance().createHashMap();
        Self.value := value;
        beginIndex := (Pos(TJava.ToString(TNameSpaceRequestParamData.NAME), nameSpace) - 1);
        if (beginIndex) < (0) then begin
            raise SysUtils.Exception.Create('Not a NameSpaceRequest');
        end;
        packages := Copy(nameSpace, (((beginIndex) + (TNameSpaceRequestParamData.NAME.length())) + (TNameSpaceRequestParamData.SEP.length())) + 1, MaxInt);
        sepTokenizer := TTokenizer.Create(TNameSpaceRequestParamData.SEP);
        nameSpaceWithPropertiesVector := sepTokenizer.getTokensFromString(packages, TBasicArrayListD.Create());
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF(''#10'Sep Tokens: ' + nameSpaceWithPropertiesVector.toString(), TJava.Box(Self), 'NameSpaceRequestParam()');
        end;
        nameSpaceAndPropertiesTokenizer := TTokenizer.Create(TNameSpaceRequestParamData.PROPERTIES);
        packageIndex := 0;
        list := TBasicArrayListD.Create();
        index := 0;
        size := nameSpaceWithPropertiesVector.size();
        while (index) < (size) do begin
            nameSpaceWithProperties := TJava.UnboxString(TJava.ToObject(nameSpaceWithPropertiesVector.get(TJava.PostInc(index))));
            list.clear();
            nameSpaceAndPropertiesVector := nameSpaceAndPropertiesTokenizer.getTokensFromString(nameSpaceWithProperties, list);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF(''#10'PackageName and PackageName Properties Tokens: ' + nameSpaceAndPropertiesVector.toString(), TJava.Box(Self), 'NameSpaceRequestParam()');
            end;
            if (nameSpaceAndPropertiesVector.size()) > (0) then begin
                packageName := TJava.UnboxString(TJava.ToObject(nameSpaceAndPropertiesVector.get(0)));
                if (packageName) = ('') then begin
                    raise SysUtils.Exception.Create('Package Name Is Null');
                end;
                Self.nameSpaceVector.add(TJava.Box(packageName));
                if (nameSpaceAndPropertiesVector.size()) > (1) then begin
                    properties := TJava.UnboxString(TJava.ToObject(nameSpaceAndPropertiesVector.get(1)));
                    packagePropertiesHashMap := Self.generatePackagePropertiesHashMap(properties);
                    Self.nameSpacePropertiesHashMap.put(TJava.Box(IntToStr(packageIndex)), TJava.Box(packagePropertiesHashMap));
                end;
                Inc(packageIndex);
            end;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('NameSpace: ' + Self.nameSpaceVector.toString(), TJava.Box(Self), 'NameSpaceRequestParam()');
        end;
end;
    

function TNameSpaceRequestParam.getPackages: TBasicArrayList;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('NameSpace: ' + Self.nameSpaceVector.toString(), TJava.Box(Self), 'getPackages()');
        end;
        Exit(Self.nameSpaceVector);
end;
    

function TNameSpaceRequestParam.getPackageProperties(packageIndex: Integer): TJavaHashMap<TObject, TObject>;
var
  packagePropertiesHashMap: TJavaHashMap<TObject, TObject>;
begin
        packagePropertiesHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(Self.nameSpacePropertiesHashMap.get(TJava.Box(IntToStr(packageIndex)))));
        if (packagePropertiesHashMap) = (nil) then begin
            packagePropertiesHashMap := TStdUtil.getInstance().createHashMap();
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('Package Properties: ' + packagePropertiesHashMap.toString(), TJava.Box(Self), 'getPackagesProperties()');
        end;
        Exit(packagePropertiesHashMap);
end;
    

function TNameSpaceRequestParam.getValue: string;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF(''#10'Value: ' + Self.value, TJava.Box(Self), 'getValue()');
        end;
        Exit(Self.value);
end;
    

// throws Exception
function TNameSpaceRequestParam.generatePackagePropertiesHashMap(properties: string): TJavaHashMap<TObject, TObject>;
var
  propertiesTokenizer: TTokenizer;
  packagePropertiesHashMap: TJavaHashMap<TObject, TObject>;
  propertyVector: TBasicArrayList;
  list: TBasicArrayList;
  propertyTokenizer: TTokenizer;
  index: Integer;
  size: Integer;
  property_: string;
  propertyNameValueVector: TBasicArrayList;
  index2: Integer;
  propertyName: string;
  propertyValue: string;
begin
        propertiesTokenizer := TTokenizer.Create(TNameSpaceRequestParamData.PROPERTIESSEPARATOR);
        packagePropertiesHashMap := TStdUtil.getInstance().createHashMap();
        propertyVector := propertiesTokenizer.getTokensFromString(properties, TBasicArrayListD.Create());
        list := TBasicArrayListD.Create();
        propertyTokenizer := TTokenizer.Create(THtmlNameMathData.getInstance().EQUALS);
        index := 0;
        size := propertyVector.size();
        while (index) < (size) do begin
            property_ := TJava.UnboxString(TJava.ToObject(propertyVector.get(index)));
            list.clear();
            propertyNameValueVector := propertyTokenizer.getTokensFromString(property_, list);
            index2 := 0;
            while (index2) < (propertyNameValueVector.size()) do begin
                propertyName := TJava.UnboxString(TJava.ToObject(propertyNameValueVector.get(TJava.PostInc(index2))));
                if (propertyNameValueVector.size()) > (1) then begin
                    propertyValue := TJava.UnboxString(TJava.ToObject(propertyNameValueVector.get(TJava.PostInc(index2))));
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                        Self.logUtil.putF(''#10'Property Name: ' + propertyName + ''#10'Property Value: ' + propertyValue, TJava.Box(Self), 'generatePackagePropertiesHashMap()');
                    end;
                    packagePropertiesHashMap.put(TJava.Box(propertyName), TJava.Box(propertyValue));
                end else begin
                    packagePropertiesHashMap.put(TJava.Box(propertyName), TJava.Box(TStringUtil.getInstance().EMPTY_STRING));
                end;
            end;
        end;
        Exit(packagePropertiesHashMap);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

