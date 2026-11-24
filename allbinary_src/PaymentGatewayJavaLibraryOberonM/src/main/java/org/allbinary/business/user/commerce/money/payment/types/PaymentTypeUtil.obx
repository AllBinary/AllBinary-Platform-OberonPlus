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
// package org.allbinary.business.user.commerce.money.payment.types
unit PaymentTypeUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, CommonStrings, PaymentType;

type
  {AB:TYPES}
  TPaymentTypeUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    PAYMENTGATEWAYFILEPATHSTRING: string;
    SHIPPINGMETHODSFILENAME: string;
    defaultName: string;
    paymentTypeVector: TBasicArrayList;
    class var instance: TPaymentTypeUtil;
    procedure InitFields;
    class procedure StaticInitializer; static;
        class function getInstance: TPaymentTypeUtil; static;
        constructor Create;
        procedure add(paymentType_: TPaymentType); virtual;
        function get(paymentTypeString: string): TPaymentType; virtual;
        procedure initDefault(storeName: string); virtual;
        function getDefault(storeName: string): TPaymentType; virtual;
        function isContain(paymentType_: TPaymentType): Boolean; virtual;
        function difference(a_PaymentTypeVector: TBasicArrayList): TBasicArrayList; virtual;
  end;

implementation
uses
  BasicArrayListD, EntryData, PaymentGatewaysData, DomNodeHelper, DomSearchHelper, DomDocumentHelper, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, StdUtil, CryptFileReader, AbPath, AbPathData, StringMaker, TransformInfoObjectConfigData, Document, Node, NodeList;


{AB:CODE}

procedure TPaymentTypeUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  Self.SHIPPINGMETHODSFILENAME := 'paymentGatewayTypes.xml';
  Self.defaultName := nil;
  Self.paymentTypeVector := TBasicArrayListD.Create();
end;
    

class procedure TPaymentTypeUtil.StaticInitializer;
begin
end;
    

class function TPaymentTypeUtil.getInstance: TPaymentTypeUtil;
begin
        Exit(TPaymentTypeUtil.instance);
end;
    

constructor TPaymentTypeUtil.Create;
var
  stringBuffer: TStringMaker;
  sep: string;
begin
    inherited Create;
    InitFields;
        stringBuffer := TStringMaker.Create();
        sep := TAbPathData.getInstance().SEPARATOR;
        stringBuffer.append(sep);
        stringBuffer.append('generic');
        stringBuffer.append(sep);
        stringBuffer.append('user');
        stringBuffer.append(sep);
        stringBuffer.append('commerce');
        stringBuffer.append(sep);
        stringBuffer.append('money');
        stringBuffer.append(sep);
        stringBuffer.append('payment');
        stringBuffer.append(sep);
        stringBuffer.append('gateway');
        stringBuffer.append(sep);
        Self.PAYMENTGATEWAYFILEPATHSTRING := stringBuffer.toString();
end;
    

procedure TPaymentTypeUtil.add(paymentType_: TPaymentType);
begin
        Self.paymentTypeVector.add(TJava.Box(paymentType_));
end;
    

// throws Exception
function TPaymentTypeUtil.get(paymentTypeString: string): TPaymentType;
var
  size: Integer;
  paymentType_: TPaymentType;
  i: Integer;
begin
        size := Self.paymentTypeVector.size();
        for i := 0 to size - 1 do begin
            paymentType_ := TPaymentType(TJava.ToObject(Self.paymentTypeVector.get(i)));
            if (paymentType_.getBasicPaymentType().getName().compareTo(paymentTypeString)) = (0) then begin
                Exit(paymentType_);
            end;
        end;
        raise SysUtils.Exception.Create('Unknown PaymentType: ' + paymentTypeString);
end;
    

// throws Exception
procedure TPaymentTypeUtil.initDefault(storeName: string);
var
  stringBuffer: TStringMaker;
  abPath_: TAbPath;
  data: string;
  document_: TDocument;
  nodeList_: TNodeList;
  node_: TNode;
  defaultPaymentGatewayNode: TNode;
  defaultPaymentGatewayNodeValue: string;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENT) then begin
            Self.logUtil.putF('initDefault Payment: ' + Self.defaultName, TJava.Box(Self), 'initDefault');
        end;
        if (Self.defaultName = '') then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TURLGLOBALS.getMainPath());
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
            stringBuffer.append(storeName);
            stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
            stringBuffer.append(Self.PAYMENTGATEWAYFILEPATHSTRING);
            abPath_ := TAbPath(TJava.ToObject(TAbPath.Create(stringBuffer.toString(), Self.SHIPPINGMETHODSFILENAME)));
            data := TCryptFileReader.Create(TTransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(abPath_);
            document_ := TDomDocumentHelper.create_(data);
            nodeList_ := document_.getElementsByTagName(TPaymentGatewaysData.NAME);
            for index := 0 to nodeList_.getLength() - 1 do begin
                node_ := nodeList_.item(index);
                defaultPaymentGatewayNode := TDomSearchHelper.getNode(TEntryData.getInstance().DEFAULT, node_.getChildNodes());
                defaultPaymentGatewayNodeValue := TDomNodeHelper.getTextNodeValue(defaultPaymentGatewayNode);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENT) then begin
                    Self.logUtil.putF('DefaultPaymentGatewayNodeValue: ' + defaultPaymentGatewayNodeValue, TJava.Box(Self), 'initDefault');
                end;
                if not ((defaultPaymentGatewayNodeValue = '')) then begin
                    Self.defaultName := defaultPaymentGatewayNodeValue;
                end;
            end;
        end;
end;
    

// throws Exception
function TPaymentTypeUtil.getDefault(storeName: string): TPaymentType;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENT) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getDefault');
        end;
        Self.initDefault(storeName);
        if not ((Self.defaultName = '')) then begin
            Exit(Self.get(Self.defaultName));
        end;
        raise SysUtils.Exception.Create('No Default: ' + Self.defaultName);
end;
    

function TPaymentTypeUtil.isContain(paymentType_: TPaymentType): Boolean;
begin
        Exit(Self.paymentTypeVector.contains(TJava.Box(paymentType_)));
end;
    

function TPaymentTypeUtil.difference(a_PaymentTypeVector: TBasicArrayList): TBasicArrayList;
var
  diff: TBasicArrayList;
  size: Integer;
  paymentType_: TPaymentType;
  i: Integer;
begin
        diff := TBasicArrayListD.Create();
        size := Self.paymentTypeVector.size();
        for i := 0 to size - 1 do begin
            paymentType_ := TPaymentType(TJava.ToObject(Self.paymentTypeVector.get(i)));
            if not (a_PaymentTypeVector.contains(TJava.Box(paymentType_))) then begin
                diff.add(TJava.Box(paymentType_));
            end;
        end;
        Exit(diff);
end;

initialization
  {AB:INITIALIZATION}
  TPaymentTypeUtil.instance := TPaymentTypeUtil.Create();
  TPaymentTypeUtil.StaticInitializer;
  {AB:END}

end.

