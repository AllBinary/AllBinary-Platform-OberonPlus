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
unit WorkAreaJTreeJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, BasicArrayList, JTree, MouseEvent, PopupMenuEvent, JMenuItem, JPopupMenu, JScrollPane, JPanel;

type
  {AB:TYPES}
  TWorkAreaJTreeJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    rootTreeNode: TDefaultMutableTreeNode;
    workAreaJTree: TJTree;
    highlightedBasicArrayList: TBasicArrayList;
    copyJMenuItem: TJMenuItem;
    deleteJMenuItem: TJMenuItem;
    itemJPopupMenu: TJPopupMenu;
    itemJScrollPane1: TJScrollPane;
    rotateJMenuItem: TJMenuItem;
    workAreaPropertiesJPanel: TJPanel;
    procedure InitFields;
        constructor Create(workAreaName: string);
        procedure add(treeNode: TMutableTreeNode); virtual;
        procedure updateTree; virtual;
        function getNode(treePathArray: TArray<TTreePath>): TBasicArrayList; overload; virtual;
        function getNode(treePath_: TTreePath): TDefaultMutableTreeNode; overload; virtual;
        procedure deselectAll; virtual;
        procedure selectGraphicItem(node: TDefaultMutableTreeNode); virtual;
        procedure removeGraphicItem(node: TDefaultMutableTreeNode); virtual;
        procedure removeCanvas(node: TDefaultMutableTreeNode); virtual;
        procedure remove(treePath_: TTreePath); virtual;
        procedure copy; overload;
        procedure copy(treePath_: TTreePath); overload;
        procedure rotate(treePath_: TTreePath; angle: Double); virtual;
        function getRootTreeNode: TMutableTreeNode; virtual;
        procedure expand; overload; virtual;
        procedure expand(treePath_: TTreePath); overload; virtual;
        procedure initComponents;
        procedure rotateJMenuItemMousePressed(evt: TMouseEvent);
        procedure workAreaJTreeMousePressed(evt: TMouseEvent);
        procedure itemJPopupMenuPopupMenuWillBecomeInvisible(evt: TPopupMenuEvent);
        procedure itemJPopupMenuPopupMenuWillBecomeVisible(evt: TPopupMenuEvent);
        procedure copyJMenuItemMousePressed(evt: TMouseEvent);
        procedure deleteJMenuItemMousePressed(evt: TMouseEvent);
        procedure workAreaPropertiesJPanelMousePressed(evt: TMouseEvent);
  end;

implementation
uses
  MouseAdapter, PopupMenuListener, GridLayout, CanvasTreeLabel, MyCanvasEvent, MyCanvasEventService, MyCanvasEventSource, MyGraphicItemEvent, MyGraphicItemEventService, MyGraphicItemEventSource, BasicArrayListD;


{AB:CODE}

procedure TWorkAreaJTreeJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
end;
    

constructor TWorkAreaJTreeJPanel.Create(workAreaName: string);
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        Self.rootTreeNode := TDefaultMutableTreeNode.Create(workAreaName);
        Self.workAreaPropertiesJPanel.removeAll();
        Self.updateTree();
        Self.highlightedBasicArrayList := TBasicArrayListD.Create();
end;
    

procedure TWorkAreaJTreeJPanel.add(treeNode: TMutableTreeNode);
begin
        Self.rootTreeNode.add(treeNode);
end;
    

procedure TWorkAreaJTreeJPanel.updateTree;
begin
        Self.workAreaJTree := TJTree.Create(Self.rootTreeNode);
        Self.workAreaJTree.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.workAreaJTreeMousePressed(evt);
end;
*));
        Self.workAreaPropertiesJPanel.removeAll();
        Self.workAreaPropertiesJPanel.add(Self.workAreaJTree);
end;
    

function TWorkAreaJTreeJPanel.getNode(treePathArray: TArray<TTreePath>): TBasicArrayList;
var
  basicArrayList_: TBasicArrayList;
  index: Integer;
begin
        basicArrayList_ := TBasicArrayListD.Create();
        if (treePathArray) <> (nil) then begin
            for index := 0 to System.Length(treePathArray) - 1 do begin
                basicArrayList_.add(TJava.Box(Self.getNode(treePathArray[index])));
            end;
        end;
        Exit(basicArrayList_);
end;
    

function TWorkAreaJTreeJPanel.getNode(treePath_: TTreePath): TDefaultMutableTreeNode;
var
  obj: TArray<TObject>;
  node: TDefaultMutableTreeNode;
begin
        if (treePath_) <> (nil) then begin
            obj := treePath_.getPath();
            if (obj) <> (nil) then begin
                node := TDefaultMutableTreeNode(TJava.ToObject(obj[(System.Length(obj)) - (1)]));
                Exit(node);
            end;
        end;
        Exit(nil);
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.deselectAll;
var
  size: Integer;
  node: TDefaultMutableTreeNode;
  index: Integer;
begin
        size := Self.highlightedBasicArrayList.size();
        Self.logUtil.putF('size: ' + IntToStr(size), TJava.Box(Self), 'deselectAll');
        for index := 0 to size - 1 do begin
            node := TDefaultMutableTreeNode(TJava.ToObject(Self.highlightedBasicArrayList.get(index)));
            TMyGraphicItemEventService.fire(TMyGraphicItemEvent.Create(TJava.Box(TMyGraphicItemEventSource.Create(TMyGraphicItemEventService.DESELECT, node))));
        end;
        Self.highlightedBasicArrayList.clear();
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.selectGraphicItem(node: TDefaultMutableTreeNode);
begin
        Self.highlightedBasicArrayList.add(TJava.Box(node));
        TMyGraphicItemEventService.fire(TMyGraphicItemEvent.Create(TJava.Box(TMyGraphicItemEventSource.Create(TMyGraphicItemEventService.SELECT, node))));
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.removeGraphicItem(node: TDefaultMutableTreeNode);
begin
        TMyGraphicItemEventService.fire(TMyGraphicItemEvent.Create(TJava.Box(TMyGraphicItemEventSource.Create(TMyGraphicItemEventService.DELETE_, node))));
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.removeCanvas(node: TDefaultMutableTreeNode);
begin
        TMyCanvasEventService.fire(TMyCanvasEvent.Create(TJava.Box(TMyCanvasEventSource.Create(TMyCanvasEventService.DELETE_, node))));
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.remove(treePath_: TTreePath);
var
  node: TDefaultMutableTreeNode;
  parent: TDefaultMutableTreeNode;
begin
        node := Self.getNode(treePath_);
        if (node) <> (nil) then begin
            if (TJava.ToObject(node.getUserObject()) is TCanvasTreeLabel) then begin
                Self.removeCanvas(node);
            end else begin
                Self.removeGraphicItem(node);
            end;
        end;
        parent := TDefaultMutableTreeNode(TJava.ToObject(node.getParent()));
        parent.remove(node);
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.copy;
var
  treePath_: TTreePath;
begin
        treePath_ := Self.workAreaJTree.getSelectionPath();
        Self.copy(treePath_);
        Self.updateTree();
        Self.expand();
        Self.repaint();
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.copy(treePath_: TTreePath);
var
  node: TDefaultMutableTreeNode;
begin
        node := Self.getNode(treePath_);
        if (node) <> (nil) then begin
            if (TJava.ToObject(node.getUserObject()) is TCanvasTreeLabel) then begin
                TMyCanvasEventService.fire(TMyCanvasEvent.Create(TJava.Box(TMyCanvasEventSource.Create(TMyCanvasEventService.DUPLICATE, node))));
            end else begin
                TMyGraphicItemEventService.fire(TMyGraphicItemEvent.Create(TJava.Box(TMyGraphicItemEventSource.Create(TMyGraphicItemEventService.DUPLICATE, node))));
            end;
        end;
end;
    

// throws Exception
procedure TWorkAreaJTreeJPanel.rotate(treePath_: TTreePath; angle: Double);
var
  node: TDefaultMutableTreeNode;
begin
        node := Self.getNode(treePath_);
        if (node) <> (nil) then begin
            if (TJava.ToObject(node.getUserObject()) is TCanvasTreeLabel) then begin
                TMyCanvasEventService.fire(TMyCanvasEvent.Create(TJava.Box(TMyCanvasEventSource.Create(TMyCanvasEventService.ROTATE, angle, node))));
            end else begin
                TMyGraphicItemEventService.fire(TMyGraphicItemEvent.Create(TJava.Box(TMyGraphicItemEventSource.Create(TMyGraphicItemEventService.ROTATE, angle, node))));
            end;
        end;
end;
    

function TWorkAreaJTreeJPanel.getRootTreeNode: TMutableTreeNode;
begin
        Exit(Self.rootTreeNode);
end;
    

procedure TWorkAreaJTreeJPanel.expand;
begin
        Self.workAreaJTree.expandRow(0);
        Self.workAreaJTree.expandRow(1);
end;
    

procedure TWorkAreaJTreeJPanel.expand(treePath_: TTreePath);
begin
        Self.workAreaJTree.expandPath(treePath_);
end;
    

procedure TWorkAreaJTreeJPanel.initComponents;
begin
        Self.itemJPopupMenu := TJPopupMenu.Create();
        Self.deleteJMenuItem := TJMenuItem.Create();
        Self.copyJMenuItem := TJMenuItem.Create();
        Self.rotateJMenuItem := TJMenuItem.Create();
        Self.itemJScrollPane1 := TJScrollPane.Create();
        Self.workAreaPropertiesJPanel := TJPanel.Create();
        Self.itemJPopupMenu.addPopupMenuListener(TPopupMenuListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.popupMenuCanceled(evt: TPopupMenuEvent);
begin
end;
            

        procedure T.popupMenuWillBecomeInvisible(evt: TPopupMenuEvent);
begin
                Self.itemJPopupMenuPopupMenuWillBecomeInvisible(evt);
end;
            

        procedure T.popupMenuWillBecomeVisible(evt: TPopupMenuEvent);
begin
                Self.itemJPopupMenuPopupMenuWillBecomeVisible(evt);
end;
*));
        Self.deleteJMenuItem.setText('Delete');
        Self.deleteJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.deleteJMenuItemMousePressed(evt);
end;
*));
        Self.itemJPopupMenu.add(Self.deleteJMenuItem);
        Self.copyJMenuItem.setText('Copy');
        Self.copyJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.copyJMenuItemMousePressed(evt);
end;
*));
        Self.itemJPopupMenu.add(Self.copyJMenuItem);
        Self.rotateJMenuItem.setText('Rotate 45*');
        Self.rotateJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.rotateJMenuItemMousePressed(evt);
end;
*));
        Self.itemJPopupMenu.add(Self.rotateJMenuItem);
        Self.setLayout(TGridLayout.Create(1, 1));
        Self.workAreaPropertiesJPanel.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.workAreaPropertiesJPanelMousePressed(evt);
end;
*));
        Self.workAreaPropertiesJPanel.setLayout(TGridLayout.Create(1, 0));
        Self.itemJScrollPane1.setViewportView(Self.workAreaPropertiesJPanel);
        Self.add(Self.itemJScrollPane1);
end;
    

procedure TWorkAreaJTreeJPanel.rotateJMenuItemMousePressed(evt: TMouseEvent);
var
  treePath_: TTreePath;
begin
        try
            treePath_ := Self.workAreaJTree.getSelectionPath();
            Self.rotate(treePath_, 45);
            Self.updateTree();
            Self.expand();
            Self.repaint();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'rotateJMenuItemMousePressed', TJava.Box(e));
            end;
        end;
end;
    

procedure TWorkAreaJTreeJPanel.workAreaJTreeMousePressed(evt: TMouseEvent);
var
  selectedTreePathArray: TArray<TTreePath>;
  list: TBasicArrayList;
  defaultMutableTreeNode_: TDefaultMutableTreeNode;
  index: Integer;
begin
        try
            selectedTreePathArray := Self.workAreaJTree.getSelectionPaths();
            list := Self.getNode(selectedTreePathArray);
            if (list.size()) > (0) then begin
                if (((evt.getModifiers()) and (evt.BUTTON3_MASK))) = (evt.BUTTON3_MASK) then begin
                    for index := 0 to System.Length(selectedTreePathArray) - 1 do begin
                        defaultMutableTreeNode_ := TDefaultMutableTreeNode(TJava.ToObject(list.get(index)));
                        if (TJava.ToObject(defaultMutableTreeNode_.getUserObject()) is TCanvasTreeLabel) then begin
                            Self.itemJPopupMenu.show(Self, evt.getX(), evt.getY());
                        end else begin
                            Self.itemJPopupMenu.show(Self, evt.getX(), evt.getY());
                        end;
                    end;
                end;
                if (((evt.getModifiers()) and (evt.BUTTON1_MASK))) = (evt.BUTTON1_MASK) then begin
                    Self.deselectAll();
                    for index := 0 to System.Length(selectedTreePathArray) - 1 do begin
                        defaultMutableTreeNode_ := TDefaultMutableTreeNode(TJava.ToObject(list.get(index)));
                        if (TJava.ToObject(defaultMutableTreeNode_.getUserObject()) is TCanvasTreeLabel) then begin
                            TMyCanvasEventService.fire(TMyCanvasEvent.Create(TJava.Box(TMyCanvasEventSource.Create(TMyCanvasEventService.SELECT, defaultMutableTreeNode_))));
                        end else begin
                            Self.selectGraphicItem(defaultMutableTreeNode_);
                        end;
                    end;
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'workAreaJTreeMousePressed', TJava.Box(e));
            end;
        end;
end;
    

procedure TWorkAreaJTreeJPanel.itemJPopupMenuPopupMenuWillBecomeInvisible(evt: TPopupMenuEvent);
begin
end;
    

procedure TWorkAreaJTreeJPanel.itemJPopupMenuPopupMenuWillBecomeVisible(evt: TPopupMenuEvent);
begin
end;
    

procedure TWorkAreaJTreeJPanel.copyJMenuItemMousePressed(evt: TMouseEvent);
begin
        try
            Self.copy();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'copyJMenuItemMousePressed', TJava.Box(e));
            end;
        end;
end;
    

procedure TWorkAreaJTreeJPanel.deleteJMenuItemMousePressed(evt: TMouseEvent);
var
  selectedTreePathArray: TArray<TTreePath>;
  treePath_: TTreePath;
  index: Integer;
begin
        try
            selectedTreePathArray := Self.workAreaJTree.getSelectionPaths();
            for index := 0 to System.Length(selectedTreePathArray) - 1 do begin
                treePath_ := selectedTreePathArray[index];
                Self.remove(treePath_);
                Self.updateTree();
                Self.expand();
                Self.repaint();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'deleteJMenuItemMousePressed', TJava.Box(e));
            end;
        end;
end;
    

procedure TWorkAreaJTreeJPanel.workAreaPropertiesJPanelMousePressed(evt: TMouseEvent);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

