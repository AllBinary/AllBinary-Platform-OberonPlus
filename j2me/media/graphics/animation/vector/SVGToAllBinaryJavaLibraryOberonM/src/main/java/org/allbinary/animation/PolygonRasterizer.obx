// Generated Code Do Not Modify
// package org.allbinary.animation
unit PolygonRasterizer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPolygonRasterizer = class(TObject)
  public
    class var instance: TPolygonRasterizer;
    constructor Create;
        class function getInstance: TPolygonRasterizer; static;
        function getPixelBuffer(svgPath: string; pathX: TArray<Integer>; pathY: TArray<Integer>; pixelBuffer: TArray<Integer>; width: Integer; height: Integer): TArray<Integer>; virtual;
        procedure fillPolygon(polyX: TArray<Integer>; polyY: TArray<Integer>; numPoints: Integer; buffer: TArray<Integer>; width: Integer; height: Integer; colorRGB: Integer); virtual;
        procedure main(args: TArray<string>); virtual;
  end;

implementation
uses
  PathParser, FixedPoint;


{AB:CODE}

constructor TPolygonRasterizer.Create;
begin
  inherited Create;
end;
    

class function TPolygonRasterizer.getInstance: TPolygonRasterizer;
begin
        Exit(TPolygonRasterizer.instance);
end;
    

function TPolygonRasterizer.getPixelBuffer(svgPath: string; pathX: TArray<Integer>; pathY: TArray<Integer>; pixelBuffer: TArray<Integer>; width: Integer; height: Integer): TArray<Integer>;
var
  pointCount: Integer;
  i: Integer;
begin
        pointCount := TPathParser.parsePath(svgPath, pathX, pathY, System.Length(pathX));
        for i := 0 to System.Length(pixelBuffer) - 1 do begin
            pixelBuffer[i] := $FFFFFFFF;
        end;
        TPolygonRasterizer.getInstance().fillPolygon(pathX, pathY, pointCount, pixelBuffer, width, height, $FFFF00FF);
        Exit(pixelBuffer);
end;
    

procedure TPolygonRasterizer.fillPolygon(polyX: TArray<Integer>; polyY: TArray<Integer>; numPoints: Integer; buffer: TArray<Integer>; width: Integer; height: Integer; colorRGB: Integer);
var
  fixedPoint_: TFixedPoint;
  x: TArray<Integer>;
  y: TArray<Integer>;
  minY: Integer;
  maxY: Integer;
  i: Integer;
  scanlineX: TArray<Integer>;
  intersectCount: Integer;
  next: Integer;
  x1: Integer;
  y1: Integer;
  x2: Integer;
  y2: Integer;
  interX: Integer;
  temp: Integer;
  j: Integer;
  startX: Integer;
  endX: Integer;
  rowOffset: Integer;
  pixelX: Integer;
  scanY: Integer;
begin
        if (numPoints) < (3) then begin
            Exit;
        end;
        fixedPoint_ := TFixedPoint.getInstance();
        x := TJava.NewArray<Integer>(numPoints);
        y := TJava.NewArray<Integer>(numPoints);
        minY := height;
        maxY := 0;
        for i := 0 to numPoints - 1 do begin
            x[i] := fixedPoint_.toInt(polyX[i]);
            y[i] := fixedPoint_.toInt(polyY[i]);
            if (y[i]) < (minY) then begin
                minY := y[i];
            end;
            if (y[i]) > (maxY) then begin
                maxY := y[i];
            end;
        end;
        if (minY) < (0) then begin
            minY := 0;
        end;
        if (maxY) >= (height) then begin
            maxY := (height) - (1);
        end;
        scanlineX := TJava.NewArray<Integer>(numPoints);
        for scanY := minY to maxY do begin
            intersectCount := 0;
            for i := 0 to numPoints - 1 do begin
                next := (((i) + (1))) mod (numPoints);
                x1 := x[i];
                y1 := y[i];
                x2 := x[next];
                y2 := y[next];
                if ((((y1) < (scanY)) and ((y2) >= (scanY)))) or ((((y2) < (scanY)) and ((y1) >= (scanY)))) then begin
                    if (y2) <> (y1) then begin
                        interX := (x1) + (((((scanY) - (y1))) * (((x2) - (x1)))) div (((y2) - (y1))));
                        scanlineX[TJava.PostInc(intersectCount)] := interX;
                    end;
                end;
            end;
            for i := 0 to (intersectCount) - (1) - 1 do begin
                for j := (i) + (1) to intersectCount - 1 do begin
                    if (scanlineX[i]) > (scanlineX[j]) then begin
                        temp := scanlineX[i];
                        scanlineX[i] := scanlineX[j];
                        scanlineX[j] := temp;
                    end;
                end;
            end;
            i := 0;
            while (i) < (intersectCount) do begin
                if ((i) + (1)) >= (intersectCount) then begin
                    Break;
                end;
                startX := scanlineX[i];
                endX := scanlineX[(i) + (1)];
                if (startX) < (0) then begin
                    startX := 0;
                end;
                if (endX) >= (width) then begin
                    endX := (width) - (1);
                end;
                rowOffset := (scanY) * (width);
                for pixelX := startX to endX do begin
                    buffer[(rowOffset) + (pixelX)] := colorRGB;
                end;
                i := (i) + (2);
            end;
        end;
end;
    

procedure TPolygonRasterizer.main(args: TArray<string>);
var
  width: Integer;
  height: Integer;
  pathX: TArray<Integer>;
  pathY: TArray<Integer>;
  pixelBuffer: TArray<Integer>;
  svgPath: string;
begin
        width := 100;
        height := 100;
        pathX := TJava.NewArray<Integer>(200);
        pathY := TJava.NewArray<Integer>(200);
        pixelBuffer := TJava.NewArray<Integer>((width) * (height));
        svgPath := 'M 32.139812,81.554575 14.450128,74.294372 V 50.000034 25.705697 l 17.73231,-7.268329 C 41.935209,14.439788 49.953112,11.168898 50,11.168723 c 0.04689,-1.74e-4 8.064791,3.270238 17.817562,7.267583 l 17.73231,7.267899 V 50 74.295795 l -17.73231,7.2679 c -9.752771,3.997344 -17.789855,7.264116 -17.860188,7.259492 -0.07033,-0.0046 -8.088235,-3.275499 -17.817562,-7.268612 z';
        TPolygonRasterizer.getInstance().getPixelBuffer(svgPath, pathX, pathY, pixelBuffer, width, height);
end;

initialization
  {AB:INITIALIZATION}
  TPolygonRasterizer.instance := TPolygonRasterizer.Create();
  {AB:END}

end.

