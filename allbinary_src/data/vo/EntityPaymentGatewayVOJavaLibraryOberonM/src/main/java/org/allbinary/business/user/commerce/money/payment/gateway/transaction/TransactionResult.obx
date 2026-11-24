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
// package org.allbinary.business.user.commerce.money.payment.gateway.transaction
unit TransactionResult;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, BasicArrayList, TransactionResultInterface;

type
  {AB:TYPES}
  TTransactionResult = class(TInterfacedObject, ITransactionResultInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    keyValuePairs: TJavaHashMap<TObject, TObject>;
    result_: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(result_: string); overload;
        constructor Create(keyValuePairs: TJavaHashMap<TObject, TObject>); overload;
        function toString: string; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getAllPossibleKeys: TBasicArrayList;
        function getValues: TBasicArrayList; virtual;
        function getPnRef: string; virtual;
        function getRespMsg: string; virtual;
        function getResult: string; virtual;
        function getScore: string; virtual;
        function getStatus: string; virtual;
        function getFraudCode: string; virtual;
        function getFraudMsg: string; virtual;
        function getOrigResult: string; virtual;
        function getAvsAddr: string; virtual;
        function getAvsZip: string; virtual;
        function getErrCode: string; virtual;
        function getException1: string; virtual;
        function getException2: string; virtual;
        function getException3: string; virtual;
        function getException4: string; virtual;
        function getException5: string; virtual;
        function getException6: string; virtual;
        function getException7: string; virtual;
        function getReason1: string; virtual;
        function getReason2: string; virtual;
        function getReason3: string; virtual;
  end;

implementation
uses
  PaymentTransactionKeysFactory, StringUtil, Tokenizer, CommonSeps, ABHashtable, BasicArrayListD;


{AB:CODE}

procedure TTransactionResult.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

function TTransactionResult.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransactionResult.Create(result_: string);
var
  tokenizer_: TTokenizer;
  tokens: TBasicArrayList;
  tokenizer2: TTokenizer;
  hashtable: TABHashtable<TObject, TObject>;
  exceptionMessage: string;
begin
    inherited Create;
    InitFields;
        try
            Self.result_ := result_;
            tokenizer_ := TTokenizer.Create(TCommonSeps.getInstance().AMPERSAND);
            tokens := tokenizer_.getTokensFromString(result_, TBasicArrayListD.Create());
            tokenizer2 := TTokenizer.Create(TCommonSeps.getInstance().EQUALS);
            hashtable := tokenizer2.getTokens(tokens);
            Self.keyValuePairs.putAll(hashtable);
        except
            on e: SysUtils.Exception do begin
            exceptionMessage := 'TransactionResult Constructor Failed';
            Self.logUtil.putF(exceptionMessage, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            end;
        end;
end;
    

constructor TTransactionResult.Create(keyValuePairs: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        keyValuePairs := keyValuePairs;
        Self.result_ := 'Needs to have the hashmap converted to string for other constructor';
end;
    

function TTransactionResult.toString: string;
begin
        Exit(Self.result_);
end;
    

function TTransactionResult.toHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.keyValuePairs);
end;
    

function TTransactionResult.getAllPossibleKeys: TBasicArrayList;
var
  paymentTransactionKeysFactory_: TPaymentTransactionKeysFactory;
  verisignResponseKeys: TBasicArrayList;
begin
        paymentTransactionKeysFactory_ := TPaymentTransactionKeysFactory.getInstance();
        verisignResponseKeys := TBasicArrayListD.Create();
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.RESULT_.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.PNREF.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.RESPMSG.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.AUTHCODE.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.AVSADDR.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.AVSZIP.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.ORIGRESULT.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.STATUS.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.FRAUDCODE.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.FRAUDMSG.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.ERRCODE.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.SCORE.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.REASON1.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.REASON2.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.REASON3.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.EXCEPTION1.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.EXCEPTION2.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.EXCEPTION3.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.EXCEPTION4.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.EXCEPTION5.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.EXCEPTION6.toString()));
        verisignResponseKeys.add(TJava.Box(paymentTransactionKeysFactory_.EXCEPTION7.toString()));
        Exit(verisignResponseKeys);
end;
    

function TTransactionResult.getValues: TBasicArrayList;
var
  keyVector: TBasicArrayList;
  valueVector: TBasicArrayList;
  size: Integer;
  key: string;
  stringUtil_: TStringUtil;
  i: Integer;
begin
        keyVector := Self.getAllPossibleKeys();
        valueVector := TBasicArrayListD.Create();
        size := keyVector.size();
        for i := 0 to size - 1 do begin
            key := TJava.UnboxString(TJava.ToObject(keyVector.get(i)));
            if Self.keyValuePairs.containsKey(TJava.Box(key)) then begin
                valueVector.add(TJava.Box(Self.keyValuePairs.get(TJava.Box(key))));
            end else begin
                stringUtil_ := TStringUtil.getInstance();
                valueVector.add(TJava.Box(stringUtil_.EMPTY_STRING));
            end;
        end;
        Exit(valueVector);
end;
    

function TTransactionResult.getPnRef: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().PNREF.toString())))));
end;
    

function TTransactionResult.getRespMsg: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().RESPMSG.toString())))));
end;
    

function TTransactionResult.getResult: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().RESULT_.toString())))));
end;
    

function TTransactionResult.getScore: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().SCORE.toString())))));
end;
    

function TTransactionResult.getStatus: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().STATUS.toString())))));
end;
    

function TTransactionResult.getFraudCode: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().FRAUDCODE.toString())))));
end;
    

function TTransactionResult.getFraudMsg: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().FRAUDMSG.toString())))));
end;
    

function TTransactionResult.getOrigResult: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().ORIGRESULT.toString())))));
end;
    

function TTransactionResult.getAvsAddr: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().AVSADDR.toString())))));
end;
    

function TTransactionResult.getAvsZip: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().AVSZIP.toString())))));
end;
    

function TTransactionResult.getErrCode: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().ERRCODE.toString())))));
end;
    

function TTransactionResult.getException1: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().EXCEPTION1.toString())))));
end;
    

function TTransactionResult.getException2: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().EXCEPTION2.toString())))));
end;
    

function TTransactionResult.getException3: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().EXCEPTION3.toString())))));
end;
    

function TTransactionResult.getException4: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().EXCEPTION4.toString())))));
end;
    

function TTransactionResult.getException5: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().EXCEPTION5.toString())))));
end;
    

function TTransactionResult.getException6: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().EXCEPTION6.toString())))));
end;
    

function TTransactionResult.getException7: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().EXCEPTION7.toString())))));
end;
    

function TTransactionResult.getReason1: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().REASON1.toString())))));
end;
    

function TTransactionResult.getReason2: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().REASON2.toString())))));
end;
    

function TTransactionResult.getReason3: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.keyValuePairs.get(TJava.Box(TPaymentTransactionKeysFactory.getInstance().REASON3.toString())))));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

