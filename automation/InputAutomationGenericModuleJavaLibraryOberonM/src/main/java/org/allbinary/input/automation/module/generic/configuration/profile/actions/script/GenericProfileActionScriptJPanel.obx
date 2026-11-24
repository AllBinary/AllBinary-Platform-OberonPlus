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
// package org.allbinary.input.automation.module.generic.configuration.profile.actions.script
unit GenericProfileActionScriptJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, JTreeInterface, LogUtil, CommonStrings, GenericProfileActionScript, JTree, JScrollPane, JPanel;

type
  {AB:TYPES}
  TGenericProfileActionScriptJPanel = class(TJPanel, IJTreeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    defaultMutableTreeNode: TDefaultMutableTreeNode;
    genericProfileActionScript: TGenericProfileActionScript;
    actionScriptJTree: TJTree;
    jScrollPane1: TJScrollPane;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure updateJTree; virtual;
        function getGenericProfileActionScript: TGenericProfileActionScript; virtual;
        procedure setGenericProfileActionScript(genericProfileActionScript_: TGenericProfileActionScript); virtual;
        function getActionScriptJTree: TJTree; virtual;
        procedure setActionScriptJTree(actionScriptJTree: TJTree); virtual;
        procedure initComponents;
        procedure actionScriptJTreeMouseReleased(evt: TMouseEvent);
        procedure actionScriptJTreeMouseClicked(evt: TMouseEvent);
  end;

implementation
uses
  GridLayout, Dimension, MouseAdapter, JPopupMenu, JComponent, CustomTreeNodeInterface;


{AB:CODE}

procedure TGenericProfileActionScriptJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.defaultMutableTreeNode := TDefaultMutableTreeNode.Create('Root');
  
  
  
end;

function TGenericProfileActionScriptJPanel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGenericProfileActionScriptJPanel.Create;
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.initComponents();
end;
    

procedure TGenericProfileActionScriptJPanel.updateJTree;
var
  defaultTreeModel_: TDefaultTreeModel;
begin
        defaultTreeModel_ := TDefaultTreeModel.Create(Self.getGenericProfileActionScript());
        Self.getActionScriptJTree().setModel(defaultTreeModel_);
        Self.repaint();
        Self.logUtil.putF('Updated UI', TJava.Box(Self), 'updateJTree');
end;
    

function TGenericProfileActionScriptJPanel.getGenericProfileActionScript: TGenericProfileActionScript;
begin
        Exit(Self.genericProfileActionScript);
end;
    

procedure TGenericProfileActionScriptJPanel.setGenericProfileActionScript(genericProfileActionScript_: TGenericProfileActionScript);
begin
        Self.genericProfileActionScript := genericProfileActionScript_;
end;
    

function TGenericProfileActionScriptJPanel.getActionScriptJTree: TJTree;
begin
        Exit(Self.actionScriptJTree);
end;
    

procedure TGenericProfileActionScriptJPanel.setActionScriptJTree(actionScriptJTree: TJTree);
begin
        Self.actionScriptJTree := actionScriptJTree;
end;
    

procedure TGenericProfileActionScriptJPanel.initComponents;
begin
        Self.jScrollPane1 := TJScrollPane.Create();
        Self.actionScriptJTree := TJTree.Create();
        Self.setLayout(TGridLayout.Create(1, 0));
        Self.actionScriptJTree.setPreferredSize(TDimension.Create(500, 500));
        Self.actionScriptJTree.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mouseClicked(evt: TMouseEvent);
begin
                Self.actionScriptJTreeMouseClicked(evt);
end;
            

        procedure T.mouseReleased(evt: TMouseEvent);
begin
                Self.actionScriptJTreeMouseReleased(evt);
end;
*));
        Self.jScrollPane1.setViewportView(Self.actionScriptJTree);
        Self.add(Self.jScrollPane1);
end;
    

procedure TGenericProfileActionScriptJPanel.actionScriptJTreeMouseReleased(evt: TMouseEvent);
var
  button: Integer;
  treePath_: TTreePath;
  anyType: TObject;
  customTreeNodeInterface_: ICustomTreeNodeInterface;
  jPopupMenu_: TJPopupMenu;
begin
        button := evt.getButton();
        if (button) = (TMouseEvent.BUTTON3) then begin
            treePath_ := Self.getActionScriptJTree().getSelectionPath();
            if (treePath_) <> (nil) then begin
                anyType := TJava.Box(treePath_.getLastPathComponent());
                if (TJava.ToObject(anyType) is ICustomTreeNodeInterface) then begin
                    customTreeNodeInterface_ := (TJava.ToObject(anyType) as ICustomTreeNodeInterface);
                    jPopupMenu_ := customTreeNodeInterface_.getJPopupMenu();
                    jPopupMenu_.show(TJComponent(TJava.ToObject(evt.getSource())), evt.getX(), evt.getY());
                end;
            end;
        end;
end;
    

procedure TGenericProfileActionScriptJPanel.actionScriptJTreeMouseClicked(evt: TMouseEvent);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

