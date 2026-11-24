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
unit BasicProfileActionScriptCondition;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, ProfileActionScriptItem, ProfileActionScriptNodeInterface, ProfileActionScriptProcessorInterface, LogUtil, Document, Node, JMenu, ProfileActionScriptConditionInterface;

type
  {AB:TYPES}
  TBasicProfileActionScriptCondition = class(TProfileActionScriptItem, IProfileActionScriptConditionInterface)
  public
    logUtil: TLogUtil;
    profileActionProcessorInterfaceVector: TBasicArrayList;
    profileActionConditionInterfaceVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(label_: string; node_: TNode); overload;
        procedure addProcessorNodes(node_: TNode); virtual;
        constructor Create(label_: string); overload;
        procedure init;
        function getConditionJPopupMenu: TJMenu;
        function getInputJPopupMenu: TJMenu;
        function getOutputJPopupMenu: TJMenu;
        procedure addProcessor(profileActionProcessorInterface: IProfileActionScriptProcessorInterface); virtual;
        procedure removeProcessor(profileActionProcessorInterface: IProfileActionScriptProcessorInterface); virtual;
        procedure removeCondition(profileActionScriptNodeInterface_: IProfileActionScriptNodeInterface); virtual;
        procedure addCondition(profileActionScriptNodeInterface_: IProfileActionScriptNodeInterface); virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function getProfileActionConditionInterfaceVector: TBasicArrayList; virtual;
        procedure setProfileActionConditionInterfaceVector(profileActionConditionInterfaceVector: TBasicArrayList); virtual;
        procedure actionPerformed(actionEvent_: TActionEvent); virtual;
        function getProfileActionProcessorInterfaceVector: TBasicArrayList; virtual;
        procedure setProfileActionProcessorInterfaceVector(profileActionProcessorInterfaceVector: TBasicArrayList); virtual;
        procedure updateTree;
        function shouldProcess(frame: Int64): Boolean; virtual;
        procedure process(frame: Int64); virtual;
  end;

implementation
uses
  GenericProfileActionScriptConditionData, ProfileActionScriptConditionFactory, JMenuItem, TimeIntervalActionScriptCondition, AlwaysActionScriptCondition, ColorAtActionScriptCondition, BasicArrayListD, JTreeInterfaceFactory, GenericProfileActionScriptInputData, KeyboardActionScriptInput, MouseActionScriptInput, ProfileActionScriptInputFactory, GenericProfileActionScriptOutputData, ImageActionScriptOutput, ProfileActionScriptOutputFactory, StringMaker, NodeList;


{AB:CODE}

procedure TBasicProfileActionScriptCondition.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TBasicProfileActionScriptCondition.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicProfileActionScriptCondition.Create(label_: string; node_: TNode);
var
  nodeList_: TNodeList;
  actionItemNode: TNode;
  index: Integer;
begin
        inherited Create(label_, node_);
        InitFields;
        Self.init();
        nodeList_ := node_.getChildNodes();
        for index := 0 to nodeList_.getLength() - 1 do begin
            actionItemNode := nodeList_.item(index);
            if (actionItemNode.getNodeType()) = (TNode.ELEMENT_NODE) then begin
                if (actionItemNode.getNodeName().compareTo(TGenericProfileActionScriptConditionData.NAME)) = (0) then begin
                    Self.addCondition(TProfileActionScriptConditionFactory.getInstance(actionItemNode));
                end else if (actionItemNode.getNodeName().compareTo(TGenericProfileActionScriptInputData.NAME)) = (0) then begin
                    Self.addProcessor(TProfileActionScriptInputFactory.getInstance(actionItemNode));
                end else if (actionItemNode.getNodeName().compareTo(TGenericProfileActionScriptOutputData.NAME)) = (0) then begin
                    Self.addProcessor(TProfileActionScriptOutputFactory.getInstance(actionItemNode));
                end;
            end;
        end;
end;
    

// throws Exception
procedure TBasicProfileActionScriptCondition.addProcessorNodes(node_: TNode);
var
  nodeList_: TNodeList;
  processorActionItemNode: TNode;
  index: Integer;
begin
        nodeList_ := node_.getChildNodes();
        for index := 0 to nodeList_.getLength() - 1 do begin
            processorActionItemNode := nodeList_.item(index);
            if (processorActionItemNode.getNodeName().compareTo(TGenericProfileActionScriptInputData.NAME)) = (0) then begin
                Self.addProcessor(TProfileActionScriptInputFactory.getInstance(processorActionItemNode));
            end else if (processorActionItemNode.getNodeName().compareTo(TGenericProfileActionScriptOutputData.NAME)) = (0) then begin
                Self.addProcessor(TProfileActionScriptOutputFactory.getInstance(processorActionItemNode));
            end;
        end;
end;
    

constructor TBasicProfileActionScriptCondition.Create(label_: string);
begin
        inherited Create(label_);
        InitFields;
        Self.init();
end;
    

procedure TBasicProfileActionScriptCondition.init;
begin
        Self.setProfileActionProcessorInterfaceVector(TBasicArrayListD.Create());
        Self.setProfileActionConditionInterfaceVector(TBasicArrayListD.Create());
        Self.getJPopupMenu().add(Self.getConditionJPopupMenu());
        Self.getJPopupMenu().add(Self.getInputJPopupMenu());
        Self.getJPopupMenu().add(Self.getOutputJPopupMenu());
end;
    

function TBasicProfileActionScriptCondition.getConditionJPopupMenu: TJMenu;
var
  jMenu_: TJMenu;
  jMenuItemColorAt: TJMenuItem;
  jMenuItemAlways: TJMenuItem;
  jMenuItemTimeInterval: TJMenuItem;
begin
        jMenu_ := TJMenu.Create(NEW_CONDITION);
        jMenuItemColorAt := TJMenuItem.Create(NEW_COLOR_AT);
        jMenuItemAlways := TJMenuItem.Create(NEW_ALWAYS);
        jMenuItemTimeInterval := TJMenuItem.Create(NEW_TIME_INTERVAL);
        jMenuItemColorAt.addActionListener(Self);
        jMenuItemAlways.addActionListener(Self);
        jMenuItemTimeInterval.addActionListener(Self);
        jMenu_.add(jMenuItemColorAt);
        jMenu_.add(jMenuItemAlways);
        jMenu_.add(jMenuItemTimeInterval);
        Exit(jMenu_);
end;
    

function TBasicProfileActionScriptCondition.getInputJPopupMenu: TJMenu;
var
  jMenu_: TJMenu;
  jMenuItemKey: TJMenuItem;
  jMenuItemMouse: TJMenuItem;
  jMenuItemJoystick: TJMenuItem;
begin
        jMenu_ := TJMenu.Create(NEW_INPUT);
        jMenuItemKey := TJMenuItem.Create(NEW_KEY_INPUT);
        jMenuItemMouse := TJMenuItem.Create(NEW_MOUSE_INPUT);
        jMenuItemJoystick := TJMenuItem.Create(NEW_JOYSTICK_INPUT);
        jMenuItemKey.addActionListener(Self);
        jMenuItemMouse.addActionListener(Self);
        jMenuItemJoystick.addActionListener(Self);
        jMenu_.add(jMenuItemKey);
        jMenu_.add(jMenuItemMouse);
        jMenu_.add(jMenuItemJoystick);
        Exit(jMenu_);
end;
    

function TBasicProfileActionScriptCondition.getOutputJPopupMenu: TJMenu;
var
  jMenu_: TJMenu;
  jMenuItemImage: TJMenuItem;
begin
        jMenu_ := TJMenu.Create(NEW_OUTPUT);
        jMenuItemImage := TJMenuItem.Create(NEW_IMAGE_OUTPUT);
        jMenuItemImage.addActionListener(Self);
        jMenu_.add(jMenuItemImage);
        Exit(jMenu_);
end;
    

procedure TBasicProfileActionScriptCondition.addProcessor(profileActionProcessorInterface: IProfileActionScriptProcessorInterface);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'addInput');
        Self.getProfileActionProcessorInterfaceVector().add(TJava.ToObject(profileActionProcessorInterface));
        Self.add(profileActionProcessorInterface);
end;
    

procedure TBasicProfileActionScriptCondition.removeProcessor(profileActionProcessorInterface: IProfileActionScriptProcessorInterface);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'removeInput');
        Self.getProfileActionProcessorInterfaceVector().remove(TJava.ToObject(profileActionProcessorInterface));
        Self.remove(profileActionProcessorInterface);
end;
    

procedure TBasicProfileActionScriptCondition.removeCondition(profileActionScriptNodeInterface_: IProfileActionScriptNodeInterface);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'removeCondition');
        Self.getProfileActionConditionInterfaceVector().remove(TJava.ToObject(profileActionScriptNodeInterface_));
        Self.remove(profileActionScriptNodeInterface_);
end;
    

procedure TBasicProfileActionScriptCondition.addCondition(profileActionScriptNodeInterface_: IProfileActionScriptNodeInterface);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'addCondition');
        Self.getProfileActionConditionInterfaceVector().add(TJava.ToObject(profileActionScriptNodeInterface_));
        Self.add(profileActionScriptNodeInterface_);
end;
    

// throws Exception
function TBasicProfileActionScriptCondition.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  profileActionConditionInterfaceVector: TBasicArrayList;
  size: Integer;
  profileActionConditionInterface: IProfileActionScriptConditionInterface;
  index: Integer;
  profileActionProcessorInterfaceVector: TBasicArrayList;
  size2: Integer;
  profileActionProcessorInterface: IProfileActionScriptProcessorInterface;
begin
        node_ := document_.createElement(TGenericProfileActionScriptConditionData.NAME);
        profileActionConditionInterfaceVector := Self.getProfileActionConditionInterfaceVector();
        size := profileActionConditionInterfaceVector.size();
        for index := 0 to size - 1 do begin
            profileActionConditionInterface := (TJava.ToObject(profileActionConditionInterfaceVector.get(index)) as IProfileActionScriptConditionInterface);
            node_.appendChild(profileActionConditionInterface.toXmlNode(document_));
        end;
        profileActionProcessorInterfaceVector := Self.getProfileActionProcessorInterfaceVector();
        size2 := profileActionProcessorInterfaceVector.size();
        for index := 0 to size2 - 1 do begin
            profileActionProcessorInterface := (TJava.ToObject(profileActionProcessorInterfaceVector.get(index)) as IProfileActionScriptProcessorInterface);
            node_.appendChild(profileActionProcessorInterface.toXmlNode(document_));
        end;
        Exit(node_);
end;
    

function TBasicProfileActionScriptCondition.getProfileActionConditionInterfaceVector: TBasicArrayList;
begin
        Exit(Self.profileActionConditionInterfaceVector);
end;
    

procedure TBasicProfileActionScriptCondition.setProfileActionConditionInterfaceVector(profileActionConditionInterfaceVector: TBasicArrayList);
begin
        Self.profileActionConditionInterfaceVector := profileActionConditionInterfaceVector;
end;
    

procedure TBasicProfileActionScriptCondition.actionPerformed(actionEvent_: TActionEvent);
var
  profileActionScriptNodeInterface_: IProfileActionScriptNodeInterface;
begin
        try
            inherited actionPerformed(actionEvent_);
            if (actionEvent_.getActionCommand().compareTo(DELETE_)) = (0) then begin
                if (TJava.ToObject(Self.getParent()) is IProfileActionScriptNodeInterface) then begin
                    profileActionScriptNodeInterface_ := (TJava.ToObject(Self.getParent()) as IProfileActionScriptNodeInterface);
                    profileActionScriptNodeInterface_.removeCondition(Self);
                    TJTreeInterfaceFactory.getInstance().getJTreeInterface().updateJTree();
                end;
            end else if (actionEvent_.getActionCommand().compareTo(NEW_COLOR_AT)) = (0) then begin
                Self.addCondition(TColorAtActionScriptCondition.Create());
                Self.updateTree();
            end else if (actionEvent_.getActionCommand().compareTo(NEW_ALWAYS)) = (0) then begin
                Self.addCondition(TAlwaysActionScriptCondition.Create());
                Self.updateTree();
            end else if (actionEvent_.getActionCommand().compareTo(NEW_TIME_INTERVAL)) = (0) then begin
                Self.addCondition(TTimeIntervalActionScriptCondition.Create());
                Self.updateTree();
            end else if (actionEvent_.getActionCommand().compareTo(NEW_KEY_INPUT)) = (0) then begin
                Self.addProcessor(TKeyboardActionScriptInput.Create());
                Self.updateTree();
            end else if (actionEvent_.getActionCommand().compareTo(NEW_MOUSE_INPUT)) = (0) then begin
                Self.addProcessor(TMouseActionScriptInput.Create());
                Self.updateTree();
            end else if (actionEvent_.getActionCommand().compareTo(NEW_IMAGE_OUTPUT)) = (0) then begin
                Self.addProcessor(TImageActionScriptOutput.Create());
                Self.updateTree();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Error', TJava.Box(Self), 'actionPerformed', TJava.Box(e));
            end;
        end;
end;
    

function TBasicProfileActionScriptCondition.getProfileActionProcessorInterfaceVector: TBasicArrayList;
begin
        Exit(Self.profileActionProcessorInterfaceVector);
end;
    

procedure TBasicProfileActionScriptCondition.setProfileActionProcessorInterfaceVector(profileActionProcessorInterfaceVector: TBasicArrayList);
begin
        Self.profileActionProcessorInterfaceVector := profileActionProcessorInterfaceVector;
end;
    

procedure TBasicProfileActionScriptCondition.updateTree;
var
  treePath_: TTreePath;
begin
        TJTreeInterfaceFactory.getInstance().getJTreeInterface().updateJTree();
        treePath_ := TTreePath.Create(Self);
        TJTreeInterfaceFactory.getInstance().getJTreeInterface().getActionScriptJTree().expandPath(treePath_);
end;
    

// throws Exception
function TBasicProfileActionScriptCondition.shouldProcess(frame: Int64): Boolean;
var
  profileActionConditionInterfaceVector: TBasicArrayList;
  size: Integer;
  profileActionScriptConditionInterface_: IProfileActionScriptConditionInterface;
  index: Integer;
begin
        profileActionConditionInterfaceVector := Self.getProfileActionConditionInterfaceVector();
        size := profileActionConditionInterfaceVector.size();
        for index := 0 to size - 1 do begin
            profileActionScriptConditionInterface_ := (TJava.ToObject(profileActionConditionInterfaceVector.get(index)) as IProfileActionScriptConditionInterface);
            if not (profileActionScriptConditionInterface_.shouldProcess(frame)) then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;
    

// throws Exception
procedure TBasicProfileActionScriptCondition.process(frame: Int64);
var
  profileActionProcessorInterfaceVector: TBasicArrayList;
  size: Integer;
  profileActionScriptProcessorInterface_: IProfileActionScriptProcessorInterface;
  index: Integer;
begin
        Self.logUtil.putF(TStringMaker.Create().append('Start - Processing ').appendint(Self.getProfileActionProcessorInterfaceVector().size()).append(' inputs').toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
        profileActionProcessorInterfaceVector := Self.getProfileActionProcessorInterfaceVector();
        size := profileActionProcessorInterfaceVector.size();
        for index := 0 to size - 1 do begin
            profileActionScriptProcessorInterface_ := (TJava.ToObject(profileActionProcessorInterfaceVector.get(index)) as IProfileActionScriptProcessorInterface);
            profileActionScriptProcessorInterface_.process(frame);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

