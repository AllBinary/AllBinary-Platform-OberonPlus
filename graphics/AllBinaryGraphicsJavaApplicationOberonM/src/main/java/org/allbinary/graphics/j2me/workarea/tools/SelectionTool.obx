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
unit SelectionTool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, CanvasDom, CanvasJPanel, IntegerDimension, LogUtil, CommonStrings, Node, Color, Points, Graphics, MouseEvent, KeyEvent, GraphicItemInterface;

type
  {AB:TYPES}
  TSelectionTool = class(TInterfacedObject, IGraphicItemInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    canvasJPanel: TCanvasJPanel;
    active: Boolean;
    controlIdDown: Boolean;
    rectColor: TColor;
    startPoint: TGPoint;
    endPoint: TGPoint;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(canvasJPanel_: TCanvasJPanel);
        procedure setColor(color_: TColor); virtual;
        function getTreeNode: TMutableTreeNode; virtual;
        function getPointsInterface: TPoints; virtual;
        procedure setPointsInterface(points_: TPoints); virtual;
        function isValid: Boolean; virtual;
        function isActive: Boolean; virtual;
        procedure deactivate; virtual;
        procedure activate; virtual;
        procedure setFulcrumPoint(point: TGPoint); virtual;
        procedure translate(x: Integer; y: Integer); virtual;
        procedure setRotate(theta: Double); virtual;
        procedure addRotate(theta: Double); virtual;
        procedure setAngle(angle: Double); virtual;
        procedure addAngle(angle: Double); virtual;
        function getAngle: Double; virtual;
        procedure makeSelection;
        function getXRect: Integer; virtual;
        function getYRect: Integer; virtual;
        procedure paint(g: TGraphics; canvasAngle: Double; dimension: TIntegerDimension; x: Integer; y: Integer); virtual;
        function toDom(canvasDom_: TCanvasDom): TNode; virtual;
        function removePoint: TGPoint; virtual;
        procedure addPoint(point: TGPoint); virtual;
        function getName: string; virtual;
        class function getStaticName: string; static;
        procedure mouseClicked(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer); virtual;
        procedure mouseMoved(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer); virtual;
        procedure mouseEntered(mouseEvent_: TMouseEvent); virtual;
        procedure mouseExited(mouseEvent_: TMouseEvent); virtual;
        procedure mousePressed(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer); virtual;
        procedure mouseReleased(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer); virtual;
        procedure mouseDragged(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer); virtual;
        procedure keyPressed(keyEvent_: TKeyEvent); virtual;
        procedure keyReleased(keyEvent_: TKeyEvent); virtual;
        procedure keyTyped(keyEvent_: TKeyEvent); virtual;
        function duplicate: IGraphicItemInterface; virtual;
  end;

implementation
uses
  LinesGraphicItem, MouseStrings, PointFactory, BasicColorFactory, RectangleCollisionPointUtil;


{AB:CODE}

procedure TSelectionTool.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  Self.active := True;
  
  Self.rectColor := TColor.Create(TBasicColorFactory.getInstance().RED.intValue());
  Self.startPoint := TPointFactory.getInstance().ZERO_ZERO;
  Self.endPoint := Self.startPoint;
end;

function TSelectionTool.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSelectionTool.Create(canvasJPanel_: TCanvasJPanel);
begin
    inherited Create;
    InitFields;
        Self.canvasJPanel := canvasJPanel_;
end;
    

procedure TSelectionTool.setColor(color_: TColor);
begin
end;
    

function TSelectionTool.getTreeNode: TMutableTreeNode;
begin
        Exit(nil);
end;
    

function TSelectionTool.getPointsInterface: TPoints;
begin
        Exit(nil);
end;
    

procedure TSelectionTool.setPointsInterface(points_: TPoints);
begin
end;
    

function TSelectionTool.isValid: Boolean;
begin
        Exit(True);
end;
    

function TSelectionTool.isActive: Boolean;
begin
        Exit(Self.active);
end;
    

procedure TSelectionTool.deactivate;
begin
end;
    

procedure TSelectionTool.activate;
begin
end;
    

procedure TSelectionTool.setFulcrumPoint(point: TGPoint);
begin
end;
    

// throws Exception
procedure TSelectionTool.translate(x: Integer; y: Integer);
begin
end;
    

procedure TSelectionTool.setRotate(theta: Double);
begin
end;
    

procedure TSelectionTool.addRotate(theta: Double);
begin
end;
    

procedure TSelectionTool.setAngle(angle: Double);
begin
end;
    

procedure TSelectionTool.addAngle(angle: Double);
begin
end;
    

function TSelectionTool.getAngle: Double;
begin
        Exit(0.0);
end;
    

procedure TSelectionTool.makeSelection;
var
  xRect: Integer;
  xRect2: Integer;
  yRect: Integer;
  yRect2: Integer;
  hashMap_: TJavaHashMap<TObject, TObject>;
  graphicItemArray: TArray<TObject>;
  size: Integer;
  item: IGraphicItemInterface;
  index: Integer;
begin
        xRect := Self.getXRect();
        xRect2 := (Abs((Self.endPoint.getX()) - (Self.startPoint.getX()))) + (xRect);
        yRect := Self.getYRect();
        yRect2 := (Abs((Self.endPoint.getY()) - (Self.startPoint.getY()))) + (yRect);
        hashMap_ := Self.canvasJPanel.getGraphicItemHashMap();
        graphicItemArray := hashMap_.keySet().toArray();
        size := System.Length(graphicItemArray);
        for index := 0 to size - 1 do begin
            item := (TJava.ToObject(hashMap_.get(TJava.Box(graphicItemArray[index]))) as IGraphicItemInterface);
            if TJava.Equals(item.getName(), TLinesGraphicItem.getStaticName()) then begin
                if TRectangleCollisionPointUtil.allPointsInsideCell(xRect, yRect, xRect2, yRect2, item.getPointsInterface().getPoints(), Self.canvasJPanel.getXPixelsPerWorkAreaPixel(), Self.canvasJPanel.getYPixelsPerWorkAreaPixel()) then begin
                    item.setColor(TColor.YELLOW);
                    item.activate();
                end else if not (Self.controlIdDown) then begin
                    item.setColor(TColor.WHITE);
                    item.deactivate();
                end;
            end;
        end;
end;
    

function TSelectionTool.getXRect: Integer;
var
  xDiff: Integer;
  xRect: Integer;
begin
        xDiff := (Self.endPoint.getX()) - (Self.startPoint.getX());
        xRect := Self.startPoint.getX();
        if (xDiff) < (0) then begin
            xRect := Self.endPoint.getX();
        end;
        Exit(xRect);
end;
    

function TSelectionTool.getYRect: Integer;
var
  yDiff: Integer;
  yRect: Integer;
begin
        yDiff := (Self.endPoint.getY()) - (Self.startPoint.getY());
        yRect := Self.startPoint.getY();
        if (yDiff) < (0) then begin
            yRect := Self.endPoint.getY();
        end;
        Exit(yRect);
end;
    

procedure TSelectionTool.paint(g: TGraphics; canvasAngle: Double; dimension: TIntegerDimension; x: Integer; y: Integer);
var
  xRect: Integer;
  width: Integer;
  yRect: Integer;
  height: Integer;
begin
        g.setColor(Self.rectColor);
        xRect := Self.getXRect();
        width := Abs((Self.endPoint.getX()) - (Self.startPoint.getX()));
        yRect := Self.getYRect();
        height := Abs((Self.endPoint.getY()) - (Self.startPoint.getY()));
        g.drawRect(xRect, yRect, width, height);
end;
    

// throws Exception
function TSelectionTool.toDom(canvasDom_: TCanvasDom): TNode;
begin
        Exit(nil);
end;
    

function TSelectionTool.removePoint: TGPoint;
begin
        Exit(nil);
end;
    

procedure TSelectionTool.addPoint(point: TGPoint);
begin
end;
    

function TSelectionTool.getName: string;
begin
        Exit(TSelectionTool.NAME);
end;
    

class function TSelectionTool.getStaticName: string;
begin
        Exit(TSelectionTool.NAME);
end;
    

procedure TSelectionTool.mouseClicked(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
begin
end;
    

procedure TSelectionTool.mouseMoved(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
begin
end;
    

procedure TSelectionTool.mouseEntered(mouseEvent_: TMouseEvent);
begin
end;
    

procedure TSelectionTool.mouseExited(mouseEvent_: TMouseEvent);
begin
end;
    

procedure TSelectionTool.mousePressed(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), TMouseStrings.getInstance().MOUSE_PRESSED);
        Self.startPoint := TPointFactory.getInstance().createXY(mouseEvent_.getX(), mouseEvent_.getY());
        Self.endPoint := Self.startPoint;
end;
    

procedure TSelectionTool.mouseReleased(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), TMouseStrings.getInstance().MOUSE_RELEASED);
        Self.endPoint := TPointFactory.getInstance().createXY(mouseEvent_.getX(), mouseEvent_.getY());
        Self.active := False;
        Self.makeSelection();
end;
    

procedure TSelectionTool.mouseDragged(mouseEvent_: TMouseEvent; xPixelsPerCell: Integer; yPixelsPerCell: Integer);
begin
        Self.endPoint := TPointFactory.getInstance().createXY(mouseEvent_.getX(), mouseEvent_.getY());
end;
    

procedure TSelectionTool.keyPressed(keyEvent_: TKeyEvent);
begin
        if (keyEvent_.getKeyCode()) = (keyEvent_.VK_CONTROL) then begin
            Self.controlIdDown := True;
        end;
end;
    

procedure TSelectionTool.keyReleased(keyEvent_: TKeyEvent);
begin
        if (keyEvent_.getKeyCode()) = (keyEvent_.VK_CONTROL) then begin
            Self.controlIdDown := False;
        end;
end;
    

procedure TSelectionTool.keyTyped(keyEvent_: TKeyEvent);
begin
end;
    

// throws Exception
function TSelectionTool.duplicate: IGraphicItemInterface;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  TSelectionTool.NAME := 'Selection Tool';
  {AB:END}

end.

