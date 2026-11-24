// Generated Code Do Not Modify
// package org.allbinary.animation
unit PathParser;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPathParser = class(TObject)
  public
    constructor Create;
        class function tokenize(d: string): TArray<string>; static;
        class function parsePath(d: string; outX: TArray<Integer>; outY: TArray<Integer>; maxPoints: Integer): Integer; static;
        class function isCommand(tok: string): Boolean; static;
  end;

implementation
uses
  FixedPoint, PGUtil, BasicArrayList, BasicArrayListD, StdUtil;


{AB:CODE}

constructor TPathParser.Create;
begin
  inherited Create;
end;
    

class function TPathParser.tokenize(d: string): TArray<string>;
var
  tokens: TBasicArrayList;
  sb: string;
  c: WideChar;
  i: Integer;
  res: TArray<string>;
begin
        tokens := TBasicArrayListD.Create();
        sb := string.Create();
        for i := 0 to System.Length(d) - 1 do begin
            c := d[(i) + 1];
            if (((((c) = (' ')) or ((c) = (','))) or ((c) = (#9))) or ((c) = (#10))) or ((c) = (#13)) then begin
                if (sb.length()) > (0) then begin
                    tokens.add(TJava.Box(sb.toString()));
                    sb.setLength(0);
                end;
            end else if ((((((((((c) = ('M')) or ((c) = ('m'))) or ((c) = ('L'))) or ((c) = ('l'))) or ((c) = ('V'))) or ((c) = ('v'))) or ((c) = ('C'))) or ((c) = ('c'))) or ((c) = ('Z'))) or ((c) = ('z')) then begin
                if (sb.length()) > (0) then begin
                    tokens.add(TJava.Box(sb.toString()));
                    sb.setLength(0);
                end;
                tokens.add(TJava.Box(TJava.ToString(c)));
            end else begin
                sb.append(c);
            end;
        end;
        if (sb.length()) > (0) then begin
            tokens.add(TJava.Box(sb.toString()));
        end;
        res := TJava.NewArray<string>(tokens.size());
        tokens.toArrayType(res);
        Exit(res);
end;
    

class function TPathParser.parsePath(d: string; outX: TArray<Integer>; outY: TArray<Integer>; maxPoints: Integer): Integer;
var
  tokens: TArray<string>;
  count: TArray<Integer>;
  fixedPoint_: TFixedPoint;
  curX: Integer;
  curY: Integer;
  startX: Integer;
  startY: Integer;
  idx: Integer;
  tok: string;
  cmd: WideChar;
  x1: Integer;
  y1: Integer;
  x2: Integer;
  y2: Integer;
  x3: Integer;
  y3: Integer;
  y: Integer;
  x: Integer;
begin
        tokens := TPathParser.tokenize(d);
        count := TArray<Integer>.Create(0);
        fixedPoint_ := TFixedPoint.getInstance();
        curX := 0;
        curY := 0;
        startX := 0;
        startY := 0;
        idx := 0;
        while (idx) < (System.Length(tokens)) do begin
            tok := tokens[TJava.PostInc(idx)];
            cmd := tok[(0) + 1];
            if ((cmd) = ('M')) or ((cmd) = ('m')) then begin
                x := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                y := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                if (cmd) = ('m') then begin
                    x := (x) + (curX);
                    y := (y) + (curY);
                end;
                curX := x;
                curY := y;
                startX := x;
                startY := y;
                outX[count[0]] := curX;
                outY[count[0]] := curY;
                Inc(count[0]);
            end else if ((cmd) = ('L')) or ((cmd) = ('l')) then begin
                x := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                y := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                if (cmd) = ('l') then begin
                    x := (x) + (curX);
                    y := (y) + (curY);
                end;
                curX := x;
                curY := y;
                outX[count[0]] := curX;
                outY[count[0]] := curY;
                Inc(count[0]);
            end else if ((cmd) = ('V')) or ((cmd) = ('v')) then begin
                y := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                if (cmd) = ('v') then begin
                    y := (y) + (curY);
                end;
                curY := y;
                outX[count[0]] := curX;
                outY[count[0]] := curY;
                Inc(count[0]);
            end else if ((cmd) = ('C')) or ((cmd) = ('c')) then begin
                x1 := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                y1 := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                x2 := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                y2 := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                x3 := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                y3 := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                if (cmd) = ('c') then begin
                    x1 := (x1) + (curX);
                    y1 := (y1) + (curY);
                    x2 := (x2) + (curX);
                    y2 := (y2) + (curY);
                    x3 := (x3) + (curX);
                    y3 := (y3) + (curY);
                end;
                TPGUtil.getInstance().flattenCubicBezier(curX, curY, x1, y1, x2, y2, x3, y3, outX, outY, count, maxPoints);
                curX := x3;
                curY := y3;
            end else if ((cmd) = ('Z')) or ((cmd) = ('z')) then begin
                curX := startX;
                curY := startY;
                outX[count[0]] := curX;
                outY[count[0]] := curY;
                Inc(count[0]);
            end;
            while ((idx) < (System.Length(tokens))) and (not (TPathParser.isCommand(tokens[idx]))) do begin
                if ((((cmd) = ('M')) or ((cmd) = ('m'))) or ((cmd) = ('L'))) or ((cmd) = ('l')) then begin
                    x := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                    y := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                    if ((cmd) = ('m')) or ((cmd) = ('l')) then begin
                        x := (x) + (curX);
                        y := (y) + (curY);
                    end;
                    curX := x;
                    curY := y;
                    outX[count[0]] := curX;
                    outY[count[0]] := curY;
                    Inc(count[0]);
                end else if ((cmd) = ('V')) or ((cmd) = ('v')) then begin
                    y := fixedPoint_.toFixed(StrToFloat(tokens[TJava.PostInc(idx)]));
                    if (cmd) = ('v') then begin
                        y := (y) + (curY);
                    end;
                    curY := y;
                    outX[count[0]] := curX;
                    outY[count[0]] := curY;
                    Inc(count[0]);
                end;
            end;
        end;
        Exit(count[0]);
end;
    

class function TPathParser.isCommand(tok: string): Boolean;
var
  c: WideChar;
begin
        c := tok[(0) + 1];
        Exit(((Pos(TJava.ToString(c), 'MmLlVvCcZz') - 1)) >= (0));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

