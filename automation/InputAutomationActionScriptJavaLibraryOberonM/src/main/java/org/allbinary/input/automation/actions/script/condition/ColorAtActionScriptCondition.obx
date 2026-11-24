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
// package org.allbinary.input.automation.actions.script.condition
unit ColorAtActionScriptCondition;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ColorRangeInterface, Document, Node, ColorAtActionScriptConditionJPanel, BasicProfileActionScriptCondition, ColorAtActionScriptConditionInterface;

type
  {AB:TYPES}
  TColorAtActionScriptCondition = class(TBasicProfileActionScriptCondition, IColorAtActionScriptConditionInterface)
  public
    logUtil: TLogUtil;
    colorAtActionScriptConditionJPanel: TColorAtActionScriptConditionJPanel;
    point: TPoint;
    colorRangeInterface: IColorRangeInterface;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create; overload;
        procedure init;
        function getPoint: TPoint; virtual;
        procedure setPoint(point_: TPoint); virtual;
        procedure showDialog; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function shouldProcess(frame: Int64): Boolean; virtual;
        procedure log; virtual;
        function getColorRangeInterface: IColorRangeInterface; virtual;
        procedure setColorRangeInterface(colorRangeInterface_: IColorRangeInterface); virtual;
  end;

implementation
uses
  ColorAtActionScriptConditionData, DomNodeHelper, DomSearchHelper, ModDomHelper, ColorCacheFactory, ColorCacheable, CapturedBufferedImagesCacheSingleton, StdUtil, StringMaker, AutomaticCacheInterface, ColorRange, BufferedImageFrameCacheable, CommonSeps, NodeList;


{AB:CODE}

procedure TColorAtActionScriptCondition.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  Self.colorRangeInterface := (TJava.ToObject(TColorRange.Create()) as IColorRangeInterface);
end;

function TColorAtActionScriptCondition.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TColorAtActionScriptCondition.Create(node_: TNode);
var
  actionNode: TNode;
  nodeList_: TNodeList;
  childNode: TNode;
  string_: string;
  locationY: string;
  locationX: string;
  index: Integer;
begin
        inherited Create(TColorAtActionScriptCondition.NAME, node_);
        InitFields;
        Self.point := TPoint.Create(0, 0);
        actionNode := TDomSearchHelper.getNode(TColorAtActionScriptConditionData.NAME, node_.getChildNodes());
        if (actionNode) <> (nil) then begin
            nodeList_ := actionNode.getChildNodes();
            for index := 0 to nodeList_.getLength() - 1 do begin
                childNode := nodeList_.item(index);
                if (childNode.getNodeName().compareTo(TColorAtActionScriptConditionData.LOCATION_X)) = (0) then begin
                    locationX := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.point.x := IntToStr(locationX);
                end else if (childNode.getNodeName().compareTo(TColorAtActionScriptConditionData.LOCATION_Y)) = (0) then begin
                    locationY := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.point.y := IntToStr(locationY);
                end else if (childNode.getNodeName().compareTo(TColorAtActionScriptConditionData.MIN_RED)) = (0) then begin
                    string_ := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.getColorRangeInterface().setMinRed(IntToStr(string_));
                end else if (childNode.getNodeName().compareTo(TColorAtActionScriptConditionData.MAX_RED)) = (0) then begin
                    string_ := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.getColorRangeInterface().setMaxRed(IntToStr(string_));
                end else if (childNode.getNodeName().compareTo(TColorAtActionScriptConditionData.MIN_GREEN)) = (0) then begin
                    string_ := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.getColorRangeInterface().setMinGreen(IntToStr(string_));
                end else if (childNode.getNodeName().compareTo(TColorAtActionScriptConditionData.MAX_GREEN)) = (0) then begin
                    string_ := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.getColorRangeInterface().setMaxGreen(IntToStr(string_));
                end else if (childNode.getNodeName().compareTo(TColorAtActionScriptConditionData.MIN_BLUE)) = (0) then begin
                    string_ := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.getColorRangeInterface().setMinBlue(IntToStr(string_));
                end else if (childNode.getNodeName().compareTo(TColorAtActionScriptConditionData.MAX_BLUE)) = (0) then begin
                    string_ := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.getColorRangeInterface().setMaxBlue(IntToStr(string_));
                end;
            end;
        end else begin
            raise SysUtils.Exception.Create('Color At Action Script Condition Node Null');
        end;
        Self.init();
end;
    

constructor TColorAtActionScriptCondition.Create;
begin
        inherited Create(TColorAtActionScriptCondition.NAME);
        InitFields;
        Self.point := TPoint.Create(0, 0);
        Self.init();
end;
    

procedure TColorAtActionScriptCondition.init;
begin
        Self.colorAtActionScriptConditionJPanel := TColorAtActionScriptConditionJPanel.Create(Self);
end;
    

function TColorAtActionScriptCondition.getPoint: TPoint;
begin
        Exit(Self.point);
end;
    

procedure TColorAtActionScriptCondition.setPoint(point_: TPoint);
begin
        Self.point := point_;
end;
    

procedure TColorAtActionScriptCondition.showDialog;
begin
        Self.colorAtActionScriptConditionJPanel.getColorAtActionJDialog().setVisible(True);
end;
    

function TColorAtActionScriptCondition.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TColorAtActionScriptConditionData.LOCATION_X), TJava.Box(IntToStr(Self.getPoint().x)));
        hashMap_.put(TJava.Box(TColorAtActionScriptConditionData.LOCATION_Y), TJava.Box(IntToStr(Self.getPoint().y)));
        hashMap_.put(TJava.Box(TColorAtActionScriptConditionData.MIN_RED), TJava.Box(IntToStr(Self.getColorRangeInterface().getMinRed())));
        hashMap_.put(TJava.Box(TColorAtActionScriptConditionData.MAX_RED), TJava.Box(IntToStr(Self.getColorRangeInterface().getMaxRed())));
        hashMap_.put(TJava.Box(TColorAtActionScriptConditionData.MIN_GREEN), TJava.Box(IntToStr(Self.getColorRangeInterface().getMinGreen())));
        hashMap_.put(TJava.Box(TColorAtActionScriptConditionData.MAX_GREEN), TJava.Box(IntToStr(Self.getColorRangeInterface().getMaxGreen())));
        hashMap_.put(TJava.Box(TColorAtActionScriptConditionData.MIN_BLUE), TJava.Box(IntToStr(Self.getColorRangeInterface().getMinBlue())));
        hashMap_.put(TJava.Box(TColorAtActionScriptConditionData.MAX_BLUE), TJava.Box(IntToStr(Self.getColorRangeInterface().getMaxBlue())));
        Self.logUtil.putF('HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toHashMap()');
        Exit(hashMap_);
end;
    

// throws Exception
function TColorAtActionScriptCondition.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := inherited toXmlNode(document_);
        node_.appendChild(TModDomHelper.createNodeWithValueNodes(document_, TColorAtActionScriptConditionData.NAME, Self.toHashMap()));
        Exit(node_);
end;
    

// throws Exception
function TColorAtActionScriptCondition.shouldProcess(frame: Int64): Boolean;
var
  capturedBufferedImageCacheable: TBufferedImageFrameCacheable;
  bufferedImage_: TBufferedImage;
  automaticCacheInterface_: IAutomaticCacheInterface;
  colorInteger: Integer;
  colorCacheable_: TColorCacheable;
  color_: TColor;
begin
        capturedBufferedImageCacheable := TBufferedImageFrameCacheable(TJava.ToObject(((TJava.ToObject(TCapturedBufferedImagesCacheSingleton.getInstance()) as IAutomaticCacheInterface)).get(IntToStr(frame))));
        bufferedImage_ := capturedBufferedImageCacheable.getBufferedImage();
        automaticCacheInterface_ := TColorCacheFactory.getInstance();
        colorInteger := IntToStr(bufferedImage_.getRGB(Self.getPoint().x, Self.getPoint().y));
        colorCacheable_ := TColorCacheable(TJava.ToObject(automaticCacheInterface_.get(colorInteger)));
        color_ := colorCacheable_.getColor();
        if Self.colorRangeInterface.isInRange(color_) then begin
            Exit(inherited shouldProcess(frame));
        end;
        Exit(False);
end;
    

procedure TColorAtActionScriptCondition.log;
var
  message: string;
begin
        message := TStringMaker.Create().append('getPoint(): ').append(Self.getPoint().toString()).append(TCommonSeps.getInstance().NEW_LINE).append(Self.getColorRangeInterface().toString()).toString();
        Self.logUtil.putF(message, TJava.Box(Self), 'log');
end;
    

function TColorAtActionScriptCondition.getColorRangeInterface: IColorRangeInterface;
begin
        Exit(Self.colorRangeInterface);
end;
    

procedure TColorAtActionScriptCondition.setColorRangeInterface(colorRangeInterface_: IColorRangeInterface);
begin
        Self.colorRangeInterface := colorRangeInterface_;
end;

initialization
  {AB:INITIALIZATION}
  TColorAtActionScriptCondition.NAME := 'If Color At';
  {AB:END}

end.

