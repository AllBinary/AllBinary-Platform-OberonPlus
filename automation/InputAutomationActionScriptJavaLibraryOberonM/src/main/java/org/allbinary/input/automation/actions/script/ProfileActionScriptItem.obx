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
// package org.allbinary.input.automation.actions.script
unit ProfileActionScriptItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, Node, JPopupMenu, ProfileActionScriptItemInterface;

type
  {AB:TYPES}
  TProfileActionScriptItem = class(TDefaultMutableTreeNode, IProfileActionScriptItemInterface, IActionListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    jPopupMenu: TJPopupMenu;
    class var EDIT: string;
    class var DELETE_: string;
    class var NEW_CONDITION: string;
    class var NEW_INPUT: string;
    class var NEW_OUTPUT: string;
    class var NEW_COLOR_AT: string;
    class var NEW_TIME_INTERVAL: string;
    class var NEW_ALWAYS: string;
    class var NEW_KEY_INPUT: string;
    class var NEW_MOUSE_INPUT: string;
    class var NEW_JOYSTICK_INPUT: string;
    class var NEW_IMAGE_OUTPUT: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(label_: string; node_: TNode); overload;
        constructor Create(label_: string); overload;
        procedure init;
        procedure process(frame: Int64); virtual;
        function getJPopupMenu: TJPopupMenu; virtual;
        procedure showDialog; virtual;
        procedure actionPerformed(actionEvent_: TActionEvent); virtual;
        procedure setJPopupMenu(jPopupMenu_: TJPopupMenu); virtual;
  end;

implementation
uses
  JMenuItem;


{AB:CODE}

procedure TProfileActionScriptItem.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TProfileActionScriptItem.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TProfileActionScriptItem.Create(label_: string; node_: TNode);
begin
        inherited Create(label_);
        InitFields;
        Self.init();
        Self.logUtil.putF('Label: ' + label_, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
end;
    

constructor TProfileActionScriptItem.Create(label_: string);
begin
        inherited Create(label_);
        InitFields;
        Self.init();
        Self.logUtil.putF('Label: ' + label_, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
end;
    

procedure TProfileActionScriptItem.init;
var
  jMenuItemEdit: TJMenuItem;
  jMenuItemDelete: TJMenuItem;
begin
        Self.setJPopupMenu(TJPopupMenu.Create());
        jMenuItemEdit := TJMenuItem.Create(TProfileActionScriptItem.EDIT);
        jMenuItemDelete := TJMenuItem.Create(TProfileActionScriptItem.DELETE_);
        jMenuItemEdit.addActionListener(Self);
        jMenuItemDelete.addActionListener(Self);
        Self.getJPopupMenu().add(jMenuItemEdit);
        Self.getJPopupMenu().add(jMenuItemDelete);
end;
    

// throws Exception
procedure TProfileActionScriptItem.process(frame: Int64);
begin
        raise SysUtils.Exception.Create('');
end;
    

function TProfileActionScriptItem.getJPopupMenu: TJPopupMenu;
begin
        Exit(Self.jPopupMenu);
end;
    

procedure TProfileActionScriptItem.showDialog;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TProfileActionScriptItem.actionPerformed(actionEvent_: TActionEvent);
begin
        if (actionEvent_.getActionCommand().compareTo(TProfileActionScriptItem.EDIT)) = (0) then begin
            Self.showDialog();
        end;
end;
    

procedure TProfileActionScriptItem.setJPopupMenu(jPopupMenu_: TJPopupMenu);
begin
        Self.jPopupMenu := jPopupMenu_;
end;

initialization
  {AB:INITIALIZATION}
  TProfileActionScriptItem.EDIT := 'Edit';
  TProfileActionScriptItem.DELETE_ := 'Delete';
  TProfileActionScriptItem.NEW_CONDITION := 'New Condition';
  TProfileActionScriptItem.NEW_INPUT := 'New Input';
  TProfileActionScriptItem.NEW_OUTPUT := 'New Output';
  TProfileActionScriptItem.NEW_COLOR_AT := 'Color At';
  TProfileActionScriptItem.NEW_TIME_INTERVAL := 'Time Interval';
  TProfileActionScriptItem.NEW_ALWAYS := 'Always On/Off';
  TProfileActionScriptItem.NEW_KEY_INPUT := 'Key';
  TProfileActionScriptItem.NEW_MOUSE_INPUT := 'Mouse';
  TProfileActionScriptItem.NEW_JOYSTICK_INPUT := 'Joystick';
  TProfileActionScriptItem.NEW_IMAGE_OUTPUT := 'Image';
  {AB:END}

end.

