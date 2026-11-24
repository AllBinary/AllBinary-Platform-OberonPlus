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
// package org.allbinary.graphics.j2me.workarea.canvas
unit CanvasDom;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, GraphicsStrings, Node, IntegerDimension, Grid, CanvasJPanel;

type
  {AB:TYPES}
  TCanvasDom = class(TObject)
  public
    graphicsStrings: TGraphicsStrings;
    graphicItemHashMap: TJavaHashMap<TObject, TObject>;
    angle: Double;
    dimension: TIntegerDimension;
    grid: TGrid;
    class var FRAME: string;
    class var ROTATE: string;
    class var SIZE: string;
    class var X: string;
    class var Y: string;
    class var ZOOM: string;
    class var GRID_: string;
    class var ENABLED: string;
    class var POSSIBLE: string;
    class var GRAPHICITEMS: string;
    class var REAL_SIZE: string;
    procedure InitFields;
        constructor Create(canvasNode: TNode); overload;
        constructor Create(canvasJPanel_: TCanvasJPanel); overload;
        function getAngle: Double; virtual;
        function getGraphicItemHashMap: TJavaHashMap<TObject, TObject>; virtual;
        procedure setAngle(angle: Double); virtual;
        procedure setWorkArea(x: Integer; y: Integer); virtual;
        procedure setGrid(gridX: Integer; gridY: Integer); virtual;
        function getPointNode(point: TGPoint; pointName: string): TNode;
        function toDom: TNode; virtual;
        function getDimension: TIntegerDimension; virtual;
        procedure setDimension(dimension: TIntegerDimension); virtual;
        function getGrid: TGrid; virtual;
  end;

implementation
uses
  Document, VectorCenterGenerator, DomHelper, PointFactory, WorkAreaJPanel, GraphicItemFactory, GraphicItemInterface, LinesGraphicItem, StdUtil, BasicArrayList;


{AB:CODE}

procedure TCanvasDom.InitFields;
begin
  Self.graphicsStrings := TGraphicsStrings.getInstance();
  
  
  
  
end;
    

constructor TCanvasDom.Create(canvasNode: TNode);
var
  name: string;
  angleNode: TNode;
  angleTextNode: TNode;
  angle: Double;
  sizeNode: TNode;
  xNode: TNode;
  xTextNode: TNode;
  x: Integer;
  yNode: TNode;
  yTextNode: TNode;
  y: Integer;
  zoomNode: TNode;
  zoomTextNode: TNode;
  gridNode: TNode;
  gridSizeNode: TNode;
  gridXNode: TNode;
  gridXTextNode: TNode;
  gridX: Integer;
  gridYNode: TNode;
  gridYTextNode: TNode;
  gridY: Integer;
  enableNode: TNode;
  enableTextNode: TNode;
  possibleNode: TNode;
  possibleTextNode: TNode;
  graphicItemNodeList: TBasicArrayList;
begin
    inherited Create;
    InitFields;
        Self.grid := TGrid.Create();
        Self.grid.grid := TPointFactory.getInstance().createXY(0, 0);
        Self.dimension := TIntegerDimension.Create(0, 0);
        name := canvasNode.getNodeName();
        if (CompareStr(name, TCanvasDom.FRAME)) = (0) then begin
            Self.graphicItemHashMap := TStdUtil.getInstance().createHashMap();
            angleNode := TDomHelper.getInstance().searchNodeList(Self.ROTATE, canvasNode.getChildNodes());
            angleTextNode := angleNode.getFirstChild();
            angle := angleTextNode.getNodeValue().doubleValue();
            Self.setAngle(angle);
            sizeNode := TDomHelper.getInstance().searchNodeList(Self.SIZE, canvasNode.getChildNodes());
            xNode := TDomHelper.getInstance().searchNodeList(Self.X, sizeNode.getChildNodes());
            xTextNode := xNode.getFirstChild();
            x := (xTextNode.getNodeValue());
            yNode := TDomHelper.getInstance().searchNodeList(Self.Y, sizeNode.getChildNodes());
            yTextNode := yNode.getFirstChild();
            y := (yTextNode.getNodeValue());
            Self.setWorkArea(x, y);
            zoomNode := TDomHelper.getInstance().searchNodeList(Self.ZOOM, canvasNode.getChildNodes());
            zoomTextNode := zoomNode.getFirstChild();
            Self.grid.setZoom((zoomTextNode.getNodeValue()));
            gridNode := TDomHelper.getInstance().searchNodeList(Self.GRID_, canvasNode.getChildNodes());
            gridSizeNode := TDomHelper.getInstance().searchNodeList(Self.SIZE, gridNode.getChildNodes());
            gridXNode := TDomHelper.getInstance().searchNodeList(Self.X, gridSizeNode.getChildNodes());
            gridXTextNode := gridXNode.getFirstChild();
            gridX := (gridXTextNode.getNodeValue());
            gridYNode := TDomHelper.getInstance().searchNodeList(Self.Y, gridSizeNode.getChildNodes());
            gridYTextNode := gridYNode.getFirstChild();
            gridY := (gridYTextNode.getNodeValue());
            Self.setGrid(gridX, gridY);
            enableNode := TDomHelper.getInstance().searchNodeList(Self.ENABLED, gridNode.getChildNodes());
            enableTextNode := enableNode.getFirstChild();
            Self.grid.showGrid(enableTextNode.getNodeValue().booleanValue());
            possibleNode := TDomHelper.getInstance().searchNodeList(Self.POSSIBLE, gridNode.getChildNodes());
            possibleTextNode := possibleNode.getFirstChild();
            Self.grid.isGridPossible := possibleTextNode.getNodeValue().booleanValue();
            graphicItemNodeList := TDomHelper.getInstance().getChildrenWithoutTextNodes(Self.GRAPHICITEMS, canvasNode.getChildNodes());
            if (graphicItemNodeList) <> (nil) then begin
                Self.graphicItemHashMap := TGraphicItemFactory.getInstance().getInstance(graphicItemNodeList);
            end;
        end else begin
            raise SysUtils.Exception.Create('Frame Element Not Found but Found: ' + name);
        end;
end;
    

constructor TCanvasDom.Create(canvasJPanel_: TCanvasJPanel);
begin
    inherited Create;
    InitFields;
        Self.angle := canvasJPanel_.getAngle();
        Self.graphicItemHashMap := canvasJPanel_.getGraphicItemHashMap();
        Self.dimension := canvasJPanel_.getCanvasDimension();
        Self.grid := TGrid.Create(canvasJPanel_.getGrid());
        Self.angle := canvasJPanel_.getAngle();
end;
    

function TCanvasDom.getAngle: Double;
begin
        Exit(Self.angle);
end;
    

function TCanvasDom.getGraphicItemHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.graphicItemHashMap);
end;
    

procedure TCanvasDom.setAngle(angle: Double);
begin
        Self.angle := angle;
end;
    

// throws Exception
procedure TCanvasDom.setWorkArea(x: Integer; y: Integer);
begin
        Self.setDimension(TIntegerDimension.Create(x, y));
end;
    

// throws Exception
procedure TCanvasDom.setGrid(gridX: Integer; gridY: Integer);
begin
        Self.grid.grid := TPointFactory.getInstance().createXY(gridX, gridY);
end;
    

function TCanvasDom.getPointNode(point: TGPoint; pointName: string): TNode;
var
  document_: TDocument;
  pointNode: TNode;
  xNode: TNode;
  xTextNode: TNode;
  yNode: TNode;
  yTextNode: TNode;
begin
        document_ := TWorkAreaJPanel.getDocument();
        pointNode := TNode(TJava.ToObject(document_.createElement(pointName)));
        xNode := TNode(TJava.ToObject(document_.createElement(Self.X)));
        xTextNode := TNode(TJava.ToObject(document_.createTextNode(IntToStr(point.getX()))));
        xNode.appendChild(xTextNode);
        yNode := TNode(TJava.ToObject(document_.createElement(Self.Y)));
        yTextNode := TNode(TJava.ToObject(document_.createTextNode(IntToStr(point.getY()))));
        yNode.appendChild(yTextNode);
        pointNode.appendChild(xNode);
        pointNode.appendChild(yNode);
        Exit(pointNode);
end;
    

// throws Exception
function TCanvasDom.toDom: TNode;
var
  document_: TDocument;
  frameNode: TNode;
  angleNode: TNode;
  angleTextNode: TNode;
  sizeNode: TNode;
  zoomNode: TNode;
  zoomTextNode: TNode;
  gridNode: TNode;
  gridSizeNode: TNode;
  enableNode: TNode;
  enableTextNode: TNode;
  possibleNode: TNode;
  possibleTextNode: TNode;
  realSizeNode: TNode;
  vectorCenterGenerator_: TVectorCenterGenerator;
  widthNode: TNode;
  widthTextNode: TNode;
  heightNode: TNode;
  heightTextNode: TNode;
  graphicItemNode: TNode;
  graphicItemArray: TArray<TObject>;
  size: Integer;
  item: IGraphicItemInterface;
  index: Integer;
begin
        document_ := TWorkAreaJPanel.getDocument();
        frameNode := TNode(TJava.ToObject(document_.createElement(Self.FRAME)));
        angleNode := TNode(TJava.ToObject(document_.createElement(Self.ROTATE)));
        angleTextNode := TNode(TJava.ToObject(document_.createTextNode(Self.getAngle().toString())));
        angleNode.appendChild(angleTextNode);
        sizeNode := TNode(TJava.ToObject(Self.getPointNode(TPointFactory.getInstance().createXY(Self.getDimension().getWidth(), Self.getDimension().getHeight()), Self.SIZE)));
        zoomNode := TNode(TJava.ToObject(document_.createElement(Self.ZOOM)));
        zoomTextNode := TNode(TJava.ToObject(document_.createTextNode(Self.getGrid().getZoom().toString())));
        zoomNode.appendChild(zoomTextNode);
        gridNode := TNode(TJava.ToObject(document_.createElement(Self.GRID_)));
        gridSizeNode := TNode(TJava.ToObject(Self.getPointNode(Self.getGrid().grid, Self.SIZE)));
        gridNode.appendChild(gridSizeNode);
        enableNode := TNode(TJava.ToObject(document_.createElement(Self.ENABLED)));
        enableTextNode := TNode(TJava.ToObject(document_.createTextNode(Self.getGrid().isGridOn().toString())));
        enableNode.appendChild(enableTextNode);
        gridNode.appendChild(enableNode);
        possibleNode := TNode(TJava.ToObject(document_.createElement(Self.POSSIBLE)));
        possibleTextNode := TNode(TJava.ToObject(document_.createTextNode(Self.getGrid().isGridPossible().toString())));
        possibleNode.appendChild(possibleTextNode);
        gridNode.appendChild(possibleNode);
        realSizeNode := TNode(TJava.ToObject(document_.createElement(TCanvasDom.REAL_SIZE)));
        vectorCenterGenerator_ := TVectorCenterGenerator.Create();
        vectorCenterGenerator_.calculate(Self.getGraphicItemHashMap());
        widthNode := TNode(TJava.ToObject(document_.createElement(Self.graphicsStrings.WIDTH)));
        widthTextNode := TNode(TJava.ToObject(document_.createTextNode(IntToStr(vectorCenterGenerator_.getWidth()))));
        widthNode.appendChild(widthTextNode);
        realSizeNode.appendChild(widthNode);
        heightNode := TNode(TJava.ToObject(document_.createElement(Self.graphicsStrings.HEIGHT)));
        heightTextNode := TNode(TJava.ToObject(document_.createTextNode(IntToStr(vectorCenterGenerator_.getHeight()))));
        heightNode.appendChild(heightTextNode);
        realSizeNode.appendChild(heightNode);
        frameNode.appendChild(angleNode);
        frameNode.appendChild(sizeNode);
        frameNode.appendChild(zoomNode);
        frameNode.appendChild(gridNode);
        frameNode.appendChild(realSizeNode);
        graphicItemNode := TNode(TJava.ToObject(document_.createElement(Self.GRAPHICITEMS)));
        graphicItemArray := Self.getGraphicItemHashMap().keySet().toArray();
        size := System.Length(graphicItemArray);
        for index := 0 to size - 1 do begin
            item := (TJava.ToObject(Self.graphicItemHashMap.get(TJava.Box(graphicItemArray[index]))) as IGraphicItemInterface);
            if TJava.Equals(item.getName(), TLinesGraphicItem.getStaticName()) then begin
                if item.isValid() then begin
                    graphicItemNode.appendChild(item.toDom(Self));
                end;
            end;
        end;
        frameNode.appendChild(graphicItemNode);
        Exit(frameNode);
end;
    

function TCanvasDom.getDimension: TIntegerDimension;
begin
        Exit(Self.dimension);
end;
    

procedure TCanvasDom.setDimension(dimension: TIntegerDimension);
begin
        Self.dimension := dimension;
end;
    

function TCanvasDom.getGrid: TGrid;
begin
        Exit(Self.grid);
end;

initialization
  {AB:INITIALIZATION}
  TCanvasDom.FRAME := 'frame';
  TCanvasDom.ROTATE := 'rotate';
  TCanvasDom.SIZE := 'size';
  TCanvasDom.X := 'X';
  TCanvasDom.Y := 'Y';
  TCanvasDom.ZOOM := 'zoom';
  TCanvasDom.GRID_ := 'grid';
  TCanvasDom.ENABLED := 'enabled';
  TCanvasDom.POSSIBLE := 'possible';
  TCanvasDom.GRAPHICITEMS := 'graphicItems';
  TCanvasDom.REAL_SIZE := 'realSize';
  {AB:END}

end.

