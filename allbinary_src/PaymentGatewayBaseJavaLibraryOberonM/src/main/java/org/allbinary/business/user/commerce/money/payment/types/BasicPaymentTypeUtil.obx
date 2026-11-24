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
unit BasicPaymentTypeUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicPaymentType;

type
  {AB:TYPES}
  TBasicPaymentTypeUtil = class(TObject)
  public
    paymentTypeVector: TBasicArrayList;
    class var instance: TBasicPaymentTypeUtil;
    procedure InitFields;
    class procedure StaticInitializer; static;
        class function getInstance: TBasicPaymentTypeUtil; static;
        constructor Create;
        procedure add(paymentType: TBasicPaymentType); virtual;
        function get(paymentTypeString: string): TBasicPaymentType; virtual;
        function isContain(paymentType: TBasicPaymentType): Boolean; virtual;
        function difference(a_PaymentTypeVector: TBasicArrayList): TBasicArrayList; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil;


{AB:CODE}

procedure TBasicPaymentTypeUtil.InitFields;
begin
  Self.paymentTypeVector := TBasicArrayListD.Create();
end;
    

class procedure TBasicPaymentTypeUtil.StaticInitializer;
begin
end;
    

class function TBasicPaymentTypeUtil.getInstance: TBasicPaymentTypeUtil;
begin
        Exit(TBasicPaymentTypeUtil.instance);
end;
    

constructor TBasicPaymentTypeUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TBasicPaymentTypeUtil.add(paymentType: TBasicPaymentType);
begin
        Self.paymentTypeVector.add(TJava.Box(paymentType));
end;
    

// throws Exception
function TBasicPaymentTypeUtil.get(paymentTypeString: string): TBasicPaymentType;
var
  size: Integer;
  paymentType: TBasicPaymentType;
  i: Integer;
begin
        size := Self.paymentTypeVector.size();
        for i := 0 to size - 1 do begin
            paymentType := TBasicPaymentType(TJava.ToObject(Self.paymentTypeVector.get(i)));
            if (paymentType.getName().compareTo(paymentTypeString)) = (0) then begin
                Exit(paymentType);
            end;
        end;
        raise SysUtils.Exception.Create('Unknown PaymentType: ' + paymentTypeString);
end;
    

function TBasicPaymentTypeUtil.isContain(paymentType: TBasicPaymentType): Boolean;
begin
        Exit(Self.paymentTypeVector.contains(TJava.Box(paymentType)));
end;
    

function TBasicPaymentTypeUtil.difference(a_PaymentTypeVector: TBasicArrayList): TBasicArrayList;
var
  diff: TBasicArrayList;
  size: Integer;
  paymentType: TBasicPaymentType;
  i: Integer;
begin
        diff := TBasicArrayListD.Create();
        size := Self.paymentTypeVector.size();
        for i := 0 to size - 1 do begin
            paymentType := TBasicPaymentType(TJava.ToObject(Self.paymentTypeVector.get(i)));
            if not (a_PaymentTypeVector.contains(TJava.Box(paymentType))) then begin
                diff.add(TJava.Box(paymentType));
            end;
        end;
        Exit(diff);
end;

initialization
  {AB:INITIALIZATION}
  TBasicPaymentTypeUtil.instance := TBasicPaymentTypeUtil.Create();
  TBasicPaymentTypeUtil.StaticInitializer;
  {AB:END}

end.

