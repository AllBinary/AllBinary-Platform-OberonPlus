// Generated Code Do Not Modify
// package org.allbinary.animation
unit PGUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPGUtil = class(TObject)
  public
    class var instance: TPGUtil;
    constructor Create;
        class function getInstance: TPGUtil; static;
        procedure flattenCubicBezier(x0: Integer; y0: Integer; x1: Integer; y1: Integer; x2: Integer; y2: Integer; x3: Integer; y3: Integer; outX: TArray<Integer>; outY: TArray<Integer>; count: TArray<Integer>; maxPoints: Integer); virtual;
  end;

implementation
uses
  FixedPoint;


{AB:CODE}

constructor TPGUtil.Create;
begin
  inherited Create;
end;
    

class function TPGUtil.getInstance: TPGUtil;
begin
        Exit(TPGUtil.instance);
end;
    

procedure TPGUtil.flattenCubicBezier(x0: Integer; y0: Integer; x1: Integer; y1: Integer; x2: Integer; y2: Integer; x3: Integer; y3: Integer; outX: TArray<Integer>; outY: TArray<Integer>; count: TArray<Integer>; maxPoints: Integer);
var
  fixedPoint_: TFixedPoint;
  steps: Integer;
  t: Integer;
  mt: Integer;
  mt3: Integer;
  mt2t3: Integer;
  mtt23: Integer;
  t3: Integer;
  x: Integer;
  y: Integer;
  i: Integer;
begin
        fixedPoint_ := TFixedPoint.getInstance();
        steps := 10;
        for i := 1 to steps do begin
            t := fixedPoint_.div_(fixedPoint_.toFixed(i), fixedPoint_.toFixed(steps));
            mt := (fixedPoint_.ONE) - (t);
            mt3 := fixedPoint_.mul(fixedPoint_.mul(mt, mt), mt);
            mt2t3 := (3) * (fixedPoint_.mul(fixedPoint_.mul(mt, mt), t));
            mtt23 := (3) * (fixedPoint_.mul(fixedPoint_.mul(mt, t), t));
            t3 := fixedPoint_.mul(fixedPoint_.mul(t, t), t);
            x := (((fixedPoint_.mul(mt3, x0)) + (fixedPoint_.mul(mt2t3, x1))) + (fixedPoint_.mul(mtt23, x2))) + (fixedPoint_.mul(t3, x3));
            y := (((fixedPoint_.mul(mt3, y0)) + (fixedPoint_.mul(mt2t3, y1))) + (fixedPoint_.mul(mtt23, y2))) + (fixedPoint_.mul(t3, y3));
            if (count[0]) < (maxPoints) then begin
                outX[count[0]] := x;
                outY[count[0]] := y;
                Inc(count[0]);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TPGUtil.instance := TPGUtil.Create();
  {AB:END}

end.

