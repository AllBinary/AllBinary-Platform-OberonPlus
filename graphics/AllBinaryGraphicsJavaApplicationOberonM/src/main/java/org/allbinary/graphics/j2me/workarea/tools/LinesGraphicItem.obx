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
// package org.allbinary.graphics.j2me.workarea.tools
unit LinesGraphicItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, GameInputStrings, GPoint, CanvasDom, IntegerDimension, LogUtil, CommonStrings, Node, NodeList, Color, Points, GraphicItemInterface, Graphics, MouseEvent, KeyEvent;

type
  {AB:TYPES}
  TLinesGraphicItem = class(TInterfacedObject, IGraphicItemInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    gameInputStrings: TGameInputStrings;
    treeNode: TDefaultMutableTreeNode;
    pointTreeNodeVector: TBasicArrayList;
    currentMousePoint: TGPoint;
    fulcrumPoint: TGPoint;
    active: Boolean;
    theta: Double;
    color: TColor;
    points: TPoints;
    class var RECT: string;
    class var ARC: string;
    class var STRING_: string;
    class var CHAR_: string;
    class var IMAGE: string;
    class var item: Integer;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(linesNode: TNode); overload;
        procedure init; virtual;
        procedure translate(x: Integer; y: Integer); virtual;
        procedure setRotate(theta: Double); virtual;
        procedure addRotate(theta: Double); virtual;
        procedure setAngle(angle: Double); virtual;
        procedure addAngle(angle: Double); virtual;
        function getTreeNode: TMutableTreeNode; virtual;
        function getName: string; virtual;
        class function getStaticName: string; static;
        procedure addPoint(pointNodes: TNodeList); overload;
        procedure addPoint(point: TGPoint); overload; virtual;
        function removePoint: TGPoint; virtual;
        function isActive: Boolean; virtual;
        procedure deactivate; virtual;
        procedure activate; virtual;
        procedure duplicatePoints(list: TBasicArrayList); virtual;
        function duplicate: IGraphicItemInterface; virtual;
        function getAngle: Double; virtual;
        procedure setFulcrumPoint(point: TGPoint); virtual;
        procedure paint(g: TGraphics; canvasAngle: Double; dimension: TIntegerDimension; x: Integer; y: Integer); virtual;
        function toDom(canvasDom_: TCanvasDom): TNode; virtual;
        function isValid: Boolean; virtual;
        function getPointsInterface: TPoints; virtual;
        procedure setPointsInterface(points_: TPoints); virtual;
        function getColor: TColor; virtual;
        procedure setColor(color_: TColor); virtual;
        procedure mouseClicked(mouseEvent_: TMouseEvent; x: Integer; y: Integer); virtual;
        procedure mouseEntered(mouseEvent_: TMouseEvent); virtual;
        procedure mouseExited(mouseEvent_: TMouseEvent); virtual;
        procedure mousePressed(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer); virtual;
        procedure mouseReleased(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer); virtual;
        procedure mouseDragged(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer); virtual;
        procedure mouseMoved(mouseEvent_: TMouseEvent; x: Integer; y: Integer); virtual;
        procedure keyPressed(keyEvent_: TKeyEvent); virtual;
        procedure keyReleased(keyEvent_: TKeyEvent); virtual;
        procedure keyTyped(keyEvent_: TKeyEvent); virtual;
  end;

implementation
uses
  PointsDomUtil, Graphics2D, BasicStroke, PointsUtil, BasicArrayListD, DomHelper, PointFactory, BasicColorFactory, StatusFactory, BasicGraphicsPipeline, StdUtil, PositionStrings;


{AB:CODE}

procedure TLinesGraphicItem.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.gameInputStrings := TGameInputStrings.getInstance();
  
  
  
  
  Self.active := False;
  Self.theta := 0.0;
  Self.color := TColor.Create(TBasicColorFactory.getInstance().WHITE.intValue());
  
end;

function TLinesGraphicItem.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLinesGraphicItem.Create;
begin
    inherited Create;
    InitFields;
        Self.points := TPoints.Create();
        try
            Self.init();
            Self.active := True;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;
    

constructor TLinesGraphicItem.Create(linesNode: TNode);
var
  lineNodes: TBasicArrayList;
  numberOfLines: Integer;
  lineNode: TNode;
  pointNodes: TBasicArrayList;
  pointOneNode: TNode;
  pointTwoNode: TNode;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.points := TPoints.Create();
        Self.init();
        Self.active := False;
        lineNodes := TDomHelper.getInstance().getWithoutTextNodes(linesNode.getChildNodes());
        numberOfLines := lineNodes.size();
        for index := 0 to numberOfLines - 1 do begin
            lineNode := TNode(TJava.ToObject(lineNodes.get(index)));
            pointNodes := TDomHelper.getInstance().getWithoutTextNodes(lineNode.getChildNodes());
            pointOneNode := TDomHelper.getInstance().searchNodeList(TPointsDomUtil.getInstance().POINTONE, pointNodes);
            Self.addPoint(pointOneNode.getChildNodes());
            if (index) = ((numberOfLines) - (1)) then begin
                pointTwoNode := TDomHelper.getInstance().searchNodeList(TPointsDomUtil.getInstance().POINTTWO, pointNodes);
                Self.addPoint(pointTwoNode.getChildNodes());
            end;
        end;
        if (numberOfLines) = (0) then begin
            raise SysUtils.Exception.Create('Lines node does not contain a line');
        end;
end;
    

// throws Exception
procedure TLinesGraphicItem.init;
begin
        Self.treeNode := TDefaultMutableTreeNode.Create((TPointsDomUtil.getInstance().LINES) + (TLinesGraphicItem.item));
        Inc(TLinesGraphicItem.item);
        Self.points.init();
        Self.pointTreeNodeVector := TBasicArrayListD.Create();
        Self.fulcrumPoint := TPointFactory.getInstance().createXY(0, 0);
end;
    

// throws Exception
procedure TLinesGraphicItem.translate(x: Integer; y: Integer);
var
  basicGraphicsPipeline_: TBasicGraphicsPipeline;
begin
        TStatusFactory.getInstance().setStatus('Translating: ' + TJava.ToString(Self.points.getPoints()));
        basicGraphicsPipeline_ := TBasicGraphicsPipeline.Create(Self.points.getPoints());
        basicGraphicsPipeline_.translate(x, y);
        Self.points := TPoints.Create();
        Self.points.addPoints(basicGraphicsPipeline_.getMatrix());
end;
    

procedure TLinesGraphicItem.setRotate(theta: Double);
begin
        while (theta) > ((2) * (TMath.PI)) do begin
            theta := (theta) - ((2) * (TMath.PI));
        end;
        while (theta) < (0.0) do begin
            theta := (theta) + ((2) * (TMath.PI));
        end;
        Self.theta := theta;
end;
    

procedure TLinesGraphicItem.addRotate(theta: Double);
begin
        Self.setRotate((Self.theta) + (theta));
end;
    

procedure TLinesGraphicItem.setAngle(angle: Double);
begin
        Self.setRotate(DegToRad(angle));
end;
    

procedure TLinesGraphicItem.addAngle(angle: Double);
begin
        Self.setRotate((Self.theta) + (DegToRad(angle)));
end;
    

function TLinesGraphicItem.getTreeNode: TMutableTreeNode;
begin
        Exit(TMutableTreeNode(TJava.ToObject(Self.treeNode)));
end;
    

function TLinesGraphicItem.getName: string;
begin
        Exit(TLinesGraphicItem.NAME);
end;
    

class function TLinesGraphicItem.getStaticName: string;
begin
        Exit(TLinesGraphicItem.NAME);
end;
    

// throws Exception
procedure TLinesGraphicItem.addPoint(pointNodes: TNodeList);
var
  list: TBasicArrayList;
  xNode: TNode;
  xTextNode: TNode;
  xInteger: Integer;
  yNode: TNode;
  yTextNode: TNode;
  yInteger: Integer;
  point: TGPoint;
begin
    TJava.MonitorEnter(Self);
    try
        list := TDomHelper.getInstance().getWithoutTextNodes(pointNodes);
        xNode := TDomHelper.getInstance().searchNodeList(TPositionStrings.getInstance().X, list);
        xTextNode := xNode.getFirstChild();
        xInteger := xTextNode.getNodeValue();
        yNode := TDomHelper.getInstance().searchNodeList(TPositionStrings.getInstance().Y, list);
        yTextNode := yNode.getFirstChild();
        yInteger := yTextNode.getNodeValue();
        point := TPointFactory.getInstance().createXY((xInteger), (yInteger));
        Self.addPoint(point);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TLinesGraphicItem.addPoint(point: TGPoint);
begin
    TJava.MonitorEnter(Self);
    try
        Self.points.getPoints().add(point);
        Self.logUtil.putF(point.toString(), TJava.Box(Self), 'addPoint');
        Self.pointTreeNodeVector.add(TJava.Box(TDefaultMutableTreeNode.Create(point.toString())));
        Self.treeNode.add(TDefaultMutableTreeNode(TJava.ToObject(Self.pointTreeNodeVector.get((Self.pointTreeNodeVector.size()) - (1)))));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TLinesGraphicItem.removePoint: TGPoint;
var
  point: TGPoint;
  lastPoint: Integer;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        point := nil;
        if (Self.points.getSize()) > (0) then begin
            lastPoint := (Self.points.getSize()) - (1);
            point := TGPoint(TJava.ToObject(Self.points.getPoints().removeAt(lastPoint)));
            index := (Self.pointTreeNodeVector.size()) - (1);
            if (index) > (0) then begin
                Self.treeNode.remove(TDefaultMutableTreeNode(TJava.ToObject(Self.pointTreeNodeVector.get(index))));
                Self.pointTreeNodeVector.remove(index);
            end;
        end;
        Exit(point);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TLinesGraphicItem.isActive: Boolean;
begin
        Exit(Self.active);
end;
    

procedure TLinesGraphicItem.deactivate;
begin
        Self.active := False;
end;
    

procedure TLinesGraphicItem.activate;
begin
        Self.active := True;
end;
    

// throws Exception
procedure TLinesGraphicItem.duplicatePoints(list: TBasicArrayList);
var
  size: Integer;
  point: TGPoint;
  index: Integer;
begin
        size := list.size();
        for index := 0 to size - 1 do begin
            point := TGPoint(TJava.ToObject(list.get(index)));
            if (point) <> (nil) then begin
                Self.points.getPoints().add(TPointFactory.getInstance().createXY(point.getX(), point.getY()));
                Self.pointTreeNodeVector.add(TJava.Box(TDefaultMutableTreeNode.Create(point.toString())));
                Self.treeNode.add(TDefaultMutableTreeNode(TJava.ToObject(Self.pointTreeNodeVector.get((Self.pointTreeNodeVector.size()) - (1)))));
            end;
        end;
end;
    

// throws Exception
function TLinesGraphicItem.duplicate: IGraphicItemInterface;
var
  linesGraphicItem_: TLinesGraphicItem;
begin
        linesGraphicItem_ := TLinesGraphicItem.Create();
        linesGraphicItem_.duplicatePoints(Self.points.getPoints());
        linesGraphicItem_.deactivate();
        Exit(linesGraphicItem_);
end;
    

function TLinesGraphicItem.getAngle: Double;
begin
        Exit(RadToDeg(Self.theta));
end;
    

procedure TLinesGraphicItem.setFulcrumPoint(point: TGPoint);
begin
        Self.fulcrumPoint := point;
end;
    

procedure TLinesGraphicItem.paint(g: TGraphics; canvasAngle: Double; dimension: TIntegerDimension; x: Integer; y: Integer);
var
  graphics_: TGraphics2D;
  tempPointVector: TBasicArrayList;
  size: Integer;
  firstPoint: TGPoint;
  secondPoint: TGPoint;
  index: Integer;
begin
        try
            graphics_ := TGraphics2D(TJava.ToObject(g));
            graphics_.setColor(Self.getColor());
            graphics_.setStroke(TBasicStroke.Create(x));
            if (Self.isActive()) and ((Self.currentMousePoint) <> (nil)) then begin
                Self.points.getPoints().add(Self.currentMousePoint);
            end;
            tempPointVector := TPointsUtil.getInstance().doTransforms(Self.points.getPoints(), canvasAngle, TPointFactory.getInstance().createXY(dimension.getWidth(), dimension.getHeight()));
            if (Self.isActive()) and ((Self.currentMousePoint) <> (nil)) then begin
                Self.currentMousePoint := TGPoint(TJava.ToObject(Self.points.getPoints().removeAt((Self.points.getSize()) - (1))));
            end;
            size := tempPointVector.size();
            firstPoint := nil;
            if (size) > (0) then begin
                firstPoint := TGPoint(TJava.ToObject(tempPointVector.get(0)));
            end;
            for index := 1 to size - 1 do begin
                secondPoint := TGPoint(TJava.ToObject(tempPointVector.get(index)));
                graphics_.drawLine((((firstPoint.getX()) * (x))) - (((x) div (4))), (((firstPoint.getY()) * (y))) - (((y) div (4))), (((secondPoint.getX()) * (x))) - (((x) div (4))), (((secondPoint.getY()) * (y))) - (((y) div (4))));
                firstPoint := secondPoint;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'mouseMoved', TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
function TLinesGraphicItem.toDom(canvasDom_: TCanvasDom): TNode;
begin
        Exit(TPointsDomUtil.getInstance().toDom(canvasDom_, Self.points.getPoints()));
end;
    

function TLinesGraphicItem.isValid: Boolean;
begin
        Exit(Self.points.isValid());
end;
    

function TLinesGraphicItem.getPointsInterface: TPoints;
begin
        Exit(Self.points);
end;
    

procedure TLinesGraphicItem.setPointsInterface(points_: TPoints);
begin
        Self.points := points_;
end;
    

function TLinesGraphicItem.getColor: TColor;
begin
        Exit(Self.color);
end;
    

procedure TLinesGraphicItem.setColor(color_: TColor);
begin
        Self.color := color_;
end;
    

procedure TLinesGraphicItem.mouseClicked(mouseEvent_: TMouseEvent; x: Integer; y: Integer);
var
  mousePoint: TGPoint;
  point: TGPoint;
begin
        try
            mousePoint := TPointFactory.getInstance().createXY(mouseEvent_.getPoint().x, mouseEvent_.getPoint().y);
            if (((mouseEvent_.getModifiers()) and (mouseEvent_.BUTTON1_MASK))) = (mouseEvent_.BUTTON1_MASK) then begin
                point := TPointFactory.getInstance().createXY(TJava.Divide(mousePoint.getX(), x), TJava.Divide(mousePoint.getY(), y));
                TStatusFactory.getInstance().setStatus('Line Point Added: ' + point.toString());
                Self.addPoint(point);
            end else if (((mouseEvent_.getModifiers()) and (mouseEvent_.BUTTON3_MASK))) = (mouseEvent_.BUTTON3_MASK) then begin
                TStatusFactory.getInstance().setStatus('Line Point Removed');
                Self.removePoint();
            end;
            Self.currentMousePoint := mousePoint;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'mouseMoved', TJava.Box(e));
            end;
        end;
end;
    

procedure TLinesGraphicItem.mouseEntered(mouseEvent_: TMouseEvent);
begin
end;
    

procedure TLinesGraphicItem.mouseExited(mouseEvent_: TMouseEvent);
begin
end;
    

procedure TLinesGraphicItem.mousePressed(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
begin
end;
    

procedure TLinesGraphicItem.mouseReleased(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
begin
end;
    

procedure TLinesGraphicItem.mouseDragged(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
begin
end;
    

procedure TLinesGraphicItem.mouseMoved(mouseEvent_: TMouseEvent; x: Integer; y: Integer);
var
  mousePoint: TGPoint;
  point: TGPoint;
begin
        try
            mousePoint := TPointFactory.getInstance().createXY(mouseEvent_.getPoint().x, mouseEvent_.getPoint().y);
            point := TPointFactory.getInstance().createXY(TJava.Divide(mousePoint.getX(), x), TJava.Divide(mousePoint.getY(), y));
            Self.currentMousePoint := point;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'mouseMoved', TJava.Box(e));
            end;
        end;
end;
    

procedure TLinesGraphicItem.keyPressed(keyEvent_: TKeyEvent);
var
  keyCode: Integer;
begin
        try
            keyCode := keyEvent_.getKeyCode();
            if (keyCode) = (keyEvent_.VK_ESCAPE) then begin
                TStatusFactory.getInstance().setStatus('Deactivated');
                Self.deactivate();
            end else if (keyCode) = (keyEvent_.VK_UP) then begin
                Self.translate(0, -1);
            end else if (keyCode) = (keyEvent_.VK_DOWN) then begin
                Self.translate(0, 1);
            end else if (keyCode) = (keyEvent_.VK_LEFT) then begin
                Self.translate(-1, 0);
            end else if (keyCode) = (keyEvent_.VK_RIGHT) then begin
                Self.translate(1, 0);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.gameInputStrings.KEY_PRESSED, TJava.Box(e));
            end;
        end;
end;
    

procedure TLinesGraphicItem.keyReleased(keyEvent_: TKeyEvent);
begin
end;
    

procedure TLinesGraphicItem.keyTyped(keyEvent_: TKeyEvent);
begin
end;

initialization
  {AB:INITIALIZATION}
  TLinesGraphicItem.RECT := 'rect';
  TLinesGraphicItem.ARC := 'arc';
  TLinesGraphicItem.STRING_ := 'string';
  TLinesGraphicItem.CHAR_ := 'char';
  TLinesGraphicItem.IMAGE := 'image';
  TLinesGraphicItem.item := 0;
  TLinesGraphicItem.NAME := 'Line Tool';
  {AB:END}

end.

