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
// package org.allbinary.media.graphics.geography.map
unit GeographicMapCellHistory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicArrayList, LogUtil, BooleanFactory, Animation, AllBinaryTiledLayer, GPoint, MyFontProcessor, UpdateMyFontInterface, BasicDecimal, GeographicMapCellPosition, BasicGeographicMap;

type
  {AB:TYPES}
  TGeographicMapCellHistory = class(TInterfacedObject, IUpdateMyFontInterface)
  public
    logUtil: TLogUtil;
    booleanFactory: TBooleanFactory;
    list: TBasicArrayList;
    visitedList: TBasicArrayList;
    MISSED_INFO: string;
    animation: TAnimation;
    myFontProcessor: TMyFontProcessor;
    totalVisited: Integer;
    halfWidth: Integer;
    fontHeight: Integer;
    RED: Integer;
    class var NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY: TArray<TGeographicMapCellHistory>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        function getTotalVisited: Integer; virtual;
        function getTotalNotVisited: Integer; virtual;
        function getSize: Integer; virtual;
        procedure trackAll(list: TBasicArrayList); virtual;
        procedure track(geographicMapCellPosition_: TGeographicMapCellPosition); virtual;
        function getTracked: TBasicArrayList; virtual;
        function getVisited: TBasicArrayList; virtual;
        function getAfterIfNotLast(geographicMapCellPosition_: TGeographicMapCellPosition): TGeographicMapCellPosition; virtual;
        function getFirstUnvisited: TGeographicMapCellPosition; virtual;
        function getFirstUnvisitedIndex: Integer; virtual;
        function getInPathButNotTracked(pathList: TBasicArrayList): TBasicArrayList; virtual;
        function isVisited(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean; virtual;
        function visit(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean; virtual;
        function isAllVisited: Boolean; virtual;
        function isAllVisited2: Boolean; virtual;
        function isPortionVisited(basicDecimal_: TBasicDecimal): Boolean; virtual;
        procedure reset; virtual;
        procedure paintNotVisitedRelativeToPoint(graphics_: TGraphics; tiledLayer: TAllBinaryTiledLayer; point: TGPoint);
        procedure paintNotVisited(graphics_: TGraphics; geographicMapInterface: TBasicGeographicMap); virtual;
        procedure init; virtual;
  end;

implementation
uses
  Font, BasicArrayListD, CommonStrings, AnimationBehavior, TextAnimation, BasicColorFactory, UpdateMyFontProcessor;


{AB:CODE}

procedure TGeographicMapCellHistory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.booleanFactory := TBooleanFactory.getInstance();
  
  
  Self.MISSED_INFO := 'Missed';
  Self.animation := TTextAnimation.Create(Self.MISSED_INFO, TAnimationBehavior.getInstance());
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  
  Self.halfWidth := 0;
  Self.fontHeight := 0;
  Self.RED := TBasicColorFactory.getInstance().RED.intValue();
end;

function TGeographicMapCellHistory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGeographicMapCellHistory.Create;
begin
    inherited Create;
    InitFields;
        Self.list := TBasicArrayListD.Create();
        Self.visitedList := TBasicArrayListD.Create();
        Self.init();
end;
    

procedure TGeographicMapCellHistory.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.fontHeight := font_.getHeight();
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

function TGeographicMapCellHistory.getTotalVisited: Integer;
begin
        Exit(Self.totalVisited);
end;
    

function TGeographicMapCellHistory.getTotalNotVisited: Integer;
begin
        Exit((Self.getSize()) - (Self.totalVisited));
end;
    

function TGeographicMapCellHistory.getSize: Integer;
begin
        Exit(Self.list.size());
end;
    

procedure TGeographicMapCellHistory.trackAll(list: TBasicArrayList);
var
  size: Integer;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  index: Integer;
begin
        size := list.size();
        Self.list.ensureCapacity(size);
        Self.visitedList.ensureCapacity(size);
        
        for index := 0 to size - 1 do begin
            geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(list.get(index)));
            Self.track(geographicMapCellPosition_);
        end;
end;
    

procedure TGeographicMapCellHistory.track(geographicMapCellPosition_: TGeographicMapCellPosition);
begin
        if not (Self.list.contains(TJava.Box(geographicMapCellPosition_))) then begin
            Self.list.add(TJava.Box(geographicMapCellPosition_));
            Self.visitedList.add(TJava.Box(Self.booleanFactory.FALSE_));
        end;
end;
    

function TGeographicMapCellHistory.getTracked: TBasicArrayList;
begin
        Exit(Self.list);
end;
    

function TGeographicMapCellHistory.getVisited: TBasicArrayList;
begin
        Exit(Self.visitedList);
end;
    

function TGeographicMapCellHistory.getAfterIfNotLast(geographicMapCellPosition_: TGeographicMapCellPosition): TGeographicMapCellPosition;
var
  localList: TBasicArrayList;
  index: Integer;
begin
        localList := Self.list;
        index := localList.indexOf(TJava.Box(geographicMapCellPosition_));
        if (localList.size()) > ((index) + (1)) then begin
            Exit(TGeographicMapCellPosition(TJava.ToObject(localList.get((index) + (1)))));
        end;
        Exit(geographicMapCellPosition_);
end;
    

function TGeographicMapCellHistory.getFirstUnvisited: TGeographicMapCellPosition;
var
  localList: TBasicArrayList;
  localVisitedList: TBasicArrayList;
  size: Integer;
  value: Boolean;
  index: Integer;
begin
        localList := Self.list;
        localVisitedList := Self.visitedList;
        size := localVisitedList.size();
        
        for index := 0 to size - 1 do begin
            value := Boolean(Self.visitedList.get(index));
            if (value) = (Self.booleanFactory.FALSE_) then begin
                Exit(TGeographicMapCellPosition(TJava.ToObject(localList.get(index))));
            end;
        end;
        Exit(TGeographicMapCellPosition(TJava.ToObject(localList.get(0))));
end;
    

function TGeographicMapCellHistory.getFirstUnvisitedIndex: Integer;
var
  localVisitedList: TBasicArrayList;
  size: Integer;
  value: Boolean;
  index: Integer;
begin
        localVisitedList := Self.visitedList;
        size := localVisitedList.size();
        
        for index := 0 to size - 1 do begin
            value := Boolean(Self.visitedList.get(index));
            if (value) = (Self.booleanFactory.FALSE_) then begin
                Exit(index);
            end;
        end;
        Exit(0);
end;
    

function TGeographicMapCellHistory.getInPathButNotTracked(pathList: TBasicArrayList): TBasicArrayList;
var
  inPathButNotTrackedList: TBasicArrayList;
  localList: TBasicArrayList;
  size: Integer;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  index: Integer;
begin
        inPathButNotTrackedList := TBasicArrayListD.Create();
        localList := Self.list;
        size := pathList.size();
        
        for index := 0 to size - 1 do begin
            geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(pathList.get(index)));
            if not (localList.contains(TJava.Box(geographicMapCellPosition_))) then begin
                inPathButNotTrackedList.add(TJava.Box(geographicMapCellPosition_));
            end;
        end;
        Exit(inPathButNotTrackedList);
end;
    

function TGeographicMapCellHistory.isVisited(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean;
var
  index: Integer;
  value: Boolean;
begin
        index := Self.list.indexOf(TJava.Box(geographicMapCellPosition_));
        if (index) <> (-1) then begin
            value := Boolean(Self.visitedList.get(index));
            if (value) = (Self.booleanFactory.TRUE_) then begin
                Exit(True);
            end;
        end else begin
        end;
        Exit(False);
end;
    

function TGeographicMapCellHistory.visit(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean;
var
  index: Integer;
  value: Boolean;
  TRUE_: Boolean;
begin
        index := Self.list.indexOf(TJava.Box(geographicMapCellPosition_));
        
        if (index) <> (-1) then begin
            value := Boolean(Self.visitedList.get(index));
            TRUE_ := Self.booleanFactory.TRUE_;
            if (value) <> (TRUE_) then begin
                Self.visitedList.set_(index, TJava.Box(TRUE_));
                Inc(Self.totalVisited);
                Exit(True);
            end;
        end else begin
        end;
        Exit(False);
end;
    

// throws Exception
function TGeographicMapCellHistory.isAllVisited: Boolean;
begin
        if (Self.totalVisited) = ((Self.getSize()) - (1)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
function TGeographicMapCellHistory.isAllVisited2: Boolean;
begin
        if (Self.totalVisited) = (Self.getSize()) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
function TGeographicMapCellHistory.isPortionVisited(basicDecimal_: TBasicDecimal): Boolean;
var
  size: Integer;
  numberRequired: Integer;
  numberNotVisited: Integer;
begin
        size := Self.getSize();
        numberRequired := (((size) shl (basicDecimal_.getScaledFactor()))) div (Integer(Trunc(basicDecimal_.getUnscaled())));
        numberNotVisited := ((Self.getSize()) - (1)) - (Self.totalVisited);
        if ((size) - (numberNotVisited)) > (numberRequired) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
procedure TGeographicMapCellHistory.reset;
var
  localVisitedList: TBasicArrayList;
  localFalseBoolean: Boolean;
  size: Integer;
  index: Integer;
begin
        localVisitedList := Self.visitedList;
        localFalseBoolean := Self.booleanFactory.FALSE_;
        size := localVisitedList.size();
        for index := (size) - (1) downto 0 do begin
            localVisitedList.set_(index, TJava.Box(localFalseBoolean));
        end;
        Self.totalVisited := 0;
end;
    

procedure TGeographicMapCellHistory.paintNotVisitedRelativeToPoint(graphics_: TGraphics; tiledLayer: TAllBinaryTiledLayer; point: TGPoint);
var
  x: Integer;
  y: Integer;
  height: Integer;
begin
        x := (point.getX()) - (tiledLayer.getXP());
        y := (point.getY()) - (tiledLayer.getYP());
        if (Self.halfWidth) = (0) then begin
            Self.halfWidth := (TJava.SignedRightShift(graphics_.getFont().stringWidth(Self.MISSED_INFO), 1));
        end;
        height := (2) * (Self.fontHeight);
        Self.animation.paintXY(graphics_, (x) + (Self.halfWidth), (y) + ((height)));
end;
    

procedure TGeographicMapCellHistory.paintNotVisited(graphics_: TGraphics; geographicMapInterface: TBasicGeographicMap);
var
  localVisitedList: TBasicArrayList;
  size: Integer;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  isCellVisitedBoolean: Boolean;
  index: Integer;
  commonStrings_: TCommonStrings;
begin
        try
            Self.myFontProcessor.process(graphics_);
            graphics_.setColor(Self.RED);
            localVisitedList := Self.visitedList;
            size := localVisitedList.size();
            
            
            index := size;
            while (TJava.PreDec(index)) >= (0) do begin
                geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(Self.list.get(index)));
                isCellVisitedBoolean := Boolean(localVisitedList.get(index));
                if not ((isCellVisitedBoolean)) then begin
                    Self.paintNotVisitedRelativeToPoint(graphics_, geographicMapInterface.getAllBinaryTiledLayer(), geographicMapCellPosition_.getPoint());
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'paintNotVisited', TJava.Box(e));
            end;
        end;
end;
    

procedure TGeographicMapCellHistory.init;
begin
        Self.list.clear();
        Self.visitedList.clear();
        Self.totalVisited := 0;
end;

initialization
  {AB:INITIALIZATION}
  TGeographicMapCellHistory.NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY := nil;
  {AB:END}

end.

