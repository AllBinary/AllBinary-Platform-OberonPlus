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
// package org.allbinary.business.user.commerce.money
unit Money;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMoney = class(TObject)
  public
    units: Int64;
    DEFAULT_CURRENCY: string;
    procedure InitFields;
        constructor Create(money_: TMoney); overload;
        constructor Create; overload;
        constructor Create(usDollarStr: string); overload;
        constructor Create(units: Int64); overload;
        function isValid: Boolean; virtual;
        procedure add(moreMoney: TMoney); overload; virtual;
        procedure add(usDollarStr: string); overload; virtual;
        procedure subtract(usDollarStr: string); virtual;
        procedure multiply(multiplier: Single); overload; virtual;
        procedure multiply(multiplier: Integer); overload; virtual;
        function convertUnitsTo(currency: string): string;
        function convertUsdToUnits(usDollarStr: string): Int64;
        function getUnits: Int64; virtual;
        function getUnitsLong: Int64; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  AbPathData, StringMaker, StringUtil, CommonPhoneStrings;


{AB:CODE}

procedure TMoney.InitFields;
begin
  
  Self.DEFAULT_CURRENCY := 'USD';
end;
    

constructor TMoney.Create(money_: TMoney);
begin
    inherited Create;
    InitFields;
        Self.units := money_.getUnits();
end;
    

constructor TMoney.Create;
begin
    inherited Create;
    InitFields;
        Self.units := 0;
end;
    

constructor TMoney.Create(usDollarStr: string);
begin
    inherited Create;
    InitFields;
        if ((usDollarStr) <> ('')) and (TJava.IsNumber(usDollarStr)) then begin
            Self.units := Self.convertUsdToUnits(usDollarStr);
        end;
end;
    

constructor TMoney.Create(units: Int64);
begin
    inherited Create;
    InitFields;
        Self.units := units;
end;
    

function TMoney.isValid: Boolean;
begin
        if (((Self.units) <> (0)) and (((Self.units)) > (0))) and (((Self.units)) < (High(Int64))) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TMoney.add(moreMoney: TMoney);
begin
        Self.add(moreMoney.toString());
end;
    

procedure TMoney.add(usDollarStr: string);
begin
        Self.units := ((Self.units)) + (Self.convertUsdToUnits(usDollarStr));
end;
    

procedure TMoney.subtract(usDollarStr: string);
begin
        Self.units := ((Self.units)) - (Self.convertUsdToUnits(usDollarStr));
end;
    

procedure TMoney.multiply(multiplier: Single);
begin
        Self.units := ((Self.units)) * ((multiplier)).longValue();
end;
    

procedure TMoney.multiply(multiplier: Integer);
begin
        Self.units := ((Self.units)) * (multiplier);
end;
    

function TMoney.convertUnitsTo(currency: string): string;
var
  stringBuffer: TStringMaker;
  dollar: Int64;
  cents: Int64;
begin
        stringBuffer := TStringMaker.Create();
        if (CompareStr(currency, Self.DEFAULT_CURRENCY)) = (0) then begin
            dollar := ((Self.units)) div (100);
            cents := ((Self.units)) - (((dollar) * (100)));
            stringBuffer.append(dollar.toString());
            stringBuffer.append(TAbPathData.getInstance().EXTENSION_SEP);
            if (cents) < (10) then begin
                stringBuffer.append(TCommonPhoneStrings.getInstance().ZERO);
            end;
            stringBuffer.append(cents.toString());
        end;
        Exit(stringBuffer.toString());
end;
    

function TMoney.convertUsdToUnits(usDollarStr: string): Int64;
var
  localUnit: Int64;
  index: Integer;
  stringUtil_: TStringUtil;
  dollarStr: string;
  centsStr: string;
begin
        localUnit := 0;
        index := (Pos(TJava.ToString(TAbPathData.getInstance().EXTENSION_SEP), usDollarStr) - 1);
        stringUtil_ := TStringUtil.getInstance();
        dollarStr := stringUtil_.EMPTY_STRING;
        centsStr := stringUtil_.EMPTY_STRING;
        if (index) < (1) then begin
            dollarStr := TJava.NewString(usDollarStr);
            centsStr := '00';
        end else begin
            dollarStr := TJava.NewString(Copy(usDollarStr, (0) + 1, (index) - (0)));
            centsStr := TJava.NewString(Copy(usDollarStr, ((index) + (1)) + 1, MaxInt));
        end;
        localUnit := ((StrToInt64(dollarStr)) * (100));
        localUnit := (localUnit) + (StrToInt64(centsStr));
        Exit(localUnit);
end;
    

function TMoney.getUnits: Int64;
begin
        Exit((Self.units));
end;
    

function TMoney.getUnitsLong: Int64;
begin
        Exit(Self.units);
end;
    

function TMoney.toString: string;
begin
        Exit(TJava.NewString(Self.convertUnitsTo(Self.DEFAULT_CURRENCY)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

