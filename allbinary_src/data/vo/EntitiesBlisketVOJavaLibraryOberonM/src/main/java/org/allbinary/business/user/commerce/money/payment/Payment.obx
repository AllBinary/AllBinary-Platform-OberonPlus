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
// package org.allbinary.business.user.commerce.money.payment
unit Payment;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, PaymentInterface;

type
  {AB:TYPES}
  TPayment = class(TInterfacedObject, IPaymentInterface, IDomNodeInterface)
  public
    name: string;
    expiration: string;
    encryption: string;
    number: string;
    id: string;
    type_: string;
    tenderType: string;
    transactionType: string;
    aba: string;
    account: string;
    accountType: string;
    authorizationCode: string;
    checkNumber: string;
    checkType: string;
    driversLicense: string;
    magneticInkCheckReader: string;
    isDefault_: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(payment: TJavaHashMap<TObject, TObject>); overload;
        constructor Create(request: TServletRequest); overload;
        constructor Create; overload;
        function isValid: Boolean; virtual;
        procedure setTenderType(value: string); virtual;
        procedure setTransactionType(value: string); virtual;
        procedure setAuthorizationCode(value: string); virtual;
        procedure setCheckType(value: string); virtual;
        procedure setCheckNumber(value: string); virtual;
        procedure setDriversLicense(value: string); virtual;
        procedure setMagneticInkCheckReader(value: string); virtual;
        procedure setAba(value: string); virtual;
        procedure setAccountType(value: string); virtual;
        procedure setName(value: string); virtual;
        procedure setType(value: string); virtual;
        procedure setExpiration(value: string); virtual;
        procedure setNumber(value: string); virtual;
        function getId: string; virtual;
        function getName: string; virtual;
        function getType: string; virtual;
        function getExpiration: string; virtual;
        function getEncryption: string; virtual;
        function getNumber: string; virtual;
        function getTenderType: string; virtual;
        function getTransactionType: string; virtual;
        function getAba: string; virtual;
        function getAccount: string; virtual;
        function getAccountType: string; virtual;
        function getAuthorizationCode: string; virtual;
        function getCheckNumber: string; virtual;
        function getCheckType: string; virtual;
        function getDriversLicense: string; virtual;
        function getMagneticInkCheckReader: string; virtual;
        function getLastFour: string; virtual;
        function isDefault: Boolean; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toXmlDoc: TDocument; virtual;
        function view: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
  end;

implementation
uses
  PaymentData, EntryData, ModDomHelper, StdUtil, SuperCrypt, StringUtil;


{AB:CODE}

procedure TPayment.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  Self.isDefault_ := False;
end;

function TPayment.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPayment.Create(payment: TJavaHashMap<TObject, TObject>);
var
  def: string;
begin
    inherited Create;
    InitFields;
        Self.name := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.NAME))));
        Self.type_ := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.TYPE_))));
        Self.expiration := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.EXPIRATION))));
        Self.encryption := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TEntryData.getInstance().ENCRYPTION))));
        Self.number := TJava.UnboxString(TJava.ToObject(TSuperCrypt.Create(StrToInt(Self.encryption)).decrypt(TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.NUMBER)))))));
        Self.id := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.ID))));
        def := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TEntryData.getInstance().DEFAULT))));
        if ((def) <> ('')) and ((CompareStr(def, TEntryData.getInstance().DEFAULT)) = (0)) then begin
            Self.isDefault_ := True;
        end else begin
            Self.isDefault_ := False;
        end;
        Self.tenderType := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.TENDERTYPE))));
        Self.transactionType := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.TRANSACTIONTYPE))));
        Self.aba := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.ABA))));
        Self.account := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.ACCOUNT))));
        Self.accountType := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.ACCOUNTTYPE))));
        Self.authorizationCode := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.AUTHORIZATIONCODE))));
        Self.checkNumber := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.CHECKNUMBER))));
        Self.checkType := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.CHECKTYPE))));
        Self.driversLicense := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.DRIVERSLICENSE))));
        Self.magneticInkCheckReader := TJava.UnboxString(TJava.ToObject(payment.get(TJava.Box(TPaymentData.MAGNETICINKCHECKREADER))));
end;
    

constructor TPayment.Create(request: TServletRequest);
begin
    inherited Create;
    InitFields;
        Self.name := request.getParameter(TPaymentData.NAME);
        Self.type_ := request.getParameter(TPaymentData.TYPE_);
        Self.expiration := request.getParameter(TPaymentData.EXPIRATION);
        Self.number := request.getParameter(TPaymentData.NUMBER);
        Self.tenderType := request.getParameter(TPaymentData.TENDERTYPE);
        Self.transactionType := request.getParameter(TPaymentData.TRANSACTIONTYPE);
        Self.aba := request.getParameter(TPaymentData.ABA);
        Self.account := request.getParameter(TPaymentData.ACCOUNT);
        Self.accountType := request.getParameter(TPaymentData.ACCOUNTTYPE);
        Self.authorizationCode := request.getParameter(TPaymentData.AUTHORIZATIONCODE);
        Self.checkNumber := request.getParameter(TPaymentData.CHECKNUMBER);
        Self.checkType := request.getParameter(TPaymentData.CHECKTYPE);
        Self.driversLicense := request.getParameter(TPaymentData.DRIVERSLICENSE);
        Self.magneticInkCheckReader := request.getParameter(TPaymentData.MAGNETICINKCHECKREADER);
end;
    

constructor TPayment.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TPayment.isValid: Boolean;
var
  stringUtil_: TStringUtil;
  aFalse: Boolean;
begin
        stringUtil_ := TStringUtil.getInstance();
        aFalse := False;
        if ((Self.name) = ('')) or ((CompareStr(Self.name, stringUtil_.EMPTY_STRING)) = (0)) then begin
            Exit(aFalse);
        end;
        if ((Self.type_) = ('')) or ((CompareStr(Self.type_, stringUtil_.EMPTY_STRING)) = (0)) then begin
            Exit(aFalse);
        end;
        if ((Self.expiration) = ('')) or ((CompareStr(Self.expiration, stringUtil_.EMPTY_STRING)) = (0)) then begin
            Exit(aFalse);
        end;
        if ((Self.number) = ('')) or ((CompareStr(Self.number, stringUtil_.EMPTY_STRING)) = (0)) then begin
            Exit(aFalse);
        end;
        if (System.Length(Self.number)) > (Torg.allbinary.business.user.commerce.money.payment.types.CreditCardType.MAXLEN) then begin
            Exit(aFalse);
        end;
        Exit(True);
end;
    

procedure TPayment.setTenderType(value: string);
begin
        Self.tenderType := value;
end;
    

procedure TPayment.setTransactionType(value: string);
begin
        Self.transactionType := value;
end;
    

procedure TPayment.setAuthorizationCode(value: string);
begin
        Self.authorizationCode := value;
end;
    

procedure TPayment.setCheckType(value: string);
begin
        Self.checkType := value;
end;
    

procedure TPayment.setCheckNumber(value: string);
begin
        Self.checkNumber := value;
end;
    

procedure TPayment.setDriversLicense(value: string);
begin
        Self.driversLicense := value;
end;
    

procedure TPayment.setMagneticInkCheckReader(value: string);
begin
        Self.magneticInkCheckReader := value;
end;
    

procedure TPayment.setAba(value: string);
begin
        Self.aba := value;
end;
    

procedure TPayment.setAccountType(value: string);
begin
        Self.accountType := value;
end;
    

procedure TPayment.setName(value: string);
begin
        Self.name := value;
end;
    

procedure TPayment.setType(value: string);
begin
        Self.type_ := value;
end;
    

procedure TPayment.setExpiration(value: string);
begin
        Self.expiration := value;
end;
    

procedure TPayment.setNumber(value: string);
begin
        Self.number := value;
end;
    

function TPayment.getId: string;
begin
        Exit(Self.id);
end;
    

function TPayment.getName: string;
begin
        Exit(Self.name);
end;
    

function TPayment.getType: string;
begin
        Exit(Self.type_);
end;
    

function TPayment.getExpiration: string;
begin
        Exit(Self.expiration);
end;
    

function TPayment.getEncryption: string;
begin
        Exit(Self.encryption);
end;
    

function TPayment.getNumber: string;
begin
        Exit(Self.number);
end;
    

function TPayment.getTenderType: string;
begin
        Exit(Self.tenderType);
end;
    

function TPayment.getTransactionType: string;
begin
        Exit(Self.transactionType);
end;
    

function TPayment.getAba: string;
begin
        Exit(Self.aba);
end;
    

function TPayment.getAccount: string;
begin
        Exit(Self.account);
end;
    

function TPayment.getAccountType: string;
begin
        Exit(Self.accountType);
end;
    

function TPayment.getAuthorizationCode: string;
begin
        Exit(Self.authorizationCode);
end;
    

function TPayment.getCheckNumber: string;
begin
        Exit(Self.checkNumber);
end;
    

function TPayment.getCheckType: string;
begin
        Exit(Self.checkType);
end;
    

function TPayment.getDriversLicense: string;
begin
        Exit(Self.driversLicense);
end;
    

function TPayment.getMagneticInkCheckReader: string;
begin
        Exit(Self.magneticInkCheckReader);
end;
    

function TPayment.getLastFour: string;
begin
        if ((System.Length(Self.number)) > (TPaymentData.MIN)) and ((System.Length(Self.number)) <= (TPaymentData.MAX)) then begin
            Exit(Copy(Self.number, ((System.Length(Self.number)) - (4)) + 1, MaxInt));
        end else begin
            Exit('Invalid #');
        end;
end;
    

function TPayment.isDefault: Boolean;
begin
        Exit(Self.isDefault_);
end;
    

function TPayment.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TPaymentData.NAME), TJava.Box(Self.name));
        hashMap_.put(TJava.Box(TPaymentData.TYPE_), TJava.Box(Self.type_));
        hashMap_.put(TJava.Box(TPaymentData.EXPIRATION), TJava.Box(Self.expiration));
        hashMap_.put(TJava.Box(TPaymentData.NUMBER), TJava.Box(Self.getLastFour()));
        hashMap_.put(TJava.Box(TPaymentData.TENDERTYPE), TJava.Box(Self.tenderType));
        hashMap_.put(TJava.Box(TPaymentData.TRANSACTIONTYPE), TJava.Box(Self.transactionType));
        hashMap_.put(TJava.Box(TPaymentData.ABA), TJava.Box(Self.aba));
        hashMap_.put(TJava.Box(TPaymentData.ACCOUNT), TJava.Box(Self.account));
        hashMap_.put(TJava.Box(TPaymentData.ACCOUNTTYPE), TJava.Box(Self.accountType));
        hashMap_.put(TJava.Box(TPaymentData.AUTHORIZATIONCODE), TJava.Box(Self.authorizationCode));
        hashMap_.put(TJava.Box(TPaymentData.CHECKNUMBER), TJava.Box(Self.checkNumber));
        hashMap_.put(TJava.Box(TPaymentData.DRIVERSLICENSE), TJava.Box(Self.driversLicense));
        hashMap_.put(TJava.Box(TPaymentData.MAGNETICINKCHECKREADER), TJava.Box(Self.magneticInkCheckReader));
        if Self.isDefault_ then begin
            hashMap_.put(TJava.Box(TEntryData.getInstance().DEFAULT), TJava.Box(TEntryData.getInstance().DEFAULT));
        end else begin
            hashMap_.put(TJava.Box(TEntryData.getInstance().DEFAULT), TJava.Box(TStringUtil.getInstance().EMPTY_STRING));
        end;
        Exit(hashMap_);
end;
    

// throws Exception
function TPayment.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
begin
        hashMap_ := Self.toHashMap();
        node_ := TModDomHelper.createNameValueNodes(document_, TPaymentData.PAYMENT, hashMap_);
        Exit(node_);
end;
    

function TPayment.toXmlDoc: TDocument;
begin
        Exit(nil);
end;
    

function TPayment.view: string;
begin
        Exit(nil);
end;
    

function TPayment.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TPayment.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TPayment.validationInfo: string;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

