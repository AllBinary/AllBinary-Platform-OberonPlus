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
// package org.allbinary.graphics.j2me.workarea
unit WorkAreaJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CanvasJPanel, MyCanvasEvent, MyCanvasEventListener, PropertiesJPanel, LogUtil, Document, JPanel, WorkAreaJTreeJPanel, Dimension, WorkAreaDom, KeyEvent, WorkAreaJPanelInterface;

type
  {AB:TYPES}
  TWorkAreaJPanel = class(TJPanel, IWorkAreaJPanelInterface, IMyCanvasEventListener, IEventListener, IRunnable)
  public
    logUtil: TLogUtil;
    canvasJPanelList: TJavaVector<TObject>;
    canvasHolderJPanel: TJPanel;
    name: string;
    selectedFrame: Integer;
    propertiesJPanel: TPropertiesJPanel;
    workAreaJTreeJPanel: TWorkAreaJTreeJPanel;
    isPlaying_: Boolean;
    innerJPanel: TJPanel;
    class var document: TDocument;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string; dimension_: TDimension; x: Integer; y: Integer); overload;
        constructor Create(workAreaDom_: TWorkAreaDom; dimension_: TDimension); overload;
        procedure initMyComponents(dimension_: TDimension);
        function getCanvasHashMap: TJavaHashMap<TObject, TObject>;
        procedure play; virtual;
        procedure stop; virtual;
        function isPlaying: Boolean; virtual;
        function getName: string; virtual;
        procedure setName(value: string); virtual;
        procedure disableCanvas; virtual;
        procedure enableCanvas; virtual;
        procedure deselect; virtual;
        procedure select; overload; virtual;
        procedure changeZoom(factor: Integer); virtual;
        function getCurrentFrame: TCanvasJPanel; virtual;
        procedure initDuplicate(newCanvasJPanel: TCanvasJPanel);
        procedure duplicate(treeNode: TMutableTreeNode); overload;
        procedure autoRotate(increments: Integer; totalAngle: Integer); virtual;
        procedure explodeAll; virtual;
        procedure autoExplode(numberOfFrames: Integer; explodeType: Integer); overload; virtual;
        procedure autoMirror; virtual;
        procedure select(index: Integer); overload;
        procedure select(treeNode: TMutableTreeNode); overload;
        class function getDocument: TDocument; static;
        function toDocument: TDocument; virtual;
        procedure initComponents;
        procedure innerJPanelKeyReleased(evt: TKeyEvent);
        procedure innerJPanelKeyPressed(evt: TKeyEvent);
        procedure innerJPanelKeyTyped(evt: TKeyEvent);
        procedure keyPressed(keyEvent_: TKeyEvent); virtual;
        procedure keyReleased(keyEvent_: TKeyEvent); virtual;
        procedure keyTyped(keyEvent_: TKeyEvent); virtual;
        procedure delete_(evt: TMyCanvasEvent); virtual;
        procedure duplicate(evt: TMyCanvasEvent); overload; virtual;
        procedure select(evt: TMyCanvasEvent); overload; virtual;
        procedure rotate(evt: TMyCanvasEvent); virtual;
        procedure explode(evt: TMyCanvasEvent); virtual;
        procedure autoExplode(evt: TMyCanvasEvent); overload; virtual;
        procedure center; overload; virtual;
        procedure center(evt: TMyCanvasEvent); overload; virtual;
        procedure run; virtual;
  end;

implementation
uses
  Component, GridLayout, GridBagLayout, GridBagConstraints, KeyAdapter, DomHelper, StatusFactory, CanvasDom, MyCanvasEventService, ToolJPanel, LOGGING, StdUtil, BasicArrayList, Node;


{AB:CODE}

procedure TWorkAreaJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  Self.isPlaying_ := False;
  
end;

function TWorkAreaJPanel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TWorkAreaJPanel.Create(name: string; dimension_: TDimension; x: Integer; y: Integer);
var
  canvasJPanel_: TCanvasJPanel;
begin
    inherited Create;
    InitFields;
        try
            Self.initComponents();
            Self.name := name;
            Self.initMyComponents(dimension_);
            Self.workAreaJTreeJPanel := TWorkAreaJTreeJPanel.Create(Self.name);
            canvasJPanel_ := TCanvasJPanel.Create(Self.workAreaJTreeJPanel, Self.getSize(), x, y);
            Self.canvasJPanelList.add(TJava.Box(canvasJPanel_));
            Self.selectedFrame := 0;
            Self.propertiesJPanel.set_(Self.workAreaJTreeJPanel);
            Self.canvasHolderJPanel.add(TComponent(TJava.ToObject(canvasJPanel_)));
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

constructor TWorkAreaJPanel.Create(workAreaDom_: TWorkAreaDom; dimension_: TDimension);
var
  canvasNodeList: TBasicArrayList;
  numberOfFrames: Integer;
  node_: TNode;
  canvasJPanel_: TCanvasJPanel;
  index: Integer;
begin
    inherited Create;
    InitFields;
        try
            Self.initComponents();
            Self.name := workAreaDom_.getName();
            Self.initMyComponents(dimension_);
            canvasNodeList := workAreaDom_.getCanvasNodes();
            numberOfFrames := canvasNodeList.size();
            for index := 0 to numberOfFrames - 1 do begin
                node_ := TNode(TJava.ToObject(canvasNodeList.get(index)));
                canvasJPanel_ := TCanvasJPanel.Create(Self.workAreaJTreeJPanel, Self.getSize(), TCanvasDom.Create(node_));
                Self.canvasJPanelList.add(TJava.Box(canvasJPanel_));
            end;
            Self.selectedFrame := 0;
            Self.canvasHolderJPanel.add(TComponent(TJava.ToObject(Self.getCurrentFrame())));
            Self.propertiesJPanel.set_(Self.workAreaJTreeJPanel);
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.LOADINGERROR) then begin
                Self.logUtil.put('Constructor Error', TJava.Box(Self), 'WorkAreaJPanel', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

procedure TWorkAreaJPanel.initMyComponents(dimension_: TDimension);
var
  gridBagLayout_: TGridBagLayout;
  gridBagConstraints_: TGridBagConstraints;
  toolJPanel_: TToolJPanel;
begin
        Self.workAreaJTreeJPanel := TWorkAreaJTreeJPanel.Create(Self.name);
        Self.canvasHolderJPanel := TJPanel.Create();
        Self.canvasHolderJPanel.setSize(dimension_);
        Self.canvasHolderJPanel.setLayout(TGridLayout.Create(1, 1));
        Self.setSize(dimension_);
        Self.canvasJPanelList := TJavaVector<TObject>.Create();
        gridBagLayout_ := TGridBagLayout.Create();
        gridBagConstraints_ := TGridBagConstraints.Create();
        Self.innerJPanel.setLayout(gridBagLayout_);
        gridBagConstraints_.gridx := 0;
        gridBagConstraints_.gridy := 0;
        gridBagConstraints_.gridwidth := 1;
        gridBagConstraints_.fill := Tjava.awt.GridBagConstraints.BOTH;
        gridBagConstraints_.weightx := .05;
        gridBagConstraints_.weighty := .05;
        toolJPanel_ := TToolJPanel.Create();
        gridBagLayout_.setConstraints(toolJPanel_, gridBagConstraints_);
        Self.innerJPanel.add(toolJPanel_);
        gridBagConstraints_ := TGridBagConstraints.Create();
        gridBagConstraints_.gridx := 1;
        gridBagConstraints_.gridy := 0;
        gridBagConstraints_.gridwidth := 6;
        gridBagConstraints_.fill := Tjava.awt.GridBagConstraints.BOTH;
        gridBagConstraints_.weightx := 1;
        gridBagConstraints_.weighty := 1;
        gridBagLayout_.setConstraints(Self.canvasHolderJPanel, gridBagConstraints_);
        Self.innerJPanel.add(Self.canvasHolderJPanel);
        gridBagConstraints_ := TGridBagConstraints.Create();
        gridBagConstraints_.gridx := 8;
        gridBagConstraints_.gridy := 0;
        gridBagConstraints_.gridwidth := Tjava.awt.GridBagConstraints.REMAINDER;
        gridBagConstraints_.fill := Tjava.awt.GridBagConstraints.BOTH;
        gridBagConstraints_.weightx := .1;
        gridBagConstraints_.weighty := .1;
        Self.propertiesJPanel := TPropertiesJPanel.Create();
        gridBagLayout_.setConstraints(Self.propertiesJPanel, gridBagConstraints_);
        Self.innerJPanel.add(Self.propertiesJPanel);
        TMyCanvasEventService.addListener(TMyCanvasEventListener(TJava.ToObject(Self)));
end;
    

function TWorkAreaJPanel.getCanvasHashMap: TJavaHashMap<TObject, TObject>;
var
  canvasJPanelHashMap: TJavaHashMap<TObject, TObject>;
  size: Integer;
  canvasJPanel_: TCanvasJPanel;
  index: Integer;
begin
        canvasJPanelHashMap := TStdUtil.getInstance().createHashMap();
        size := Self.canvasJPanelList.size();
        for index := 0 to size - 1 do begin
            canvasJPanel_ := TCanvasJPanel(TJava.ToObject(Self.canvasJPanelList.get(index)));
            canvasJPanelHashMap.put(TJava.Box(canvasJPanel_.getTreeNode()), TJava.Box(index));
        end;
        Exit(canvasJPanelHashMap);
end;
    

procedure TWorkAreaJPanel.play;
begin
    TJava.MonitorEnter(Self);
    try
        Self.isPlaying_ := True;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TWorkAreaJPanel.stop;
begin
    TJava.MonitorEnter(Self);
    try
        Self.isPlaying_ := False;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TWorkAreaJPanel.isPlaying: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.isPlaying_);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TWorkAreaJPanel.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TWorkAreaJPanel.setName(value: string);
begin
        Self.name := value;
end;
    

procedure TWorkAreaJPanel.disableCanvas;
begin
        Self.canvasHolderJPanel.removeAll();
end;
    

procedure TWorkAreaJPanel.enableCanvas;
begin
        Self.canvasHolderJPanel.add(TComponent(TJava.ToObject(Self.getCurrentFrame())));
end;
    

procedure TWorkAreaJPanel.deselect;
begin
        inherited setVisible(False);
end;
    

procedure TWorkAreaJPanel.select;
var
  component_: TComponent;
begin
        inherited setVisible(True);
        if (Self.canvasHolderJPanel.getComponentCount()) = (1) then begin
            component_ := Self.canvasHolderJPanel.getComponent(0);
            if (component_) <> (nil) then begin
                component_.repaint();
            end;
        end;
end;
    

procedure TWorkAreaJPanel.changeZoom(factor: Integer);
var
  size: Integer;
  canvasJPanel_: TCanvasJPanel;
  index: Integer;
begin
        size := Self.canvasJPanelList.size();
        for index := 0 to size - 1 do begin
            canvasJPanel_ := TCanvasJPanel(TJava.ToObject(Self.canvasJPanelList.get(index)));
            canvasJPanel_.getGrid().setZoom((canvasJPanel_.getGrid().getZoom()) + (factor));
        end;
end;
    

function TWorkAreaJPanel.getCurrentFrame: TCanvasJPanel;
begin
        Exit(TCanvasJPanel(TJava.ToObject(Self.canvasJPanelList.get(Self.selectedFrame))));
end;
    

procedure TWorkAreaJPanel.initDuplicate(newCanvasJPanel: TCanvasJPanel);
begin
        if (newCanvasJPanel) <> (nil) then begin
            Self.canvasJPanelList.add(TJava.Box(newCanvasJPanel));
            Self.select((Self.canvasJPanelList.size()) - (1));
        end;
end;
    

// throws Exception
procedure TWorkAreaJPanel.duplicate(treeNode: TMutableTreeNode);
var
  canvasJPanelHashMap: TJavaHashMap<TObject, TObject>;
  frameInteger: Integer;
  canvasJPanel_: TCanvasJPanel;
begin
        canvasJPanelHashMap := Self.getCanvasHashMap();
        if canvasJPanelHashMap.containsKey(TJava.Box(treeNode)) then begin
            frameInteger := Integer(canvasJPanelHashMap.get(TJava.Box(treeNode)));
            canvasJPanel_ := TCanvasJPanel(TJava.ToObject(Self.canvasJPanelList.get((frameInteger))));
            Self.initDuplicate(canvasJPanel_.duplicate());
        end;
end;
    

// throws Exception
procedure TWorkAreaJPanel.autoRotate(increments: Integer; totalAngle: Integer);
var
  incrementAngle: Integer;
  canvasJPanel_: TCanvasJPanel;
  newCanvasJPanel: TCanvasJPanel;
  index: Integer;
begin
        incrementAngle := ((totalAngle) div (increments));
        for index := 1 to increments - 1 do begin
            canvasJPanel_ := TCanvasJPanel(TJava.ToObject(Self.getCurrentFrame()));
            newCanvasJPanel := canvasJPanel_.duplicate();
            newCanvasJPanel.setAngle((incrementAngle) * (index));
            Self.initDuplicate(newCanvasJPanel);
        end;
end;
    

procedure TWorkAreaJPanel.explodeAll;
var
  canvasJPanel_: TCanvasJPanel;
begin
        canvasJPanel_ := TCanvasJPanel(TJava.ToObject(Self.getCurrentFrame()));
        canvasJPanel_.explodeAll();
end;
    

// throws Exception
procedure TWorkAreaJPanel.autoExplode(numberOfFrames: Integer; explodeType: Integer);
var
  canvasJPanel_: TCanvasJPanel;
  newCanvasJPanel: TCanvasJPanel;
  index: Integer;
begin
        for index := 1 to numberOfFrames - 1 do begin
            canvasJPanel_ := TCanvasJPanel(TJava.ToObject(Self.getCurrentFrame()));
            newCanvasJPanel := canvasJPanel_.duplicate();
            newCanvasJPanel.explode((index) + (1), explodeType);
            Self.initDuplicate(newCanvasJPanel);
        end;
end;
    

// throws Exception
procedure TWorkAreaJPanel.autoMirror;
var
  canvasJPanel_: TCanvasJPanel;
  newCanvasJPanel: TCanvasJPanel;
begin
        canvasJPanel_ := TCanvasJPanel(TJava.ToObject(Self.getCurrentFrame()));
        newCanvasJPanel := canvasJPanel_.duplicate();
        newCanvasJPanel.mirror();
        Self.initDuplicate(newCanvasJPanel);
end;
    

procedure TWorkAreaJPanel.select(index: Integer);
var
  canvasJPanel_: TCanvasJPanel;
begin
    TJava.MonitorEnter(Self);
    try
        if (index) < (Self.canvasJPanelList.size()) then begin
            canvasJPanel_ := TCanvasJPanel(TJava.ToObject(Self.canvasJPanelList.get(index)));
            if (canvasJPanel_) <> (nil) then begin
                Self.canvasHolderJPanel.removeAll();
                Self.canvasHolderJPanel.add(canvasJPanel_);
                Self.selectedFrame := index;
                canvasJPanel_.changed();
                Self.canvasHolderJPanel.repaint();
                canvasJPanel_.repaint();
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TWorkAreaJPanel.select(treeNode: TMutableTreeNode);
var
  canvasJPanelHashMap: TJavaHashMap<TObject, TObject>;
  frameInteger: Integer;
begin
        canvasJPanelHashMap := Self.getCanvasHashMap();
        frameInteger := Integer(canvasJPanelHashMap.get(TJava.Box(treeNode)));
        if (frameInteger) <> (0) then begin
            Self.select((frameInteger));
        end;
end;
    

class function TWorkAreaJPanel.getDocument: TDocument;
begin
        Exit(TWorkAreaJPanel.document);
end;
    

// throws Exception
function TWorkAreaJPanel.toDocument: TDocument;
var
  workAreaNode: TNode;
  nameNode: TNode;
  nameTextNode: TNode;
  framesNode: TNode;
  size: Integer;
  canvasJPanel_: TCanvasJPanel;
  index: Integer;
begin
        TWorkAreaJPanel.document := TDomHelper.getInstance().createDocument();
        workAreaNode := TWorkAreaJPanel.document.createElement(TWorkAreaDom.WORKAREA);
        nameNode := TWorkAreaJPanel.document.createElement(TWorkAreaDom.NAME);
        nameTextNode := TWorkAreaJPanel.document.createTextNode(Self.name);
        nameNode.appendChild(nameTextNode);
        framesNode := TWorkAreaJPanel.document.createElement(TWorkAreaDom.FRAMES);
        size := Self.canvasJPanelList.size();
        for index := 0 to size - 1 do begin
            canvasJPanel_ := TCanvasJPanel(TJava.ToObject(Self.canvasJPanelList.get(index)));
            framesNode.appendChild(canvasJPanel_.toDom());
        end;
        workAreaNode.appendChild(nameNode);
        workAreaNode.appendChild(framesNode);
        TWorkAreaJPanel.document.appendChild(workAreaNode);
        Exit(TWorkAreaJPanel.document);
end;
    

procedure TWorkAreaJPanel.initComponents;
begin
        Self.innerJPanel := TJPanel.Create();
        Self.setLayout(TGridLayout.Create(1, 1));
        Self.innerJPanel.addKeyListener(TKeyAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.keyTyped(evt: TKeyEvent);
begin
                Self.innerJPanelKeyTyped(evt);
end;
            

        procedure T.keyPressed(evt: TKeyEvent);
begin
                Self.innerJPanelKeyPressed(evt);
end;
            

        procedure T.keyReleased(evt: TKeyEvent);
begin
                Self.innerJPanelKeyReleased(evt);
end;
*));
        Self.add(Self.innerJPanel);
end;
    

procedure TWorkAreaJPanel.innerJPanelKeyReleased(evt: TKeyEvent);
begin
        TStatusFactory.getInstance().setStatus('Key Pressed1');
end;
    

procedure TWorkAreaJPanel.innerJPanelKeyPressed(evt: TKeyEvent);
begin
        TStatusFactory.getInstance().setStatus('Key Pressed2');
end;
    

procedure TWorkAreaJPanel.innerJPanelKeyTyped(evt: TKeyEvent);
begin
        TStatusFactory.getInstance().setStatus('Key Pressed3');
end;
    

procedure TWorkAreaJPanel.keyPressed(keyEvent_: TKeyEvent);
begin
        Self.getCurrentFrame().keyPressed(keyEvent_);
end;
    

procedure TWorkAreaJPanel.keyReleased(keyEvent_: TKeyEvent);
begin
end;
    

procedure TWorkAreaJPanel.keyTyped(keyEvent_: TKeyEvent);
begin
end;
    

procedure TWorkAreaJPanel.delete_(evt: TMyCanvasEvent);
var
  canvasJPanelHashMap: TJavaHashMap<TObject, TObject>;
  frameInt: Integer;
begin
        canvasJPanelHashMap := Self.getCanvasHashMap();
        if canvasJPanelHashMap.containsKey(TJava.Box(evt.getTreeNode())) then begin
            Self.canvasHolderJPanel.removeAll();
            frameInt := Integer(canvasJPanelHashMap.get(TJava.Box(evt.getTreeNode())));
            Self.canvasJPanelList.remove((frameInt));
            Self.select((frameInt));
        end;
end;
    

// throws Exception
procedure TWorkAreaJPanel.duplicate(evt: TMyCanvasEvent);
begin
        Self.duplicate(evt.getTreeNode());
end;
    

procedure TWorkAreaJPanel.select(evt: TMyCanvasEvent);
begin
        Self.select(evt.getTreeNode());
        TStatusFactory.getInstance().setStatus('Frame Selected');
end;
    

procedure TWorkAreaJPanel.rotate(evt: TMyCanvasEvent);
var
  canvasJPanelHashMap: TJavaHashMap<TObject, TObject>;
  treeNode: TMutableTreeNode;
  frameInt: Integer;
  canvasJPanel_: TCanvasJPanel;
begin
        canvasJPanelHashMap := Self.getCanvasHashMap();
        treeNode := evt.getTreeNode();
        frameInt := Integer(canvasJPanelHashMap.get(TJava.Box(evt.getTreeNode())));
        canvasJPanel_ := TCanvasJPanel(TJava.ToObject(Self.canvasJPanelList.get((frameInt))));
        if (canvasJPanel_) <> (nil) then begin
            canvasJPanel_.addAngle(evt.getAngle());
            Self.select((frameInt));
        end;
        TStatusFactory.getInstance().setStatus('Canvas Rotated');
end;
    

procedure TWorkAreaJPanel.explode(evt: TMyCanvasEvent);
begin
        Self.explodeAll();
end;
    

// throws Exception
procedure TWorkAreaJPanel.autoExplode(evt: TMyCanvasEvent);
begin
        Self.autoExplode(10, 0);
end;
    

// throws Exception
procedure TWorkAreaJPanel.center;
var
  canvasJPanel_: TCanvasJPanel;
begin
        canvasJPanel_ := TCanvasJPanel(TJava.ToObject(Self.getCurrentFrame()));
        canvasJPanel_.center();
end;
    

// throws Exception
procedure TWorkAreaJPanel.center(evt: TMyCanvasEvent);
begin
        Self.center();
end;
    

procedure TWorkAreaJPanel.run;
var
  size: Integer;
  index: Integer;
begin
        try
            while True do begin
                if Self.isPlaying() then begin
                    size := Self.canvasJPanelList.size();
                    for index := 0 to size - 1 do begin
                        if not (Self.isPlaying()) then begin
                            Break;
                        end;
                        Self.select(index);
                        SysUtils.Sleep(100);
                    end;
                end else begin
                    SysUtils.Sleep(500);
                end;
                SysUtils.Sleep(250);
            end;
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  
  {AB:END}

end.

