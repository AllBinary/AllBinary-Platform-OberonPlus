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
// package org.allbinary.business.user.address
unit StreetAddress;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Document, Node;

type
  {AB:TYPES}
  TStreetAddress = class(TObject)
  public
    logUtil: TLogUtil;
    id: string;
    name: string;
    street: string;
    city: string;
    state: string;
    code: string;
    country: string;
    isDefault_: Boolean;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(node_: TNode); overload;
        constructor Create(streetAddress_: TStreetAddress); overload;
        constructor Create(request: THttpServletRequest); overload;
        constructor Create(name: string; street: string; city: string; state: string; code: string; country: string); overload;
        constructor Create(address: TJavaHashMap<TObject, TObject>); overload;
        procedure log;
        procedure setId(id: string); virtual;
        procedure setName(name: string); virtual;
        procedure setStreet(value: string); virtual;
        procedure setCity(value: string); virtual;
        procedure setState(value: string); virtual;
        procedure setCode(value: string); virtual;
        procedure setCountry(value: string); virtual;
        function getName: string; virtual;
        function getStreet: string; virtual;
        function getCity: string; virtual;
        function getState: string; virtual;
        function getCode: string; virtual;
        function getCountry: string; virtual;
        function getId: string; virtual;
        function isDefault: Boolean; virtual;
        function isEmpty: Boolean; virtual;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument;
        function toValidationInfoNode(document_: TDocument): TNode;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  StreetAddressData, DomNodeHelper, DomSearchHelper, ModDomHelper, StdUtil, StringMaker, StringUtil, CommonStrings;


{AB:CODE}

procedure TStreetAddress.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  Self.isDefault_ := False;
end;
    

constructor TStreetAddress.Create;
begin
    inherited Create;
    InitFields;
end;
    

constructor TStreetAddress.Create(node_: TNode);
var
  nameNode: TNode;
  streetNode: TNode;
  cityNode: TNode;
  stateNode: TNode;
  codeNode: TNode;
  countryNode: TNode;
begin
    inherited Create;
    InitFields;
        nameNode := TDomSearchHelper.getNode(TStreetAddressData.NAME, node_.getChildNodes());
        Self.name := TDomNodeHelper.getTextNodeValue(nameNode);
        streetNode := TDomSearchHelper.getNode(TStreetAddressData.STREET, node_.getChildNodes());
        Self.street := TDomNodeHelper.getTextNodeValue(streetNode);
        cityNode := TDomSearchHelper.getNode(TStreetAddressData.CITY, node_.getChildNodes());
        Self.city := TDomNodeHelper.getTextNodeValue(cityNode);
        stateNode := TDomSearchHelper.getNode(TStreetAddressData.STATE, node_.getChildNodes());
        Self.state := TDomNodeHelper.getTextNodeValue(stateNode);
        codeNode := TDomSearchHelper.getNode(TStreetAddressData.CODE, node_.getChildNodes());
        Self.code := TDomNodeHelper.getTextNodeValue(codeNode);
        countryNode := TDomSearchHelper.getNode(TStreetAddressData.COUNTRY, node_.getChildNodes());
        Self.country := TDomNodeHelper.getTextNodeValue(countryNode);
        Self.log();
end;
    

constructor TStreetAddress.Create(streetAddress_: TStreetAddress);
begin
    inherited Create;
    InitFields;
        Self.id := streetAddress_.getId();
        Self.name := streetAddress_.getName();
        Self.street := streetAddress_.getStreet();
        Self.city := streetAddress_.getCity();
        Self.state := streetAddress_.getState();
        Self.code := streetAddress_.getCode();
        Self.country := streetAddress_.getCountry();
        Self.isDefault_ := streetAddress_.isDefault();
        Self.log();
end;
    

constructor TStreetAddress.Create(request: THttpServletRequest);
begin
    inherited Create;
    InitFields;
        Self.setId(request.getParameter(TStreetAddressData.ID));
        Self.setName(request.getParameter(TStreetAddressData.NAME));
        Self.setStreet(request.getParameter(TStreetAddressData.STREET));
        Self.setCity(request.getParameter(TStreetAddressData.CITY));
        Self.setState(request.getParameter(TStreetAddressData.STATE));
        Self.setCode(request.getParameter(TStreetAddressData.CODE));
        Self.setCountry(request.getParameter(TStreetAddressData.COUNTRY));
        Self.log();
end;
    

constructor TStreetAddress.Create(name: string; street: string; city: string; state: string; code: string; country: string);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.street := street;
        Self.city := city;
        Self.state := state;
        Self.code := code;
        Self.country := country;
        Self.log();
end;
    

constructor TStreetAddress.Create(address: TJavaHashMap<TObject, TObject>);
var
  def: string;
begin
    inherited Create;
    InitFields;
        Self.id := TJava.UnboxString(TJava.ToObject(address.get(TJava.Box(TStreetAddressData.ID))));
        Self.name := TJava.UnboxString(TJava.ToObject(address.get(TJava.Box(TStreetAddressData.NAME))));
        Self.street := TJava.UnboxString(TJava.ToObject(address.get(TJava.Box(TStreetAddressData.STREET))));
        Self.city := TJava.UnboxString(TJava.ToObject(address.get(TJava.Box(TStreetAddressData.CITY))));
        Self.state := TJava.UnboxString(TJava.ToObject(address.get(TJava.Box(TStreetAddressData.STATE))));
        Self.code := TJava.UnboxString(TJava.ToObject(address.get(TJava.Box(TStreetAddressData.CODE))));
        Self.country := TJava.UnboxString(TJava.ToObject(address.get(TJava.Box(TStreetAddressData.COUNTRY))));
        def := TJava.UnboxString(TJava.ToObject(address.get(TJava.Box(TStreetAddressData.DEFAULT))));
        if ((def) <> ('')) and ((CompareStr(def, TStreetAddressData.DEFAULT)) = (0)) then begin
            Self.isDefault_ := True;
        end else begin
            Self.isDefault_ := False;
        end;
        Self.log();
end;
    

procedure TStreetAddress.log;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
            Self.logUtil.putF('Created Address: '#10'' + TJava.ToString(Self.toHashMap()), TJava.Box(Self), 'log');
        end;
end;
    

procedure TStreetAddress.setId(id: string);
begin
        Self.id := id;
end;
    

procedure TStreetAddress.setName(name: string);
begin
        Self.name := name;
end;
    

procedure TStreetAddress.setStreet(value: string);
begin
        Self.street := value;
end;
    

procedure TStreetAddress.setCity(value: string);
begin
        Self.city := value;
end;
    

procedure TStreetAddress.setState(value: string);
begin
        Self.state := value;
end;
    

procedure TStreetAddress.setCode(value: string);
begin
        Self.code := value;
end;
    

procedure TStreetAddress.setCountry(value: string);
begin
        Self.country := value;
end;
    

function TStreetAddress.getName: string;
begin
        Exit(Self.name);
end;
    

function TStreetAddress.getStreet: string;
begin
        Exit(Self.street);
end;
    

function TStreetAddress.getCity: string;
begin
        Exit(Self.city);
end;
    

function TStreetAddress.getState: string;
begin
        Exit(Self.state);
end;
    

function TStreetAddress.getCode: string;
begin
        Exit(Self.code);
end;
    

function TStreetAddress.getCountry: string;
begin
        Exit(Self.country);
end;
    

function TStreetAddress.getId: string;
begin
        Exit(Self.id);
end;
    

function TStreetAddress.isDefault: Boolean;
begin
        Exit(Self.isDefault_);
end;
    

function TStreetAddress.isEmpty: Boolean;
var
  EMPTY_STRING: string;
begin
        EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
        if ((((((((((((Self.getName()) = ('')) and ((Self.getName().compareTo(EMPTY_STRING)) = (0))) and ((Self.getStreet()) = (nil))) and ((Self.getStreet().compareTo(EMPTY_STRING)) = (0))) and ((Self.getCity()) = (nil))) and ((Self.getCity().compareTo(EMPTY_STRING)) = (0))) and ((Self.getState()) = (nil))) and ((Self.getState().compareTo(EMPTY_STRING)) = (0))) and ((Self.getCode()) = (nil))) and ((Self.getCode().compareTo(EMPTY_STRING)) = (0))) and ((Self.getCountry()) = (nil))) and ((Self.getCountry().compareTo(EMPTY_STRING)) = (0)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TStreetAddress.isValid: Boolean;
var
  EMPTY_STRING: string;
begin
        EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
        if ((((((((((((Self.getName()) = ('')) or ((Self.getName().compareTo(EMPTY_STRING)) = (0))) or ((Self.getStreet()) = (nil))) or ((Self.getStreet().compareTo(EMPTY_STRING)) = (0))) or ((Self.getCity()) = (nil))) or ((Self.getCity().compareTo(EMPTY_STRING)) = (0))) or ((Self.getState()) = (nil))) or ((Self.getState().compareTo(EMPTY_STRING)) = (0))) or ((Self.getCode()) = (nil))) or ((Self.getCode().compareTo(EMPTY_STRING)) = (0))) or ((Self.getCountry()) = (nil))) or ((Self.getCountry().compareTo(EMPTY_STRING)) = (0)) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

function TStreetAddress.validationInfo: string;
var
  stringBuffer: TStringMaker;
  stringValidationUtil_: TObject;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Address Failed To Validate - All fields must contain data.<br></br>');
        stringValidationUtil_ := nil;
        if not (stringValidationUtil_.isValidRequired(Self.getName(), TStreetAddressData.MIN, TStreetAddressData.MAX)) then begin
            stringBuffer.append('Please enter a valid name');
            stringBuffer.append('<br></br>');
        end;
        if not (stringValidationUtil_.isValidRequired(Self.getStreet(), TStreetAddressData.MIN, TStreetAddressData.MAX)) then begin
            stringBuffer.append('Please enter a valid street');
            stringBuffer.append('<br></br>');
        end;
        if not (stringValidationUtil_.isValidRequired(Self.getCity(), TStreetAddressData.MIN, TStreetAddressData.MAX)) then begin
            stringBuffer.append('Please enter a valid city');
            stringBuffer.append('<br></br>');
        end;
        if not (stringValidationUtil_.isValidRequired(Self.getState(), TStreetAddressData.MIN, TStreetAddressData.MAX)) then begin
            stringBuffer.append('Please enter a valid state');
            stringBuffer.append('<br></br>');
        end;
        if not (stringValidationUtil_.isValidRequired(Self.getCode(), TStreetAddressData.MIN, TStreetAddressData.MAX)) then begin
            stringBuffer.append('Please enter a valid zipcode');
            stringBuffer.append('<br></br>');
        end;
        if not (stringValidationUtil_.isValidRequired(Self.getCountry(), TStreetAddressData.MIN, TStreetAddressData.MAX)) then begin
            stringBuffer.append('Please enter a valid country');
            stringBuffer.append('<br></br>');
        end;
        Exit(stringBuffer.toString());
end;
    

function TStreetAddress.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TStreetAddress.toValidationInfoNode(document_: TDocument): TNode;
var
  node_: TNode;
  commonStrings_: TCommonStrings;
begin
        try
            node_ := document_.createElement(TStreetAddressData.FORM);
            node_.appendChild(Self.toXmlNode(document_));
            Exit(node_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'toValidationInfoNode', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TStreetAddress.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TStreetAddressData.ID), TJava.Box(Self.id));
        hashMap_.put(TJava.Box(TStreetAddressData.NAME), TJava.Box(Self.name));
        hashMap_.put(TJava.Box(TStreetAddressData.STREET), TJava.Box(Self.street));
        hashMap_.put(TJava.Box(TStreetAddressData.CITY), TJava.Box(Self.city));
        hashMap_.put(TJava.Box(TStreetAddressData.STATE), TJava.Box(Self.state));
        hashMap_.put(TJava.Box(TStreetAddressData.CODE), TJava.Box(Self.code));
        hashMap_.put(TJava.Box(TStreetAddressData.COUNTRY), TJava.Box(Self.country));
        Exit(hashMap_);
end;
    

// throws Exception
function TStreetAddress.toXmlNode(document_: TDocument): TNode;
var
  stringUtil_: TStringUtil;
  hashMap_: TJavaHashMap<TObject, TObject>;
  keySet: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  node_: TNode;
  name: string;
  value: string;
  i: Integer;
begin
        stringUtil_ := TStringUtil.getInstance();
        hashMap_ := Self.toHashMap();
        keySet := hashMap_.keySet();
        keyArray := keySet.toArray();
        size := System.Length(keyArray);
        node_ := document_.createElement(TStreetAddressData.ADDRESS);
        for i := 0 to size - 1 do begin
            name := TJava.UnboxString(TJava.ToObject(keyArray[i]));
            value := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(name)))));
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, name, value));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

