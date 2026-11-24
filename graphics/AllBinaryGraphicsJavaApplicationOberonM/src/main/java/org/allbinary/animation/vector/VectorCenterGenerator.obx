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
// package org.allbinary.animation.vector
unit VectorCenterGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, BasicArrayList;

type
  {AB:TYPES}
  TVectorCenterGenerator = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    minX: Integer;
    minY: Integer;
    maxX: Integer;
    maxY: Integer;
    dx: Integer;
    dy: Integer;
    width: Integer;
    height: Integer;
    procedure InitFields;
        constructor Create;
        procedure calculate(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        procedure transform(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        procedure getInstance(pointVector: TBasicArrayList);
        class function translate(list: TBasicArrayList; x: Integer; y: Integer): TBasicArrayList; static;
        function getWidth: Integer; virtual;
        procedure setWidth(width: Integer); virtual;
        function getHeight: Integer; virtual;
        procedure setHeight(height: Integer); virtual;
  end;

implementation
uses
  GPoint, GraphicItemInterface, LinesGraphicItem, Points, BasicGraphicsPipeline, StringMaker, CommonLabels;


{AB:CODE}

procedure TVectorCenterGenerator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.minX := High(Integer);
  Self.minY := High(Integer);
  Self.maxX := Low(Integer);
  Self.maxY := Low(Integer);
  Self.dx := 0;
  Self.dy := 0;
  
  
end;
    

constructor TVectorCenterGenerator.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TVectorCenterGenerator.calculate(hashMap_: TJavaHashMap<TObject, TObject>);
var
  graphicItemArray: TArray<TObject>;
  size: Integer;
  item: IGraphicItemInterface;
  index: Integer;
  max: Integer;
  middle: Integer;
  commonLabels_: TCommonLabels;
  s: string;
  currentMiddleX: Integer;
  currentMiddleY: Integer;
begin
        graphicItemArray := hashMap_.keySet().toArray();
        size := System.Length(graphicItemArray);
        for index := 0 to size - 1 do begin
            item := (TJava.ToObject(hashMap_.get(TJava.Box(graphicItemArray[index]))) as IGraphicItemInterface);
            if TJava.Equals(item.getName(), TLinesGraphicItem.getStaticName()) then begin
                Self.getInstance(item.getPointsInterface().getPoints());
            end;
        end;
        Self.logUtil.putF('minX: ' + IntToStr(Self.minX) + ' minY: ' + IntToStr(Self.minY) + ' maxX: ' + IntToStr(Self.maxX) + ' maxY: ' + IntToStr(Self.maxY), TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
        Self.setWidth((Self.maxX) - (Self.minX));
        Self.setHeight((Self.maxY) - (Self.minY));
        max := Self.getWidth();
        if (Self.getHeight()) > (max) then begin
            max := Self.getHeight();
        end;
        middle := (max) div (2);
        commonLabels_ := TCommonLabels.getInstance();
        s := TStringMaker.Create().append(commonLabels_.WIDTH_LABEL).appendint(Self.getWidth()).append(commonLabels_.HEIGHT_LABEL).appendint(Self.getHeight()).append(' max: ').appendint(max).append(' middle: ').appendint(middle).toString();
        Self.logUtil.putF(s, TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
        currentMiddleX := (Self.minX) + ((Self.getWidth()) div (2));
        currentMiddleY := (Self.minY) + ((Self.getHeight()) div (2));
        Self.dx := (middle) - (currentMiddleX);
        Self.dy := (middle) - (currentMiddleY);
end;
    

// throws Exception
procedure TVectorCenterGenerator.transform(hashMap_: TJavaHashMap<TObject, TObject>);
var
  graphicItemArray: TArray<TObject>;
  size: Integer;
  item: IGraphicItemInterface;
  list: TBasicArrayList;
  newPoints: TPoints;
  index: Integer;
begin
        Self.calculate(hashMap_);
        Self.logUtil.putF(TStringMaker.Create().append(' dx: ').appendint(Self.dx).append(' dy: ').appendint(Self.dy).toString(), TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
        graphicItemArray := hashMap_.keySet().toArray();
        size := System.Length(graphicItemArray);
        for index := 0 to size - 1 do begin
            item := (TJava.ToObject(hashMap_.get(TJava.Box(graphicItemArray[index]))) as IGraphicItemInterface);
            list := TVectorCenterGenerator.translate(item.getPointsInterface().getPoints(), Self.dx, Self.dy);
            newPoints := TPoints.Create();
            newPoints.addPoints(list);
            item.setPointsInterface(newPoints);
        end;
end;
    

// throws Exception
procedure TVectorCenterGenerator.getInstance(pointVector: TBasicArrayList);
var
  size: Integer;
  point: TGPoint;
  index: Integer;
begin
        try
            size := pointVector.size();
            for index := 0 to size - 1 do begin
                point := TGPoint(TJava.ToObject(pointVector.get(index)));
                if (point.getX()) < (Self.minX) then begin
                    Self.minX := point.getX();
                end;
                if (point.getX()) > (Self.maxX) then begin
                    Self.maxX := point.getX();
                end;
                if (point.getY()) < (Self.minY) then begin
                    Self.minY := point.getY();
                end;
                if (point.getY()) > (Self.maxY) then begin
                    Self.maxY := point.getY();
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.GET_INSTANCE, TJava.Box(e));
            raise e;
            end;
        end;
end;
    

// throws Exception
class function TVectorCenterGenerator.translate(list: TBasicArrayList; x: Integer; y: Integer): TBasicArrayList;
var
  graphicsPipe: TBasicGraphicsPipeline;
begin
        graphicsPipe := TBasicGraphicsPipeline.Create(list);
        graphicsPipe.createMatrix();
        graphicsPipe.translate(x, y);
        Exit(graphicsPipe.getMatrix());
end;
    

function TVectorCenterGenerator.getWidth: Integer;
begin
        Exit(Self.width);
end;
    

procedure TVectorCenterGenerator.setWidth(width: Integer);
begin
        Self.width := width;
end;
    

function TVectorCenterGenerator.getHeight: Integer;
begin
        Exit(Self.height);
end;
    

procedure TVectorCenterGenerator.setHeight(height: Integer);
begin
        Self.height := height;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

