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
// package org.allbinary.animation
unit SVGAsJSONSimpleLoader;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GraphicsStrings, BasicArrayList, JSONObject, ShapeTypeFactory, ShapeType;

type
  {AB:TYPES}
  TSVGAsJSONSimpleLoader = class(TObject)
  public
    graphicsStrings: TGraphicsStrings;
    shapeTypeFactory: TShapeTypeFactory;
    KEY_SVG: string;
    KEY_X1: string;
    KEY_Y1: string;
    KEY_X2: string;
    KEY_Y2: string;
    KEY_CX: string;
    KEY_CY: string;
    KEY_R: string;
    KEY_X: string;
    KEY_Y: string;
    ERROR_PARSE_SVG_JSON: string;
    ERROR_MISSING_KEY_PREFIX: string;
    ERROR_INVALID_NUMBER_PREFIX: string;
    ERROR_EXPECTED_OBJECT_PREFIX: string;
    EMPTY_POINTS: TArray<TArray<Integer>>;
    SHAPE_SEPARATOR: TArray<Integer>;
    CIRCLE_SEGMENTS: Integer;
    class var instance: TSVGAsJSONSimpleLoader;
    procedure InitFields;
    constructor Create;
        class function getInstance: TSVGAsJSONSimpleLoader; static;
        function load(svgAsJson: string): TArray<TArray<Integer>>; virtual;
        procedure addShapes(pointVector: TBasicArrayList; value: TObject; shapeType_: TShapeType);
        procedure addShape(pointVector: TBasicArrayList; value: TObject; shapeType_: TShapeType);
        procedure addLine(pointVector: TBasicArrayList; line: TJSONObject);
        procedure addCircle(pointVector: TBasicArrayList; circle: TJSONObject);
        procedure addRectangle(pointVector: TBasicArrayList; rectangle: TJSONObject);
        procedure addPoint(pointVector: TBasicArrayList; x: Integer; y: Integer);
        procedure addSeparator(pointVector: TBasicArrayList);
        function readInt(anyType: TJSONObject; key: string): Integer; overload;
        function readInt(anyType: TJSONObject; key: string; defaultValue: Integer): Integer; overload;
        function toInt(value: TObject; key: string): Integer;
        function asObject(value: TObject; name: string): TJSONObject;
        function toPoints(pointVector: TBasicArrayList): TArray<TArray<Integer>>;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  PrimitiveIntUtil, StringMaker, PositionStrings, CommonSeps, BasicArrayListD, JSONArray, JSONException;


{AB:CODE}

procedure TSVGAsJSONSimpleLoader.InitFields;
begin
  Self.graphicsStrings := TGraphicsStrings.getInstance();
  Self.shapeTypeFactory := TShapeTypeFactory.getInstance();
  Self.KEY_SVG := 'svg';
  Self.KEY_X1 := 'x1';
  Self.KEY_Y1 := 'y1';
  Self.KEY_X2 := 'x2';
  Self.KEY_Y2 := 'y2';
  Self.KEY_CX := 'cx';
  Self.KEY_CY := 'cy';
  Self.KEY_R := 'r';
  Self.KEY_X := TPositionStrings.getInstance().X;
  Self.KEY_Y := TPositionStrings.getInstance().Y;
  Self.ERROR_PARSE_SVG_JSON := 'Unable to parse SVG JSON';
  Self.ERROR_MISSING_KEY_PREFIX := 'Missing key: ';
  Self.ERROR_INVALID_NUMBER_PREFIX := 'Invalid number for key: ';
  Self.ERROR_EXPECTED_OBJECT_PREFIX := 'Expected object for: ';
  Self.EMPTY_POINTS := TPrimitiveIntUtil.getTwoDimensionalArrayInstance();
  Self.SHAPE_SEPARATOR := TArray<Integer>.Create(1000, 1000);
  Self.CIRCLE_SEGMENTS := 16;
end;

constructor TSVGAsJSONSimpleLoader.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TSVGAsJSONSimpleLoader.getInstance: TSVGAsJSONSimpleLoader;
begin
        Exit(TSVGAsJSONSimpleLoader.instance);
end;
    

// throws Exception
function TSVGAsJSONSimpleLoader.load(svgAsJson: string): TArray<TArray<Integer>>;
var
  root: TJSONObject;
  svgValue: TObject;
  svg: TJSONObject;
  pointVector: TBasicArrayList;
  objectArray: TArray<TObject>;
  size: Integer;
  key: string;
  value: TObject;
  index: Integer;
begin
        if (svgAsJson) = ('') then begin
            Exit(Self.EMPTY_POINTS);
        end;
        try
            root := TJSONObject.Create(svgAsJson);
            svgValue := TJava.Box(root.opt(Self.KEY_SVG));
            svg := TJava.IfThen<Variant>((svgValue) = (nil), root, Self.asObject(svgValue, Self.KEY_SVG));
            pointVector := TBasicArrayListD.Create();
            objectArray := svg.keysAsArray();
            size := System.Length(objectArray);
            for index := 0 to size - 1 do begin
                key := TJava.UnboxString(TJava.ToObject(objectArray[index]));
                value := TJava.Box(svg.opt(key));
                if TJava.Equals(Self.shapeTypeFactory.KEY_LINE, key) then begin
                    Self.addShapes(pointVector, value, Self.shapeTypeFactory.LINE);
                end else if Self.shapeTypeFactory.equals(key) then begin
                    Self.addShapes(pointVector, value, Self.shapeTypeFactory.CIRCLE);
                end else if (TJava.Equals(Self.shapeTypeFactory.KEY_RECT, key)) or (TJava.Equals(Self.shapeTypeFactory.KEY_RECTANGLE, key)) then begin
                    Self.addShapes(pointVector, value, Self.shapeTypeFactory.RECTANGLE);
                end;
            end;
            Exit(Self.toPoints(pointVector));
        except
            on e: TJSONException do begin
            raise SysUtils.Exception.Create(Self.ERROR_PARSE_SVG_JSON, e);
            end;
        end;
end;
    

// throws Exception
procedure TSVGAsJSONSimpleLoader.addShapes(pointVector: TBasicArrayList; value: TObject; shapeType_: TShapeType);
var
  array_: TJSONArray;
  size: Integer;
  index: Integer;
begin
        if (TJava.ToObject(value) is TJSONArray) then begin
            array_ := TJSONArray(TJava.ToObject(value));
            size := array_.length();
            for index := 0 to size - 1 do begin
                Self.addShape(pointVector, array_.opt(index), shapeType_);
            end;
        end else begin
            Self.addShape(pointVector, value, shapeType_);
        end;
end;
    

// throws Exception
procedure TSVGAsJSONSimpleLoader.addShape(pointVector: TBasicArrayList; value: TObject; shapeType_: TShapeType);
var
  shape: TJSONObject;
begin
        shape := Self.asObject(value, shapeType_.getName());
        if (shapeType_) = (Self.shapeTypeFactory.LINE) then begin
            Self.addLine(pointVector, shape);
        end else if (shapeType_) = (Self.shapeTypeFactory.CIRCLE) then begin
            Self.addCircle(pointVector, shape);
        end else begin
            Self.addRectangle(pointVector, shape);
        end;
end;
    

// throws Exception
procedure TSVGAsJSONSimpleLoader.addLine(pointVector: TBasicArrayList; line: TJSONObject);
begin
        Self.addPoint(pointVector, Self.readInt(line, Self.KEY_X1), Self.readInt(line, Self.KEY_Y1));
        Self.addPoint(pointVector, Self.readInt(line, Self.KEY_X2), Self.readInt(line, Self.KEY_Y2));
        Self.addSeparator(pointVector);
end;
    

// throws Exception
procedure TSVGAsJSONSimpleLoader.addCircle(pointVector: TBasicArrayList; circle: TJSONObject);
var
  cx: Integer;
  cy: Integer;
  radius: Integer;
  angle: Double;
  x: Integer;
  y: Integer;
  index: Integer;
begin
        cx := Self.readInt(circle, Self.KEY_CX);
        cy := Self.readInt(circle, Self.KEY_CY);
        radius := Self.readInt(circle, Self.KEY_R);
        for index := 0 to Self.CIRCLE_SEGMENTS do begin
            angle := TJava.Divide((((TMath.PI) * (2.0)) * (index)), Self.CIRCLE_SEGMENTS);
            x := Integer(Trunc(Round((cx) + (((Cos(angle)) * (radius))))));
            y := Integer(Trunc(Round((cy) + (((Sin(angle)) * (radius))))));
            Self.addPoint(pointVector, x, y);
        end;
        Self.addSeparator(pointVector);
end;
    

// throws Exception
procedure TSVGAsJSONSimpleLoader.addRectangle(pointVector: TBasicArrayList; rectangle: TJSONObject);
var
  x: Integer;
  y: Integer;
  width: Integer;
  height: Integer;
begin
        x := Self.readInt(rectangle, Self.KEY_X, 0);
        y := Self.readInt(rectangle, Self.KEY_Y, 0);
        width := Self.readInt(rectangle, Self.graphicsStrings.WIDTH);
        height := Self.readInt(rectangle, Self.graphicsStrings.HEIGHT);
        Self.addPoint(pointVector, x, y);
        Self.addPoint(pointVector, (x) + (width), y);
        Self.addPoint(pointVector, (x) + (width), (y) + (height));
        Self.addPoint(pointVector, x, (y) + (height));
        Self.addPoint(pointVector, x, y);
        Self.addSeparator(pointVector);
end;
    

procedure TSVGAsJSONSimpleLoader.addPoint(pointVector: TBasicArrayList; x: Integer; y: Integer);
begin
        pointVector.add(TJava.Box(TArray<Integer>.Create(x, y)));
end;
    

procedure TSVGAsJSONSimpleLoader.addSeparator(pointVector: TBasicArrayList);
begin
        pointVector.add(TJava.Box(TArray<Integer>.Create(Self.SHAPE_SEPARATOR[0], Self.SHAPE_SEPARATOR[1])));
end;
    

// throws Exception
function TSVGAsJSONSimpleLoader.readInt(anyType: TJSONObject; key: string): Integer;
var
  value: TObject;
begin
        value := TJava.Box(anyType.get(key));
        if (value) = (nil) then begin
            raise SysUtils.Exception.Create(Self.ERROR_MISSING_KEY_PREFIX + key);
        end;
        Exit(Self.toInt(value, key));
end;
    

function TSVGAsJSONSimpleLoader.readInt(anyType: TJSONObject; key: string; defaultValue: Integer): Integer;
var
  value: TObject;
begin
        try
            if anyType.has(key) then begin
                value := TJava.Box(anyType.get(key));
                Exit(Self.toInt(value, key));
            end;
        except
            on e: SysUtils.Exception do begin
            WriteLn(e.Message);
            end;
        end;
        Exit(defaultValue);
end;
    

function TSVGAsJSONSimpleLoader.toInt(value: TObject; key: string): Integer;
begin
        if (TJava.ToObject(value) is TNumber) then begin
            Exit(Integer(Trunc(Round((TNumber(TJava.ToObject(value))).doubleValue()))));
        end;
        if (TJava.ToObject(value) is string) then begin
            Exit(Integer(Trunc(Round(StrToFloat(TJava.UnboxString(TJava.ToObject(value)))))));
        end;
        raise SysUtils.Exception.Create(Self.ERROR_INVALID_NUMBER_PREFIX + key);
end;
    

function TSVGAsJSONSimpleLoader.asObject(value: TObject; name: string): TJSONObject;
begin
        if (TJava.ToObject(value) is TJSONObject) then begin
            Exit(TJSONObject(TJava.ToObject(value)));
        end;
        raise SysUtils.Exception.Create(Self.ERROR_EXPECTED_OBJECT_PREFIX + name);
end;
    

function TSVGAsJSONSimpleLoader.toPoints(pointVector: TBasicArrayList): TArray<TArray<Integer>>;
var
  points: TArray<TArray<Integer>>;
  point: TArray<Integer>;
  index: Integer;
begin
        if (pointVector.size()) = (0) then begin
            Exit(Self.EMPTY_POINTS);
        end;
        points := TJava.NewArray2<Integer>(pointVector.size(), 2);
        for index := 0 to pointVector.size() - 1 do begin
            point := TJava.UnboxArray<Integer>(TJava.ToObject(pointVector.get(index)));
            points[index] := point;
        end;
        Exit(points);
end;
    

// throws Exception
class procedure TSVGAsJSONSimpleLoader.main(args: TArray<string>);
var
  svgAsJson: string;
  points: TArray<TArray<Integer>>;
  stringBuilder: TStringMaker;
  size: Integer;
  size2: Integer;
  index2: Integer;
  index: Integer;
begin
        svgAsJson := '{"svg": {'#10'' + '    "rect": {'#10'' + '        "width": 20,'#10'' + '        "fill": "#008c00",'#10'' + '        "height": 20'#10'' + '    },'#10'' + '    "xmlns": "http://www.w3.org/2000/svg",'#10'' + '    "width": 20,'#10'' + '    "height": 20'#10'' + '}}'#10'';
        points := TSVGAsJSONSimpleLoader.getInstance().load(svgAsJson);
        stringBuilder := TStringMaker.Create();
        size := System.Length(points);
        for index := 0 to size - 1 do begin
            size2 := System.Length(points[index]);
            for index2 := 0 to size2 - 1 do begin
                stringBuilder.appendint(Integer(Trunc(points[index][index2])));
                stringBuilder.append(TCommonSeps.getInstance().COMMA);
            end;
        end;
        WriteLn(stringBuilder.toString());
end;

initialization
  {AB:INITIALIZATION}
  TSVGAsJSONSimpleLoader.instance := TSVGAsJSONSimpleLoader.Create();
  {AB:END}

end.

