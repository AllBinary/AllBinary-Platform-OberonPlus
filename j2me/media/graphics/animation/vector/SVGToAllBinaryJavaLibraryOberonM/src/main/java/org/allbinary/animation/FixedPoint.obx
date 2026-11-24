// Generated Code Do Not Modify
// package org.allbinary.animation
unit FixedPoint;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TFixedPoint = class(TObject)
  public
    ONE: Integer;
    class var instance: TFixedPoint;
    procedure InitFields;
    constructor Create;
        class function getInstance: TFixedPoint; static;
        function toFixed(val: Double): Integer; overload; virtual;
        function toFixed(val: Single): Integer; overload; virtual;
        function mul(a: Integer; b: Integer): Integer; virtual;
        function div_(a: Integer; b: Integer): Integer; virtual;
        function toInt(fixed: Integer): Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TFixedPoint.InitFields;
begin
  Self.ONE := (1) shl (16);
end;

constructor TFixedPoint.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TFixedPoint.getInstance: TFixedPoint;
begin
        Exit(TFixedPoint.instance);
end;
    

function TFixedPoint.toFixed(val: Double): Integer;
begin
        Exit(Integer(Trunc(((val) * (65536.0)))));
end;
    

function TFixedPoint.toFixed(val: Single): Integer;
begin
        Exit(Integer(Trunc(((val) * (65536.0)))));
end;
    

function TFixedPoint.mul(a: Integer; b: Integer): Integer;
begin
        Exit(Integer((TJava.SignedRightShift(((Int64(a)) * (Int64(b))), 16))));
end;
    

function TFixedPoint.div_(a: Integer; b: Integer): Integer;
begin
        Exit(Integer((((((Int64(a))) shl (16))) div (Int64(b)))));
end;
    

function TFixedPoint.toInt(fixed: Integer): Integer;
begin
        Exit(TJava.SignedRightShift(fixed, 16));
end;

initialization
  {AB:INITIALIZATION}
  TFixedPoint.instance := TFixedPoint.Create();
  {AB:END}

end.

