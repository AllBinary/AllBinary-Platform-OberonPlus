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
unit CanvasJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInputStrings, GPoint, WorkAreaJTreeJPanel, GraphicItemInterface, MyGraphicItemEvent, MyGraphicItemEventListener, GuiLog, LogUtil, Node, IntegerDimension, CanvasTreeLabel, Color, Grid, Dimension, CanvasDom, Graphics, MouseEvent, KeyEvent, JPanel, MouseListener, MouseMotionListener, KeyListener, EventListener, SWTEventListener;

type
  {AB:TYPES}
  TCanvasJPanel = class(TJPanel, IMouseListener, IMouseMotionListener, IKeyListener, IMyGraphicItemEventListener, IEventListener, ISWTEventListener)
  public
    logUtil: TLogUtil;
    guiLog: TGuiLog;
    gameInputStrings: TGameInputStrings;
    selectedTool: IGraphicItemInterface;
    graphicItemHashMap: TJavaHashMap<TObject, TObject>;
    canvasDimension: TIntegerDimension;
    angle: Double;
    canvasTreeNode: TDefaultMutableTreeNode;
    frameLabel: TCanvasTreeLabel;
    workAreaJTreeJPanel: TWorkAreaJTreeJPanel;
    grid: TGrid;
    class var frame: Integer;
    class var gridColor: TColor;
    class var backgroundColor: TColor;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(workAreaJTreeJPanel_: TWorkAreaJTreeJPanel; dimension_: TDimension; x: Integer; y: Integer); overload;
        constructor Create(workAreaJTreeJPanel_: TWorkAreaJTreeJPanel; dimension_: TDimension; canvasDom_: TCanvasDom); overload;
        procedure initMyComponents;
        function getTreeNode: TMutableTreeNode; virtual;
        procedure initComponents;
        procedure setCanvasSize(x: Integer; y: Integer); virtual;
        procedure setGrid(point: TGPoint); overload; virtual;
        procedure setGrid(xSize: Integer; ySize: Integer); overload; virtual;
        procedure setDefaultGrid; virtual;
        function getAngle: Double; virtual;
        procedure setAngle(angle: Double); virtual;
        procedure addAngle(angle: Double); virtual;
        procedure explodeAll; virtual;
        procedure explode(howMuch: Integer; explosionType: Integer); virtual;
        procedure mirror; virtual;
        procedure center; virtual;
        procedure setNewTool; virtual;
        procedure duplicateGraphicItem(graphicItem: IGraphicItemInterface); virtual;
        procedure duplicateGraphicItemHashMap(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        function getGraphicItemHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getXPixelsPerWorkAreaPixel: Integer; virtual;
        function getYPixelsPerWorkAreaPixel: Integer; virtual;
        function getSelectedTool: IGraphicItemInterface; virtual;
        procedure drawItems(graphics_: TGraphics); virtual;
        procedure drawGrid(graphics_: TGraphics); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure repaint; virtual;
        function toDom: TNode; virtual;
        procedure changed; virtual;
        procedure mouseClicked(mouseEvent_: TMouseEvent); virtual;
        procedure mouseEntered(mouseEvent_: TMouseEvent); virtual;
        procedure mouseExited(mouseEvent_: TMouseEvent); virtual;
        procedure mousePressed(mouseEvent_: TMouseEvent); virtual;
        procedure mouseReleased(mouseEvent_: TMouseEvent); virtual;
        procedure mouseDragged(mouseEvent_: TMouseEvent); virtual;
        procedure mouseMoved(mouseEvent_: TMouseEvent); virtual;
        function logMouseEvent(mouseEvent_: TMouseEvent): string;
        procedure keyPressed(keyEvent_: TKeyEvent); virtual;
        procedure keyReleased(keyEvent_: TKeyEvent); virtual;
        procedure keyTyped(keyEvent_: TKeyEvent); virtual;
        procedure delete_(evt: TMyGraphicItemEvent); virtual;
        procedure deselect(evt: TMyGraphicItemEvent); virtual;
        procedure highlight(evt: TMyGraphicItemEvent); virtual;
        function duplicate: TCanvasJPanel; overload; virtual;
        procedure duplicate(event: TMyGraphicItemEvent); overload; virtual;
        procedure rotate(event: TMyGraphicItemEvent); virtual;
        function getCanvasDimension: TIntegerDimension; virtual;
        procedure setCanvasDimension(canvasDimension: TIntegerDimension); virtual;
        function getGrid: TGrid; virtual;
  end;

implementation
uses
  GridLayout, VectorExplosionGenerator, VectorMirrorGenerator, VectorCenterGenerator, PointFactory, BasicColorFactory, GraphicsException, StatusFactory, GraphicItemFactory, LinesGraphicItem, MouseStrings, Points, ToolFactory, MyGraphicItemEventService, RandomRotationFactory, LOGGING, StdUtil, StringMaker, PositionStrings, CommonSeps, CommonStrings, BasicArrayList, BasicArrayListD;


{AB:CODE}

procedure TCanvasJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.guiLog := TGuiLog.getInstance();
  Self.gameInputStrings := TGameInputStrings.getInstance();
  Self.selectedTool := nil;
  
  
  Self.angle := 0.0;
  
  
  
  
end;

function TCanvasJPanel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCanvasJPanel.Create(workAreaJTreeJPanel_: TWorkAreaJTreeJPanel; dimension_: TDimension; x: Integer; y: Integer);
begin
    inherited Create;
    InitFields;
        Self.grid := TGrid.Create();
        try
            Self.workAreaJTreeJPanel := workAreaJTreeJPanel_;
            Self.initComponents();
            Self.initMyComponents();
            Self.setSize(dimension_);
            Self.setCanvasSize(x, y);
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.GRAPHICSCREATION) then begin
                Self.guiLog.put('Constructor Error', TJava.Box(Self), 'contructor', TJava.Box(e));
            end;
            end;
        end;
end;
    

constructor TCanvasJPanel.Create(workAreaJTreeJPanel_: TWorkAreaJTreeJPanel; dimension_: TDimension; canvasDom_: TCanvasDom);
var
  graphicItemArray: TArray<TObject>;
  size: Integer;
  graphicItemTreeNode: TMutableTreeNode;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.grid := TGrid.Create(canvasDom_.getGrid());
        try
            Self.workAreaJTreeJPanel := workAreaJTreeJPanel_;
            Self.initComponents();
            Self.initMyComponents();
            Self.setSize(dimension_);
            Self.setCanvasSize(canvasDom_.getDimension().getWidth(), canvasDom_.getDimension().getHeight());
            Self.graphicItemHashMap := canvasDom_.getGraphicItemHashMap();
            graphicItemArray := Self.graphicItemHashMap.keySet().toArray();
            size := System.Length(graphicItemArray);
            for index := 0 to size - 1 do begin
                graphicItemTreeNode := TMutableTreeNode(TJava.ToObject(graphicItemArray[index]));
                Self.canvasTreeNode.add(graphicItemTreeNode);
            end;
            Self.repaint();
            Self.setAngle(canvasDom_.getAngle());
            Self.workAreaJTreeJPanel.updateTree();
            Self.workAreaJTreeJPanel.expand();
            Self.workAreaJTreeJPanel.repaint();
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.GRAPHICSCREATION) then begin
                Self.guiLog.put('Constructor Error', TJava.Box(Self), 'contructor', TJava.Box(e));
            end;
            end;
        end;
end;
    

// throws Exception
procedure TCanvasJPanel.initMyComponents;
begin
        Self.frameLabel := TCanvasTreeLabel.Create('FrameLabel' + TCanvasJPanel.frame.toString());
        Self.canvasTreeNode := TDefaultMutableTreeNode.Create(Self.frameLabel);
        Inc(TCanvasJPanel.frame);
        Self.workAreaJTreeJPanel.add(Self.getTreeNode());
        Self.graphicItemHashMap := TStdUtil.getInstance().createHashMap();
        Self.grid.grid := TPointFactory.getInstance().createXY(0, 0);
        Self.setCanvasDimension(TIntegerDimension.Create(0, 0));
        Self.selectedTool := nil;
        Self.addKeyListener(Self);
        Self.addMouseListener(Self);
        Self.addMouseMotionListener(Self);
        TMyGraphicItemEventService.addListener(Self);
end;
    

function TCanvasJPanel.getTreeNode: TMutableTreeNode;
begin
        Exit(Self.canvasTreeNode);
end;
    

procedure TCanvasJPanel.initComponents;
begin
        Self.setLayout(TGridLayout.Create(1, 1));
end;
    

// throws Exception
procedure TCanvasJPanel.setCanvasSize(x: Integer; y: Integer);
begin
        Self.grid.isGridPossible := True;
        if (x) <= (0) then begin
            Self.grid.isGridPossible := False;
            raise TGraphicsException.Create('X Size Error: ' + IntToStr(x), Self, 'setWorkAreaSize');
        end;
        if (y) <= (0) then begin
            Self.grid.isGridPossible := False;
            raise TGraphicsException.Create('Y Size Error: ' + IntToStr(y), Self, 'setWorkAreaSize');
        end;
        if (x) > (Self.getWidth()) then begin
            Self.grid.isGridPossible := False;
        end;
        if (y) > (Self.getHeight()) then begin
            Self.grid.isGridPossible := False;
        end;
        Self.setCanvasDimension(TIntegerDimension.Create(x, y));
        Self.grid.isChanged := True;
end;
    

procedure TCanvasJPanel.setGrid(point: TGPoint);
begin
        Self.setGrid(point.getX(), point.getY());
end;
    

procedure TCanvasJPanel.setGrid(xSize: Integer; ySize: Integer);
begin
        try
            if ((xSize) >= (TJava.Divide(Self.getCanvasDimension().getWidth(), 2))) or ((xSize) < (1)) then begin
                raise TGraphicsException.Create('X Size Error: ' + IntToStr(xSize) + ' WorkArea X: ' + TJava.ToString(Self.getCanvasDimension().getWidth()), Self, 'setGrid');
            end;
            if ((ySize) >= (TJava.Divide(Self.getCanvasDimension().getHeight(), 2))) or ((ySize) < (1)) then begin
                raise TGraphicsException.Create('Y Size Error' + IntToStr(ySize) + ' WorkArea Y: ' + TJava.ToString(Self.getCanvasDimension().getHeight()), Self, 'setGrid');
            end;
            Self.grid.grid := TPointFactory.getInstance().createXY(xSize, ySize);
            Self.grid.isChanged := True;
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;
    

// throws Exception
procedure TCanvasJPanel.setDefaultGrid;
var
  xPixelsPerWorkAreaPixel: Integer;
  yPixelsPerWorkAreaPixel: Integer;
begin
        xPixelsPerWorkAreaPixel := (Self.getWidth()) div (Self.getCanvasDimension().getWidth());
        yPixelsPerWorkAreaPixel := (Self.getHeight()) div (Self.getCanvasDimension().getHeight());
        Self.setGrid(1, 1);
        Self.grid.isChanged := True;
end;
    

function TCanvasJPanel.getAngle: Double;
begin
        Exit(Self.angle);
end;
    

procedure TCanvasJPanel.setAngle(angle: Double);
begin
        Self.angle := angle;
end;
    

procedure TCanvasJPanel.addAngle(angle: Double);
begin
        Self.setAngle((Self.angle) + (angle));
end;
    

procedure TCanvasJPanel.explodeAll;
var
  newPoints: TBasicArrayList;
  graphicItemArray: TArray<TObject>;
  size: Integer;
  graphicItemNode: TMutableTreeNode;
  graphicItem: IGraphicItemInterface;
  newGraphicItem: IGraphicItemInterface;
  pointOne: TGPoint;
  pointTwo: TGPoint;
  index: Integer;
  size2: Integer;
begin
        newPoints := TBasicArrayListD.Create();
        graphicItemArray := Self.getGraphicItemHashMap().keySet().toArray();
        size := System.Length(graphicItemArray);
        for index := 0 to size - 1 do begin
            graphicItemNode := TMutableTreeNode(TJava.ToObject(graphicItemArray[index]));
            graphicItem := (TJava.ToObject(Self.getGraphicItemHashMap().get(graphicItemNode)) as IGraphicItemInterface);
            if TJava.Equals(graphicItem.getName(), TLinesGraphicItem.getStaticName()) then begin
                while (graphicItem.getPointsInterface().getSize()) > (2) do begin
                    newGraphicItem := TGraphicItemFactory.getInstance().getInstance(graphicItem.getName()).getInstance(Self);
                    pointOne := TGPoint.getInstance(graphicItem.removePoint());
                    pointTwo := TGPoint.getInstance(graphicItem.removePoint());
                    if ((pointOne) <> (nil)) and ((pointTwo) <> (nil)) then begin
                        newGraphicItem.addPoint(pointOne);
                        newGraphicItem.addPoint(pointTwo);
                    end;
                    newPoints.add(TJava.Box(newGraphicItem));
                end;
            end;
        end;
        size2 := newPoints.size();
        for index := 0 to size2 - 1 do begin
            newGraphicItem := (TJava.ToObject(newPoints.get(index)) as IGraphicItemInterface);
            Self.canvasTreeNode.add(newGraphicItem.getTreeNode());
            Self.getGraphicItemHashMap().put(newGraphicItem.getTreeNode(), TJava.ToObject(newGraphicItem));
        end;
        Self.workAreaJTreeJPanel.updateTree();
        Self.workAreaJTreeJPanel.expand();
        Self.workAreaJTreeJPanel.repaint();
end;
    

// throws Exception
procedure TCanvasJPanel.explode(howMuch: Integer; explosionType: Integer);
var
  graphicItemArray: TArray<TObject>;
  size: Integer;
  item: IGraphicItemInterface;
  basicArrayList_: TBasicArrayList;
  newPoints: TPoints;
  angleDelta: Integer;
  index: Integer;
begin
        graphicItemArray := Self.getGraphicItemHashMap().keySet().toArray();
        size := System.Length(graphicItemArray);
        for index := 0 to size - 1 do begin
            item := (TJava.ToObject(Self.getGraphicItemHashMap().get(graphicItemArray[index])) as IGraphicItemInterface);
            basicArrayList_ := TVectorExplosionGenerator.getInstance().createList(item.getPointsInterface().getPoints(), howMuch, TVectorExplosionGenerator.getInstance().RANDOM);
            newPoints := TPoints.Create();
            newPoints.addPoints(basicArrayList_);
            item.setPointsInterface(newPoints);
            angleDelta := TRandomRotationFactory.getInstance().getNextRandomAngle(howMuch);
            item.setAngle(angleDelta);
        end;
        Self.repaint();
end;
    

// throws Exception
procedure TCanvasJPanel.mirror;
var
  width: Integer;
  graphicItemArray: TArray<TObject>;
  size: Integer;
  item: IGraphicItemInterface;
  basicArrayList_: TBasicArrayList;
  newPoints: TPoints;
  index: Integer;
begin
        width := Self.getCanvasDimension().getWidth();
        graphicItemArray := Self.getGraphicItemHashMap().keySet().toArray();
        size := System.Length(graphicItemArray);
        for index := 0 to size - 1 do begin
            item := (TJava.ToObject(Self.getGraphicItemHashMap().get(graphicItemArray[index])) as IGraphicItemInterface);
            basicArrayList_ := TVectorMirrorGenerator.getInstance().getInstance(item.getPointsInterface().getPoints(), width);
            newPoints := TPoints.Create();
            newPoints.addPoints(basicArrayList_);
            item.setPointsInterface(newPoints);
        end;
        Self.repaint();
end;
    

// throws Exception
procedure TCanvasJPanel.center;
begin
        TVectorCenterGenerator.Create().transform(Self.getGraphicItemHashMap());
        Self.repaint();
end;
    

procedure TCanvasJPanel.setNewTool;
var
  newNode: TMutableTreeNode;
begin
        try
            TStatusFactory.getInstance().setStatus('Tool Selected');
            Self.selectedTool := TToolFactory.getInstance().getSelectedToolFactory().getInstance(Self);
            newNode := Self.selectedTool.getTreeNode();
            Self.getGraphicItemHashMap().put(newNode, Self.selectedTool);
            Self.canvasTreeNode.add(newNode);
            if (Self.getSelectedTool()) = (nil) then begin
                raise TGraphicsException.Create('No Tool Selected', Self, 'setSelectedTool');
            end;
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;
    

// throws Exception
procedure TCanvasJPanel.duplicateGraphicItem(graphicItem: IGraphicItemInterface);
var
  graphicItemClone: IGraphicItemInterface;
begin
        graphicItemClone := graphicItem.duplicate();
        Self.getGraphicItemHashMap().put(graphicItemClone.getTreeNode(), TJava.ToObject(graphicItemClone));
        Self.canvasTreeNode.add(graphicItemClone.getTreeNode());
end;
    

// throws Exception
procedure TCanvasJPanel.duplicateGraphicItemHashMap(hashMap_: TJavaHashMap<TObject, TObject>);
var
  mutableTreeNodeArray: TArray<TObject>;
  size: Integer;
  treeNode: TMutableTreeNode;
  graphicItem: IGraphicItemInterface;
  index: Integer;
begin
        mutableTreeNodeArray := hashMap_.keySet().toArray();
        size := System.Length(mutableTreeNodeArray);
        for index := 0 to size - 1 do begin
            treeNode := TMutableTreeNode(TJava.ToObject(mutableTreeNodeArray[index]));
            graphicItem := (TJava.ToObject(hashMap_.get(TJava.Box(treeNode))) as IGraphicItemInterface);
            Self.duplicateGraphicItem(graphicItem);
        end;
end;
    

function TCanvasJPanel.getGraphicItemHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.graphicItemHashMap);
end;
    

function TCanvasJPanel.getXPixelsPerWorkAreaPixel: Integer;
var
  x: Integer;
begin
        x := ((Self.getGrid().grid.getX()) * (((Self.getWidth()) - (10)))) div (Self.getCanvasDimension().getWidth());
        if (Self.getGrid().getZoom()) = (1) then begin
            Exit(1);
        end else begin
            Exit(x);
        end;
end;
    

function TCanvasJPanel.getYPixelsPerWorkAreaPixel: Integer;
var
  y: Integer;
begin
        y := ((Self.getGrid().grid.getY()) * (((Self.getHeight()) - (10)))) div (Self.getCanvasDimension().getHeight());
        if (Self.getGrid().getZoom()) = (1) then begin
            Exit(1);
        end else begin
            Exit(y);
        end;
end;
    

function TCanvasJPanel.getSelectedTool: IGraphicItemInterface;
begin
        Exit(Self.selectedTool);
end;
    

procedure TCanvasJPanel.drawItems(graphics_: TGraphics);
var
  angleDouble: Double;
  graphicItemArray: TArray<TObject>;
  size: Integer;
  item: IGraphicItemInterface;
  index: Integer;
begin
        angleDouble := Self.angle;
        graphicItemArray := Self.getGraphicItemHashMap().keySet().toArray();
        size := System.Length(graphicItemArray);
        for index := 0 to size - 1 do begin
            item := (TJava.ToObject(Self.getGraphicItemHashMap().get(graphicItemArray[index])) as IGraphicItemInterface);
            item.paint(graphics_, angleDouble, Self.getCanvasDimension(), Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
        end;
end;
    

procedure TCanvasJPanel.drawGrid(graphics_: TGraphics);
var
  xAdjust: Integer;
  yAdjust: Integer;
  xLeft: Integer;
  yUpper: Integer;
  xRight: Integer;
  yLower: Integer;
  value: Integer;
begin
        xAdjust := (((Self.getWidth()) mod (Self.getXPixelsPerWorkAreaPixel()))) div (2);
        yAdjust := (((Self.getHeight()) mod (Self.getYPixelsPerWorkAreaPixel()))) div (2);
        xLeft := xAdjust;
        yUpper := yAdjust;
        xRight := (Self.getWidth()) - (xAdjust);
        yLower := (Self.getHeight()) - (yAdjust);
        graphics_.setColor(TCanvasJPanel.gridColor);
        value := yAdjust;
        while (value) <= ((Self.getHeight()) - (yAdjust)) do begin
            graphics_.drawLine(xLeft, value, xRight, value);
            value := (value) + (Self.getYPixelsPerWorkAreaPixel());
        end;
        value := xAdjust;
        while (value) <= ((Self.getWidth()) - (xAdjust)) do begin
            graphics_.drawLine(value, yUpper, value, yLower);
            value := (value) + (Self.getYPixelsPerWorkAreaPixel());
        end;
end;
    

procedure TCanvasJPanel.paint(graphics_: TGraphics);
begin
        try
            if Self.getGrid().isChanged then begin
                graphics_.setColor(TCanvasJPanel.backgroundColor);
                graphics_.fillRect(0, 0, Self.getWidth(), Self.getHeight());
                if (((Self.getGrid().getZoom()) > (2)) and (Self.getGrid().isGridOn)) and (Self.getGrid().isGridPossible) then begin
                    Self.setDefaultGrid();
                    Self.drawGrid(graphics_);
                end;
                Self.drawItems(graphics_);
                graphics_.drawString(Self.getAngle().toString(), (Self.getWidth()) - (75), (Self.getHeight()) - (15));
                Self.grid.isChanged := False;
            end;
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;
    

procedure TCanvasJPanel.repaint;
begin
        if (Self.grid) <> (nil) then begin
            Self.grid.isChanged := True;
        end;
        inherited repaint();
end;
    

// throws Exception
function TCanvasJPanel.toDom: TNode;
begin
        Exit(TCanvasDom.Create(Self).toDom());
end;
    

procedure TCanvasJPanel.changed;
begin
        Self.grid.isChanged := True;
end;
    

procedure TCanvasJPanel.mouseClicked(mouseEvent_: TMouseEvent);
var
  graphicItem: IGraphicItemInterface;
begin
        TStatusFactory.getInstance().setStatusNoLog((TMouseStrings.getInstance().MOUSE_CLICKED_LABEL) + (Self.logMouseEvent(mouseEvent_)));
        if ((Self.getSelectedTool()) <> (nil)) and (Self.getSelectedTool().isActive()) then begin
            graphicItem := Self.getSelectedTool();
            graphicItem.mouseClicked(mouseEvent_, Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
        end else begin
            Self.setNewTool();
            graphicItem := Self.getSelectedTool();
            if (graphicItem) <> (nil) then begin
                graphicItem.mouseClicked(mouseEvent_, Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
            end;
        end;
        Self.grid.isChanged := True;
        Self.repaint();
        Self.workAreaJTreeJPanel.updateTree();
        Self.workAreaJTreeJPanel.expand();
        Self.workAreaJTreeJPanel.repaint();
end;
    

procedure TCanvasJPanel.mouseEntered(mouseEvent_: TMouseEvent);
begin
        TStatusFactory.getInstance().setStatusNoLog(Self.logMouseEvent(mouseEvent_));
end;
    

procedure TCanvasJPanel.mouseExited(mouseEvent_: TMouseEvent);
begin
        TStatusFactory.getInstance().setStatusNoLog(Self.logMouseEvent(mouseEvent_));
end;
    

procedure TCanvasJPanel.mousePressed(mouseEvent_: TMouseEvent);
var
  graphicItem: IGraphicItemInterface;
begin
        TStatusFactory.getInstance().setStatusNoLog((TMouseStrings.getInstance().MOUSE_PRESSED_LABEL) + (Self.logMouseEvent(mouseEvent_)));
        if (Self.getSelectedTool()) <> (nil) then begin
            graphicItem := Self.getSelectedTool();
            graphicItem.mousePressed(mouseEvent_, Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
        end;
        Self.requestFocus();
        Self.grid.isChanged := True;
        Self.repaint();
end;
    

procedure TCanvasJPanel.mouseReleased(mouseEvent_: TMouseEvent);
var
  graphicItem: IGraphicItemInterface;
begin
        TStatusFactory.getInstance().setStatusNoLog((TMouseStrings.getInstance().MOUSE_RELEASED_LABEL) + (Self.logMouseEvent(mouseEvent_)));
        graphicItem := Self.getSelectedTool();
        if (graphicItem) <> (nil) then begin
            graphicItem.mouseReleased(mouseEvent_, Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
        end;
        Self.requestFocus();
        Self.grid.isChanged := True;
        Self.repaint();
end;
    

procedure TCanvasJPanel.mouseDragged(mouseEvent_: TMouseEvent);
var
  graphicItem: IGraphicItemInterface;
begin
        TStatusFactory.getInstance().setStatusNoLog((TMouseStrings.getInstance().MOUSE_DRAGGED_LABEL) + (Self.logMouseEvent(mouseEvent_)));
        graphicItem := Self.getSelectedTool();
        if (graphicItem) <> (nil) then begin
            graphicItem.mouseDragged(mouseEvent_, Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
        end;
        Self.requestFocus();
        Self.grid.isChanged := True;
        Self.repaint();
end;
    

procedure TCanvasJPanel.mouseMoved(mouseEvent_: TMouseEvent);
var
  graphicItem: IGraphicItemInterface;
begin
        TStatusFactory.getInstance().setStatusNoLog((TMouseStrings.getInstance().MOUSE_MOVED_LABEL) + (Self.logMouseEvent(mouseEvent_)));
        if ((Self.getSelectedTool()) <> (nil)) and (Self.getSelectedTool().isActive()) then begin
            graphicItem := Self.getSelectedTool();
            graphicItem.mouseMoved(mouseEvent_, Self.getXPixelsPerWorkAreaPixel(), Self.getYPixelsPerWorkAreaPixel());
        end;
        Self.requestFocus();
        Self.grid.isChanged := True;
        Self.repaint();
end;
    

function TCanvasJPanel.logMouseEvent(mouseEvent_: TMouseEvent): string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TPositionStrings.getInstance().X_LABEL);
        stringBuffer.appendint(Integer(Trunc(TJava.Divide(mouseEvent_.getX(), Self.getXPixelsPerWorkAreaPixel()))));
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TPositionStrings.getInstance().Y_LABEL);
        stringBuffer.appendint(Integer(Trunc(TJava.Divide(mouseEvent_.getY(), Self.getYPixelsPerWorkAreaPixel()))));
        Exit(stringBuffer.toString());
end;
    

procedure TCanvasJPanel.keyPressed(keyEvent_: TKeyEvent);
var
  graphicItemArray: TArray<TObject>;
  size: Integer;
  graphicItemInterface_: IGraphicItemInterface;
  keyCode: Integer;
  index: Integer;
  commonStrings_: TCommonStrings;
  graphicItem: IGraphicItemInterface;
begin
        TStatusFactory.getInstance().setStatus('Key Pressed');
        try
            graphicItemArray := Self.graphicItemHashMap.keySet().toArray();
            size := System.Length(graphicItemArray);
            for index := 0 to size - 1 do begin
                graphicItemInterface_ := (TJava.ToObject(Self.graphicItemHashMap.get(TJava.Box(graphicItemArray[index]))) as IGraphicItemInterface);
                keyCode := keyEvent_.getKeyCode();
                if graphicItemInterface_.isActive() then begin
                    if (keyCode) = (keyEvent_.VK_UP) then begin
                        graphicItemInterface_.translate(0, -1);
                    end else if (keyCode) = (keyEvent_.VK_DOWN) then begin
                        graphicItemInterface_.translate(0, 1);
                    end else if (keyCode) = (keyEvent_.VK_LEFT) then begin
                        graphicItemInterface_.translate(-1, 0);
                    end else if (keyCode) = (keyEvent_.VK_RIGHT) then begin
                        graphicItemInterface_.translate(1, 0);
                    end;
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), Self.gameInputStrings.KEY_PRESSED, TJava.Box(e));
            end;
        end;
        if ((Self.getSelectedTool()) <> (nil)) and (Self.getSelectedTool().isActive()) then begin
            TStatusFactory.getInstance().setStatus('Key Pressed for Tool');
            graphicItem := Self.getSelectedTool();
            graphicItem.keyPressed(keyEvent_);
        end else begin
            Self.setNewTool();
        end;
        Self.grid.isChanged := True;
        Self.repaint();
end;
    

procedure TCanvasJPanel.keyReleased(keyEvent_: TKeyEvent);
begin
end;
    

procedure TCanvasJPanel.keyTyped(keyEvent_: TKeyEvent);
begin
end;
    

procedure TCanvasJPanel.delete_(evt: TMyGraphicItemEvent);
begin
        Self.getGraphicItemHashMap().remove(evt.getTreeNode());
        Self.workAreaJTreeJPanel.updateTree();
        Self.workAreaJTreeJPanel.expand();
        Self.workAreaJTreeJPanel.repaint();
end;
    

procedure TCanvasJPanel.deselect(evt: TMyGraphicItemEvent);
var
  graphicItemInterface_: IGraphicItemInterface;
begin
        graphicItemInterface_ := (TJava.ToObject(Self.getGraphicItemHashMap().get(evt.getTreeNode())) as IGraphicItemInterface);
        if (graphicItemInterface_) <> (nil) then begin
            graphicItemInterface_.setColor(TColor.WHITE);
            graphicItemInterface_.deactivate();
            Self.workAreaJTreeJPanel.repaint();
        end;
end;
    

procedure TCanvasJPanel.highlight(evt: TMyGraphicItemEvent);
var
  graphicItemInterface_: IGraphicItemInterface;
begin
        graphicItemInterface_ := (TJava.ToObject(Self.getGraphicItemHashMap().get(evt.getTreeNode())) as IGraphicItemInterface);
        if (graphicItemInterface_) <> (nil) then begin
            graphicItemInterface_.setColor(TColor.YELLOW);
            graphicItemInterface_.activate();
            Self.workAreaJTreeJPanel.repaint();
        end;
end;
    

// throws Exception
function TCanvasJPanel.duplicate: TCanvasJPanel;
var
  newCanvasJPanel: TCanvasJPanel;
begin
        newCanvasJPanel := TCanvasJPanel.Create(Self.workAreaJTreeJPanel, Self.getSize(), Self.getCanvasDimension().getWidth(), Self.getCanvasDimension().getHeight());
        newCanvasJPanel.setGrid(Self.getGrid().getGrid());
        newCanvasJPanel.setAngle(Self.getAngle());
        newCanvasJPanel.duplicateGraphicItemHashMap(Self.getGraphicItemHashMap());
        Self.workAreaJTreeJPanel.updateTree();
        Self.workAreaJTreeJPanel.expand();
        Self.workAreaJTreeJPanel.repaint();
        Exit(newCanvasJPanel);
end;
    

// throws Exception
procedure TCanvasJPanel.duplicate(event: TMyGraphicItemEvent);
var
  treeNode: TMutableTreeNode;
  graphicItem: IGraphicItemInterface;
begin
        treeNode := event.getTreeNode();
        graphicItem := (TJava.ToObject(Self.getGraphicItemHashMap().get(treeNode)) as IGraphicItemInterface);
        if (graphicItem) <> (nil) then begin
            Self.duplicateGraphicItem(graphicItem);
            Self.workAreaJTreeJPanel.updateTree();
            Self.workAreaJTreeJPanel.expand();
            Self.workAreaJTreeJPanel.repaint();
        end;
end;
    

procedure TCanvasJPanel.rotate(event: TMyGraphicItemEvent);
var
  treeNode: TMutableTreeNode;
  graphicItem: IGraphicItemInterface;
begin
        treeNode := event.getTreeNode();
        graphicItem := (TJava.ToObject(Self.getGraphicItemHashMap().get(treeNode)) as IGraphicItemInterface);
        if (graphicItem) <> (nil) then begin
            graphicItem.addAngle(event.getAngle());
        end;
end;
    

function TCanvasJPanel.getCanvasDimension: TIntegerDimension;
begin
        Exit(Self.canvasDimension);
end;
    

procedure TCanvasJPanel.setCanvasDimension(canvasDimension: TIntegerDimension);
begin
        Self.canvasDimension := canvasDimension;
end;
    

function TCanvasJPanel.getGrid: TGrid;
begin
        Exit(Self.grid);
end;

initialization
  {AB:INITIALIZATION}
  TCanvasJPanel.frame := 0;
  TCanvasJPanel.gridColor := TColor.Create(TBasicColorFactory.getInstance().WHITE.intValue());
  TCanvasJPanel.backgroundColor := TColor.Create(TBasicColorFactory.getInstance().CLEAR_COLOR.intValue());
  {AB:END}

end.

